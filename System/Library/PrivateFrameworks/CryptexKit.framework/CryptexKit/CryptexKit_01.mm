unint64_t lazy protocol witness table accessor for type CryptexVersion and conformance CryptexVersion()
{
  result = lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion;
  if (!lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexVersion and conformance CryptexVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptexVersion(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CryptexVersion(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

__n128 CryptexBundleIndex.buildIdentity.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t CryptexBundleIndex.variant.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

__n128 CryptexBundleIndex.init(buildIdentity:variant:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v4;
  *(a4 + 128) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v5;
  v6 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v6;
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 144) = a2;
  *(a4 + 152) = a3;
  return result;
}

uint64_t AsyncCryptexSequence.AsyncIterator.next()()
{
  return MEMORY[0x2822009F8](AsyncCryptexSequence.AsyncIterator.next(), 0, 0);
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t key path getter for CryptexBundle.buildManifest : CryptexBundle@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CryptexBundle.buildManifest : CryptexBundle(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t CryptexBundle.buildManifest.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t CryptexBundle.__allocating_init(path:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CryptexBundle.init(path:)(a1);
  return v2;
}

uint64_t CryptexBundle.init(path:)(uint64_t a1)
{
  v52 = a1;
  v63 = *MEMORY[0x277D85DE8];
  v51 = type metadata accessor for Logger();
  v55 = *(v51 - 8);
  v1 = MEMORY[0x28223BE20](v51);
  v50 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v49 = &v49 - v3;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v62 = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  v10 = v52;
  v11 = v53;
  *(v11 + 32) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v59 = 0x10000000000000;
  v60 = 16842752;
  v13 = v54;
  FilePath.withCString<A>(_:)();
  if (v13)
  {
    v14 = type metadata accessor for FilePath();
    (*(*(v14 - 8) + 8))(v10, v14);
    v15 = v51;
    v16 = v55;
LABEL_18:

    (*(v16 + 8))(v11 + v12, v15);
    type metadata accessor for CryptexBundle(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v58 = v62;
  *(v11 + 24) = cryptex_bundle_create_with_directory();
  v61 = 0;
  v62 = 0;
  if (!cryptex_bundle_copy_build_manifest2() || !v62)
  {
    v21 = v61;
    v16 = v55;
    if (v61)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v22 = swift_allocError();
      *v23 = v21;
    }

    else
    {
      type metadata accessor for CryptexError(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      v22 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v37 = v50;
    v15 = v51;
    (*(v16 + 16))(v50, v11 + v12, v51);
    v38 = v22;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v10;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v22;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_2260DF000, v39, v40, "Failed to copy BuildManifest: %@", v42, 0xCu);
      outlined destroy of NSObject?(v43);
      v46 = v43;
      v16 = v55;
      MEMORY[0x22AA75CB0](v46, -1, -1);
      v47 = v42;
      v10 = v41;
      v37 = v50;
      MEMORY[0x22AA75CB0](v47, -1, -1);
    }

    (*(v16 + 8))(v37, v15);
    swift_willThrow();
LABEL_17:
    swift_unknownObjectRelease();
    close(v58);
    v48 = type metadata accessor for FilePath();
    (*(*(v48 - 8) + 8))(v10, v48);
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  result = _CFXPCCreateCFObjectFromXPCObject();
  v16 = v55;
  if (result)
  {
    v57 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    v18 = swift_dynamicCast();
    v19 = v49;
    if (v18)
    {
      swift_unknownObjectRelease();
      *(v11 + 16) = v56;
      swift_unknownObjectRelease();
      close(v58);
      v20 = type metadata accessor for FilePath();
      (*(*(v20 - 8) + 8))(v10, v20);
      return v11;
    }

    type metadata accessor for CryptexError(0);
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    v24 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (*(v16 + 16))(v19, v11 + v12, v51);
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v10;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_2260DF000, v26, v27, "BuildManifest conversion failed: %@", v29, 0xCu);
      outlined destroy of NSObject?(v30);
      v33 = v30;
      v16 = v55;
      MEMORY[0x22AA75CB0](v33, -1, -1);
      v34 = v29;
      v10 = v28;
      v19 = v49;
      MEMORY[0x22AA75CB0](v34, -1, -1);
    }

    v35 = v19;
    v36 = v51;
    (*(v16 + 8))(v35, v51);
    swift_willThrow();
    v15 = v36;
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t CryptexBundle.getCryptex(matching:variant:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 224) = a2;
  v5 = a1[7];
  *(v4 + 112) = a1[6];
  *(v4 + 128) = v5;
  *(v4 + 144) = a1[8];
  v6 = a1[3];
  *(v4 + 48) = a1[2];
  *(v4 + 64) = v6;
  v7 = a1[5];
  *(v4 + 80) = a1[4];
  *(v4 + 96) = v7;
  v8 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  type metadata accessor for CryptexBundle(0);
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle, &protocol conformance descriptor for CryptexBundle);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexBundle.getCryptex(matching:variant:), v10, v9);
}

uint64_t CryptexBundle.getCryptex(matching:variant:)()
{
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  v1 = (v0 + 216);

  _cryptex_identity.init(from:)((v0 + 16), v0 + 160);
  String.utf8CString.getter();

  v2 = cryptex_bundle_copy_cryptex2();

  if (v2 && *(v0 + 208))
  {
    type metadata accessor for Cryptex(0);
    RawCryptex.init(_:)();
    v4 = Cryptex.__allocating_init(from:)(v3);
LABEL_14:
    v18 = *(v0 + 8);

    return v18(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    type metadata accessor for CFErrorRef(0);
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
    v6 = swift_allocError();
    *v7 = v5;
    v8 = v6;
    v9 = _convertErrorToNSError(_:)();

    v10 = [v9 domain];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v11 == 0xD00000000000001ALL && 0x8000000226116AA0 == v13)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    if ([v9 code] == 8)
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2260DF000, v15, v16, "No match found", v17, 2u);
        MEMORY[0x22AA75CB0](v17, -1, -1);
      }

      v4 = 0;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  type metadata accessor for CryptexError(0);
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
  v6 = swift_allocError();
  swift_storeEnumTagMultiPayload();
LABEL_18:
  v20 = v6;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v6;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_2260DF000, v21, v22, "Lookup failed: %@", v23, 0xCu);
    outlined destroy of NSObject?(v24);
    MEMORY[0x22AA75CB0](v24, -1, -1);
    MEMORY[0x22AA75CB0](v23, -1, -1);
  }

  swift_willThrow();
  v27 = *(v0 + 8);

  return v27();
}

void *CryptexBundle.__allocating_init()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = swift_allocObject();
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v8[1] = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  v6[4] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v6[3] = cryptex_bundle_create();
  v6[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v6;
}

void *CryptexBundle.init()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v8[1] = MEMORY[0x277D84F90];
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  v0[4] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(category:)(0x656C646E7542, 0xE600000000000000);
  v0[3] = cryptex_bundle_create();
  v0[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t CryptexBundle.add(cryptex:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  type metadata accessor for CryptexBundle(0);
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle, &protocol conformance descriptor for CryptexBundle);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](CryptexBundle.add(cryptex:), v4, v3);
}

uint64_t CryptexBundle.add(cryptex:)()
{
  *(v0 + 48) = 0;
  v1 = (v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v0 + 48;
  v5 = (*(*v2 + 216))(v0 + 16);
  _s10CryptexKit03RawA0V010withUnsafecA07performxxs13OpaquePointerVXE_tRi_zlF(partial apply for closure #1 in CryptexBundle.add(cryptex:), v4, v6);

  v5(v0 + 16, 0);
  if (*(v0 + 72) == 1)
  {
    v7 = *(v0 + 8);
  }

  else
  {
    v8 = *v1;
    if (*v1)
    {
      type metadata accessor for CFErrorRef(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
      v9 = swift_allocError();
      *v10 = v8;
    }

    else
    {
      type metadata accessor for CryptexError(0);
      _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      v9 = swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2260DF000, v12, v13, "Failed to add cryptex: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x22AA75CB0](v15, -1, -1);
      MEMORY[0x22AA75CB0](v14, -1, -1);
    }

    swift_willThrow();
    v7 = *(v0 + 8);
  }

  return v7();
}

void CryptexBundle.write(toDirectory:overwrite:)(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v4 = FilePath.string.getter();
    v5 = MEMORY[0x22AA74BE0](v4);

    v6 = [v3 fileExistsAtPath_];

    if (v6)
    {
      v7 = FilePath.string.getter();
      v8 = MEMORY[0x22AA74BE0](v7);

      v13[0] = 0;
      v9 = [v3 removeItemAtPath:v8 error:v13];

      if (!v9)
      {
        v12 = v13[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v10 = v13[0];
    }
  }

  MEMORY[0x28223BE20](a1);
  v11 = FilePath.withCString<A>(_:)();
  if (!v2)
  {
    MEMORY[0x28223BE20](v11);
    FileDescriptor.closeAfter<A>(_:)();
  }
}

uint64_t CryptexBundle.deinit()
{

  v1 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CryptexBundle.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10CryptexKit13CryptexBundle_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for CryptexBundle(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexBundle;
  if (!type metadata singleton initialization cache for CryptexBundle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in CryptexBundle.add(cryptex:)@<X0>(_BYTE *a2@<X8>)
{
  result = cryptex_bundle_set_cryptex2();
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #1 in CryptexBundle.write(toDirectory:overwrite:)()
{
  type metadata accessor for CryptexBundle(0);
  _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexBundle and conformance CryptexBundle, type metadata accessor for CryptexBundle, &protocol conformance descriptor for CryptexBundle);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = cryptex_bundle_write2();
  if (!result)
  {
    type metadata accessor for CryptexError(0);
    _sSo24OS_dispatch_queue_serialC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    v1 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_2260DF000, v3, v4, "Failed to write bundle: %@", v5, 0xCu);
      outlined destroy of NSObject?(v6);
      MEMORY[0x22AA75CB0](v6, -1, -1);
      MEMORY[0x22AA75CB0](v5, -1, -1);
    }

    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator;
  if (!lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncCryptexSequence.AsyncIterator and conformance AsyncCryptexSequence.AsyncIterator);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexBundleIndex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptexBundleIndex(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for CryptexBundle(uint64_t a1)
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

uint64_t dispatch thunk of CryptexBundle.getCryptex(matching:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of CryptexLocalDevice.inventoryConn();

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CryptexBundle.add(cryptex:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of Cryptex.personalize(for:persistence:options:);

  return v6(a1);
}

void Cryptex.InstallOptions.init()(uint64_t a1@<X8>)
{
  Cryptex.BootstrapOptions.init()(&v3);
  v2 = v3;
  *a1 = 2;
  *(a1 + 2) = 0;
  *(a1 + 3) = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Cryptex.InstallOptions.CodingKeys()
{
  v1 = 0x6172656D65687065;
  v2 = 0x7469725764616572;
  if (*v0 != 2)
  {
    v2 = 0x61727473746F6F62;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Cryptex.InstallOptions.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Cryptex.InstallOptions.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Cryptex.InstallOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Cryptex.InstallOptions.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Cryptex.InstallOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMd, &_ss22KeyedEncodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = v1[1];
  v12 = v1[2];
  v13 = v8;
  HIDWORD(v11) = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = BYTE4(v11);
    v17 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v9;
    v14 = 3;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys;
  if (!lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions()
{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions;
  if (!lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions);
  }

  return result;
}

uint64_t Cryptex.InstallOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D0C14InstallOptionsV10CodingKeys33_05A0EB258CF24FA97D5D674BB97990AELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  Cryptex.BootstrapOptions.init()(&v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Cryptex.InstallOptions.CodingKeys and conformance Cryptex.InstallOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 3;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    v13 = v15 & 1;
    *a2 = v9;
    a2[1] = v10 & 1;
    a2[2] = v13;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t getEnumTagSinglePayload for Cryptex.InstallOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Cryptex.InstallOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cryptex.InstallOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Cryptex.InstallOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Cryptex.InstallOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6172656D65687065 && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000226116B00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469725764616572 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61727473746F6F62 && a2 == 0xE900000000000070)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

xpc_object_t XpcDictCodable.asXPC()(uint64_t a1, uint64_t a2)
{
  empty = xpc_dictionary_create_empty();
  (*(a2 + 16))(&empty, a1, a2);
  v5 = empty;
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

xpc_object_t XpcArrayCodable.asXPC()(uint64_t a1, uint64_t a2)
{
  empty = xpc_array_create_empty();
  (*(a2 + 16))(&empty, a1, a2);
  v5 = empty;
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  return v5;
}

void *OS_xpc_object.encode(_:forKey:)(void *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = (*(v8 + 16))(v7, v8);
  if (!v2)
  {
    OS_xpc_object.set<A>(_:forKey:)(result, v6, v10, v4, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OS_xpc_object.set<A>(_:forKey:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x22AA75EA0](v6);
  if (v11 == XPC_TYPE_DICTIONARY.getter())
  {
    dispatch thunk of CodingKey.stringValue.getter();
    v14 = String.utf8CString.getter();

    xpc_dictionary_set_value(v6, (v14 + 32), a1);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v10, 0xD000000000000017, 0x8000000226116B20, 0xD00000000000001BLL, 0x8000000226116B40, 0x6F663A5F28746573, 0xEE00293A79654B72, 71, v12);
    outlined destroy of CryptexError(v10);
    return swift_willThrow();
  }
}

xpc_object_t OS_xpc_object.decode<A>(_:forKey:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = OS_xpc_object.object<A>(forKey:)(v12, a2, v10, v11);
  if (!v5)
  {
    if (result)
    {
      (*(a4 + 8))();
      (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
      return swift_unknownObjectRelease();
    }

    else
    {
      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }
  }

  return result;
}

xpc_object_t OS_xpc_object.object<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x22AA75EA0](v4);
  if (v8 == XPC_TYPE_DICTIONARY.getter())
  {
    dispatch thunk of CodingKey.stringValue.getter();
    v12 = String.utf8CString.getter();

    v9 = xpc_dictionary_get_value(v4, (v12 + 32));
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x22AA74CD0](0xD00000000000001DLL, 0x8000000226116B60);
    v16 = v4;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v9 = v14;
    v10 = v15;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v7, v9, v10, 0xD00000000000001BLL, 0x8000000226116B40, 0x66287463656A626FLL, 0xEF293A79654B726FLL, 63, v11);

    outlined destroy of CryptexError(v7);
    swift_willThrow();
  }

  return v9;
}

xpc_object_t OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v18[1] = a4;
  v8 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_project_boxed_opaque_existential_1(a2, v12);
  result = OS_xpc_object.object<A>(forKey:)(v13, a3, v12, v11);
  if (!v5)
  {
    if (result)
    {
      (*(v21 + 8))();
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v19 = 0;
      v20 = 0xE000000000000000;
      MEMORY[0x22AA74CD0](0x20676E697373694DLL, 0xEC0000002079656BLL);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v15 = v19;
      v16 = v20;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v10, v15, v16, 0xD00000000000001BLL, 0x8000000226116B40, 0xD00000000000001FLL, 0x8000000226116B80, 55, v17);

      outlined destroy of CryptexError(v10);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t CFErrorRef.nserr.getter()
{
  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
  v1 = swift_allocError();
  *v2 = v0;
  v3 = v0;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

uint64_t protocol witness for Error._code.getter in conformance AMSupportError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError, &protocol conformance descriptor for AMSupportError);
  v5 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t TatsuError.init(tssCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result + 3100;
  if (result >= 3100)
  {
    v2 = result;
  }

  if (v2 > 3233)
  {
    if (v2 != 3234 && v2 != 3268)
    {
      if (v2 == 3560)
      {
        v3 = 0;
        v4 = 3;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_12:
    v3 = 0;
    v4 = 2;
    goto LABEL_17;
  }

  switch(v2)
  {
    case 3099:
      v3 = 0;
      v4 = 0;
      goto LABEL_17;
    case 3169:
      goto LABEL_12;
    case 3194:
      v3 = 0;
      v4 = 1;
      goto LABEL_17;
  }

LABEL_14:
  v3 = v2 - 3100;
  if (v2 >= 3500)
  {
    v4 = 4;
  }

  else
  {
    v3 = 0;
    v4 = 5;
  }

LABEL_17:
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

void TatsuError.init(extractedFrom:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v4 = MEMORY[0x22AA74BE0](0xD000000000000020, 0x8000000226116BA0);
  v5 = _CFErrorCopyTopLevelErrorWithDomain(a1, v4);

  if (!v5)
  {

LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = -1;
    goto LABEL_6;
  }

  type metadata accessor for CFErrorRef(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef, type metadata accessor for CFErrorRef, MEMORY[0x277CC9CB8]);
  v6 = swift_allocError();
  *v7 = v5;
  v8 = v5;
  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 code];
  TatsuError.init(tssCode:)(v10, &v12);
  v11 = v13;
  *a2 = v12;
LABEL_6:
  *(a2 + 16) = v11;
}

uint64_t static CryptexError.error(_:_:file:function:lineNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a8;
  type metadata accessor for CryptexError(0);
  lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
  v17 = swift_allocError();
  outlined init with copy of CryptexError(a1, v18);
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v21 + 16))(&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = String.init<A>(describing:)();
  v24 = v23;

  *a9 = v22;
  *(a9 + 8) = v24;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v26;
  *(a9 + 72) = 0;
}

uint64_t type metadata accessor for CryptexError(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexError;
  if (!type metadata singleton initialization cache for CryptexError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of CryptexError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CryptexErrorMessage.init(_:_:file:function:lineNumber:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v26 = a7;
  v27 = a8;
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v19 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = String.init<A>(describing:)();
  v22 = v21;

  *a9 = v20;
  *(a9 + 8) = v22;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v24 = v26;
  v23 = v27;
  *(a9 + 48) = a6;
  *(a9 + 56) = v24;
  *(a9 + 64) = v23;
  *(a9 + 72) = a10 & 1;
}

uint64_t CryptexErrorMessage.error.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CryptexErrorMessage.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CryptexErrorMessage.file.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CryptexErrorMessage.function.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall CryptexErrorMessage.init(_:_:file:function:lineNumber:)(CryptexKit::CryptexErrorMessage *__return_ptr retstr, Swift::String _, Swift::String a3, Swift::String_optional file, Swift::String_optional function, Swift::UInt_optional lineNumber)
{
  retstr->error = _;
  retstr->message = a3;
  retstr->file = file;
  retstr->function = function;
  retstr->lineNumber.value = lineNumber.value;
  retstr->lineNumber.is_nil = lineNumber.is_nil;
}

uint64_t CryptexErrorMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v9;
  v13 = *(v1 + 64);
  v12[3] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  v10 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CryptexErrorMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10CryptexKit0D12ErrorMessageV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v10;
  LOBYTE(v36[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v12;
  v27 = v11;
  LOBYTE(v36[0]) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v13;
  LOBYTE(v36[0]) = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14;
  v39 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v8, v5);
  v17 &= 1u;
  v38 = v17;
  *&v32 = v9;
  *(&v32 + 1) = v31;
  v19 = v30;
  *&v33 = v27;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v26;
  *(&v34 + 1) = v29;
  v21 = v28;
  *v35 = v25;
  *&v35[8] = v28;
  *&v35[16] = v18;
  v35[24] = v17;
  v22 = *v35;
  a2[2] = v34;
  a2[3] = v22;
  *(a2 + 57) = *&v35[9];
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  outlined init with copy of CryptexErrorMessage(&v32, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v36[0] = v9;
  v36[1] = v31;
  v36[2] = v27;
  v36[3] = v19;
  v36[4] = v26;
  v36[5] = v20;
  v36[6] = v25;
  v36[7] = v21;
  v36[8] = v18;
  v37 = v17;
  return outlined destroy of CryptexErrorMessage(v36);
}

unint64_t CryptexError.errorDescription.getter()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v26[-v9];
  v11 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of CryptexError(v0, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 6u:
      if (v13[4])
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v27 = *v13;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v28);
        v14 = v28;
        v15 = v29;
      }

      v20 = 0x8000000226116E00;
      v21 = 0xD000000000000026;
      goto LABEL_44;
    case 2u:
      if (v13[4])
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v27 = *v13;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v28);
        v14 = v28;
        v15 = v29;
      }

      v20 = 0x8000000226116E70;
      v21 = 0xD000000000000027;
      goto LABEL_44;
    case 3u:
      outlined init with take of FilePath?(v13, v10);
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v28 = 0xD00000000000001DLL;
      v29 = 0x8000000226116DE0;
      outlined init with copy of FilePath?(v10, v8);
      if ((*(v2 + 48))(v8, 1, v1) == 1)
      {
        v17 = 0xE500000000000000;
        v18 = 0x3E6C696E3CLL;
      }

      else
      {
        (*(v2 + 32))(v4, v8, v1);
        v23 = FilePath.description.getter();
        v17 = v24;
        (*(v2 + 8))(v4, v1);
        v18 = v23;
      }

      MEMORY[0x22AA74CD0](v18, v17);

      v25 = v28;
      outlined destroy of CryptexPersonalizationService?(v10, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      return v25;
    case 4u:
      if (v13[4])
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v27 = *v13;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v28);
        v14 = v28;
        v15 = v29;
      }

      v20 = 0x8000000226116E50;
      v21 = 0xD00000000000001ALL;
      goto LABEL_44;
    case 5u:
      if (v13[4])
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v27 = *v13;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v28);
        v14 = v28;
        v15 = v29;
      }

      v20 = 0x8000000226116E30;
      v21 = 0xD00000000000001CLL;
      goto LABEL_44;
    case 7u:
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v28 = 0xD00000000000001ALL;
      v29 = 0x8000000226116C90;
      v14 = Errno.description.getter();
      goto LABEL_45;
    case 8u:
      v22 = *v13;
      v28 = 0;
      v29 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v28 = 0xD000000000000023;
      v29 = 0x8000000226116BD0;
      LOBYTE(v27) = v22;
      v14 = CryptexAssetType.name.getter();
      goto LABEL_45;
    case 9u:
      return 0xD00000000000003DLL;
    case 0xAu:
      return 0xD00000000000002FLL;
    case 0xBu:
      return 0xD000000000000016;
    case 0xCu:
      return 0xD000000000000019;
    case 0xDu:
      return 0xD000000000000043;
    case 0xEu:
      return 0xD00000000000002BLL;
    case 0xFu:
      return 0xD00000000000002DLL;
    case 0x10u:
      return 0xD00000000000001DLL;
    case 0x11u:
      return 0xD000000000000029;
    case 0x12u:
    case 0x17u:
      return 0xD00000000000001ELL;
    case 0x13u:
      return 0xD000000000000015;
    case 0x14u:
      return 0xD000000000000020;
    case 0x15u:
      return 0xD00000000000001FLL;
    case 0x16u:
      return 0xD000000000000022;
    case 0x18u:
    case 0x19u:
      return 0xD00000000000001BLL;
    case 0x1Au:
      return 0xD000000000000027;
    default:
      if (v13[4])
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v27 = *v13;
        closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter(&v28);
        v14 = v28;
        v15 = v29;
      }

      v20 = 0x8000000226116EA0;
      v21 = 0xD000000000000014;
LABEL_44:
      v28 = v21;
      v29 = v20;
      v19 = v15;
LABEL_45:
      MEMORY[0x22AA74CD0](v14, v19);

      return v28;
  }
}

char *closure #1 in renderPOSIXError #1 (_:) in CryptexError.errorDescription.getter@<X0>(void *a2@<X8>)
{
  _StringGuts.grow(_:)(23);

  POSIXErrorCode.rawValue.getter();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v3);

  MEMORY[0x22AA74CD0](8250, 0xE200000000000000);
  v4 = POSIXErrorCode.rawValue.getter();
  result = strerror(v4);
  if (result)
  {
    v6 = String.init(cString:)();
    MEMORY[0x22AA74CD0](v6);

    *a2 = 0xD000000000000011;
    a2[1] = 0x8000000226116FE0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AMSupportError@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t specialized static CryptexError.== infix(_:_:)(_DWORD *a1, char *a2)
{
  v95 = a1;
  v96 = a2;
  v2 = type metadata accessor for FilePath();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v88 = &v86 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
  MEMORY[0x28223BE20](v89);
  v90 = &v86 - v6;
  v7 = type metadata accessor for CryptexError(0);
  v8 = MEMORY[0x28223BE20](v7);
  v94 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v93 = (&v86 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v86 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v86 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v86 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v86 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v86 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v86 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v86 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A5ErrorO_ACtMd, &_s10CryptexKit0A5ErrorO_ACtMR);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v86 - v34;
  v36 = &v86 + *(v33 + 56) - v34;
  outlined init with copy of CryptexError(v95, &v86 - v34);
  v95 = v36;
  outlined init with copy of CryptexError(v96, v36);
  v96 = v35;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v29);
      v62 = v95;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_72;
      }

      v39 = *(v62 + 4);
      if (v29[4])
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    case 2u:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v26);
      v49 = v95;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_72;
      }

      v39 = *(v49 + 4);
      if (v26[4])
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    case 3u:
      outlined init with copy of CryptexError(v96, v23);
      v51 = v95;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v52 = v90;
        v53 = *(v89 + 48);
        outlined init with take of FilePath?(v23, v90);
        outlined init with take of FilePath?(v51, v52 + v53);
        v55 = v91;
        v54 = v92;
        v56 = *(v91 + 48);
        if (v56(v52, 1, v92) == 1)
        {
          v57 = v56(v52 + v53, 1, v54);
          v58 = v96;
          if (v57 == 1)
          {
            outlined destroy of CryptexPersonalizationService?(v52, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
LABEL_80:
            v79 = v58;
            goto LABEL_70;
          }
        }

        else
        {
          v81 = v88;
          outlined init with copy of FilePath?(v52, v88);
          v82 = v56(v52 + v53, 1, v54);
          v58 = v96;
          if (v82 != 1)
          {
            v83 = v87;
            (*(v55 + 32))(v87, v52 + v53, v54);
            lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854D8]);
            v84 = dispatch thunk of static Equatable.== infix(_:_:)();
            v85 = *(v55 + 8);
            v85(v83, v54);
            v85(v81, v54);
            outlined destroy of CryptexPersonalizationService?(v52, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            if (v84)
            {
              goto LABEL_80;
            }

LABEL_78:
            outlined destroy of CryptexError(v58);
            goto LABEL_73;
          }

          (*(v55 + 8))(v81, v54);
        }

        outlined destroy of CryptexPersonalizationService?(v52, &_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
        goto LABEL_78;
      }

      outlined destroy of CryptexPersonalizationService?(v23, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v37 = v96;
LABEL_72:
      outlined destroy of CryptexPersonalizationService?(v37, &_s10CryptexKit0A5ErrorO_ACtMd, &_s10CryptexKit0A5ErrorO_ACtMR);
LABEL_73:
      v61 = 0;
      return v61 & 1;
    case 4u:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v20);
      v43 = v95;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_72;
      }

      v39 = *(v43 + 4);
      if (v20[4])
      {
        goto LABEL_26;
      }

      if ((*(v43 + 4) & 1) == 0)
      {
        v44 = POSIXErrorCode.rawValue.getter();
        if (v44 == POSIXErrorCode.rawValue.getter())
        {
          goto LABEL_69;
        }
      }

      goto LABEL_40;
    case 5u:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v17);
      v66 = v95;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_72;
      }

      v39 = *(v66 + 4);
      if ((v17[4] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 6u:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v14);
      v69 = v95;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_72;
      }

      v39 = *(v69 + 4);
      if ((v14[4] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    case 7u:
      v37 = v96;
      v59 = v93;
      outlined init with copy of CryptexError(v96, v93);
      v60 = v95;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_72;
      }

      v61 = *v59 == *v60;
      goto LABEL_61;
    case 8u:
      v37 = v96;
      v72 = v94;
      outlined init with copy of CryptexError(v96, v94);
      v73 = v95;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_72;
      }

      v74 = *v73;
      v98 = *v72;
      v97 = v74;
      lazy protocol witness table accessor for type CryptexAssetType and conformance CryptexAssetType();
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_61:
      outlined destroy of CryptexError(v37);
      return v61 & 1;
    case 9u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xAu:
      v71 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v71 != 10)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xBu:
      v42 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v42 != 11)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xCu:
      v45 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v45 != 12)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xDu:
      v68 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v68 != 13)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xEu:
      v41 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v41 != 14)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0xFu:
      v50 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v50 != 15)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x10u:
      v40 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v40 != 16)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x11u:
      v64 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v64 != 17)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x12u:
      v70 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v70 != 18)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x13u:
      v76 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v76 != 19)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x14u:
      v65 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v65 != 20)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x15u:
      v67 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v67 != 21)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x16u:
      v75 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v75 != 22)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x17u:
      v77 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v77 != 23)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x18u:
      v48 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v48 != 24)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x19u:
      v47 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v47 != 25)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    case 0x1Au:
      v78 = swift_getEnumCaseMultiPayload();
      v37 = v96;
      if (v78 == 26)
      {
        goto LABEL_69;
      }

      goto LABEL_72;
    default:
      v37 = v96;
      outlined init with copy of CryptexError(v96, v31);
      v38 = v95;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_72;
      }

      v39 = *(v38 + 4);
      if (v31[4])
      {
LABEL_26:
        if ((v39 & 1) == 0)
        {
LABEL_40:
          outlined destroy of CryptexError(v37);
          goto LABEL_73;
        }
      }

      else
      {
LABEL_38:
        if (v39)
        {
          goto LABEL_40;
        }

        v63 = POSIXErrorCode.rawValue.getter();
        if (v63 != POSIXErrorCode.rawValue.getter())
        {
          goto LABEL_40;
        }
      }

LABEL_69:
      v79 = v37;
LABEL_70:
      outlined destroy of CryptexError(v79);
      v61 = 1;
      return v61 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage.CodingKeys and conformance CryptexErrorMessage.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppleImage4Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 5))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 4) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AppleImage4Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 4) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for AppleImage4Error(uint64_t a1)
{
  v1 = *(a1 + 4) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unsigned int *destructiveInjectEnumTag for AppleImage4Error(unsigned int *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = (*result | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 38);
  }

  else
  {
    v2 = (a2 - 3) | 0xFFFFFFC000000000;
  }

  *result = v2;
  *(result + 4) = BYTE4(v2);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TatsuError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TatsuError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void type metadata completion function for CryptexError(uint64_t a1)
{
  type metadata accessor for (code: POSIXErrorCode?)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (at: FilePath?)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (code: Errno)();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (code: POSIXErrorCode?)()
{
  if (!lazy cache variable for type metadata for (code: POSIXErrorCode?))
  {
    _sSo10CFErrorRefaMaTm_0(0, &lazy cache variable for type metadata for POSIXErrorCode?, MEMORY[0x277D85A90], MEMORY[0x277D83D88]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (code: POSIXErrorCode?));
    }
  }
}

void type metadata accessor for (at: FilePath?)()
{
  if (!lazy cache variable for type metadata for (at: FilePath?))
  {
    type metadata accessor for FilePath?(0);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (at: FilePath?));
    }
  }
}

void type metadata accessor for FilePath?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FilePath?)
  {
    type metadata accessor for FilePath();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for FilePath?);
    }
  }
}

uint64_t type metadata accessor for (code: Errno)()
{
  result = lazy cache variable for type metadata for (code: Errno);
  if (!lazy cache variable for type metadata for (code: Errno))
  {
    result = MEMORY[0x277D85488];
    atomic_store(MEMORY[0x277D85488], &lazy cache variable for type metadata for (code: Errno));
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptexErrorMessage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for CryptexErrorMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _sSo10CFErrorRefaMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t outlined init with copy of CryptexPersonalizationService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexPersonalizationService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Cryptex.PersonalizeOptions(uint64_t a1)
{
  result = type metadata singleton initialization cache for Cryptex.PersonalizeOptions;
  if (!type metadata singleton initialization cache for Cryptex.PersonalizeOptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of CryptexPersonalizationService?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Cryptex.PersonalizeOptions.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Cryptex.PersonalizeOptions(0);
  v3 = *(v2 + 24);
  v4 = CryptexPersonalizationService.tatsu.unsafeMutableAddressor();
  outlined init with copy of CryptexPersonalizationService(v4, &a1[v3]);
  v5 = type metadata accessor for CryptexPersonalizationService(0);
  (*(*(v5 - 8) + 56))(&a1[v3], 0, 1, v5);
  v6 = *(v2 + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

void type metadata completion function for Cryptex.PersonalizeOptions(uint64_t a1)
{
  type metadata accessor for CryptexPersonalizationService?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (host: URL, port: Int32)?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for CryptexPersonalizationService?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CryptexPersonalizationService?)
  {
    type metadata accessor for CryptexPersonalizationService(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CryptexPersonalizationService?);
    }
  }
}

void type metadata accessor for (host: URL, port: Int32)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (host: URL, port: Int32)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLV4host_s5Int32V4porttMd, &_s10Foundation3URLV4host_s5Int32V4porttMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (host: URL, port: Int32)?);
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OS_xpc_object.string()()
{
  v1 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x22AA75EA0]();
  if (v4 == XPC_TYPE_STRING.getter())
  {
    if (xpc_string_get_string_ptr(v0))
    {
      v11 = String.init(cString:)();
      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v5 = 0x8000000226117050;
    v7 = v13;
    v8 = v3;
    v9 = 0xD000000000000020;
    v10 = 11;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v5 = 0x8000000226117000;
    v7 = v6;
    v8 = v3;
    v9 = 0xD000000000000013;
    v10 = 8;
  }

  static CryptexError.error(_:_:file:function:lineNumber:)(v8, v9, v5, 0xD000000000000025, 0x8000000226117020, 0x2928676E69727473, 0xE800000000000000, v10, v7);
  outlined destroy of CryptexError(v3);
  v11 = swift_willThrow();
LABEL_8:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

unint64_t OS_xpc_object.data()()
{
  v1 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x22AA75EA0](v0);
  if (v4 != XPC_TYPE_DATA.getter())
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v5 = 0x8000000226117080;
    v7 = v6;
    v8 = v3;
    v9 = 0xD000000000000011;
    v10 = 19;
LABEL_3:
    static CryptexError.error(_:_:file:function:lineNumber:)(v8, v9, v5, 0xD000000000000025, 0x8000000226117020, 0x292861746164, 0xE600000000000000, v10, v7);
    outlined destroy of CryptexError(v3);
    return swift_willThrow();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v0);
  if (!bytes_ptr)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    v5 = 0x80000002261170A0;
    v7 = v15;
    v8 = v3;
    v9 = 0xD00000000000001ELL;
    v10 = 23;
    goto LABEL_3;
  }

  v13 = bytes_ptr;
  length = xpc_data_get_length(v0);
  return specialized Data.init(bytes:count:)(v13, length);
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

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t Data.asXPC()(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v5 = bytes;
      v4 = 0;
      return xpc_data_create(v5, v4);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v8 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v8 += v6 - a1;
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
    v5 = bytes;
    return xpc_data_create(v5, v4);
  }

  v11 = a1;
  v10 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v12 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v12))
    {
      v8 += v11 - v12;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v13 = MEMORY[0x22AA74760]();
  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v4 = v14;
  }

  else
  {
    v4 = 0;
  }

  v5 = v8;
  return xpc_data_create(v5, v4);
}

unint64_t protocol witness for static XpcCodable.from(xpc:) in conformance Data@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static Data.from(xpc:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t specialized static Data.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x22AA75EA0](a1);
  if (v5 != XPC_TYPE_DATA.getter())
  {
    swift_storeEnumTagMultiPayload();
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x22AA74CD0](0xD000000000000017, 0x80000002261170C0);
    name = xpc_type_get_name(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    _print_unlocked<A, B>(_:_:)();
    v6 = v14;
    v7 = v15;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, v6, v7, 0xD000000000000020, 0x80000002261170E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 7, v8);

LABEL_3:
    outlined destroy of CryptexError(v4);
    return swift_willThrow();
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  if (!bytes_ptr)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD00000000000001ELL, 0x8000000226117110, 0xD000000000000020, 0x80000002261170E0, 0x637078286D6F7266, 0xEA0000000000293ALL, 10, v13);
    goto LABEL_3;
  }

  v11 = bytes_ptr;
  length = xpc_data_get_length(a1);
  return specialized Data.init(bytes:count:)(v11, length);
}

uint64_t FilePath.appending(_:)()
{
  v1 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  FilePath.string.getter();
  return FilePath.appending(_:)();
}

{
  return MEMORY[0x2821FFA68]();
}

{
  return MEMORY[0x2821FFA70]();
}

uint64_t NSFileHandle.path.getter()
{
  v1 = swift_slowAlloc();
  if (MEMORY[0x22AA74A40]([v0 fileDescriptor], 50, v1))
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    v3 = v2;
    v4 = type metadata accessor for FilePath();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v6 = String.init(cString:)();
    return MEMORY[0x22AA74B40](v6);
  }
}

__n128 FileStat.rawValue.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 FileStat.rawValue.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v2;
  *(v1 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v4;
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void __swiftcall FileStat.init(rawValue:)(CryptexKit::FileStat *__return_ptr retstr, stat *rawValue)
{
  v2 = *&rawValue->st_blksize;
  *&retstr->rawValue.st_size = *&rawValue->st_size;
  *&retstr->rawValue.st_blksize = v2;
  *retstr->rawValue.st_qspare = *rawValue->st_qspare;
  st_mtimespec = rawValue->st_mtimespec;
  retstr->rawValue.st_atimespec = rawValue->st_atimespec;
  retstr->rawValue.st_mtimespec = st_mtimespec;
  st_birthtimespec = rawValue->st_birthtimespec;
  retstr->rawValue.st_ctimespec = rawValue->st_ctimespec;
  retstr->rawValue.st_birthtimespec = st_birthtimespec;
  v5 = *&rawValue->st_uid;
  *&retstr->rawValue.st_dev = *&rawValue->st_dev;
  *&retstr->rawValue.st_uid = v5;
}

BOOL FileStat.isBlockSpecial.getter(unsigned __int16 (*a1)(void))
{
  v3 = *(v1 + 4);
  v4 = S_IFMT.getter() & v3;
  return v4 == a1();
}

uint64_t FileStat.init(_:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v24 = a1;
  v25 = &v14;
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  v5 = nothingOrErrno<A>(retryOnInterrupt:_:)(1, partial apply for closure #1 in FileStat.init(_:), v23, MEMORY[0x277D849A8], v4);
  if ((v5 & 0x100000000) != 0)
  {
    v10 = v5;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v11 = v10;
  }

  else
  {
    v6 = v21;
    a2[6] = v20;
    a2[7] = v6;
    a2[8] = v22;
    v7 = v17;
    a2[2] = v16;
    a2[3] = v7;
    v8 = v19;
    a2[4] = v18;
    a2[5] = v8;
    v9 = v15;
    *a2 = v14;
    a2[1] = v9;
  }

  v12 = type metadata accessor for FilePath();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t partial apply for closure #1 in FileStat.init(_:)@<X0>(int *a2@<X8>)
{
  v4 = *(v2 + 24);
  FilePath.string.getter();
  v5 = String.utf8CString.getter();

  v6 = lstat((v5 + 32), v4);

  *a2 = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t FileStat.init(_:)@<X0>(int a1@<W0>, void (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v23 = a1;
  v24 = &v13;
  v5 = lazy protocol witness table accessor for type Int32 and conformance Int32();
  result = nothingOrErrno<A>(retryOnInterrupt:_:)(1, a2, v22, MEMORY[0x277D849A8], v5);
  if ((result & 0x100000000) != 0)
  {
    v11 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v12 = v11;
  }

  else
  {
    v7 = v20;
    a3[6] = v19;
    a3[7] = v7;
    a3[8] = v21;
    v8 = v16;
    a3[2] = v15;
    a3[3] = v8;
    v9 = v18;
    a3[4] = v17;
    a3[5] = v9;
    v10 = v14;
    *a3 = v13;
    a3[1] = v10;
  }

  return result;
}

uint64_t partial apply for closure #1 in FileStat.init(_:)@<X0>(_DWORD *a1@<X8>)
{
  result = fstat(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FileStat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FileStat(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 144) = v3;
  return result;
}

uint64_t static CryptexAssetType.from(xpc:)@<X0>(_BYTE *a2@<X8>)
{
  v3 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v7 = OS_xpc_object.string()();
  result = v7._countAndFlagsBits;
  if (!v8)
  {

    CryptexAssetType.init(stringValue:)(v7);
    v9 = v13;
    if (v13 == 6)
    {
      swift_storeEnumTagMultiPayload();
      v13 = 0;
      v14 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v13 = 0xD000000000000012;
      v14 = 0x8000000226117140;
      MEMORY[0x22AA74CD0](v7._countAndFlagsBits, v7._object);

      v10 = v13;
      v11 = v14;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v5, v10, v11, 0xD00000000000002CLL, 0x8000000226117160, 0x637078286D6F7266, 0xEA0000000000293ALL, 9, v12);

      outlined destroy of CryptexError(v5);
      return swift_willThrow();
    }

    else
    {

      *a2 = v9;
    }
  }

  return result;
}

xpc_object_t CryptexAssetType.asXPC()()
{
  CryptexAssetType.stringValue.getter();
  v0 = String.utf8CString.getter();

  v1 = xpc_string_create((v0 + 32));

  return v1;
}

xpc_object_t protocol witness for XpcCodable.asXPC() in conformance CryptexAssetType()
{
  CryptexAssetType.stringValue.getter();
  v0 = String.utf8CString.getter();

  v1 = xpc_string_create((v0 + 32));

  return v1;
}

uint64_t CryptexAsset.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t CryptexAsset.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t CryptexAsset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x646E6148656C6966;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CryptexAsset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E6148656C6966;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  if (*a2)
  {
    v5 = 0x646E6148656C6966;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656CLL;
  }

  else
  {
    v6 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexAsset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CryptexAsset.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance CryptexAsset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x646E6148656C6966;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000656CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CryptexAsset.CodingKeys()
{
  if (*v0)
  {
    return 0x646E6148656C6966;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CryptexAsset.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CryptexAsset.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CryptexAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static CryptexAsset.from(xpc:)(uint64_t a1)
{
  v3 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v26 = &type metadata for CryptexAsset.CodingKeys;
  v7 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
  v27 = v7;
  LOBYTE(v25[0]) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(v25, ObjectType, &type metadata for CryptexAssetType, &protocol witness table for CryptexAssetType, &v28);
  result = __swift_destroy_boxed_opaque_existential_0(v25);
  if (!v2)
  {
    v9 = v28;
    if (v28 == 6)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v25, "Missing key ");
      BYTE5(v25[1]) = 0;
      HIWORD(v25[1]) = -5120;
      LOBYTE(v28) = 0;
      lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v10);

      v11 = v25[0];
      v12 = v25[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v14 = v13;
      v15 = v5;
      v16 = v11;
      v17 = v12;
      v18 = 29;
LABEL_4:
      static CryptexError.error(_:_:file:function:lineNumber:)(v15, v16, v17, 0xD00000000000002CLL, 0x8000000226117160, 0x637078286D6F7266, 0xEA0000000000293ALL, v18, v14);

      outlined destroy of CryptexError(v5);
      return swift_willThrow();
    }

    v19 = type metadata accessor for NSFileHandle();
    v26 = &type metadata for CryptexAsset.CodingKeys;
    v27 = v7;
    LOBYTE(v25[0]) = 1;
    OS_xpc_object.decode<A>(_:forKey:)(v25, ObjectType, v19, &protocol witness table for NSFileHandle, &v28);
    __swift_destroy_boxed_opaque_existential_0(v25);
    if (!v28)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(v25, "Missing key ");
      BYTE5(v25[1]) = 0;
      HIWORD(v25[1]) = -5120;
      LOBYTE(v28) = 1;
      lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v20);

      v21 = v25[0];
      v22 = v25[1];
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v14 = v23;
      v15 = v5;
      v16 = v21;
      v17 = v22;
      v18 = 32;
      goto LABEL_4;
    }

    LOBYTE(v25[0]) = v9;
    return (*(v1 + 104))(v25);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys);
  }

  return result;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t CryptexAsset.populate(xpcDict:)(void *a1)
{
  swift_getObjectType();
  v3 = *(v1 + 16);
  v12 = &type metadata for CryptexAssetType;
  v13 = &protocol witness table for CryptexAssetType;
  LOBYTE(v11[0]) = v3;
  v9 = &type metadata for CryptexAsset.CodingKeys;
  v4 = lazy protocol witness table accessor for type CryptexAsset.CodingKeys and conformance CryptexAsset.CodingKeys();
  v10 = v4;
  LOBYTE(v8[0]) = 0;
  OS_xpc_object.encode(_:forKey:)(v11, v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  if (!v2)
  {
    v6 = *(v1 + 24);
    v12 = type metadata accessor for NSFileHandle();
    v13 = &protocol witness table for NSFileHandle;
    v10 = v4;
    v11[0] = v6;
    v9 = &type metadata for CryptexAsset.CodingKeys;
    LOBYTE(v8[0]) = 1;
    v7 = v6;
    OS_xpc_object.encode(_:forKey:)(v11, v8);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance CryptexAsset@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static CryptexAsset.from(xpc:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static Dictionary<>.from(xpc:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getTupleTypeMetadata2();
  v12 = static Array._allocateUninitialized(_:)();
  v13 = specialized Dictionary.init(dictionaryLiteral:)(v12, a2, a3, a5);

  v20 = v13;
  v19 = 0;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = &v20;
  v14[8] = &v19;
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in static Dictionary<>.from(xpc:);
  *(v15 + 24) = v14;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v16);
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    if (v19)
    {
      swift_willThrow();
    }

    else
    {
      v15 = v20;
    }

    return v15;
  }

  return result;
}

uint64_t closure #1 in static Dictionary<>.from(xpc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38[0] = a8;
  v38[1] = a3;
  v45 = a7;
  v38[2] = a4;
  v40 = a2;
  v11 = type metadata accessor for Logger();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = a6;
  v42 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v13 - 8);
  v39 = v38 - v14;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  v20 = *(a5 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v38 - v24;
  v26 = String.init(cString:)();
  v28 = v27;

  dispatch thunk of CodingKey.init(stringValue:)();
  if ((*(v20 + 48))(v19, 1, a5) == 1)
  {
    (*(v16 + 8))(v19, v15);
    v29 = v42;
    Logger.init()();

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v46);

      *(v32 + 4) = v34;
      _os_log_impl(&dword_2260DF000, v30, v31, "Ignoring unknown key %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AA75CB0](v33, -1, -1);
      MEMORY[0x22AA75CB0](v32, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v29, v44);
  }

  else
  {

    (*(v20 + 32))(v25, v19, a5);
    (*(v20 + 16))(v23, v25, a5);
    v35 = v39;
    v36 = v41;
    (*(a9 + 8))(v40, v41, a9);
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    (*(v20 + 8))(v25, a5);
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t Dictionary<>.populate(xpcDict:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v58 = a7;
  v57 = a5;
  v56 = a1;
  v55 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v67 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v10);
  v66 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v14;
  v72 = v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = type metadata accessor for Optional();
  v16 = *(v61 - 8);
  v17 = MEMORY[0x28223BE20](v61);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v22 = __CocoaDictionary.makeIterator()();
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v62 = v22 | 0x8000000000000000;
  }

  else
  {
    v26 = -1 << *(a2 + 32);
    v24 = ~v26;
    v23 = a2 + 64;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(a2 + 64);
    v62 = a2;
  }

  v69 = (v54 + 32);
  v68 = (v55 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v50 = v24;
  v51 = (v24 + 64) >> 6;
  v53 = v54 + 16;
  v52 = v55 + 16;
  v59 = (v16 + 32);

  v30 = 0;
  while (1)
  {
    v31 = TupleTypeMetadata2;
    v63 = v30;
    v64 = v25;
    if ((v62 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v33 = v63;
      v71 = v64;
      v31 = TupleTypeMetadata2;
LABEL_21:
      v39 = *(v31 + 48);
      (*v69)(v19, v66, v75);
      (*v68)(&v19[v39], v67, v72);
      v40 = 0;
      v35 = v33;
      goto LABEL_22;
    }

    v40 = 1;
    v35 = v63;
    v71 = v64;
    v31 = TupleTypeMetadata2;
LABEL_22:
    v41 = *(v31 - 8);
    (*(v41 + 56))(v19, v40, 1, v31);
    (*v59)(v21, v19, v61);
    if ((*(v41 + 48))(v21, 1, v31) == 1)
    {
      return outlined consume of [A : B].Iterator._Variant<A, B>(v62);
    }

    v42 = v23;
    v43 = v21;
    v44 = v72;
    v70 = v8;
    v45 = v75;
    v46 = *(v31 + 48);
    swift_getObjectType();
    v74[3] = v44;
    v74[4] = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    (*v68)(boxed_opaque_existential_1, &v43[v46], v44);
    v73[3] = v45;
    v73[4] = v57;
    v48 = __swift_allocate_boxed_opaque_existential_1(v73);
    v21 = v43;
    (*v69)(v48, v43, v45);
    v49 = v70;
    OS_xpc_object.encode(_:forKey:)(v74, v73);
    v8 = v49;
    if (v49)
    {
      outlined consume of [A : B].Iterator._Variant<A, B>(v62);
      __swift_destroy_boxed_opaque_existential_0(v73);
      return __swift_destroy_boxed_opaque_existential_0(v74);
    }

    __swift_destroy_boxed_opaque_existential_0(v73);
    result = __swift_destroy_boxed_opaque_existential_0(v74);
    v30 = v35;
    v25 = v71;
    v23 = v42;
  }

  if (v25)
  {
    v32 = v25;
    v33 = v30;
LABEL_20:
    v71 = (v32 - 1) & v32;
    v37 = __clz(__rbit64(v32)) | (v33 << 6);
    v38 = v62;
    (*(v54 + 16))(v66, *(v62 + 48) + *(v54 + 72) * v37, v75);
    (*(v55 + 16))(v67, *(v38 + 56) + *(v55 + 72) * v37, v72);
    goto LABEL_21;
  }

  if (v51 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v51;
  }

  v35 = v34 - 1;
  v36 = v30;
  while (1)
  {
    v33 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v33 >= v51)
    {
      v71 = 0;
      v40 = 1;
      goto LABEL_22;
    }

    v32 = *(v23 + 8 * v33);
    ++v36;
    if (v32)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (MEMORY[0x22AA74DF0](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x22AA74E20](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

xpc_object_t FileDescriptor.asXPC()(int a1)
{
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_fd_create(a1);
  if (!result)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD000000000000017, 0x8000000226116680, 0xD00000000000002ALL, 0x80000002261171C0, 0x29284350587361, 0xE700000000000000, 17, v6);
    outlined destroy of CryptexError(v4);
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance FileDescriptor@<X0>(_DWORD *a1@<X8>, void *a2@<X0>)
{
  result = specialized static FileDescriptor.from(xpc:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized static FileDescriptor.from(xpc:)(void *a1)
{
  v2 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x22AA75EA0](a1);
  if (v5 == XPC_TYPE_FD.getter())
  {
    return xpc_fd_dup(a1);
  }

  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v4, 0xD00000000000001CLL, 0x8000000226116630, 0xD00000000000002ALL, 0x80000002261171C0, 0x637078286D6F7266, 0xEA0000000000293ALL, 8, v6);
  outlined destroy of CryptexError(v4);
  return swift_willThrow();
}

uint64_t static Array<A>.from(xpc:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = static Array._allocateUninitialized(_:)();
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = &v12;
  v6[5] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in static Array<A>.from(xpc:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_2;
  v8 = _Block_copy(aBlock);

  xpc_array_apply(a1, v8);
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    if (v11)
    {
      swift_willThrow();
    }

    else
    {
      v7 = v12;
    }

    return v7;
  }

  return result;
}

uint64_t closure #1 in static Array<A>.from(xpc:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x28223BE20](a1);
  (*(v5 + 8))(v4, v6, v5);
  type metadata accessor for Array();
  Array.append(_:)();
  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t Array<A>.populate(xpcArray:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x22AA74E10](v11, v12);
  if (result)
  {
    v14 = 0;
    v22 = (v8 + 16);
    v23 = a4;
    v21 = a4 + 16;
    v19 = v9;
    v20 = (v8 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v8 + 16))(v10, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, a3);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v19 != 8)
        {
          goto LABEL_13;
        }

        v25 = result;
        (*v22)(v10, &v25, a3);
        result = swift_unknownObjectRelease();
      }

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = *v24;
      v18 = (*(v23 + 16))(a3);
      result = (*v20)(v10, a3);
      if (!v4)
      {
        xpc_array_append_value(v17, v18);
        swift_unknownObjectRelease();
        result = MEMORY[0x22AA74E10](a2, a3);
        ++v14;
        if (v16 != result)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance <A> [A]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.from(xpc:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t instantiation function for generic protocol witness table for <A> [A](uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t RequestUninstall.identifier.getter()
{
  v1 = *v0;

  return v1;
}

BOOL RequestUninstall.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestUninstall.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL RequestUninstall.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestUninstall.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestUninstall.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestUninstall.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestUninstall.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance RequestUninstall.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestUninstall.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance RequestUninstall.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestUninstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestUninstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static RequestUninstall.from(xpc:)@<X0>(void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v7[3] = &type metadata for RequestUninstall.CodingKeys;
  v7[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277D837D0], v7, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String);
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    v6 = v7[6];
    *a2 = v7[5];
    a2[1] = v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys);
  }

  return result;
}

uint64_t RequestUninstall.populate(xpcDict:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  swift_getObjectType();
  v6[3] = MEMORY[0x277D837D0];
  v6[4] = &protocol witness table for String;
  v6[0] = v3;
  v6[1] = v2;
  v5[3] = &type metadata for RequestUninstall.CodingKeys;
  v5[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();

  OS_xpc_object.encode(_:forKey:)(v6, v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestUninstall.checkEntitlement(entitlements:)(Swift::OpaquePointer entitlements)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226114ED0;
  v3._countAndFlagsBits = 0x6C6174736E696E75;
  v3._object = 0xE90000000000006CLL;
  *(v2 + 32) = Request.entitlementString(_:)(v3);
  v4._countAndFlagsBits = 0x6C6C6174736E69;
  v4._object = 0xE700000000000000;
  *(v2 + 48) = Request.entitlementString(_:)(v4);
  v5._countAndFlagsBits = 0x6C6174736E696E75;
  v5._object = 0xE90000000000006CLL;
  *(v2 + 64) = Request.packageEntitlementString(_:)(v5);
  Request.checkEntitlement(approvedList:_:)(entitlements._rawValue, v2);
}

uint64_t protocol witness for static XpcCodable.from(xpc:) in conformance RequestUninstall@<X0>(void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v7[3] = &type metadata for RequestUninstall.CodingKeys;
  v7[4] = lazy protocol witness table accessor for type RequestUninstall.CodingKeys and conformance RequestUninstall.CodingKeys();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(MEMORY[0x277D837D0], v7, ObjectType, MEMORY[0x277D837D0], &protocol witness table for String);
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  if (!v2)
  {
    v6 = v7[6];
    *a2 = v7[5];
    a2[1] = v6;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestUninstall(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RequestUninstall(uint64_t result, int a2, int a3)
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

uint64_t _cryptex_identity.init(from:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v69 = a1[6];
  v70 = v4;
  v71 = a1[8];
  v5 = a1[3];
  v65 = a1[2];
  v66 = v5;
  v6 = a1[5];
  v67 = a1[4];
  v68 = v6;
  v7 = a1[1];
  v63 = *a1;
  v64 = v7;
  v61 = CryptexIdentity.containsApIdentifiers()();
  v8 = a1[7];
  v69 = a1[6];
  v70 = v8;
  v71 = a1[8];
  v9 = a1[3];
  v65 = a1[2];
  v66 = v9;
  v10 = a1[5];
  v67 = a1[4];
  v68 = v10;
  v11 = a1[1];
  v63 = *a1;
  v64 = v11;
  v60 = CryptexIdentity.containsCryptex1Identifiers()();
  v12 = a1[7];
  v69 = a1[6];
  v70 = v12;
  v71 = a1[8];
  v13 = a1[3];
  v65 = a1[2];
  v66 = v13;
  v14 = a1[5];
  v67 = a1[4];
  v68 = v14;
  v15 = a1[1];
  v63 = *a1;
  v64 = v15;
  v59 = CryptexIdentity.chipFamily.getter();
  v16 = a1[7];
  v69 = a1[6];
  v70 = v16;
  v71 = a1[8];
  v17 = a1[3];
  v65 = a1[2];
  v66 = v17;
  v18 = a1[5];
  v67 = a1[4];
  v68 = v18;
  v19 = a1[1];
  v63 = *a1;
  v64 = v19;
  v20 = CryptexIdentity.boardID.getter();
  v21 = a1[7];
  v69 = a1[6];
  v70 = v21;
  v71 = a1[8];
  v22 = a1[3];
  v65 = a1[2];
  v66 = v22;
  v23 = a1[5];
  v67 = a1[4];
  v68 = v23;
  v24 = a1[1];
  v63 = *a1;
  v64 = v24;
  v25 = CryptexIdentity.chipID.getter();
  v26 = a1[7];
  v69 = a1[6];
  v70 = v26;
  v71 = a1[8];
  v27 = a1[3];
  v65 = a1[2];
  v66 = v27;
  v28 = a1[5];
  v67 = a1[4];
  v68 = v28;
  v29 = a1[1];
  v63 = *a1;
  v64 = v29;
  v30 = CryptexIdentity.securityDomain.getter();
  v31 = a1[7];
  v69 = a1[6];
  v70 = v31;
  v71 = a1[8];
  v32 = a1[3];
  v65 = a1[2];
  v66 = v32;
  v33 = a1[5];
  v67 = a1[4];
  v68 = v33;
  v34 = a1[1];
  v63 = *a1;
  v64 = v34;
  v35 = CryptexIdentity.chipFamily.getter();
  v36 = a1[7];
  v69 = a1[6];
  v70 = v36;
  v71 = a1[8];
  v37 = a1[3];
  v65 = a1[2];
  v66 = v37;
  v38 = a1[5];
  v67 = a1[4];
  v68 = v38;
  v39 = a1[1];
  v63 = *a1;
  v64 = v39;
  v40 = CryptexIdentity.type.getter();
  v41 = a1[7];
  v69 = a1[6];
  v70 = v41;
  v71 = a1[8];
  v42 = a1[3];
  v65 = a1[2];
  v66 = v42;
  v43 = a1[5];
  v67 = a1[4];
  v68 = v43;
  v44 = a1[1];
  v63 = *a1;
  v64 = v44;
  v45 = CryptexIdentity.subType.getter();
  v46 = a1[7];
  v69 = a1[6];
  v70 = v46;
  v71 = a1[8];
  v47 = a1[3];
  v65 = a1[2];
  v66 = v47;
  v48 = a1[5];
  v67 = a1[4];
  v68 = v48;
  v49 = a1[1];
  v63 = *a1;
  v64 = v49;
  CryptexIdentity.productClass.getter(&v62);
  if (v62 == 6)
  {
    result = 0;
  }

  else
  {
    result = CryptexIdentity.ProductClass.rawValue.getter();
  }

  if (v60)
  {
    v51 = !v61 | 2;
  }

  else
  {
    v51 = !v61;
  }

  v52 = ((v59 >> 30) & 4 | v51) ^ 4;
  if ((v45 & 0x100000000) != 0)
  {
    v53 = 0;
  }

  else
  {
    v53 = v45;
  }

  if ((v40 & 0x100000000) != 0)
  {
    v54 = 0;
  }

  else
  {
    v54 = v40;
  }

  if ((v35 & 0x100000000) != 0)
  {
    v55 = 0;
  }

  else
  {
    v55 = v35;
  }

  *a2 = 1;
  if ((v30 & 0x100000000) != 0)
  {
    v56 = 0;
  }

  else
  {
    v56 = v30;
  }

  *(a2 + 8) = v52;
  if ((v25 & 0x100000000) != 0)
  {
    v57 = 0;
  }

  else
  {
    v57 = v25;
  }

  if ((v20 & 0x100000000) != 0)
  {
    v58 = 0;
  }

  else
  {
    v58 = v20;
  }

  *(a2 + 16) = v58;
  *(a2 + 20) = v57;
  *(a2 + 24) = v56;
  *(a2 + 28) = v55;
  *(a2 + 32) = v54;
  *(a2 + 36) = v53;
  *(a2 + 40) = result;
  return result;
}

uint64_t CryptexTrustOptions.tssUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CryptexTrustOptions(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CryptexTrustOptions(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexTrustOptions;
  if (!type metadata singleton initialization cache for CryptexTrustOptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexTrustOptions.tssUrl.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CryptexTrustOptions(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CryptexTrustOptions.init()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for CryptexPersonalizationService(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  v5 = *(type metadata accessor for CryptexTrustOptions(0) + 20);
  v6 = CryptexPersonalizationService.tatsu.unsafeMutableAddressor();
  outlined init with copy of CryptexPersonalizationService(v6, v4);
  v7 = type metadata accessor for URL();
  return (*(*(v7 - 8) + 32))(&a1[v5], v4, v7);
}

uint64_t type metadata completion function for CryptexTrustOptions(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Request.wrap()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  (*(a2 + 32))(&v11);
  v8 = v11;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 8));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v4, a1);
  *a3 = v8;
  return result;
}

Swift::String __swiftcall Request.entitlementString(_:)(Swift::String a1)
{
  MEMORY[0x22AA74CD0](a1._countAndFlagsBits, a1._object);
  v1 = 0xD000000000000023;
  v2 = 0x80000002261172A0;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Request.packageEntitlementString(_:)(Swift::String a1)
{
  MEMORY[0x22AA74CD0](a1._countAndFlagsBits, a1._object);
  MEMORY[0x22AA74CD0](0x2E6567616B636170, 0xE800000000000000);

  v1 = 0xD000000000000023;
  v2 = 0x80000002261172A0;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Request.checkEntitlement(approvedList:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexError(0);
  result = MEMORY[0x28223BE20](v4);
  v22 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2 + 40;
    v21[0] = a2 + 40;
    v21[1] = v6;
LABEL_3:
    v24 = v9;
    v12 = (v11 + 16 * v10);
    do
    {
      if (v10 >= v8)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_16;
      }

      if (*(a1 + 16))
      {
        v14 = *(v12 - 1);
        v15 = *v12;

        v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
        v18 = v17;

        if (v18)
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v16, v23);
          result = swift_dynamicCast();
          if (result)
          {
            v9 = v25;
            if (v25 == 1)
            {
              ++v10;
              v11 = v21[0];
              if (v13 != v8)
              {
                goto LABEL_3;
              }

              return result;
            }
          }
        }
      }

      ++v10;
      v12 += 2;
    }

    while (v13 != v8);
    if (v24)
    {
      return result;
    }
  }

  v19 = v22;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)(v19, 0xD00000000000001CLL, 0x80000002261172D0, 0xD000000000000018, 0x80000002261172F0, 0xD000000000000021, 0x8000000226117310, 34, v20);
  outlined destroy of CryptexError(v19);
  return swift_willThrow();
}

CryptexKit::RequestWrapper::CodingKeys_optional __swiftcall RequestWrapper.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_request;
  }

  else
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_unknownDefault;
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

CryptexKit::RequestWrapper::CodingKeys_optional __swiftcall RequestWrapper.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_request;
  }

  else
  {
    v4.value = CryptexKit_RequestWrapper_CodingKeys_unknownDefault;
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

uint64_t RequestWrapper.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x74736575716572;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RequestWrapper.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74736575716572;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74736575716572;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006C6C6174736ELL;
  v3 = 0x4974736575716572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x8000000226117260;
    }

    else
    {
      v6 = 0x8000000226117280;
    }

    v5 = 0xD000000000000010;
  }

  else
  {
    if (a1)
    {
      v5 = 0x4974736575716572;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v6 = 0xEE006C6C6174736ELL;
    }

    else
    {
      v6 = 0x8000000226117230;
    }
  }

  v7 = 0x8000000226117260;
  if (a2 != 2)
  {
    v7 = 0x8000000226117280;
  }

  if (!a2)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x8000000226117230;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestWrapper.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestWrapper.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestWrapper.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x74736575716572;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestWrapper.CodingKeys()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestWrapper.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestWrapper.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestWrapper.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static RequestWrapper.from(xpc:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x22AA75EA0](a1);
  if (v8 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v7, 0xD000000000000017, 0x8000000226116B20, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, 56, v9);
LABEL_3:
    outlined destroy of CryptexError(v7);
    return swift_willThrow();
  }

  ObjectType = swift_getObjectType();
  v32 = &type metadata for RequestWrapper.CodingKeys;
  v12 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
  v33 = v12;
  LOBYTE(v31) = 0;
  OS_xpc_object.decode<A>(_:forKey:)(&v31, ObjectType, &type metadata for RequestType, &protocol witness table for RequestType, &v34);
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v2)
  {
    v13 = v34;
    if (v34 == 4)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(&v31, "Expected key ");
      HIWORD(v31) = -4864;
      v34 = 0;
      lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v14);

      v15 = v31;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v17 = v16;
      v18 = v7;
      v20 = v15 >> 64;
      v19 = v15;
      v21 = 60;
LABEL_7:
      static CryptexError.error(_:_:file:function:lineNumber:)(v18, v19, v20, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, v21, v17);

      goto LABEL_3;
    }

    LOBYTE(v31) = 1;
    v22 = OS_xpc_object.object<A>(forKey:)(&v31, ObjectType, &type metadata for RequestWrapper.CodingKeys, v12);
    if (!v22)
    {
      swift_storeEnumTagMultiPayload();
      strcpy(&v31, "Expected key ");
      HIWORD(v31) = -4864;
      v34 = 1;
      lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA74CD0](v28);

      v29 = v31;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      v17 = v30;
      v18 = v7;
      v20 = v29 >> 64;
      v19 = v29;
      v21 = 63;
      goto LABEL_7;
    }

    v24 = off_278584070[v13];
    v25 = *(v24[1] + 1);
    v26 = *(v25 + 8);
    v32 = off_278584050[v13];
    v23 = v32;
    v33 = v24;
    v27 = v22;
    __swift_allocate_boxed_opaque_existential_1(&v31);
    v26(v27, v23, v25);
    swift_unknownObjectRelease();
    *a2 = v13;
    return outlined init with take of Response(&v31, (a2 + 8));
  }

  return result;
}

uint64_t RequestWrapper.populate(xpcDict:)(void *a1)
{
  swift_getObjectType();
  v3 = *v1;
  v14 = &type metadata for RequestType;
  v15 = &protocol witness table for RequestType;
  LOBYTE(v13[0]) = v3;
  v11 = &type metadata for RequestWrapper.CodingKeys;
  v4 = lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys();
  v12 = v4;
  LOBYTE(v10[0]) = 0;
  OS_xpc_object.encode(_:forKey:)(v13, v10);
  __swift_destroy_boxed_opaque_existential_0(v10);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v2)
  {
    v6 = *(v1 + 4);
    v7 = *(v1 + 5);
    v8 = __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
    v14 = v6;
    v15 = *(*(v7 + 8) + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
    v11 = &type metadata for RequestWrapper.CodingKeys;
    v12 = v4;
    LOBYTE(v10[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v13, v10);
    __swift_destroy_boxed_opaque_existential_0(v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return result;
}

uint64_t static RequestType.from(xpc:)@<X0>(_BYTE *a2@<X8>)
{
  v3 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v7 = OS_xpc_object.string()();
  result = v7._countAndFlagsBits;
  if (!v8)
  {

    v9 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestType.init(rawValue:), v7);

    if (v9 >= 4)
    {
      swift_storeEnumTagMultiPayload();
      v13 = 0;
      v14 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v13 = 0xD00000000000001BLL;
      v14 = 0x8000000226117340;
      MEMORY[0x22AA74CD0](v7._countAndFlagsBits, v7._object);

      v10 = v13;
      v11 = v14;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)(v5, v10, v11, 0xD000000000000018, 0x80000002261172F0, 0x637078286D6F7266, 0xEA0000000000293ALL, 93, v12);

      outlined destroy of CryptexError(v5);
      return swift_willThrow();
    }

    else
    {

      *a2 = v9;
    }
  }

  return result;
}

CryptexKit::RequestType_optional __swiftcall RequestType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestType.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

xpc_object_t RequestType.asXPC()()
{
  v0 = String.utf8CString.getter();

  v1 = xpc_string_create((v0 + 32));

  return v1;
}

unint64_t RequestType.rawValue.getter()
{
  v1 = 0x4974736575716572;
  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestType(unint64_t *a1@<X8>)
{
  v2 = 0xEE006C6C6174736ELL;
  v3 = 0x4974736575716572;
  v4 = 0x8000000226117260;
  if (*v1 != 2)
  {
    v4 = 0x8000000226117280;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x8000000226117230;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestWrapper.CodingKeys and conformance RequestWrapper.CodingKeys);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA75CB0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestType and conformance RequestType()
{
  result = lazy protocol witness table cache variable for type RequestType and conformance RequestType;
  if (!lazy protocol witness table cache variable for type RequestType and conformance RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestType and conformance RequestType);
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

uint64_t getEnumTagSinglePayload for RequestWrapper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestWrapper(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

CryptexKit::CryptexIdentity::ProductClass_optional __swiftcall CryptexIdentity.ProductClass.init(rawValue:)(Swift::UInt32 rawValue)
{
  v2 = rawValue + 16;
  if (rawValue - 240 >= 6)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexIdentity.ProductClass()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 240);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexIdentity.ProductClass(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 240);
  return Hasher._finalize()();
}

Swift::Int CryptexIdentity.ProductionStatus.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AA75290](v1);
  return Hasher._finalize()();
}

__n128 CryptexIdentity.chipInstance.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t CryptexIdentity.boardID.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 2) != 0;
  if ((v1 & 2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 28);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.chipID.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 4) != 0;
  if ((v1 & 4) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 32);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.securityDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 8) != 0;
  if ((v1 & 8) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 36);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.chipFamily.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x8000) != 0;
  if ((v1 & 0x8000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 128);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.type.getter()
{
  v1 = *(v0 + 16);
  v2 = BYTE2(v1) & 1;
  if ((v1 & 0x10000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 132);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.subType.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x20000) != 0;
  if ((v1 & 0x20000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 136);
  }

  return v3 | (v2 << 32);
}

void CryptexIdentity.productClass.getter(char *a1@<X8>)
{
  v2 = 6;
  if ((*(v1 + 18) & 4) == 0)
  {
    if ((*(v1 + 140) - 240) >= 6)
    {
      v2 = 6;
    }

    else
    {
      v2 = *(v1 + 140) + 16;
    }
  }

  *a1 = v2;
}

unint64_t CryptexIdentity.epoch.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  return v1 | ((*(v0 + 16) & 1) << 32);
}

uint64_t CryptexIdentity.uniqueChipID.getter()
{
  if ((*(v0 + 16) & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t CryptexIdentity.certificateSecurityMode.getter()
{
  if ((*(v0 + 16) & 0x40) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 49);
  }
}

uint64_t CryptexIdentity.effectiveSecurityMode.getter()
{
  if (*(v0 + 17))
  {
    return 2;
  }

  else
  {
    return *(v0 + 51);
  }
}

uint64_t CryptexIdentity.internalUseOnly.getter()
{
  if ((*(v0 + 17) & 2) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 52);
  }
}

uint64_t CryptexIdentity.researchFused.getter()
{
  if ((*(v0 + 17) & 4) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 53);
  }
}

uint64_t CryptexIdentity.engineeringUseOnly.getter()
{
  if ((*(v0 + 17) & 8) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 54);
  }
}

uint64_t CryptexIdentity.extendedSecurityDomain.getter()
{
  v1 = *(v0 + 16);
  v2 = (v1 & 0x1000) != 0;
  if ((v1 & 0x1000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 56);
  }

  return v3 | (v2 << 32);
}

uint64_t CryptexIdentity.factoryPreReleaseGlobalTrust.getter()
{
  if ((*(v0 + 17) & 0x20) != 0)
  {
    return 2;
  }

  else
  {
    return *(v0 + 60);
  }
}

unint64_t CryptexIdentity.universalDeviceID.getter()
{
  v5 = *MEMORY[0x277D85DE8];
  if ((*(v0 + 17) & 0x40) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 96);
  v4[0] = *(v0 + 80);
  v4[1] = v2;
  v4[2] = *(v0 + 112);
  return specialized Data.init(bytes:count:)(v4, v1);
}

Swift::Bool __swiftcall CryptexIdentity.containsCryptex1Identifiers()()
{
  v1 = *(v0 + 2);
  if ((v1 & 0x18000) != 0)
  {
    return 0;
  }

  v4 = *v0;
  v5 = v1;
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  v12 = *(v0 + 120);
  v13 = *(v0 + 17);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  CryptexIdentity.productClass.getter(&v3);
  return v3 != 6;
}

uint64_t CryptexIdentity.description.getter()
{
  v62 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 7);
  v40 = *(v0 + 6);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 88);
  v58 = *(v0 + 72);
  v59 = v5;
  v60 = *(v0 + 104);
  v61 = *(v0 + 15);
  v6 = *(v0 + 56);
  v56 = *(v0 + 40);
  v57 = v6;
  v41 = v0[8];
  if ((v1 & 2) != 0)
  {
    v9 = MEMORY[0x277D84F90];
    if ((v1 & 4) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  *&v43 = 0x3D64496472616F62;
  *(&v43 + 1) = 0xE800000000000000;
  LODWORD(v42) = v2;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v7);

  v8 = v43;
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[16 * v11 + 32] = v8;
  if ((v1 & 4) == 0)
  {
LABEL_7:
    *&v43 = 0x3D644970696863;
    *(&v43 + 1) = 0xE700000000000000;
    LODWORD(v42) = v3;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v12);

    v13 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    *&v9[16 * v15 + 32] = v13;
  }

LABEL_12:
  if ((v1 & 8) == 0)
  {
    _StringGuts.grow(_:)(17);

    *&v43 = 0x7974697275636573;
    *(&v43 + 1) = 0xEF3D6E69616D6F44;
    LODWORD(v42) = v4;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v16);

    v17 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v19 = *(v9 + 2);
    v18 = *(v9 + 3);
    if (v19 >= v18 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
    }

    *(v9 + 2) = v19 + 1;
    *&v9[16 * v19 + 32] = v17;
  }

  v43 = v62;
  v51 = v58;
  v52 = v59;
  v53 = v60;
  v49 = v56;
  v44 = v1;
  v45 = v40;
  v46 = v2;
  v47 = v3;
  v48 = v4;
  v54 = v61;
  v50 = v57;
  v55 = v41;
  CryptexIdentity.productClass.getter(&v42);
  v20 = v42;
  if (v42 == 6)
  {
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    MEMORY[0x22AA74CD0](0x43746375646F7270, 0xED00003D7373616CLL);
    LOBYTE(v42) = v20;
    _print_unlocked<A, B>(_:_:)();
    v21 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v23 = *(v9 + 2);
    v22 = *(v9 + 3);
    if (v23 >= v22 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v9);
    }

    *(v9 + 2) = v23 + 1;
    *&v9[16 * v23 + 32] = v21;
    if ((v1 & 0x8000) != 0)
    {
LABEL_20:
      if ((v1 & 0x10000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }
  }

  *&v43 = 0x696D614670696863;
  *(&v43 + 1) = 0xEB000000003D796CLL;
  LODWORD(v42) = v41;
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v24);

  v25 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v27 = *(v9 + 2);
  v26 = *(v9 + 3);
  if (v27 >= v26 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
  }

  *(v9 + 2) = v27 + 1;
  *&v9[16 * v27 + 32] = v25;
  if ((v1 & 0x10000) != 0)
  {
LABEL_21:
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  *&v43 = 0x3D65707974;
  *(&v43 + 1) = 0xE500000000000000;
  LODWORD(v42) = DWORD1(v41);
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA74CD0](v28);

  v29 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v31 = *(v9 + 2);
  v30 = *(v9 + 3);
  if (v31 >= v30 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v9);
  }

  *(v9 + 2) = v31 + 1;
  *&v9[16 * v31 + 32] = v29;
  if ((v1 & 0x20000) == 0)
  {
LABEL_38:
    *&v43 = 0x3D65707954627573;
    *(&v43 + 1) = 0xE800000000000000;
    LODWORD(v42) = DWORD2(v41);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v32);

    v33 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    if (v35 >= v34 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v9);
    }

    *(v9 + 2) = v35 + 1;
    *&v9[16 * v35 + 32] = v33;
  }

LABEL_43:
  *&v43 = 91;
  *(&v43 + 1) = 0xE100000000000000;
  v42 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v36 = BidirectionalCollection<>.joined(separator:)();
  v38 = v37;

  MEMORY[0x22AA74CD0](v36, v38);

  MEMORY[0x22AA74CD0](93, 0xE100000000000000);
  return v43;
}

void CryptexIdentity.hash(into:)(uint64_t a1)
{
  v103 = *MEMORY[0x277D85DE8];
  v52 = v1[5];
  v53 = v1[6];
  v54 = v1[7];
  v78 = *v1;
  v98 = v1[7];
  v2 = *(v1 + 2);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v5 = *(v1 + 8);
  v6 = *(v1 + 9);
  v7 = *(v1 + 5);
  v8 = *(v1 + 48);
  v9 = *(v1 + 49);
  v10 = *(v1 + 50);
  v11 = *(v1 + 51);
  v12 = *(v1 + 52);
  v13 = *(v1 + 53);
  v14 = *(v1 + 54);
  v15 = *(v1 + 55);
  v16 = *(v1 + 14);
  v17 = *(v1 + 60);
  v18 = *(v1 + 9);
  v19 = *(v1 + 32);
  v20 = *(v1 + 33);
  v22 = *(v1 + 34);
  v21 = *(v1 + 35);
  v79 = v2;
  v44 = v3;
  v80 = v3;
  v81 = v4;
  v82 = v5;
  v83 = v6;
  v45 = v7;
  v84 = v7;
  v38 = v10;
  v39 = v8;
  v85 = v8;
  v46 = v9;
  v47 = v11;
  v86 = v9;
  v87 = v10;
  v88 = v11;
  v48 = v12;
  v49 = v13;
  v89 = v12;
  v90 = v13;
  v50 = v14;
  v51 = v16;
  v91 = v14;
  v37 = v15;
  v92 = v15;
  v93 = v16;
  v40 = v21;
  v41 = v17;
  v94 = v17;
  *v95 = *(v1 + 61);
  *&v95[7] = *(v1 + 17);
  v42 = v18;
  *&v95[11] = v18;
  v96 = v52;
  v97 = v53;
  v43 = v19;
  v99 = v19;
  v100 = v20;
  v101 = v22;
  v102 = v21;
  if ((v2 & 2) != 0)
  {
    Hasher._combine(_:)(0);
    if ((v2 & 4) != 0)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      if ((v2 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    if ((v2 & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
  if ((v2 & 8) != 0)
  {
LABEL_4:
    Hasher._combine(_:)(0);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v6);
  if ((v2 & 0x8000) != 0)
  {
LABEL_5:
    Hasher._combine(_:)(0);
    if ((v2 & 0x10000) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v20);
    if ((v2 & 0x20000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v43);
  if ((v2 & 0x10000) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  Hasher._combine(_:)(0);
  if ((v2 & 0x20000) != 0)
  {
LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_14;
  }

LABEL_13:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v22);
LABEL_14:
  v56 = *v1;
  *&v57 = v2;
  *(&v57 + 1) = __PAIR64__(v4, v44);
  *&v58 = __PAIR64__(v6, v5);
  *(&v58 + 1) = v45;
  v59 = v39;
  v60 = v46;
  v61 = v38;
  v62 = v47;
  v63 = v48;
  v64 = v49;
  v65 = v50;
  v66 = v37;
  v67 = v51;
  v68 = v41;
  v23 = *(v1 + 61);
  *&v69[7] = *(v1 + 17);
  *v69 = v23;
  v70 = v42;
  v24 = v1[7];
  v72 = v1[6];
  v73 = v24;
  v71 = v1[5];
  v74 = v43;
  v75 = v20;
  v76 = v22;
  v77 = v40;
  CryptexIdentity.productClass.getter(&v55);
  v25 = v55;
  if (v55 == 6)
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_16;
    }

LABEL_19:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v44);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v25 + 240);
  if ((v2 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  Hasher._combine(_:)(0);
  if ((v2 & 0x10) != 0)
  {
LABEL_17:
    Hasher._combine(_:)(0);
    goto LABEL_21;
  }

LABEL_20:
  Hasher._combine(_:)(1u);
  MEMORY[0x22AA752C0](v45);
LABEL_21:
  _img4_chip_instance.certificateProductionStatus.getter(&v56);
  v26 = v56;
  if (v56 == 2)
  {
    Hasher._combine(_:)(0);
    if ((v2 & 0x40) != 0)
    {
LABEL_23:
      v27 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x22AA75290](v26 & 1);
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_23;
    }
  }

  Hasher._combine(_:)(1u);
  v27 = v46 & 1;
LABEL_26:
  Hasher._combine(_:)(v27);
  _img4_chip_instance.effectiveProductionStatus.getter(&v56);
  v28 = v56;
  if (v56 == 2)
  {
    Hasher._combine(_:)(0);
    if ((v2 & 0x100) != 0)
    {
LABEL_28:
      v29 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x22AA75290](v28 & 1);
    if ((v2 & 0x100) != 0)
    {
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(1u);
  v29 = v47 & 1;
LABEL_31:
  Hasher._combine(_:)(v29);
  if ((v2 & 0x200) != 0)
  {
    v30 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v30 = v48 & 1;
  }

  Hasher._combine(_:)(v30);
  if ((v2 & 0x400) != 0)
  {
    v31 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v31 = v49 & 1;
  }

  Hasher._combine(_:)(v31);
  if ((v2 & 0x800) != 0)
  {
    v32 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v32 = v50 & 1;
  }

  Hasher._combine(_:)(v32);
  if ((v2 & 0x1000) != 0)
  {
    Hasher._combine(_:)(0);
    if ((v2 & 0x2000) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v51);
    if ((v2 & 0x2000) != 0)
    {
LABEL_42:
      v33 = 0;
      goto LABEL_45;
    }
  }

  Hasher._combine(_:)(1u);
  v33 = v41 & 1;
LABEL_45:
  Hasher._combine(_:)(v33);
  if ((v2 & 0x4000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v34 = specialized Data.init(bytes:count:)(&v56, v42);
    v36 = v35;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    outlined consume of Data._Representation(v34, v36);
  }
}

__n128 CryptexIdentity.init(chipInstance:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

Swift::Int CryptexIdentity.hashValue.getter()
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CryptexIdentity()
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CryptexIdentity(uint64_t a1)
{
  Hasher.init(_seed:)();
  CryptexIdentity.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 static CryptexIdentity.wildcard()@<Q0>(uint64_t a1@<X8>)
{
  _img4_chip_instance.init()(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance img4_chip_instance_omit_t@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance img4_chip_instance_omit_t(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance img4_chip_instance_omit_t@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance img4_chip_instance_omit_t@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance img4_chip_instance_omit_t@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
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
      result = MEMORY[0x22AA74760]();
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
  result = MEMORY[0x22AA74760]();
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

  MEMORY[0x22AA74760]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
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

BOOL specialized static CryptexIdentity.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v188 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 2);
  v3 = *(a1 + 6);
  v4 = *(a1 + 7);
  v5 = *(a1 + 8);
  v65 = *(a1 + 9);
  v6 = *(a1 + 5);
  v7 = *(a1 + 48);
  v73 = *(a1 + 49);
  v8 = *(a1 + 50);
  v72 = *(a1 + 51);
  v71 = *(a1 + 52);
  v70 = *(a1 + 53);
  v69 = *(a1 + 54);
  v68 = *(a1 + 60);
  v9 = *(a1 + 9);
  v81 = a1[6];
  v82 = a1[7];
  v10 = a1[5];
  v80 = v10;
  v11 = *(a1 + 32);
  v12 = *(a1 + 33);
  v79 = *(a2 + 49);
  v78 = *(a2 + 51);
  v77 = *(a2 + 52);
  v76 = *(a2 + 53);
  v14 = *(a2 + 32);
  v13 = *(a2 + 33);
  v15 = *(a1 + 61);
  *&v179[7] = *(a1 + 17);
  *v179 = v15;
  v180 = v9;
  v16 = a1[7];
  v182 = v81;
  v183 = v16;
  v181 = v10;
  v18 = a2 + 61;
  v17 = *(a2 + 61);
  *&v153[7] = *(a2 + 17);
  v75 = *(a2 + 54);
  *v153 = v17;
  v74 = *(a2 + 60);
  v19 = a2[6];
  v85 = a2[7];
  v20 = a2[5];
  v83 = v20;
  v84 = v19;
  v162 = *a1;
  v163 = v2;
  v60 = v3;
  v164 = v3;
  v165 = v4;
  v63 = v4;
  v166 = v5;
  v167 = v65;
  v59 = v6;
  v168 = v6;
  v55 = v7;
  v169 = v7;
  v170 = v73;
  v54 = v8;
  v171 = v8;
  v172 = v72;
  v173 = v71;
  v174 = v70;
  v175 = v69;
  v21 = *(a1 + 55);
  v176 = v21;
  v58 = *(a1 + 14);
  v177 = v58;
  v178 = v68;
  v184 = v11;
  v185 = v12;
  v22 = *(a1 + 34);
  LODWORD(v6) = *(a1 + 35);
  v61 = v12;
  v186 = v22;
  v187 = v6;
  v53 = v6;
  v136 = *a2;
  v67 = *(a2 + 2);
  v137 = v67;
  v24 = *(a2 + 6);
  v23 = *(a2 + 7);
  v138 = v24;
  v139 = v23;
  v25 = *(a2 + 8);
  v26 = *(a2 + 9);
  v140 = v25;
  v141 = v26;
  v27 = *(a2 + 5);
  v142 = v27;
  v143 = *(a2 + 48);
  v144 = v79;
  v51 = *(a2 + 50);
  v52 = v143;
  v145 = v51;
  v146 = v78;
  v147 = v77;
  v148 = v76;
  v149 = v75;
  v28 = *(a2 + 55);
  v150 = v28;
  v57 = *(a2 + 14);
  v151 = v57;
  v152 = v74;
  v56 = *(a2 + 9);
  v154 = v56;
  v29 = a2[7];
  v156 = v19;
  v157 = v29;
  v155 = v20;
  v62 = v13;
  v158 = v14;
  v31 = *(a2 + 34);
  v30 = *(a2 + 35);
  v159 = v13;
  v160 = v31;
  v161 = v30;
  if ((v2 & 2) == 0 && (v67 & 2) == 0 && v63 != v23)
  {
    return 0;
  }

  if ((v2 & 4) == 0 && (v67 & 4) == 0 && v5 != v25)
  {
    return 0;
  }

  if ((v2 & 8) == 0 && (v67 & 8) == 0 && v65 != v26)
  {
    return 0;
  }

  if ((v2 & 0x8000) == 0 && (v67 & 0x8000) == 0 && v11 != v14)
  {
    return 0;
  }

  if ((v2 & 0x10000) == 0 && (v67 & 0x10000) == 0 && v61 != v13)
  {
    return 0;
  }

  if ((v2 & 0x20000) == 0 && (v67 & 0x20000) == 0 && v22 != v31)
  {
    return 0;
  }

  v114 = *a1;
  v50 = v2;
  *&v115 = v2;
  *(&v115 + 1) = __PAIR64__(v63, v60);
  *&v116 = __PAIR64__(v65, v5);
  *(&v116 + 1) = v59;
  v117 = v55;
  v118 = v73;
  v119 = v54;
  v120 = v72;
  v121 = v71;
  v122 = v70;
  v123 = v69;
  v124 = v21;
  v125 = v58;
  v126 = v68;
  v32 = *(a1 + 61);
  v33 = v27;
  *&v127[7] = *(a1 + 17);
  *v127 = v32;
  v128 = v9;
  v34 = a1[6];
  v129 = a1[5];
  v130 = v34;
  v131 = a1[7];
  v132 = v11;
  v133 = v61;
  v134 = v22;
  v135 = v53;
  v64 = v30;
  v36 = v28;
  CryptexIdentity.productClass.getter(&v113);
  v66 = v113;
  v87 = *a2;
  v88 = v67;
  v89 = v24;
  v90 = v23;
  v91 = v25;
  v92 = v26;
  v93 = v33;
  v94 = v52;
  v95 = v79;
  v96 = v51;
  v97 = v78;
  v98 = v77;
  v99 = v76;
  v100 = v75;
  v101 = v36;
  v102 = v57;
  v103 = v74;
  v37 = *v18;
  *&v104[7] = *(v18 + 7);
  *v104 = v37;
  v105 = v56;
  v38 = a2[6];
  v106 = a2[5];
  v107 = v38;
  v108 = a2[7];
  v109 = v14;
  v110 = v62;
  v111 = v31;
  v112 = v64;
  CryptexIdentity.productClass.getter(&v86);
  if (v66 != 6 && v86 != 6 && v66 != v86)
  {
    return 0;
  }

  if ((v50 & 1) == 0 && (v67 & 1) == 0 && v60 != v24)
  {
    return 0;
  }

  if ((v50 & 0x10) == 0 && (v67 & 0x10) == 0 && v59 != v33)
  {
    return 0;
  }

  _img4_chip_instance.certificateProductionStatus.getter(&v114);
  v40 = v114;
  _img4_chip_instance.certificateProductionStatus.getter(&v87);
  if (v40 != 2 && v87 != 2 && ((v87 ^ v40) & 1) != 0)
  {
    return 0;
  }

  if (v50 & 0x40) == 0 && (v67 & 0x40) == 0 && ((v73 ^ v79))
  {
    return 0;
  }

  _img4_chip_instance.effectiveProductionStatus.getter(&v114);
  v41 = v114;
  _img4_chip_instance.effectiveProductionStatus.getter(&v87);
  if (v41 != 2 && v87 != 2 && ((v87 ^ v41) & 1) != 0)
  {
    return 0;
  }

  if (v50 & 0x100) == 0 && (v67 & 0x100) == 0 && ((v72 ^ v78) & 1) != 0 || (v50 & 0x200) == 0 && (v67 & 0x200) == 0 && ((v71 ^ v77) & 1) != 0 || (v50 & 0x400) == 0 && (v67 & 0x400) == 0 && ((v70 ^ v76) & 1) != 0 || (v50 & 0x800) == 0 && (v67 & 0x800) == 0 && ((v69 ^ v75) & 1) != 0 || (v50 & 0x1000) == 0 && (v67 & 0x1000) == 0 && v58 != v57 || (v50 & 0x2000) == 0 && (v67 & 0x2000) == 0 && ((v68 ^ v74))
  {
    return 0;
  }

  if ((v50 & 0x4000) != 0)
  {
    v43 = 0;
    v45 = 0;
    v44 = 0xF000000000000000;
    v46 = 0xF000000000000000;
    if ((v67 & 0x4000) != 0)
    {
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  v114 = v80;
  v115 = v81;
  v116 = v82;
  v43 = specialized Data.init(bytes:count:)(&v114, v9);
  v44 = v42;
  if ((v67 & 0x4000) == 0)
  {
LABEL_63:
    v114 = v83;
    v115 = v84;
    v116 = v85;
    v45 = specialized Data.init(bytes:count:)(&v114, v56);
    if (v44 >> 60 == 15)
    {
      goto LABEL_66;
    }

    if (v46 >> 60 == 15)
    {
LABEL_65:
      v45 = v43;
      v46 = v44;
      goto LABEL_66;
    }

    v47 = v45;
    v48 = v46;
    v49 = specialized static Data.== infix(_:_:)(v43, v44, v45, v46);
    outlined consume of Data?(v47, v48);
    outlined consume of Data?(v43, v44);
    return v49;
  }

  if (v42 >> 60 != 15)
  {
    goto LABEL_65;
  }

  v45 = 0;
  v46 = 0xF000000000000000;
LABEL_66:
  outlined consume of Data?(v45, v46);
  return 1;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass;
  if (!lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity.ProductClass and conformance CryptexIdentity.ProductClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus;
  if (!lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity.ProductionStatus and conformance CryptexIdentity.ProductionStatus);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CryptexIdentity and conformance CryptexIdentity()
{
  result = lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity;
  if (!lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexIdentity and conformance CryptexIdentity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type img4_chip_instance_omit_t and conformance img4_chip_instance_omit_t(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for img4_chip_instance_omit_t(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void CryptexCore.type.getter(uint64_t a1@<X8>)
{
  CryptexCore.createType()(&v4);
  if (v1)
  {

    v3 = 0uLL;
  }

  else
  {
    v3 = v4;
  }

  *a1 = v3;
  *(a1 + 16) = v1 != 0;
}

uint64_t CryptexCore.createType()@<X0>(void *a1@<X8>)
{
  v3 = CryptexCore.image4Ticket.getter();
  if (v3)
  {
    v4 = v3;
    Image4Auth.init()();
    static Image4PropertySpec.subType.getter(&v34);
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v5 = *(*v4 + 112);
    v10 = v5(v6, v7, v8, v9);
    if (v1)
    {
    }

    else
    {
      v13 = v10;
      v14 = v11;
      v15 = Image4Auth.read(property:from:)(&v30, v10, v11);
      v17 = v16;
      v18 = v15;

      outlined consume of Data._Representation(v13, v14);
      if (v17 & 1) != 0 || (static Image4PropertySpec.type.getter(&v34), v30 = v34, v31 = v35, v32 = v36, v33 = v37, v23 = v5(v19, v20, v21, v22), v25 = v24, v26 = Image4Auth.read(property:from:)(&v30, v23, v24), v28 = v27, v29 = v26, , outlined consume of Data._Representation(v23, v25), (v28))
      {
        type metadata accessor for CryptexError(0);
        lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        CryptexType.init(type:subtype:)(v29, v18, a1);
      }
    }
  }

  else
  {
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t CryptexCore.infoPlist.getter(char a1)
{
  if (*(*(v1 + 16) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v3)
    {
    }
  }

  type metadata accessor for CryptexError(0);
  lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
  swift_allocError();
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t CryptexCore.image4Ticket.getter()
{
  if (*(*(v0 + 16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(4), (v1 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t CryptexCore.__allocating_init(assets:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CryptexCore.init(assets:)(a1);
  return v2;
}

uint64_t CryptexCore.init(assets:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (!*(a1 + 16))
  {
    v2 = 2;
    goto LABEL_7;
  }

  v2 = 2;
  specialized __RawDictionaryStorage.find<A>(_:)(2);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    type metadata accessor for CryptexError(0);
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError();
    swift_allocError();
    *v5 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v1;
  }

  if (!*(*(v1 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(0), (v4 & 1) == 0))
  {
    v2 = 0;
    goto LABEL_7;
  }

  return v1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCore.isPackage()()
{
  v1 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CryptexCore.createType()(&v7);
  if (!v0)
  {
    return CryptexType.isPackage()();
  }

  *&v7 = v0;
  v4 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v5;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    outlined destroy of CryptexError(v3);
    goto LABEL_7;
  }

  return 1;
}

uint64_t CryptexCore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id FilePath.createDirectory(permissions:intermediateDirectories:)(__int16 a1, char a2)
{
  v14[10] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  v5 = FilePath.string.getter();
  v6 = MEMORY[0x22AA74BE0](v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226115790;
  v8 = *MEMORY[0x277CCA180];
  *(inited + 32) = *MEMORY[0x277CCA180];
  *(inited + 64) = MEMORY[0x277D84C58];
  *(inited + 40) = a1;
  v9 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSFileAttributeKey, Any)(inited + 32);
  type metadata accessor for NSFileAttributeKey();
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14[0] = 0;
  v11 = [v4 createDirectoryAtPath:v6 withIntermediateDirectories:a2 & 1 attributes:isa error:v14];

  if (v11)
  {
    return v14[0];
  }

  v13 = v14[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void FilePath.createFile(permissions:withContents:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = FilePath.string.getter();
  v9 = MEMORY[0x22AA74BE0](v8);

  isa = 0;
  if (a3 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v11 = [v7 createFileAtPath:v9 contents:isa attributes:0];

  if ((v11 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v16 = 0xD000000000000019;
    v17 = 0x8000000226117390;
    type metadata accessor for FilePath();
    lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA74CD0](v12);

    v13 = v16;
    v14 = v17;
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)(v6, v13, v14, 0xD00000000000001FLL, 0x80000002261173B0, 0xD000000000000025, 0x80000002261173D0, 31, v15);

    outlined destroy of CryptexError(v6);
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.delete()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = FilePath.string.getter();
  v2 = MEMORY[0x22AA74BE0](v1);

  v6[0] = 0;
  v3 = [v0 removeItemAtPath:v2 error:v6];

  if (v3)
  {
    v4 = v6[0];
  }

  else
  {
    v5 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSFileAttributeKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x22AA74BE0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSFileAttributeKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x22AA74D60](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSFileAttributeKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileAttributeKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSFileAttributeKey(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSFileAttributeKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x22AA74BE0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSFileAttributeKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v3 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSFileAttributeKey, Any)(v4, &v11);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined destroy of (NSFileAttributeKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NSFileAttributeKey()
{
  if (!lazy cache variable for type metadata for NSFileAttributeKey)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSFileAttributeKey);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of (NSFileAttributeKey, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd, &_sSo18NSFileAttributeKeya_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CryptexSigningService.rootCertDER.getter()
{
  v1 = v0 + *(type metadata accessor for CryptexSigningService(0) + 20);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t type metadata accessor for CryptexSigningService(uint64_t a1)
{
  result = type metadata singleton initialization cache for CryptexSigningService;
  if (!type metadata singleton initialization cache for CryptexSigningService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CryptexSigningService.init(rootCertificate:url:)@<X0>(__SecCertificate *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CryptexSigningService(0);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  v7 = SecCertificateCopyData(a1);
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = (a3 + *(v6 + 20));
  *v11 = v8;
  v11[1] = v10;

  return outlined init with take of URL?(a2, a3);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CryptexSigningService.init(rootCertificateDER:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CryptexSigningService(0);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  v9 = (a4 + *(v8 + 20));
  *v9 = a1;
  v9[1] = a2;
  return outlined init with take of URL?(a3, a4);
}

uint64_t CryptexSigningService.init(rootCertificatePEM:url:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v94[2] = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for CryptexError(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v78 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v84 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v85 = &v78 - v16;
  v17 = type metadata accessor for Data.Deallocator();
  v81 = *(v17 - 8);
  v82 = v17;
  MEMORY[0x28223BE20](v17);
  v80 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v78 - v20;
  v22 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v22 - 8);
  v79 = type metadata accessor for CryptexSigningService(0);
  v23 = *(v79 + 24);
  Logger.init(category:)(0x53676E696E676953, 0xEE00656369767265);
  static String.Encoding.utf8.getter();
  v86 = a1;
  v87 = a2;
  v24 = String.init(data:encoding:)();
  if (!v25)
  {
    swift_storeEnumTagMultiPayload();
    outlined init with copy of CryptexError(v13, v10);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    v34 = a4;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v85 = v23;
      v45 = v44;
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      outlined init with copy of CryptexError(v10, v47);
      v48 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v10);
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_2260DF000, v42, v43, "Failed to convert data to string: %@", v45, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v46, -1, -1);
      v49 = v45;
      v23 = v85;
      MEMORY[0x22AA75CB0](v49, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v10);
    }

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v13, v66);
    swift_willThrow();
    outlined consume of Data._Representation(v86, v87);
    outlined destroy of CryptexPersonalizationService?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v67 = v13;
    goto LABEL_15;
  }

  v26 = v24;
  v27 = v25;
  v83 = v7;
  v90 = v24;
  v91 = v25;
  v94[0] = 0x4745422D2D2D2D2DLL;
  v94[1] = 0xEA00000000004E49;
  v28 = type metadata accessor for Locale();
  (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
  lazy protocol witness table accessor for type String and conformance String();
  v29 = StringProtocol.range<A>(of:options:range:locale:)();
  v31 = v30;
  outlined destroy of CryptexPersonalizationService?(v21, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v31)
  {

    v32 = v85;
    swift_storeEnumTagMultiPayload();
    v33 = v84;
    outlined init with copy of CryptexError(v32, v84);
    v34 = a4;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
      swift_allocError();
      v39 = v33;
      outlined init with copy of CryptexError(v33, v40);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      outlined destroy of CryptexError(v39);
      *(v37 + 4) = v41;
      *v38 = v41;
      _os_log_impl(&dword_2260DF000, v35, v36, "Failed to find PEM start: %@", v37, 0xCu);
      outlined destroy of CryptexPersonalizationService?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x22AA75CB0](v38, -1, -1);
      MEMORY[0x22AA75CB0](v37, -1, -1);
    }

    else
    {

      outlined destroy of CryptexError(v33);
    }

    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, type metadata accessor for CryptexError, &protocol conformance descriptor for CryptexError);
    swift_allocError();
    outlined init with copy of CryptexError(v32, v68);
    swift_willThrow();
    outlined consume of Data._Representation(v86, v87);
    outlined destroy of CryptexPersonalizationService?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v67 = v32;
LABEL_15:
    outlined destroy of CryptexError(v67);
    goto LABEL_16;
  }

  v50 = specialized Collection.subscript.getter(v29, v26, v27);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v90 = v50;
  v91 = v52;
  v92 = v54;
  v93 = v56;
  v94[0] = 0;
  v89 = 0;

  v57 = Substring.distance(from:to:)();

  v58 = MEMORY[0x22AA75350](&v90, v57, v94, &v89);

  if (!v58)
  {
    v71 = v94[0];
    if (v94[0])
    {
      v72 = v89;
      v73 = v80;
      (*(v81 + 104))(v80, *MEMORY[0x277CC92A0], v82);
      v74 = specialized Data.init(bytesNoCopy:count:deallocator:)(v71, v72, v73);
      v76 = v75;
      outlined consume of Data._Representation(v86, v87);
      v77 = (a4 + *(v79 + 20));
      *v77 = v74;
      v77[1] = v76;
      return outlined init with take of URL?(v88, a4);
    }
  }

  v34 = a4;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    type metadata accessor for AMSupportError(0);
    _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError, &protocol conformance descriptor for AMSupportError);
    swift_allocError();
    *v63 = v58;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 4) = v64;
    *v62 = v64;
    _os_log_impl(&dword_2260DF000, v59, v60, "Failed to parse PEM: %@", v61, 0xCu);
    outlined destroy of CryptexPersonalizationService?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA75CB0](v62, -1, -1);
    MEMORY[0x22AA75CB0](v61, -1, -1);
  }

  type metadata accessor for AMSupportError(0);
  _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type AMSupportError and conformance AMSupportError, type metadata accessor for AMSupportError, &protocol conformance descriptor for AMSupportError);
  swift_allocError();
  *v65 = v58;
  swift_willThrow();
  outlined consume of Data._Representation(v86, v87);
  outlined destroy of CryptexPersonalizationService?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_16:
  v69 = type metadata accessor for Logger();
  return (*(*(v69 - 8) + 8))(&v23[v34], v69);
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t _s10CryptexKit0A5ErrorOACs0C0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x22AA74760]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

void type metadata completion function for CryptexSigningService(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t Result<>.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t Result<>.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
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

uint64_t Result<>.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Result<A, B><>.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 0x65736E6F70736572;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 0x65736E6F70736572;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Result<A, B><>.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Result<A, B><>.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Result<A, B><>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Result<A, B><>.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Result<A, B><>.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x65736E6F70736572;
  if (*v1)
  {
    v2 = 0x726F727265;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Result<A, B><>.CodingKeys()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Result<A, B><>.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Result<>.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Result<A, B><>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, a3, a4);

  return MEMORY[0x2821FE718](a1, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Result<A, B><>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, a3, a4);

  return MEMORY[0x2821FE720](a1, v5);
}

uint64_t Result<>.populate(xpcDict:)(void *a1)
{
  outlined init with copy of Result<Response, CryptexErrorMessage>(v1, v30);
  if (v32)
  {
    swift_getObjectType();
    v28 = &type metadata for CryptexErrorMessage;
    v29 = &protocol witness table for CryptexErrorMessage;
    v3 = swift_allocObject();
    v27[0] = v3;
    v4 = *v31;
    v3[3] = v30[2];
    v3[4] = v4;
    *(v3 + 73) = *&v31[9];
    v5 = v30[1];
    v3[1] = v30[0];
    v3[2] = v5;
    type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys(0, v6, v7, v8);
    v26[3] = v9;
    v26[4] = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, v10, v11);
    LOBYTE(v26[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v27, v26);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    outlined init with take of Response(v30, v27);
    v13 = v28;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v14 = (*(*(v12[1] + 1) + 16))(v13);
    if (!v2)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      LOBYTE(v26[0]) = 0;
      type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys(0, v17, v18, v19);
      v21 = v20;
      v24 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, v22, v23);
      OS_xpc_object.set<A>(_:forKey:)(v15, v26, ObjectType, v21, v24);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t outlined init with copy of Result<Response, CryptexErrorMessage>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Result<Response, CryptexErrorMessage><>.CodingKeys)
  {
    v4 = type metadata accessor for Result<>.CodingKeys(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Result<Response, CryptexErrorMessage><>.CodingKeys);
    }
  }
}

uint64_t static Result<>.from<A>(xpc:responseType:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v42 = a4;
  v40 = type metadata accessor for CryptexError(0);
  MEMORY[0x28223BE20](v40);
  v44 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Optional();
  v41 = *(v43 - 8);
  v7 = MEMORY[0x28223BE20](v43);
  v9 = &v39 - v8;
  v45 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys(0, v13, v14, v15);
  v17 = v16;
  *(&v52 + 1) = v16;
  v20 = lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, v18, v19);
  *&v53 = v20;
  LOBYTE(v50) = 0;
  v21 = v46;
  OS_xpc_object.decode<A>(_:forKey:)(&v50, ObjectType, a2, *(*(a3 + 8) + 8), v9);
  result = __swift_destroy_boxed_opaque_existential_0(&v50);
  if (!v21)
  {
    v39 = ObjectType;
    v46 = a3;
    v24 = v43;
    v23 = v44;
    if ((*(v45 + 48))(v9, 1, a2) == 1)
    {
      (*(v41 + 8))(v9, v24);
      v49[3] = v17;
      v49[4] = v20;
      LOBYTE(v49[0]) = 1;
      OS_xpc_object.decode<A>(_:forKey:)(v49, v39, &type metadata for CryptexErrorMessage, &protocol witness table for CryptexErrorMessage, &v50);
      result = __swift_destroy_boxed_opaque_existential_0(v49);
      v25 = v51;
      if (v51)
      {
        v26 = v42;
        *v42 = v50;
        v26[1] = v25;
        v27 = v53;
        *(v26 + 1) = v52;
        *(v26 + 2) = v27;
        *(v26 + 3) = v54[0];
        *(v26 + 57) = *(v54 + 9);
        *(v26 + 73) = 1;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v47 = 0;
        v48 = 0xE000000000000000;
        _StringGuts.grow(_:)(35);

        v47 = 0xD00000000000001BLL;
        v48 = 0x8000000226117410;
        v55 = 0;
        lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(&lazy protocol witness table cache variable for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys, &protocol conformance descriptor for Result<A, B><>.CodingKeys, v32, v33);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA74CD0](v34);

        MEMORY[0x22AA74CD0](544370464, 0xE400000000000000);
        v55 = 1;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA74CD0](v35);

        v36 = v47;
        v37 = v48;
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)(v23, v36, v37, 0xD000000000000019, 0x8000000226117430, 0xD000000000000017, 0x8000000226117450, 30, v38);

        outlined destroy of CryptexError(v23);
        return swift_willThrow();
      }
    }

    else
    {
      v28 = *(v45 + 32);
      v28(v11, v9, a2);
      v29 = v42;
      v30 = v46;
      v42[3] = a2;
      v29[4] = v30;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
      result = (v28)(boxed_opaque_existential_1, v11, a2);
      *(v29 + 73) = 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Result<Response, CryptexErrorMessage><>.CodingKeys and conformance Result<A, B><>.CodingKeys(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Result<Response, CryptexErrorMessage><>.CodingKeys(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

const UInt8 *OpaquePointer.init(from:options:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for CryptexTrustOptions(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CryptexTrustOptions(a2, v9);
  cryptex_signing_service_flags_t.init(from:)(v9);
  v10 = cryptex_signing_service_create();
  v19 = v10;
  outlined init with copy of URL?(a1, v6);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    outlined destroy of URL?(v6);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v12 + 8))(v6, v11);
    String.utf8CString.getter();

    cryptex_signing_service_set_tss_url();
  }

  v13 = URL.absoluteString.getter();
  v15 = v14;

  specialized String.withCString<A>(_:)(v13, v15, &v19, v13, v15);
  type metadata accessor for CryptexSigningService(0);
  v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = CFDataGetBytePtr(v16.super.isa);
  if (result)
  {

    CFDataGetLength(v16.super.isa);
    cryptex_signing_service_set_image_bytes();

    outlined destroy of CryptexTrustOptions(a2, type metadata accessor for CryptexTrustOptions);
    outlined destroy of CryptexTrustOptions(a1, type metadata accessor for CryptexSigningService);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of CryptexTrustOptions(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CryptexTrustOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    String.count.getter();
    cryptex_signing_service_set_image_bytes();
  }

  else
  {
    _StringGuts._slowWithCString<A>(_:)();
  }
}

uint64_t outlined destroy of CryptexTrustOptions(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FilePath.lexicallyEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *(v4 + 16);
  v13(v10, v1, v3);
  FilePath.lexicallyNormalized()();
  v13(v7, a1, v3);
  FilePath.lexicallyNormalized()();
  v14 = static FilePath.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v10, v3);
  v15(v12, v3);
  return v14 & 1;
}

uint64_t RawCryptex.format.getter@<X0>(char *a1@<X8>)
{
  result = cryptex_get_image_type();
  if (result > 1)
  {
    if (result == 2)
    {
      v3 = 2;
      goto LABEL_8;
    }

    if (result == 3)
    {
      _StringGuts.grow(_:)(33);
      MEMORY[0x22AA74CD0](0xD00000000000001FLL, 0x80000002261174A0);
      type metadata accessor for cryptex_image_type_t();
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    if (!result)
    {
      v3 = 0;
LABEL_8:
      *a1 = v3;
      return result;
    }

    if (result == 1)
    {
      v3 = 1;
      goto LABEL_8;
    }
  }

  type metadata accessor for cryptex_image_type_t();
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void type metadata accessor for cryptex_image_type_t()
{
  if (!lazy cache variable for type metadata for cryptex_image_type_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for cryptex_image_type_t);
    }
  }
}

uint64_t getEnumTagSinglePayload for RawCryptex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RawCryptex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void RequestInstall.options.getter(_BYTE *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v1[8];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

CryptexKit::RequestInstall::CodingKeys_optional __swiftcall RequestInstall.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_options;
  }

  else
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_unknownDefault;
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

CryptexKit::RequestInstall::CodingKeys_optional __swiftcall RequestInstall.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_options;
  }

  else
  {
    v4.value = CryptexKit_RequestInstall_CodingKeys_unknownDefault;
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

uint64_t RequestInstall.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RequestInstall.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F6974706FLL;
  }

  else
  {
    v3 = 0x737465737361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  else
  {
    v5 = 0x737465737361;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RequestInstall.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RequestInstall.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance RequestInstall.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x737465737361;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestInstall.CodingKeys()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestInstall.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RequestInstall.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestInstall.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestInstall.init(assets:options:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 9) = v4;
  *(a3 + 10) = v5;
  *(a3 + 11) = v6;
  return result;
}

uint64_t static RequestInstall.from(xpc:)@<X0>(uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMd, &_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMR);
  v15 = &type metadata for RequestInstall.CodingKeys;
  v6 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();
  v16 = v6;
  LOBYTE(v14[0]) = 0;
  v7 = lazy protocol witness table accessor for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B]();
  OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(v5, v14, ObjectType, v5, v7);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (!v2)
  {
    v9 = v17;
    v15 = &type metadata for RequestInstall.CodingKeys;
    v16 = v6;
    LOBYTE(v14[0]) = 1;
    OS_xpc_object.decodeRequiredObject<A>(_:forKey:)(&type metadata for Cryptex.InstallOptions, v14, ObjectType, &type metadata for Cryptex.InstallOptions, &protocol witness table for Cryptex.InstallOptions);
    result = __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = v17;
    v11 = BYTE1(v17);
    v12 = BYTE2(v17);
    v13 = BYTE3(v17);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 9) = v11;
    *(a2 + 10) = v12;
    *(a2 + 11) = v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys);
  }

  return result;
}

uint64_t RequestInstall.populate(xpcDict:)(void *a1)
{
  v3 = *v1;
  v15 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMd, &_sSDy10CryptexKit0A9AssetTypeOAA0aC0CGMR);
  v14 = lazy protocol witness table accessor for type [CryptexAssetType : CryptexAsset] and conformance <> [A : B]();
  v12[0] = v3;
  v10 = &type metadata for RequestInstall.CodingKeys;
  v7 = lazy protocol witness table accessor for type RequestInstall.CodingKeys and conformance RequestInstall.CodingKeys();
  v11 = v7;
  LOBYTE(v9[0]) = 0;

  OS_xpc_object.encode(_:forKey:)(v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v9);
  result = __swift_destroy_boxed_opaque_existential_0(v12);
  if (!v2)
  {
    v13 = &type metadata for Cryptex.InstallOptions;
    v14 = &protocol witness table for Cryptex.InstallOptions;
    LOBYTE(v12[0]) = v15;
    BYTE1(v12[0]) = v4;
    BYTE2(v12[0]) = v5;
    BYTE3(v12[0]) = v6;
    v10 = &type metadata for RequestInstall.CodingKeys;
    v11 = v7;
    LOBYTE(v9[0]) = 1;
    OS_xpc_object.encode(_:forKey:)(v12, v9);
    __swift_destroy_boxed_opaque_existential_0(v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RequestInstall.checkEntitlement(entitlements:)(Swift::OpaquePointer entitlements)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226115B70;
  v2._countAndFlagsBits = 0x6C6C6174736E69;
  v2._object = 0xE700000000000000;
  *(v1 + 32) = Request.entitlementString(_:)(v2);
  v3._countAndFlagsBits = 0x6C6C6174736E69;
  v3._object = 0xE700000000000000;
  *(v1 + 48) = Request.packageEntitlementString(_:)(v3);
  Request.checkEntitlement(approvedList:_:)(entitlements._rawValue, v1);
}