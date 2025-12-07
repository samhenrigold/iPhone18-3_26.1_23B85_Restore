uint64_t outlined init with take of BootstrapVirtualEnv.Strategy(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_226121570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2261215DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22612164C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2261216B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_226121728()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226121770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2261217A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void XPCClientAuthenticator.authenticate(request:with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for CryptexError();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  if (xpc_copy_entitlements_data_for_token())
  {
    swift_getObjectType();
    v15 = OS_xpc_object.data()();
    if (v5)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = v15;
      v18 = v16;
      v25 = a1;
      v19 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v30[0] = 0;
      v21 = [v19 propertyListWithData:isa options:0 format:0 error:v30];

      v22 = v30[0];
      if (v21)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        outlined init with copy of Any(v31, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
        if (swift_dynamicCast())
        {
          __swift_project_boxed_opaque_existential_1(v25, *(v25 + 3));
          dispatch thunk of Request.checkEntitlement(entitlements:)();
          __swift_destroy_boxed_opaque_existential_0(v31);
          outlined consume of Data._Representation(v17, v18);
          swift_unknownObjectRelease();
        }

        else
        {
          (*(v12 + 104))(v14, *MEMORY[0x277D02D48], v11);
          v24 = "ientAuthenticator.swift";
          v25 = "Failed to get entitlements data";
          type metadata accessor for CryptexErrorMessage();
          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
          swift_allocError();
          static CryptexError.error(_:_:file:function:lineNumber:)();
          (*(v12 + 8))(v14, v11);
          swift_willThrow();
          outlined consume of Data._Representation(v17, v18);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v31);
        }
      }

      else
      {
        v23 = v22;
        v25 = _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v12 + 104))(v14, *MEMORY[0x277D02D48], v11);
        v24 = "ientAuthenticator.swift";
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();
        (*(v12 + 8))(v14, v11);
        swift_willThrow();
        outlined consume of Data._Representation(v17, v18);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v12 + 104))(v14, *MEMORY[0x277D02D90], v11);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v12 + 8))(v14, v11);
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage()
{
  result = lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage;
  if (!lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage)
  {
    type metadata accessor for CryptexErrorMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCClientAuthenticator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for XPCClientAuthenticator(_WORD *result, int a2, int a3)
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

uint64_t Inventory.name.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t key path setter for Inventory.venvConfig : Inventory(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualEnvConfig(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of VirtualEnvConfig(a1, v6);
  return (*(**a2 + 144))(v6);
}

uint64_t Inventory.venvConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig;
  swift_beginAccess();
  return outlined init with copy of VirtualEnvConfig(v1 + v3, a1);
}

uint64_t outlined init with copy of VirtualEnvConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualEnvConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Inventory.venvConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig;
  swift_beginAccess();
  outlined assign with take of VirtualEnvConfig(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of VirtualEnvConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualEnvConfig(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Inventory.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path setter for Inventory.cryptexStorage : Inventory(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 168))(v6);
}

uint64_t Inventory.cryptexStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage;
  swift_beginAccess();
  v4 = type metadata accessor for FilePath();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t Inventory.cryptexStorage.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage;
  swift_beginAccess();
  v4 = type metadata accessor for FilePath();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t Inventory.cryptexGraftArea.getter()
{
  v1 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory);
  return FilePath.appending(_:)();
}

void *Inventory.cryptexes.getter()
{
  v2 = v1;
  v70[1] = *MEMORY[0x277D85DE8];
  v66 = type metadata accessor for Logger();
  v69 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_13CryptexServer0C0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = [objc_opt_self() defaultManager];
  v15 = *(*v0 + 160);
  v16 = *v0 + 160;
  v67 = v0;
  v61 = v16;
  v62 = v15;
  v15();
  v17 = FilePath.string.getter();
  v19 = v18;
  v20 = *(v5 + 8);
  v63 = v12;
  v59 = v5 + 8;
  v60 = v4;
  v58 = v20;
  v20(v12, v4);
  v21 = MEMORY[0x22AA76630](v17, v19);

  v70[0] = 0;
  v22 = [v14 contentsOfDirectoryAtPath:v21 error:v70];

  v23 = v70[0];
  if (!v22)
  {
    v52 = v70[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v13;
  }

  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v23;

  v57 = *(v24 + 16);
  if (!v57)
  {
LABEL_19:

    return v13;
  }

  v26 = 0;
  v55 = (v69 + 16);
  v56 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v27 = v24 + 40;
  v54 = v24;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v69 = v26;

    v29 = v67;
    (v62)(v28);
    FilePath.appending(_:)();
    type metadata accessor for Cryptex(0);
    v30 = FilePath.string.getter();
    v31 = v64;
    MEMORY[0x22AA76600](v30);
    v32 = v65;
    (*v55)(v65, v29 + v56, v66);
    v33 = Cryptex.__allocating_init(dir:logger:)(v31, v32);
    if (v2)
    {
      v58(v10, v60);

      return v13;
    }

    v34 = v33;
    v35 = v10;
    v68 = 0;
    v37 = *(v33 + 16);
    v36 = *(v33 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v13;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v41 = v13;
    v42 = v13[2];
    v43 = (v39 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_24;
    }

    v45 = v39;
    if (v41[3] < v44)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = v35;
      if (v39)
      {
        goto LABEL_4;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v10 = v35;
      if (v45)
      {
LABEL_4:

        v13 = v70[0];
        *(*(v70[0] + 7) + 8 * v40) = v34;

        v58(v10, v60);
        goto LABEL_5;
      }
    }

LABEL_15:
    v13 = v70[0];
    *(v70[0] + (v40 >> 6) + 8) |= 1 << v40;
    v48 = (v13[6] + 16 * v40);
    *v48 = v37;
    v48[1] = v36;
    *(v13[7] + 8 * v40) = v34;

    v58(v10, v60);
    v49 = v13[2];
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_25;
    }

    v13[2] = v51;
LABEL_5:
    v2 = v68;
    v26 = v69 + 1;
    v27 += 16;
    v24 = v54;
    if (v57 == v69 + 1)
    {
      goto LABEL_19;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v36, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
  if ((v45 & 1) == (v47 & 1))
  {
    v40 = v46;
    v10 = v35;
    if (v45)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Inventory.numInstalled.getter()
{
  v3 = (*(*v1 + 192))();
  if (!v2)
  {
    v0 = *(v3 + 16);
  }

  return v0;
}

uint64_t Inventory.authenticator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator;
  swift_beginAccess();
  return outlined init with copy of AssetAuthenticatorProtocol(v1 + v3, a1);
}

uint64_t Inventory.authenticator.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of BootstrapVirtualEnv.Strategy(a1, v1 + v3);
  return swift_endAccess();
}

char *Inventory.__allocating_init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v73 = a5;
  v7 = v6;
  v72 = a6;
  v82 = a4;
  v78 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v55 - v11;
  v77 = type metadata accessor for VirtualEnvConfig(0);
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v55 - v14;
  v76 = type metadata accessor for FilePath();
  v79 = *(v76 - 8);
  v15 = MEMORY[0x28223BE20](v76);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v55 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v24 = type metadata accessor for Logger();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v7;
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 112) = a1;
  *(v28 + 120) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(a1, a2);
  v58 = v25;
  v29 = *(v25 + 32);
  v57 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v59 = v24;
  v29(v28 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v27, v24);
  v30 = v79;
  v31 = v76;
  v64 = *(v79 + 16);
  v64(v21, v78, v76);
  v32 = a1;
  v33 = v31;
  v68 = v32;
  v69 = a2;
  v80 = v32;
  v81 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  FilePath.appending(_:)();
  v34 = v65;
  v35 = *(v30 + 32);
  v56 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v66 = v28;
  v67 = v23;
  v35(v28 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory, v23, v33);
  outlined init with copy of FilePath?(v82, v34, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v36 = v30;
  if ((*(v30 + 48))(v34, 1, v33) == 1)
  {
    outlined destroy of FilePath?(v34, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v37 = v78;
    v64(v21, v78, v33);
    v80 = v68;
    v81 = v69;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v38 = v67;
    FilePath.appending(_:)();
    v39 = v37;
  }

  else
  {
    v61 = v35;
    v40 = v35;
    v41 = v62;
    v40(v62, v34, v33);
    v64(v21, v41, v33);
    v80 = v68;
    v81 = v69;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v38 = v67;
    FilePath.appending(_:)();
    v42 = v41;
    v35 = v61;
    (*(v36 + 8))(v42, v33);
    v39 = v78;
  }

  v43 = v66;
  v35(v66 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v38, v33);
  v44 = v73;
  outlined init with copy of AssetAuthenticatorProtocol(v73, v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator);
  v46 = v71;
  v45 = v72;
  outlined init with copy of FilePath?(v72, v71, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v47 = *(v70 + 48);
  v48 = v47(v46, 1, v77);
  v49 = v74;
  if (v48 != 1)
  {
    outlined destroy of FilePath?(v45, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v44);
    outlined destroy of FilePath?(v82, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v79 + 8))(v39, v33);
    v53 = v75;
    outlined init with take of VirtualEnvConfig(v46, v75, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v53, v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig, type metadata accessor for VirtualEnvConfig);
    return v43;
  }

  v50 = v63;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  VirtualEnvConfig.init(globalEnvRoot:)(v50, v75);
  if (!v49)
  {
    outlined destroy of FilePath?(v45, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v44);
    outlined destroy of FilePath?(v82, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v79 + 8))(v39, v76);
    if (v47(v46, 1, v77) != 1)
    {
      outlined destroy of FilePath?(v46, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    v53 = v75;
    goto LABEL_10;
  }

  if (v47(v46, 1, v77) != 1)
  {
    outlined destroy of FilePath?(v46, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  (*(v58 + 8))(v43 + v57, v59);
  v51 = *(v79 + 8);
  v52 = v76;
  v51(v43 + v56, v76);
  v51(v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v52);
  __swift_destroy_boxed_opaque_existential_0((v43 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v45, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v44);
  outlined destroy of FilePath?(v82, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v51(v39, v52);
  swift_deallocPartialClassInstance();
  return v43;
}

char *Inventory.init(name:runtimeDirectory:cryptexStorage:authenticator:venvConfig:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v68 = a5;
  v7 = v6;
  v67 = a6;
  v73 = a4;
  v76 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = &v53 - v11;
  v71 = type metadata accessor for VirtualEnvConfig(0);
  v63 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v60 = &v53 - v14;
  v72 = type metadata accessor for FilePath();
  v15 = *(v72 - 8);
  v16 = MEMORY[0x28223BE20](v72);
  v58 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v57 = &v53 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(a1, a2);
  v55 = v26;
  v29 = *(v26 + 32);
  v54 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v56 = v25;
  v29(v7 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v28, v25);
  v30 = v15;
  v31 = *(v15 + 16);
  v32 = v72;
  v59 = v31;
  v31(v22, v76, v72);
  v61 = a1;
  v62 = a2;
  v74 = a1;
  v75 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  FilePath.appending(_:)();
  v33 = v60;
  v34 = v30;
  v35 = *(v30 + 32);
  v70 = v7;
  v53 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v36 = v7 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v37 = v34;
  v35(v36, v24, v32);
  outlined init with copy of FilePath?(v73, v33, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v38 = (*(v37 + 48))(v33, 1, v32);
  v65 = v37;
  if (v38 == 1)
  {
    outlined destroy of FilePath?(v33, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v59(v22, v76, v32);
    v74 = v61;
    v75 = v62;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
  }

  else
  {
    v39 = v57;
    v35(v57, v33, v32);
    v59(v22, v39, v32);
    v74 = v61;
    v75 = v62;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    (*(v37 + 8))(v39, v32);
  }

  v40 = v70;
  v35(v70 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v24, v32);
  v41 = v68;
  outlined init with copy of AssetAuthenticatorProtocol(v68, v40 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator);
  v43 = v66;
  v42 = v67;
  outlined init with copy of FilePath?(v67, v66, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v44 = *(v63 + 48);
  if (v44(v43, 1, v71) != 1)
  {
    outlined destroy of FilePath?(v42, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v41);
    outlined destroy of FilePath?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v65 + 8))(v76, v32);
    v46 = v64;
    outlined init with take of VirtualEnvConfig(v43, v64, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v46, v40 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig, type metadata accessor for VirtualEnvConfig);
    return v40;
  }

  v45 = v58;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v46 = v64;
  v47 = v69;
  VirtualEnvConfig.init(globalEnvRoot:)(v45, v64);
  if (!v47)
  {
    outlined destroy of FilePath?(v42, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v41);
    outlined destroy of FilePath?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v65 + 8))(v76, v72);
    if (v44(v43, 1, v71) != 1)
    {
      outlined destroy of FilePath?(v43, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_10;
  }

  v48 = v44(v43, 1, v71);
  v49 = v65;
  if (v48 != 1)
  {
    outlined destroy of FilePath?(v43, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  (*(v55 + 8))(v40 + v54, v56);
  v50 = *(v49 + 8);
  v51 = v72;
  v50(v40 + v53, v72);
  v50(v40 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v51);
  __swift_destroy_boxed_opaque_existential_0((v40 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  type metadata accessor for Inventory(0);
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v42, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v41);
  outlined destroy of FilePath?(v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v50(v76, v51);
  swift_deallocPartialClassInstance();
  return v40;
}

char *static Inventory.create(name:runtimeDirectory:cryptexStorage:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, char *a5, uint64_t a6)
{
  v78 = a5;
  v82 = a3;
  v76 = a1;
  v88 = type metadata accessor for VirtualEnvConfig(0);
  v9 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v81 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v83 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v65 - v17;
  v18 = type metadata accessor for FilePath();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v70 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v69 = &v65 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v65 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v75 = &v65 - v27;
  MEMORY[0x28223BE20](v26);
  v87 = &v65 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v73 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v92 = &v65 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v65 - v34;
  v84 = v18;
  if (a6)
  {

    MEMORY[0x22AA76600](v78, a6);
    (*(v19 + 56))(v35, 0, 1, v18);
  }

  else
  {
    (*(v19 + 56))(&v65 - v34, 1, 1, v18);
  }

  v36 = v87;
  MEMORY[0x22AA76600](v82, a4);
  v78 = v35;
  outlined init with copy of FilePath?(v35, v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v91[3] = type metadata accessor for Image4Auth();
  v91[4] = MEMORY[0x277D02E18];
  __swift_allocate_boxed_opaque_existential_1(v91);
  Image4Auth.init()();
  v77 = v9;
  (*(v9 + 56))(v86, 1, 1, v88);
  v67 = type metadata accessor for Inventory(0);
  v37 = swift_allocObject();
  swift_defaultActor_initialize();
  v38 = v76;
  *(v37 + 112) = v76;
  *(v37 + 120) = a2;
  swift_bridgeObjectRetain_n();
  Logger.init(category:)(v38, a2);
  v39 = *(v81 + 32);
  v66 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v68 = v11;
  v39(v37 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v13, v11);
  v40 = v19;
  v41 = *(v19 + 16);
  v42 = v84;
  v71 = v41;
  v41(v85, v36, v84);
  v89 = v38;
  v90 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  v43 = v75;
  FilePath.appending(_:)();
  v44 = *(v40 + 32);
  v74 = v37;
  v65 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v82 = v44;
  v44((v37 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory), v43, v42);
  v45 = v73;
  outlined init with copy of FilePath?(v92, v73, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v72 = v40;
  if ((*(v40 + 48))(v45, 1, v42) == 1)
  {
    outlined destroy of FilePath?(v45, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v46 = v84;
    v71(v85, v87, v84);
    v89 = v38;
    v90 = a2;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    v47 = v72;
  }

  else
  {
    v48 = v69;
    v49 = v84;
    v82(v69, v45, v84);
    v71(v85, v48, v49);
    v89 = v38;
    v90 = a2;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    FilePath.appending(_:)();
    v47 = v72;
    (*(v72 + 8))(v48, v49);
    v46 = v49;
  }

  v50 = v43;
  v51 = v74;
  v82((v74 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage), v50, v46);
  outlined init with copy of AssetAuthenticatorProtocol(v91, v51 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator);
  v52 = v86;
  v53 = v83;
  outlined init with copy of FilePath?(v86, v83, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v54 = *(v77 + 48);
  v55 = v54(v53, 1, v88);
  v56 = v79;
  if (v55 != 1)
  {
    outlined destroy of FilePath?(v52, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v91);
    outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v47 + 8))(v87, v46);
    outlined init with take of VirtualEnvConfig(v53, v56, type metadata accessor for VirtualEnvConfig);
    v59 = v78;
LABEL_13:
    outlined init with take of VirtualEnvConfig(v56, v51 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig, type metadata accessor for VirtualEnvConfig);
    v62 = v59;
    goto LABEL_14;
  }

  v57 = v70;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v58 = v80;
  VirtualEnvConfig.init(globalEnvRoot:)(v57, v56);
  v59 = v78;
  if (!v58)
  {
    outlined destroy of FilePath?(v86, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v91);
    outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v47 + 8))(v87, v46);
    v64 = v83;
    if (v54(v83, 1, v88) != 1)
    {
      outlined destroy of FilePath?(v64, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_13;
  }

  v60 = v83;
  if (v54(v83, 1, v88) != 1)
  {
    outlined destroy of FilePath?(v60, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  (*(v81 + 8))(v51 + v66, v68);
  v61 = *(v47 + 8);
  v61(v51 + v65, v46);
  v61(v51 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v46);
  __swift_destroy_boxed_opaque_existential_0((v51 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v86, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v91);
  outlined destroy of FilePath?(v92, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v61(v87, v46);
  swift_deallocPartialClassInstance();
  v62 = v59;
LABEL_14:
  outlined destroy of FilePath?(v62, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return v51;
}

char *static Inventory.create(name:runtimeDirectory:)(uint64_t a1, char *a2, char *a3, char *a4)
{
  v77 = a4;
  v80 = a3;
  v82 = a1;
  v5 = type metadata accessor for VirtualEnvConfig(0);
  v87 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v75 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v81 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v69 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v83 = &v62 - v17;
  v19 = type metadata accessor for FilePath();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v66 = &v62 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v62 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v62 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v62 - v31;

  v33 = v77;

  MEMORY[0x22AA76600](v80, v33);
  (*(v20 + 56))(v18, 1, 1, v19);
  v86[3] = type metadata accessor for Image4Auth();
  v86[4] = MEMORY[0x277D02E18];
  __swift_allocate_boxed_opaque_existential_1(v86);
  Image4Auth.init()();
  v34 = *(v87 + 56);
  v77 = v13;
  v74 = v5;
  v34(v13, 1, 1, v5);
  v65 = type metadata accessor for Inventory(0);
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  v36 = v82;
  *(v35 + 112) = v82;
  *(v35 + 120) = a2;
  swift_bridgeObjectRetain_n();
  v37 = v72;
  Logger.init(category:)(v36, a2);
  v38 = *(v78 + 32);
  v64 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v38(v35 + OBJC_IVAR____TtC13CryptexServer9Inventory_logger, v37, v79);
  v39 = *(v20 + 16);
  v80 = v32;
  v68 = v39;
  v39(v27, v32, v19);
  v84 = v36;
  v85 = a2;
  v72 = a2;

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  v40 = v27;
  FilePath.appending(_:)();
  v41 = v69;
  v42 = *(v20 + 32);
  v70 = v35;
  v63 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v71 = v30;
  v42(v35 + OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory, v30, v19);
  outlined init with copy of FilePath?(v83, v41, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v43 = v20;
  v44 = (*(v20 + 48))(v41, 1, v19);
  v73 = v20;
  if (v44 == 1)
  {
    outlined destroy of FilePath?(v41, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v68(v40, v80, v19);
    v84 = v82;
    v85 = v72;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v45 = v42;
    v46 = v71;
    FilePath.appending(_:)();
  }

  else
  {
    v47 = v66;
    v42(v66, v41, v19);
    v68(v40, v47, v19);
    v84 = v82;
    v85 = v72;
    MEMORY[0x22AA76680](0x786574707972632FLL, 0xEB000000002F7365);
    v45 = v42;
    v46 = v71;
    FilePath.appending(_:)();
    (*(v43 + 8))(v47, v19);
  }

  v48 = v19;
  v49 = v70;
  v45(v70 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v46, v19);
  outlined init with copy of AssetAuthenticatorProtocol(v86, v49 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator);
  v50 = v77;
  v51 = v81;
  outlined init with copy of FilePath?(v77, v81, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  v52 = *(v87 + 48);
  v53 = v74;
  v54 = v52(v51, 1, v74);
  v55 = v75;
  if (v54 != 1)
  {
    outlined destroy of FilePath?(v50, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v86);
    outlined destroy of FilePath?(v83, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v73 + 8))(v80, v48);
    outlined init with take of VirtualEnvConfig(v51, v55, type metadata accessor for VirtualEnvConfig);
LABEL_10:
    outlined init with take of VirtualEnvConfig(v55, v49 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig, type metadata accessor for VirtualEnvConfig);
    return v49;
  }

  v56 = v67;
  MEMORY[0x22AA76580](0xD000000000000013, 0x80000002261455E0);
  v57 = v76;
  VirtualEnvConfig.init(globalEnvRoot:)(v56, v55);
  if (!v57)
  {
    outlined destroy of FilePath?(v50, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    __swift_destroy_boxed_opaque_existential_0(v86);
    outlined destroy of FilePath?(v83, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    (*(v73 + 8))(v80, v48);
    v61 = v81;
    if (v52(v81, 1, v53) != 1)
    {
      outlined destroy of FilePath?(v61, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
    }

    goto LABEL_10;
  }

  v58 = v81;
  if (v52(v81, 1, v53) != 1)
  {
    outlined destroy of FilePath?(v58, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  }

  (*(v78 + 8))(v49 + v64, v79);
  v59 = *(v73 + 8);
  v59(v49 + v63, v48);
  v59(v49 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v48);
  __swift_destroy_boxed_opaque_existential_0((v49 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();
  outlined destroy of FilePath?(v77, &_s13CryptexServer16VirtualEnvConfigVSgMd, &_s13CryptexServer16VirtualEnvConfigVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v86);
  outlined destroy of FilePath?(v83, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v59(v80, v48);
  swift_deallocPartialClassInstance();
  return v49;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.start()()
{
  v2 = (*(*v0 + 248))();
  if (!v1)
  {
    (*(*v0 + 336))(v2);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.layDownDirectoryStructure()()
{
  v1 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = objc_opt_self();
  v6 = [v42 defaultManager];
  v7 = FilePath.string.getter();
  v8 = MEMORY[0x22AA76630](v7);

  v43[0] = 0;
  v9 = [v6 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:v43];

  v10 = v43[0];
  if (v9 && (v11 = v43[0], v12 = [v42 defaultManager], v13 = *(*v1 + 160), v14 = v2, v38 = *v1 + 160, v39 = v13, (v13)(v12, v15), v16 = FilePath.string.getter(), v18 = v17, v20 = v3 + 8, v19 = *(v3 + 8), v40 = v20, v41 = v14, v19(v5, v14), v21 = MEMORY[0x22AA76630](v16, v18), , v43[0] = 0, LODWORD(v18) = objc_msgSend(v12, 0x278584791, v21, 1, 0, v43), v12, v21, v10 = v43[0], v18) && (v22 = v43[0], v23 = objc_msgSend(v42, sel_defaultManager), v39(), v24 = FilePath.string.getter(), v26 = v25, v27 = v41, v19(v5, v41), v28 = MEMORY[0x22AA76630](v24, v26), , v43[0] = 0, LODWORD(v26) = objc_msgSend(v23, 0x278584791, v28, 1, 0, v43), v23, v28, v10 = v43[0], v26) && (v29 = v43[0], v30 = objc_msgSend(v42, sel_defaultManager), (*(*v1 + 184))(), v31 = FilePath.string.getter(), v33 = v32, v19(v5, v27), v34 = MEMORY[0x22AA76630](v31, v33), , v43[0] = 0, v35 = objc_msgSend(v30, 0x278584791, v34, 1, 0, v43), v30, v34, v10 = v43[0], (v35 & 1) != 0))
  {
    v36 = v43[0];
  }

  else
  {
    v37 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void Inventory.authenticate(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CryptexAssetType();
  v95 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v93 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = v79 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v79 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v79 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v79 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v79 - v20;
  v99 = (*(*a1 + 120))(v19);
  v22 = CryptexCore.image4Ticket.getter();
  if (v22)
  {
    v92 = v3;
    v23 = v22;
    v24 = dispatch thunk of CryptexAsset.data.getter();
    if (v2)
    {
    }

    else
    {
      v86 = v12;
      v87 = v15;
      v88 = v5;
      v89 = v23;
      v90 = v24;
      v91 = v25;
      v29 = *(*v92 + 208);
      v30 = *v92 + 208;
      v29(v96);
      v31 = v97;
      v32 = v98;
      v33 = __swift_project_boxed_opaque_existential_1(v96, v97);
      CryptexCore.infoPlist.getter();
      v83 = v33;
      v84 = v32;
      v85 = v31;
      v81 = v30;
      v82 = v29;
      v34 = dispatch thunk of CryptexAsset.data.getter();
      v36 = v35;

      CryptexCore.infoPlist.getter();
      CryptexAsset.type.getter();

      CryptexAssetType._4cc.getter();
      v38 = v37;
      v39 = v34;
      v40 = v36;
      v42 = (v95 + 1);
      v41 = v95[1];
      v43 = v21;
      v44 = v88;
      v41(v43, v88);
      v80 = v38;
      dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
      v85 = v41;
      outlined consume of Data._Representation(v39, v40);

      __swift_destroy_boxed_opaque_existential_0(v96);
      v45 = *(v99 + 16);
      v46 = *MEMORY[0x277D02DD0];
      v47 = v95[13];
      v95 += 13;
      v47(v18, v46, v44);
      if (*(v45 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v18), (v48 & 1) != 0))
      {
        v83 = v47;
        v49 = v42;

        v50 = v18;
        v51 = v88;
        v52 = v85;
        v53 = (v85)(v50, v88);
        v82(v96, v53);
        v86 = v98;
        v84 = __swift_project_boxed_opaque_existential_1(v96, v97);
        v57 = dispatch thunk of CryptexAsset.data.getter();
        v80 = v58;
        v59 = v87;
        CryptexAsset.type.getter();
        v79[1] = CryptexAssetType._4cc.getter();
        v60 = v59;
        v61 = v80;
        v52(v60, v51);
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        v62 = v99;
        v87 = v49;
        outlined consume of Data._Representation(v57, v61);

        __swift_destroy_boxed_opaque_existential_0(v96);
        v47 = v83;
      }

      else
      {
        v54 = (v85)(v18, v88);
        v82(v96, v54);
        v55 = v98;
        __swift_project_boxed_opaque_existential_1(v96, v97);
        v62 = v99;
        CryptexCore.diskImage.getter();
        v87 = v42;
        v56 = dispatch thunk of CryptexAsset.data.getter();
        v64 = v63;
        v84 = v55;
        v65 = v56;

        CryptexCore.diskImage.getter();
        v83 = v65;
        v66 = v86;
        CryptexAsset.type.getter();

        v80 = CryptexAssetType._4cc.getter();
        v68 = v67;
        v69 = v66;
        v70 = v83;
        v85(v69, v88);
        v86 = v68;
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        outlined consume of Data._Representation(v70, v64);

        __swift_destroy_boxed_opaque_existential_0(v96);
      }

      v71 = *(v62 + 16);
      v72 = v94;
      v47(v94, *MEMORY[0x277D02DC8], v88);
      if (*(v71 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v72), (v73 & 1) != 0))
      {

        v74 = (v85)(v72, v88);
        v82(v96, v74);
        v95 = v98;
        v94 = __swift_project_boxed_opaque_existential_1(v96, v97);
        v75 = dispatch thunk of CryptexAsset.data.getter();
        v77 = v76;
        v78 = v93;
        CryptexAsset.type.getter();
        CryptexAssetType._4cc.getter();
        v85(v78, v88);
        dispatch thunk of AssetAuthenticatorProtocol.authenticate(fileData:with4cc:against:)();
        outlined consume of Data._Representation(v75, v77);

        outlined consume of Data._Representation(v90, v91);

        __swift_destroy_boxed_opaque_existential_0(v96);
      }

      else
      {
        v85(v72, v88);
        outlined consume of Data._Representation(v90, v91);
      }
    }
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_226120000, v26, v27, "Cryptex is unauthenticated", v28, 2u);
      MEMORY[0x22AA76E00](v28, -1, -1);
    }
  }
}

void *Inventory.bootstrappers(forOptions:)()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VirtualEnvConfig(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((Cryptex.BootstrapOptions.globalEnvironment.getter() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  (*(*v0 + 136))();
  (*(v3 + 32))(v5, v8, v2);
  v9 = type metadata accessor for BootstrapVirtualEnv(0);
  v23 = v9;
  v24 = &protocol witness table for BootstrapVirtualEnv;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  BootstrapVirtualEnv.init(envRoot:)(v5, boxed_opaque_existential_1);
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_1(v22);
  }

  else
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = v0[2];
    v11 = v0[3];
    if (v12 >= v11 >> 1)
    {
      v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v0);
    }

    v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v13);
    v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15);
    v20 = v9;
    v21 = &protocol witness table for BootstrapVirtualEnv;
    v17 = __swift_allocate_boxed_opaque_existential_1(&v19);
    outlined init with take of VirtualEnvConfig(v15, v17, type metadata accessor for BootstrapVirtualEnv);
    v0[2] = v12 + 1;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v19, &v0[5 * v12 + 4]);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  return v0;
}

uint64_t Inventory.bootstrap(_:via:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v4 = type metadata accessor for CryptexError();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - v16;
  (*(*v2 + 184))(v15);
  v18 = v61;
  (*(*a1 + 256))(v14);
  v61 = v18;
  if (!v18)
  {
    *&v55 = v6;
    v56 = a1;
    v57 = v17;
    v20 = *(v11 + 8);
    v20(v14, v10);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      outlined destroy of FilePath?(v9, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v22 = v59;
      v21 = v60;
      v23 = v55;
      (*(v59 + 104))(v55, *MEMORY[0x277D02D88], v60);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();
      (*(v22 + 8))(v23, v21);
      return swift_willThrow();
    }

    v52 = v20;
    v53 = v11 + 8;
    v54 = v10;
    v24 = v57;
    (*(v11 + 32))(v57, v9, v10);
    v26 = *(v58 + 16);
    if (!v26)
    {
      return v52(v24, v54);
    }

    v59 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
    v27 = v58 + 32;
    *&v25 = 136315650;
    v55 = v25;
    v28 = v56;
    while (1)
    {
      outlined init with copy of AssetAuthenticatorProtocol(v27, v63);
      v29 = v64;
      v30 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v31 = (*(v30 + 8))(v28, v29, v30);
      outlined init with copy of AssetAuthenticatorProtocol(v63, v62);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v66 = v58;
        *v34 = v55;
        LODWORD(v60) = v31;
        v35 = __swift_project_boxed_opaque_existential_1(v62, v62[3]);
        MEMORY[0x28223BE20](v35);
        (*(v37 + 16))(&v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
        v38 = String.init<A>(describing:)();
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_0(v62);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v66);

        *(v34 + 4) = v41;
        *(v34 + 12) = 2080;
        if (v60)
        {
          v42 = 0;
        }

        else
        {
          v42 = 1953459744;
        }

        if (v60)
        {
          v43 = 0xE000000000000000;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v66);
        v45 = v60;

        *(v34 + 14) = v44;
        v28 = v56;
        *(v34 + 22) = 2080;
        *(v34 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v28 + 16), *(v28 + 24), &v66);
        _os_log_impl(&dword_226120000, v32, v33, "%s is%s applicable to %s", v34, 0x20u);
        v46 = v58;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v46, -1, -1);
        v47 = v34;
        v24 = v57;
        MEMORY[0x22AA76E00](v47, -1, -1);

        if ((v45 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v62);
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v48 = v64;
      v49 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v50 = v61;
      (*(v49 + 16))(v28, v24, v48, v49);
      v61 = v50;
      if (v50)
      {
        v52(v24, v54);
        return __swift_destroy_boxed_opaque_existential_0(v63);
      }

LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v63);
      v27 += 40;
      if (!--v26)
      {
        return v52(v24, v54);
      }
    }
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t Inventory.unbootstrap(_:via:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  (*(*v2 + 184))(v10);
  (*(*a1 + 256))(v8);
  (*(v6 + 8))(v8, v5);
  v14 = *(a2 + 16);
  if (v14)
  {
    v24 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
    v15 = a2 + 32;
    *&v13 = 136315394;
    v21 = v13;
    v22 = v12;
    v23 = v2;
    do
    {
      outlined init with copy of AssetAuthenticatorProtocol(v15, v25);
      v16 = v26;
      v17 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      if ((*(v17 + 8))(a1, v16, v17))
      {
        v18 = v26;
        v19 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v19 + 24))(a1, v12, v18, v19);
      }

      __swift_destroy_boxed_opaque_existential_0(v25);
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  return outlined destroy of FilePath?(v12, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
}

uint64_t Inventory.contains(_:version:)(uint64_t a1, uint64_t a2)
{
  if (*((*(*v2 + 192))() + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v6 = v5;

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  v8 = type metadata accessor for CryptexError();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D02D68], v8);
  swift_willThrow();

  return 0;
}

void Inventory.uninstall(byName:version:withOptions:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for Cryptex.BootstrapOptions();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*v2 + 192))(v12);
  if (!v3)
  {
    v16 = v15;
    if (*(v15 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, specialized __RawDictionaryStorage.find<A>(_:hashValue:)), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      (*(*v19 + 176))(v20);
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        outlined destroy of FilePath?(v9, &_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
        v23 = MEMORY[0x277D84F90];
      }

      else
      {
        (*(v11 + 32))(v14, v9, v10);
        v23 = (*(*v4 + 264))(v14);
        (*(v11 + 8))(v14, v10);
      }

      (*(*v4 + 328))(v19, v23);

      (*(*v19 + 272))(v24);
    }

    else
    {

      v21 = type metadata accessor for CryptexError();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D02D68], v21);
      swift_willThrow();
    }
  }
}

uint64_t Inventory.install(_:withOptions:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  v86 = v4;
  v87 = v5;
  MEMORY[0x28223BE20](v4);
  v85 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Cryptex.BootstrapOptions();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for URL.DirectoryHint();
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for URL();
  v91 = *(v94 - 8);
  v9 = MEMORY[0x28223BE20](v94);
  v89 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v92 = &v73 - v13;
  v88 = type metadata accessor for FilePath();
  v96 = *(v88 - 8);
  v14 = MEMORY[0x28223BE20](v88);
  v83 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v21 = type metadata accessor for UUID();
  v97 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 24);
  v99 = *(a1 + 16);
  v84 = a1;
  v25 = *(*v2 + 192);

  v27 = v102;
  v28 = v25(v26);
  v102 = v27;
  if (v27)
  {
  }

  v77 = v23;
  v30 = v97;
  v78 = v24;
  v31 = v98;
  v74 = v18;
  v76 = v20;
  v75 = v2;
  if (*(v28 + 16))
  {
    v32 = v99;
    v33 = v78;
    specialized __RawDictionaryStorage.find<A>(_:)(v99, v78, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v35 = v34;

    v36 = v31;
    v37 = v30;
    if (v35)
    {

      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
      v38 = v86;
      v39 = swift_allocError();
      (*(v87 + 104))(v40, *MEMORY[0x277D02D70], v38);
      v102 = v39;
      return swift_willThrow();
    }
  }

  else
  {

    v36 = v31;
    v33 = v78;
    v32 = v99;
    v37 = v30;
  }

  v100 = v32;
  v101 = v33;

  MEMORY[0x22AA76680](45, 0xE100000000000000);
  v41 = v77;
  UUID.init()();
  v42 = UUID.uuidString.getter();
  v44 = v43;
  (*(v37 + 8))(v41, v21);
  MEMORY[0x22AA76680](v42, v44);

  v45 = v100;
  v46 = v101;
  v47 = [objc_opt_self() defaultManager];
  v48 = [v47 temporaryDirectory];

  v49 = v89;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = v45;
  v101 = v46;
  v50 = v95;
  v51 = v93;
  (*(v95 + 104))(v93, *MEMORY[0x277CC91D8], v36);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v50 + 8))(v51, v36);
  (*(v91 + 8))(v49, v94);

  v52 = v92;
  FilePath.init(_:)();
  v53 = v96;
  v54 = v88;
  if ((*(v96 + 48))(v52, 1, v88) == 1)
  {

    outlined destroy of FilePath?(v52, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v55 = v86;
    v56 = v87;
    v57 = v85;
    (*(v87 + 104))(v85, *MEMORY[0x277D02D48], v86);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    v58 = swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v56 + 8))(v57, v55);
    v102 = v58;
    return swift_willThrow();
  }

  v59 = v76;
  (*(v53 + 32))(v76, v52, v54);
  v60 = v102;
  v61 = (*(*v84 + 232))(v59);
  v102 = v60;
  if (v60)
  {
    (*(v53 + 8))(v59, v54);
  }

  v62 = v61;
  v63 = v75;
  v64 = (*(*v75 + 256))();
  v102 = 0;
  (*(*v63 + 160))(v64);
  v65 = v74;
  FilePath.appending(_:)();
  v66 = v102;
  (*(*v62 + 240))(v65);
  v102 = v66;
  if (v66)
  {
    v67 = (*(v53 + 8))(v65, v54);
LABEL_16:
    (*(*v62 + 272))(v67);
    swift_willThrow();

    return (*(v53 + 8))(v59, v54);
  }

  v68 = v80;
  Cryptex.InstallOptions.bootstrap.getter();
  v69 = v102;
  (*(*v63 + 320))(v62, v68, 0);
  v70 = (v79 + 8);
  v71 = (v53 + 8);
  v102 = v69;
  if (v69)
  {
    (*v70)(v68, v82);
    v67 = (*v71)(v65, v54);
    v59 = v76;
    goto LABEL_16;
  }

  (*v70)(v68, v82);
  v72 = *v71;
  (*v71)(v65, v54);
  return v72(v76, v54);
}

void (*Inventory.infoPlistFDs()())(char *, uint64_t)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 192))(v7);
  if (!v1)
  {
    v11 = result;
    v35 = v9;
    v38 = v4;
    v36 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    v12 = result + 64;
    v13 = 1 << *(result + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(result + 8);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 48);
    v33 = (v6 + 32);
    v34 = (v6 + 8);

    v18 = 0;
    v39 = v5;
    v40 = v17;
LABEL_5:
    v19 = v18;
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      v18 = v19;
LABEL_10:
      v20 = *(**(*(v11 + 7) + 8 * (__clz(__rbit64(v15)) | (v18 << 6))) + 120);

      v20(v21);
      CryptexCore.infoPlist.getter();
      v15 &= v15 - 1;

      v22 = v38;
      dispatch thunk of CryptexAsset.url.getter();
      v23 = v22;

      v24 = v22;
      v5 = v39;
      if ((*v37)(v24, 1, v39) != 1)
      {
        (*v33)(v35, v23, v5);
        URL._bridgeToObjectiveC()(v25);
        v27 = v26;
        v28 = objc_opt_self();
        v41 = 0;
        v32 = [v28 fileHandleForReadingFromURL:v27 error:&v41];

        v11 = v41;
        if (!v32)
        {
          goto LABEL_20;
        }

        v5 = v34;
        v36 = *v34;
        v29 = v41;
        v36(v35, v39);

        MEMORY[0x22AA766B0](v30);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v36 = v42;
        v11 = v40;
        goto LABEL_5;
      }

      outlined destroy of FilePath?(v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v19 = v18;
      v11 = v40;
    }

    while (v15);
LABEL_7:
    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        return v36;
      }

      v15 = *&v12[8 * v18];
      ++v19;
      if (v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_20:
    v31 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*v34)(v35, v5);
  }

  return result;
}

uint64_t Inventory.activate(installed:options:skipGraft:)(void *a1, uint64_t a2, int a3)
{
  v60 = a3;
  v6 = type metadata accessor for CryptexError();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilePath();
  v61 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = v65;
  result = (*(*v3 + 264))(a2);
  if (v18)
  {
    return result;
  }

  v53 = v12;
  v54 = v15;
  v55 = a2;
  v56 = v3;
  v57 = v17;
  v58 = v9;
  v65 = result;
  v59 = 0;
  v20 = (*(*a1 + 144))();
  v22 = v62;
  v23 = v8;
  if (!v21)
  {
LABEL_11:

    (*(v22 + 104))(v23, *MEMORY[0x277D02D48], v6);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v22 + 8))(v23, v6);
    return swift_willThrow();
  }

  v24 = v20;
  v25 = v21;
  v26 = (*(*a1 + 160))();
  if (!v27)
  {
LABEL_10:

    goto LABEL_11;
  }

  v28 = v27;
  v29 = v24;
  v30 = v26;
  v31 = *(*a1 + 152);
  v52 = a1;
  v32 = v31();
  if (!v33)
  {

    goto LABEL_10;
  }

  v63 = v32;
  v64 = v33;
  MEMORY[0x22AA76680](47, 0xE100000000000000);
  MEMORY[0x22AA76680](v29, v25);

  MEMORY[0x22AA76680](47, 0xE100000000000000);
  MEMORY[0x22AA76680](v30, v28);

  v34 = v57;
  v35 = MEMORY[0x22AA76600](v63, v64);
  if (v60)
  {
    v36 = v52;

    v37 = v56;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v61;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315138;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36[2], v36[3], &v63);
      _os_log_impl(&dword_226120000, v38, v39, "Cryptex %s is already grafted.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA76E00](v43, -1, -1);
      MEMORY[0x22AA76E00](v42, -1, -1);
    }

    v44 = v58;
  }

  else
  {
    v37 = v56;
    v45 = v53;
    (*(*v56 + 184))(v35);
    v46 = v54;
    FilePath.appending(_:)();
    v41 = v61;
    v47 = *(v61 + 8);
    v48 = v45;
    v44 = v58;
    v47(v48, v58);
    v36 = v52;
    v49 = v59;
    (*(*v52 + 248))(v46);
    v59 = v49;
    if (v49)
    {
      v47(v46, v44);
LABEL_18:
      (*(*v37 + 328))(v36, v65);

      swift_willThrow();
      return (*(v41 + 8))(v34, v44);
    }

    v47(v46, v44);
  }

  v50 = v59;
  (*(*v36 + 184))(v55);
  if (v50)
  {
    v59 = v50;
    goto LABEL_18;
  }

  (*(*v37 + 272))(v36, v65);
  v59 = 0;
  (*(v41 + 8))(v34, v44);
}

uint64_t Inventory.deactivate(_:bootstrappers:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(*v3 + 280))(a1, a2);
  (*(*v3 + 184))(v10);
  (*(*a1 + 264))(v9);
  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.rediscoverInstalled()()
{
  v2 = v0;
  v208[1] = *MEMORY[0x277D85DE8];
  v179 = type metadata accessor for CryptexError();
  v3 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v172 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v174 = &v155 - v6;
  v197 = type metadata accessor for Cryptex.BootstrapOptions();
  v201 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v173 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v155 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v180 = &v155 - v11;
  v196 = type metadata accessor for Logger();
  v200 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for FilePath();
  v13 = *(v207 - 8);
  v14 = MEMORY[0x28223BE20](v207);
  v193 = &v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v192 = &v155 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v175 = &v155 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v155 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v178 = &v155 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v194 = &v155 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v206 = &v155 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v198 = &v155 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v155 - v30;
  v202 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v32, v33);
  v183 = v2;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_226120000, v32, v33, "Scanning installed cryptexes...", v35, 2u);
    v36 = v35;
    v2 = v183;
    MEMORY[0x22AA76E00](v36, -1, -1);
  }

  v37 = *(*v2 + 184);
  v38 = *v2 + 184;
  v37();
  v39 = static APFSAdapter.allDisksGrafted(under:logger:)(v31, v2 + v202);
  if (v1)
  {
    (*(v13 + 8))(v31, v207);
    return;
  }

  v199 = v3;
  v203 = 0;
  v171 = v39;
  v168 = v38;
  v169 = v37;
  v40 = *(v13 + 8);
  v41 = v31;
  v42 = v207;
  v40(v41, v207);
  v189 = objc_opt_self();
  v43 = [v189 defaultManager];
  v44 = *(*v2 + 160);
  v45 = v198;
  v190 = *v2 + 160;
  v191 = v44;
  v44();
  v46 = FilePath.string.getter();
  v48 = v47;
  v205 = v13 + 8;
  v40(v45, v42);
  v49 = MEMORY[0x22AA76630](v46, v48);

  v208[0] = 0;
  v50 = [v43 contentsOfDirectoryAtPath:v49 error:v208];

  v51 = v208[0];
  if (v50)
  {
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v51;

    v188 = *(v52 + 16);
    if (v188)
    {
      v186 = type metadata accessor for Cryptex(0);
      v54 = 0;
      v185 = (v200 + 16);
      v170 = (v13 + 48);
      v166 = (v13 + 32);
      v163 = (v201 + 6);
      v162 = (v201 + 4);
      v161 = (v201 + 1);
      v201 = (v13 + 16);
      v160 = *MEMORY[0x277D02D60];
      v167 = (v199 + 104);
      v159 = "ed:options:skipGraft:)";
      v158 = "Cryptex is not grafted";
      v157 = "ached bootstrap options";
      v156 = (v199 + 8);
      v165 = (v13 + 56);
      v164 = *MEMORY[0x277D02D78];
      v55 = v52 + 40;
      *&v56 = 136315138;
      v182 = v56;
      *&v56 = 136315394;
      v181 = v56;
      v57 = v197;
      v204 = v40;
      v187 = v52;
      do
      {
        if (v54 >= *(v52 + 16))
        {
          __break(1u);
        }

        v58 = v57;
        v199 = v55;
        v200 = v54;

        v60 = v191;
        (v191)(v59);

        v61 = FilePath.appending(_:)();
        (v60)(v61);
        v62 = v194;
        FilePath.appending(_:)();
        v63 = v195;
        (*v185)(v195, v2 + v202, v196);
        v64 = v203;
        v65 = Cryptex.__allocating_init(dir:logger:)(v62, v63);
        v66 = v64;
        if (v64)
        {
          v203 = 0;
          v67 = v207;
          v68 = v192;
        }

        else
        {
          v69 = v65;
          (*(*v65 + 120))();
          CryptexCore.diskImage.getter();
          v70 = v207;

          v71 = v70;
          v72 = v180;
          dispatch thunk of CryptexAsset.path.getter();

          if ((*v170)(v72, 1, v71) == 1)
          {
            outlined destroy of FilePath?(v72, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.error.getter();
            v75 = os_log_type_enabled(v73, v74);
            v68 = v192;
            if (v75)
            {
              v76 = swift_slowAlloc();
              *v76 = 0;
              _os_log_impl(&dword_226120000, v73, v74, "dmg asset lacks a path", v76, 2u);
              MEMORY[0x22AA76E00](v76, -1, -1);
            }

            lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
            v77 = v179;
            v78 = swift_allocError();
            v80 = v79;
            v81 = v207;
            (*v165)(v79, 1, 1, v207);
            v82 = v77;
            v67 = v81;
            v66 = v78;
            (*v167)(v80, v164, v82);
            swift_willThrow();

            v203 = 0;
          }

          else
          {
            v83 = v178;
            (*v166)(v178, v72, v71);
            v84 = (*(*v2 + 256))(v69);
            v85 = v177;
            v86 = (v169)(v84);
            MEMORY[0x28223BE20](v86);
            *(&v155 - 2) = v83;
            *(&v155 - 1) = v85;
            v87 = specialized Sequence.first(where:)(partial apply for closure #1 in Inventory.rediscoverInstalled(), v171, v176);
            v88 = v175;
            v89 = v174;
            (*(*v69 + 176))(v87);
            v126 = (*v163)(v89, 1, v57);
            if (v126 != 1)
            {
              v132 = v173;
              (*v162)(v173, v89, v57);
              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
              v134 = v176;
              v135 = (*(*(v133 - 8) + 48))(v176, 1, v133) != 1;
              (*(*v2 + 320))(v69, v132, v135);
              v136 = v134;
              v203 = 0;
              v137 = v207;
              (*v201)(v88, v206, v207);
              v138 = Logger.logObject.getter();
              v139 = v88;
              v140 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v138, v140))
              {
                v141 = swift_slowAlloc();
                v184 = v141;
                v142 = swift_slowAlloc();
                v208[0] = v142;
                *v141 = v182;
                lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
                v143 = dispatch thunk of CustomStringConvertible.description.getter();
                v145 = v144;
                v146 = v204;
                v204(v139, v137);
                v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v145, v208);
                v2 = v183;

                v148 = v184;
                *(v184 + 4) = v147;
                v149 = v140;
                v150 = v148;
                _os_log_impl(&dword_226120000, v138, v149, "Resumed management of cryptex installed at %s", v148, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v142);
                v151 = v142;
                v152 = v176;
                v57 = v197;
                MEMORY[0x22AA76E00](v151, -1, -1);
                MEMORY[0x22AA76E00](v150, -1, -1);

                (*v161)(v173, v57);
                v146(v206, v137);
                v52 = v187;
              }

              else
              {

                v146 = v204;
                v204(v139, v137);
                v153 = v58;
                (*v161)(v173, v58);
                v146(v206, v137);
                v52 = v187;
                v152 = v136;
                v57 = v153;
              }

              outlined destroy of FilePath?(v152, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
              v146(v177, v137);
              v146(v178, v137);
              goto LABEL_26;
            }

            outlined destroy of FilePath?(v89, &_s10CryptexKit0A0C16BootstrapOptionsVSgMd, &_s10CryptexKit0A0C16BootstrapOptionsVSgMR);
            v127 = v172;
            v128 = v179;
            (*v167)(v172, v160, v179);
            type metadata accessor for CryptexErrorMessage();
            lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
            v129 = swift_allocError();
            static CryptexError.error(_:_:file:function:lineNumber:)();
            (*v156)(v127, v128);
            swift_willThrow();

            outlined destroy of FilePath?(v176, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tSgMR);
            v67 = v207;
            v130 = v204;
            v204(v177, v207);
            v131 = v83;
            v66 = v129;
            v130(v131, v67);
            v203 = 0;
            v68 = v192;
          }
        }

        v90 = *v201;
        (*v201)(v68, v206, v67);
        MEMORY[0x22AA76CB0](v66);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = v68;
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v184 = v90;
          v97 = v96;
          v208[0] = v96;
          *v94 = v181;
          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
          v98 = dispatch thunk of CustomStringConvertible.description.getter();
          v100 = v99;
          v204(v93, v207);
          v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v208);
          v67 = v207;

          *(v94 + 4) = v101;
          *(v94 + 12) = 2112;
          MEMORY[0x22AA76CB0](v66);
          v102 = v66;
          v103 = _swift_stdlib_bridgeErrorToNSError();
          *(v94 + 14) = v103;
          *v95 = v103;
          _os_log_impl(&dword_226120000, v91, v92, "Failed to manage cryptex installed at %s: %@", v94, 0x16u);
          outlined destroy of FilePath?(v95, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v104 = v95;
          v2 = v183;
          MEMORY[0x22AA76E00](v104, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v97);
          v105 = v97;
          v90 = v184;
          MEMORY[0x22AA76E00](v105, -1, -1);
          MEMORY[0x22AA76E00](v94, -1, -1);
        }

        else
        {
          v102 = v66;

          v204(v68, v67);
        }

        v106 = v193;
        v90(v193, v206, v67);
        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = v106;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v208[0] = v111;
          *v110 = v182;
          lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
          v112 = dispatch thunk of CustomStringConvertible.description.getter();
          v113 = v67;
          v114 = v112;
          v116 = v115;
          v204(v109, v113);
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v208);

          *(v110 + 4) = v117;
          _os_log_impl(&dword_226120000, v107, v108, "Deleting cryptex installed at %s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          MEMORY[0x22AA76E00](v111, -1, -1);
          MEMORY[0x22AA76E00](v110, -1, -1);
        }

        else
        {

          v204(v106, v67);
        }

        v57 = v197;
        v118 = [v189 defaultManager];
        v119 = v206;
        v120 = FilePath.string.getter();
        v121 = MEMORY[0x22AA76630](v120);

        v208[0] = 0;
        v122 = [v118 removeItemAtPath:v121 error:v208];

        if (v122)
        {
          v123 = v208[0];
          v204(v119, v207);
        }

        else
        {
          v124 = v208[0];
          v125 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v204(v119, v207);
          v203 = 0;
        }

        v52 = v187;
LABEL_26:
        v54 = v200 + 1;
        v55 = v199 + 16;
      }

      while (v188 != v200 + 1);
    }
  }

  else
  {
    v154 = v208[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

BOOL FilePath.sameFile(as:)(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for POSIXError();
  v33 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FilePath();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v36, 0, sizeof(v36));
  memset(&v37, 0, sizeof(v37));
  v14 = v13;
  v16 = v15;
  outlined init with copy of FilePath?(a1, v9, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  if ((*(v16 + 48))(v9, 1, v14) != 1)
  {
    v31 = v16;
    (*(v16 + 32))(v12, v9, v14);
    FilePath.string.getter();
    v18 = String.utf8CString.getter();

    v19 = lstat((v18 + 32), &v37);

    if (v19)
    {
      MEMORY[0x22AA76470](v20);
      v21 = POSIXErrorCode.init(rawValue:)();
      if ((v21 & 0x100000000) != 0)
      {
        LODWORD(v21) = static POSIXErrorCode.ELAST.getter();
      }

      LODWORD(v34) = v21;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v33 + 8))(v5, v2);
      v34 = 0x20746174736CLL;
      v35 = 0xE600000000000000;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v22);

      MEMORY[0x22AA76680](0x64656C69616620, 0xE700000000000000);
      v23 = v14;
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      swift_allocError();
    }

    else
    {
      FilePath.string.getter();
      v24 = String.utf8CString.getter();

      v25 = lstat((v24 + 32), &v36);

      if (!v25)
      {
        (*(v31 + 8))(v12, v14);
        if (v37.st_dev == v36.st_dev)
        {
          return v37.st_ino == v36.st_ino;
        }

        return 0;
      }

      MEMORY[0x22AA76470](v26);
      v27 = POSIXErrorCode.init(rawValue:)();
      if ((v27 & 0x100000000) != 0)
      {
        LODWORD(v27) = static POSIXErrorCode.ELAST.getter();
      }

      LODWORD(v34) = v27;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type POSIXError and conformance POSIXError, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      v28 = v32;
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v33 + 8))(v28, v2);
      v34 = 0x20746174736CLL;
      v35 = 0xE600000000000000;
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v29);

      MEMORY[0x22AA76680](0x64656C69616620, 0xE700000000000000);
      v23 = v14;
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      swift_allocError();
    }

    CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
    swift_willThrow();
    (*(v31 + 8))(v12, v23);
    return v17;
  }

  outlined destroy of FilePath?(v9, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return 0;
}

uint64_t FilePath.isParentOf(other:)(uint64_t a1)
{
  v55 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v43 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v49 = &v43 - v23;
  v24 = *(v6 + 16);
  v50 = v6 + 16;
  v51 = v5;
  v48 = v24;
  v24(v8, v56, v5);
  v25 = *MEMORY[0x277CC91D8];
  v26 = *(v2 + 104);
  v56 = v1;
  v54 = v2 + 104;
  v26(v4, v25, v1);
  v53 = v4;
  URL.init(filePath:directoryHint:)(v8, v4, v13);
  v27 = v15[6];
  if (v27(v13, 1, v14) == 1)
  {
    v28 = v13;
LABEL_5:
    outlined destroy of FilePath?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  URL.resolvingSymlinksInPath()();
  v45 = v15[1];
  v45(v13, v14);
  v43 = v15[4];
  v44 = v26;
  v29 = v49;
  v43(v49, v22, v14);
  v48(v8, v55, v51);
  v30 = v53;
  v44(v53, v25, v56);
  v31 = v52;
  URL.init(filePath:directoryHint:)(v8, v30, v52);
  if (v27(v31, 1, v14) == 1)
  {
    v45(v29, v14);
    v28 = v31;
    goto LABEL_5;
  }

  v33 = v46;
  URL.resolvingSymlinksInPath()();
  v34 = v45;
  v45(v31, v14);
  v35 = v47;
  v43(v47, v33, v14);
  v36 = v29;
  v37 = URL.pathComponents.getter();
  v38 = URL.pathComponents.getter();
  v39 = *(v37 + 16);
  if (*(v38 + 16) >= v39)
  {
    if (v39)
    {
      v41 = 0;
      while (1)
      {
        v42 = *(v37 + v41 + 32) == *(v38 + v41 + 32) && *(v37 + v41 + 40) == *(v38 + v41 + 40);
        if (!v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v41 += 16;
        if (!--v39)
        {
          goto LABEL_17;
        }
      }

      v40 = 0;
    }

    else
    {
LABEL_17:
      v40 = 1;
    }
  }

  else
  {
    v40 = 0;
  }

  v34(v35, v14);
  v34(v36, v14);
  return v40;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      outlined init with copy of FilePath?(v13, v11, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v15 = a1(v11);
      if (v3)
      {
        return outlined destroy of FilePath?(v11, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      }

      if (v15)
      {
        break;
      }

      outlined destroy of FilePath?(v11, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(v11, v20);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Inventory.destroy()()
{
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v42 - v8;
  v10 = (*(*v0 + 192))(v7);
  if (!v1)
  {
    v42 = v6;
    v43 = v9;
    v11 = 0;
    v12 = v10 + 64;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v45 = (v3 + 8);
    v46 = v0;
    v44 = v2;
    while (v15)
    {
      v47 = 0;
LABEL_11:
      v18 = v10;
      v19 = *(*(v10 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v15)))));
      v20 = *(*v46 + 184);

      v22 = v43;
      v20(v21);
      v23 = v47;
      (*(*v19 + 264))(v22);
      if (v23)
      {
        (*v45)(v22, v44);

        return;
      }

      v15 &= v15 - 1;
      v24 = v22;
      v2 = v44;
      v25 = (*v45)(v24, v44);
      (*(*v19 + 272))(v25);

      v10 = v18;
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
      }

      if (v17 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        v47 = 0;
        v11 = v17;
        goto LABEL_11;
      }
    }

    v26 = objc_opt_self();
    v27 = [v26 defaultManager];
    v28 = v42;
    (*(*v46 + 160))();
    v29 = FilePath.string.getter();
    v31 = v30;
    (*v45)(v28, v2);
    v32 = MEMORY[0x22AA76630](v29, v31);

    v48[0] = 0;
    v33 = [v27 removeItemAtPath:v32 error:v48];

    v34 = v48[0];
    if (v33 && (v35 = v48[0], v36 = [v26 defaultManager], v37 = FilePath.string.getter(), v38 = MEMORY[0x22AA76630](v37), , v48[0] = 0, v39 = objc_msgSend(v36, sel_removeItemAtPath_error_, v38, v48), v36, v38, v34 = v48[0], (v39 & 1) != 0))
    {
      v40 = v48[0];
    }

    else
    {
      v41 = v34;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t Inventory.deinit()
{

  v1 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of VirtualEnvConfig(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig);
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Inventory.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13CryptexServer9Inventory_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of VirtualEnvConfig(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_venvConfig);
  v3 = OBJC_IVAR____TtC13CryptexServer9Inventory_runtimeDirectory;
  v4 = type metadata accessor for FilePath();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_cryptexStorage, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13CryptexServer9Inventory_authenticator));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t URL.init(filePath:directoryHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CryptexServer17BootstrapProtocol_pGMd, &_ss23_ContiguousArrayStorageCy13CryptexServer17BootstrapProtocol_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CryptexServer17BootstrapProtocol_pMd, &_s13CryptexServer17BootstrapProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6System8FilePathV10graftPoint_AESg03dmgF0tGMd, &_ss23_ContiguousArrayStorageCy6System8FilePathV10graftPoint_AESg03dmgF0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR) - 8);
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for CryptexAssetType();
  lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E00]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E08]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_13CryptexServer0C0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13CryptexServer0C0CGMd, &_ss18_DictionaryStorageCySS13CryptexServer0C0CGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for Inventory(uint64_t a1)
{
  result = type metadata singleton initialization cache for Inventory;
  if (!type metadata singleton initialization cache for Inventory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA76E00);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t outlined init with take of VirtualEnvConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of AssetAuthenticatorProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t partial apply for closure #1 in Inventory.rediscoverInstalled()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v4 = FilePath.sameFile(as:)(a1 + *(v3 + 48));
  if (v1 || !v4)
  {
    return 0;
  }

  else
  {
    return FilePath.isParentOf(other:)(a1) & 1;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of FilePath?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t outlined destroy of VirtualEnvConfig(uint64_t a1)
{
  v2 = type metadata accessor for VirtualEnvConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for Inventory(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FilePath();
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

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of FilePath?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (graftPoint: FilePath, dmgPath: FilePath?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(category:)(0x61727473746F6F62, 0xEE00766E65762D70);
}

uint64_t BootstrapVirtualEnv.envRoot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BootstrapVirtualEnv.cleanup()()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0;
  MEMORY[0x22AA76580](46, 0xE100000000000000);
  FilePath.recurseDirectory(bottomUp:relpath:_:)();
  (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in BootstrapVirtualEnv.cleanup()(uint64_t a1)
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  FilePath.appending(_:)();
  v8 = FilePath.symlinkExists()();
  if (v9)
  {
    return (*(v2 + 8))(v7, v1);
  }

  if (!v8)
  {
    v14 = FilePath.directoryExists()();
    if (!v15 && v14)
    {
      v16 = *(FilePath.directoryContents()() + 16);

      if (!v16)
      {
        FilePath.delete()();
      }
    }

    return (*(v2 + 8))(v7, v1);
  }

  FilePath.symlinkTarget()();
  v11 = FilePath.exists()();
  if (v12)
  {
    v13 = *(v2 + 8);
    v13(v5, v1);
    return (v13)(v7, v1);
  }

  else
  {
    v17 = v11;
    v18 = *(v2 + 8);
    v18(v5, v1);
    if (v17)
    {
      return (*(v2 + 8))(v7, v1);
    }

    FilePath.delete()();
    if (!v19)
    {
      return (*(v2 + 8))(v7, v1);
    }

    return (v18)(v7, v1);
  }
}

uint64_t BootstrapVirtualEnv.unbootstrap(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for BootstrapVirtualEnv(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v46[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v46[-v16];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = *(v11 + 16);
  v58 = a1;
  v19(v17, a1, v10);
  outlined init with copy of BootstrapVirtualEnv(v1, v9);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  v22 = os_log_type_enabled(v20, v21);
  v55 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = v4;
    v24 = v23;
    v48 = swift_slowAlloc();
    v59 = v48;
    *v24 = 136315394;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v49 = v2;
    v50 = v5;
    v47 = v21;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v10;
    v28 = v27;
    v53 = *(v11 + 8);
    v53(v17, v26);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v59);
    v10 = v26;

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v2 = v49;
    v5 = v50;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    outlined destroy of BootstrapVirtualEnv(v9);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v59);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_226120000, v20, v47, "Removing links to %s from link farm at %s", v24, 0x16u);
    v34 = v48;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v34, -1, -1);
    v35 = v24;
    v4 = v51;
    MEMORY[0x22AA76E00](v35, -1, -1);
  }

  else
  {

    outlined destroy of BootstrapVirtualEnv(v9);
    v53 = *(v11 + 8);
    v53(v17, v10);
  }

  v36 = v58;
  if (FilePath.isAbsolute.getter() & 1) != 0 && (v37 = FilePath.isAbsolute.getter(), (v37))
  {
    MEMORY[0x28223BE20](v37);
    *&v46[-16] = v36;
    *&v46[-8] = v2;
    v38 = v54;
    MEMORY[0x22AA76580](46, 0xE100000000000000);
    v39 = v56;
    FilePath.recurseDirectory(bottomUp:relpath:_:)();
    if (v39)
    {
      return (v53)(v38, v10);
    }

    else
    {
      v42 = v38;
      v43 = v53;
      v44 = (v53)(v42, v10);
      MEMORY[0x28223BE20](v44);
      *&v46[-16] = v2;
      v45 = v52;
      MEMORY[0x22AA76580](46, 0xE100000000000000);
      FilePath.recurseDirectory(bottomUp:relpath:_:)();
      return v43(v45, v10);
    }
  }

  else
  {
    v41 = v57;
    (*(v5 + 104))(v57, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v41, v4);
    return swift_willThrow();
  }
}

uint64_t type metadata accessor for BootstrapVirtualEnv(uint64_t a1)
{
  result = type metadata singleton initialization cache for BootstrapVirtualEnv;
  if (!type metadata singleton initialization cache for BootstrapVirtualEnv)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of BootstrapVirtualEnv(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BootstrapVirtualEnv(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of BootstrapVirtualEnv(uint64_t a1)
{
  v2 = type metadata accessor for BootstrapVirtualEnv(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in BootstrapVirtualEnv.unbootstrap(from:)(uint64_t a1)
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  FilePath.appending(_:)();
  FilePath.appending(_:)();
  v8 = FilePath.directoryExists()();
  if (v9)
  {
    goto LABEL_2;
  }

  if (v8)
  {
    v12 = type metadata accessor for BootstrapVirtualEnv.Directory();
    v13 = &protocol witness table for BootstrapVirtualEnv.Directory;
LABEL_5:
    v14 = swift_allocObject();
    *(&v22 + 1) = v12;
    v23 = v13;
    *&v21 = v14;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v21, v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v16 + 16))(v7, v5, v15, v16);
    v17 = *(v2 + 8);
    v17(v5, v1);
    v17(v7, v1);
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v18 = FilePath.fileExists()();
  if (v19)
  {
LABEL_2:
    v10 = *(v2 + 8);
    v10(v5, v1);
    return (v10)(v7, v1);
  }

  if (v18)
  {
    v12 = type metadata accessor for BootstrapVirtualEnv.Symlink();
    v13 = &protocol witness table for BootstrapVirtualEnv.Symlink;
    goto LABEL_5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = *(v2 + 8);
  v20(v5, v1);
  v20(v7, v1);
  return outlined destroy of FilePath?(&v21, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMd, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMR);
}

uint64_t BootstrapVirtualEnv.bootstrap(from:dryRun:)(uint64_t a1, int a2)
{
  v14 = a2;
  v5 = type metadata accessor for FilePath();
  v15 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CryptexError();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (FilePath.isAbsolute.getter() & 1) != 0 && (FilePath.isAbsolute.getter())
  {
    result = FilePath.createDirectory(permissions:intermediateDirectories:)();
    if (!v3)
    {
      MEMORY[0x28223BE20](result);
      *&v13[-32] = a1;
      *&v13[-24] = v2;
      v13[-16] = v14 & 1;
      MEMORY[0x22AA76580](46, 0xE100000000000000);
      FilePath.recurseDirectory(bottomUp:relpath:_:)();
      return (*(v15 + 8))(v7, v5);
    }
  }

  else
  {
    (*(v9 + 104))(v11, *MEMORY[0x277D02D48], v8);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v9 + 8))(v11, v8);
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in BootstrapVirtualEnv.bootstrap(from:dryRun:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  FilePath.appending(_:)();
  FilePath.appending(_:)();
  v12 = FilePath.directoryExists()();
  if (v13)
  {
    goto LABEL_2;
  }

  if (v12)
  {
    v16 = type metadata accessor for BootstrapVirtualEnv.Directory();
    v17 = &protocol witness table for BootstrapVirtualEnv.Directory;
LABEL_5:
    v18 = swift_allocObject();
    *(&v26 + 1) = v16;
    v27 = v17;
    *&v25 = v18;
    outlined init with take of BootstrapVirtualEnv.Strategy(&v25, v28);
    v19 = v29;
    v20 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v20 + 8))(v11, v9, a4 & 1, v19, v20);
    v21 = *(v6 + 8);
    v21(v9, v5);
    v21(v11, v5);
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v22 = FilePath.fileExists()();
  if (v23)
  {
LABEL_2:
    v14 = *(v6 + 8);
    v14(v9, v5);
    return (v14)(v11, v5);
  }

  if (v22)
  {
    v16 = type metadata accessor for BootstrapVirtualEnv.Symlink();
    v17 = &protocol witness table for BootstrapVirtualEnv.Symlink;
    goto LABEL_5;
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v11, v5);
  return outlined destroy of FilePath?(&v25, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMd, &_s13CryptexServer19BootstrapVirtualEnvV8Strategy33_208152451A27CF1F362939E4B64E7455LL_pSgMR);
}

uint64_t BootstrapVirtualEnv.bootstrap(from:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for BootstrapVirtualEnv(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  (*(v10 + 16))(v12, a1, v9);
  outlined init with copy of BootstrapVirtualEnv(v1, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v2;
    v17 = v16;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v17 = 136315394;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v33 = a1;
    v30 = v15;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v4;
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v35);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    a1 = v33;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    outlined destroy of BootstrapVirtualEnv(v8);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v35);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_226120000, v14, v30, "Linking files from %s into link farm at %s", v17, 0x16u);
    v26 = v31;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v26, -1, -1);
    v27 = v17;
    v3 = v32;
    MEMORY[0x22AA76E00](v27, -1, -1);
  }

  else
  {

    outlined destroy of BootstrapVirtualEnv(v8);
    (*(v10 + 8))(v12, v9);
  }

  result = BootstrapVirtualEnv.bootstrap(from:dryRun:)(a1, 1);
  if (!v3)
  {
    return BootstrapVirtualEnv.bootstrap(from:dryRun:)(a1, 0);
  }

  return result;
}

uint64_t BootstrapVirtualEnv.unbootstrap(cryptex:graftedAt:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FilePath?(a2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of FilePath?(v5, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  (*(v7 + 32))(v9, v5, v6);
  BootstrapVirtualEnv.unbootstrap(from:)(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t BootstrapVirtualEnv.init(envRoot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FilePath.isAbsolute.getter())
  {
    v8 = type metadata accessor for FilePath();
    return (*(*(v8 - 8) + 32))(a2, a1, v8);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
    v10 = type metadata accessor for FilePath();
    return (*(*(v10 - 8) + 8))(a1, v10);
  }
}

uint64_t protocol witness for BootstrapProtocol.unbootstrap(cryptex:graftedAt:) in conformance BootstrapVirtualEnv(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FilePath?(a2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of FilePath?(v5, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  (*(v7 + 32))(v9, v5, v6);
  BootstrapVirtualEnv.unbootstrap(from:)(v9);
  return (*(v7 + 8))(v9, v6);
}

void protocol witness for BootstrapVirtualEnv.Strategy.unbootstrap(src:dest:) in conformance BootstrapVirtualEnv.Directory()
{
  v0 = FilePath.directoryExists()();
  if (!v1 && v0)
  {
    v2 = *(FilePath.directoryContents()() + 16);

    if (!v2)
    {
      FilePath.delete()();
    }
  }
}

void protocol witness for BootstrapVirtualEnv.Strategy.unbootstrap(src:dest:) in conformance BootstrapVirtualEnv.Symlink(uint64_t a1)
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = FilePath.symlinkExists()();
  if (!v6 && v5)
  {
    FilePath.symlinkTarget()();
    v7 = FilePath.lexicallyEqual(_:)();
    (*(v2 + 8))(v4, v1);
    if (v7)
    {
      FilePath.delete()();
    }
  }
}

uint64_t _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for BootstrapVirtualEnv(uint64_t a1)
{
  result = type metadata accessor for FilePath();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void specialized BootstrapVirtualEnv.Symlink.bootstrap(src:dest:dryRun:)(uint64_t a1, uint64_t a2, int a3)
{
  v48 = a3;
  v49 = a1;
  v4 = type metadata accessor for CryptexError();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v45 - v15;
  v17 = FilePath.symlinkExists()();
  if (!v18)
  {
    v46 = v14;
    v47 = v8;
    v19 = a2;
    v20 = v52;
    if (v17 && (FilePath.symlinkTarget()(), v45[1] = 0, v21 = FilePath.lexicallyEqual(_:)(), v45[0] = *(v47 + 8), (v45[0])(v16, v7), (v21 & 1) != 0))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, logger);
      v23 = v46;
      v24 = *(v47 + 16);
      v24(v46, v19, v7);
      v25 = v11;
      v24(v11, v49, v7);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v50 = v52;
        *v28 = 136315394;
        _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        LODWORD(v49) = v27;
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v30;
        v32 = v23;
        v33 = v45[0];
        (v45[0])(v32, v7);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v50);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2080;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v33(v25, v7);
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v50);

        *(v28 + 14) = v38;
        _os_log_impl(&dword_226120000, v26, v49, "%s is already a symlink pointing at %s", v28, 0x16u);
        v39 = v52;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v39, -1, -1);
        MEMORY[0x22AA76E00](v28, -1, -1);
      }

      else
      {

        v43 = v25;
        v44 = v45[0];
        (v45[0])(v43, v7);
        v44(v23, v7);
      }
    }

    else
    {
      v40 = FilePath.exists()();
      if (!v41)
      {
        if (v40)
        {
          (*(v20 + 104))(v6, *MEMORY[0x277D02D60], v4);
          v50 = 0;
          v51 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          v50 = 0xD000000000000023;
          v51 = 0x8000000226145A00;
          _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x22AA76680](v42);

          type metadata accessor for CryptexErrorMessage();
          _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
          swift_allocError();
          static CryptexError.error(_:_:file:function:lineNumber:)();

          (*(v20 + 8))(v6, v4);
          swift_willThrow();
        }

        else if ((v48 & 1) == 0)
        {
          FilePath.createSymlink(targeting:)();
        }
      }
    }
  }
}

void specialized BootstrapVirtualEnv.Directory.bootstrap(src:dest:dryRun:)(uint64_t a1, uint64_t a2, int a3)
{
  v41 = a3;
  v44 = a2;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CryptexError();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = FilePath.directoryExists()();
  if (v12)
  {
    return;
  }

  v38 = v6;
  v39 = v4;
  v40 = v3;
  if (!v11)
  {
    v30 = v10;
    v31 = v7;
    (*(v8 + 104))(v10, *MEMORY[0x277D02D60], v7);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;

    v42 = v32;
    v43 = v34;
    MEMORY[0x22AA76680](0xD000000000000013, 0x8000000226145990);
    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
LABEL_10:
    static CryptexError.error(_:_:file:function:lineNumber:)();

    (*(v8 + 8))(v30, v31);
    swift_willThrow();
    return;
  }

  v13 = v44;
  v14 = FilePath.directoryExists()();
  if (v15)
  {
    return;
  }

  if (v14)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v18 = v38;
    v17 = v39;
    v19 = v40;
    (*(v39 + 16))(v38, v13, v40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v17;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136315138;
      _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v18;
      v28 = v27;
      (*(v22 + 8))(v26, v19);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, &v42);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_226120000, v20, v21, "Directory already exists at %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x22AA76E00](v24, -1, -1);
      MEMORY[0x22AA76E00](v23, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v18, v19);
    }

    return;
  }

  v30 = v10;
  v35 = FilePath.exists()();
  if (v36)
  {
    return;
  }

  if (v35)
  {
    v31 = v7;
    (*(v8 + 104))(v10, *MEMORY[0x277D02D60], v7);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v42 = 0xD000000000000025;
    v43 = 0x80000002261459D0;
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AA76680](v37);

    type metadata accessor for CryptexErrorMessage();
    _s10CryptexKit0A12ErrorMessageVACs0C0AAWlTm_0(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    goto LABEL_10;
  }

  if ((v41 & 1) == 0)
  {
    FilePath.createDirectory(permissions:intermediateDirectories:)();
  }
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

uint64_t CryptexCore.type.getter@<X0>(uint64_t a1@<X8>)
{
  CryptexCore.createType()(a1);
  if (v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = type metadata accessor for CryptexType();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t CryptexCore.createType()@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit18Image4PropertySpecVys6UInt64VGMd, &_s10CryptexKit18Image4PropertySpecVys6UInt64VGMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - v6;
  v8 = type metadata accessor for Image4Auth();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!CryptexCore.image4Ticket.getter())
  {
    v18 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D02DA0], v18);
    return swift_willThrow();
  }

  v39 = v8;
  v40 = v9;
  Image4Auth.init()();
  static Image4PropertySpec.subType.getter();
  v12 = dispatch thunk of CryptexAsset.data.getter();
  if (v1)
  {

    (*(v3 + 8))(v7, v2);
    return (*(v40 + 8))(v11, v39);
  }

  v14 = v12;
  v15 = v13;
  v16 = Image4Auth.read(property:from:)();
  v21 = v20;
  v35[1] = v16;
  v36 = v11;
  v22 = *(v3 + 8);
  v22(v7, v2);
  outlined consume of Data._Representation(v14, v15);
  if (v21)
  {
    v23 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v25 = v24;
    v26 = MEMORY[0x277D02D58];
  }

  else
  {
    v27 = v22;
    v28 = v38;
    static Image4PropertySpec.type.getter();
    v29 = dispatch thunk of CryptexAsset.data.getter();
    v31 = v30;
    Image4Auth.read(property:from:)();
    v32 = v28;
    LOBYTE(v28) = v33;
    v27(v32, v2);
    outlined consume of Data._Representation(v29, v31);
    if ((v28 & 1) == 0)
    {
      CryptexType.init(type:subtype:)();
      goto LABEL_9;
    }

    v23 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v25 = v34;
    v26 = MEMORY[0x277D02D40];
  }

  (*(*(v23 - 8) + 104))(v25, *v26, v23);
  swift_willThrow();
LABEL_9:

  return (*(v40 + 8))(v36, v39);
}

uint64_t CryptexCore.infoPlist.getter(unsigned int *a1)
{
  v3 = type metadata accessor for CryptexAssetType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *a1, v3);
  v7 = *(v1 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = *(v4 + 8);

    v11(v6, v3);
  }

  else
  {
    v10 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v13 = v12;
    (*(v4 + 16))(v12, v6, v3);
    (*(*(v10 - 8) + 104))(v13, *MEMORY[0x277D02DA8], v10);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

uint64_t CryptexCore.image4Ticket.getter()
{
  v1 = type metadata accessor for CryptexAssetType();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  (*(v2 + 104))(v4, *MEMORY[0x277D02DD8], v1);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = *(v2 + 8);

    v9(v4, v1);
    return v8;
  }

  else
  {
    (*(v2 + 8))(v4, v1);
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
  v2 = v1;
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  *(v2 + 16) = a1;
  v11 = *(v5 + 104);
  v11(&v22 - v9, *MEMORY[0x277D02DF0], v4);
  if (!*(a1 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v10), (v12 & 1) == 0))
  {
    v15 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v17 = v16;
    (*(v5 + 16))(v16, v10, v4);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D02DA8], v15);
    swift_willThrow();
    (*(v5 + 8))(v10, v4);
LABEL_8:

    return v2;
  }

  v13 = *(v5 + 8);
  v24 = v5 + 8;
  v23 = v13;
  v13(v10, v4);
  v11(v8, *MEMORY[0x277D02DE8], v4);
  if (!*(*(v2 + 16) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v8), (v14 & 1) == 0))
  {
    v18 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type CryptexError and conformance CryptexError(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v20 = v19;
    (*(v5 + 16))(v19, v8, v4);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D02DA8], v18);
    swift_willThrow();
    v23(v8, v4);
    goto LABEL_8;
  }

  v23(v8, v4);
  return v2;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CryptexCore.isPackage()()
{
  v1 = type metadata accessor for CryptexError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CryptexType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  CryptexCore.createType()(v8);
  if (!v0)
  {
    LOBYTE(v1) = CryptexType.isPackage()();
    (*(v6 + 8))(v8, v5);
    return v1 & 1;
  }

  v11 = v0;
  MEMORY[0x22AA76CB0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v1 & 1;
  }

  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x277D02DA0])
  {
    (*(v2 + 8))(v4, v1);
    goto LABEL_7;
  }

  LOBYTE(v1) = 1;
  return v1 & 1;
}

uint64_t CryptexCore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type CryptexError and conformance CryptexError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Cryptex.cfBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path getter for Cryptex.core : Cryptex@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Cryptex.core : Cryptex(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t Cryptex.core.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t Cryptex.name.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t Cryptex.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Cryptex.assets.getter()
{
  v1 = *((*(*v0 + 120))() + 16);

  return v1;
}

uint64_t Cryptex.bootstrapOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for CryptexAssetType();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((*(*v1 + 120))(v6) + 16);

  (*(v5 + 104))(v8, *MEMORY[0x277D02DE0], v4);
  if (*(v9 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v8), (v10 & 1) != 0))
  {
    v11 = *(v5 + 8);

    v11(v8, v4);

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v12 = dispatch thunk of CryptexAsset.data.getter();
    if (v2)
    {
    }

    else
    {
      v14 = v12;
      v15 = v13;
      v16 = type metadata accessor for Cryptex.BootstrapOptions();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions, MEMORY[0x277D02D10], MEMORY[0x277D02D20]);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v14, v15);
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    v17 = type metadata accessor for Cryptex.BootstrapOptions();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t Cryptex.cache(bootstrapOptions:)(uint64_t a1)
{
  v89 = a1;
  v93 = type metadata accessor for CryptexError();
  v2 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for CryptexAssetType();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v74 - v18;
  v20 = *(*v1 + 192);
  v88 = v1;
  v20(v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of FilePath?(v8, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v21 = *(v2 + 104);
    v22 = v2;
    v23 = v93;
    v21(v4, *MEMORY[0x277D02D60], v93);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v22 + 8))(v4, v23);
    return swift_willThrow();
  }

  v84 = v2;
  v85 = v4;
  (*(v10 + 32))(v19, v8, v9);
  v25 = *(v10 + 16);
  v87 = v19;
  v80 = v10 + 16;
  v81 = v25;
  v25(v13, v19, v9);
  v26 = v94;
  v28 = v94 + 104;
  v27 = *(v94 + 13);
  v29 = v91;
  v30 = v92;
  v83 = *MEMORY[0x277D02DE0];
  v82 = v27;
  v27(v91);
  v86 = v9;
  CryptexAssetType.fileName.getter();
  v32 = *(v26 + 1);
  v31 = v26 + 8;
  v33 = v30;
  v34 = v16;
  v35 = v32;
  v32(v29, v33);
  FilePath.appending(_:)();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v36 = JSONEncoder.init()();
  type metadata accessor for Cryptex.BootstrapOptions();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions, MEMORY[0x277D02D10], MEMORY[0x277D02D18]);
  v37 = v90;
  v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v37)
  {

    v40 = *(v10 + 8);
    v41 = v86;
    v40(v34, v86);
    v42 = v87;
    v43 = v41;
    return (v40)(v42, v43);
  }

  v77 = v28;
  v78 = v35;
  v94 = v31;
  v89 = v36;
  v90 = v10;
  v44 = v38;
  v45 = v39;
  v46 = [objc_opt_self() defaultManager];
  v79 = v34;
  v47 = FilePath.string.getter();
  v48 = MEMORY[0x22AA76630](v47);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v50 = [v46 createFileAtPath:v48 contents:isa attributes:0];

  if (v50)
  {
    v75 = v44;
    v76 = v45;
    v51 = v79;
    v52 = FilePath.string.getter();
    v53 = MEMORY[0x22AA76630](v52);

    v54 = [objc_opt_self() fileHandleForReadingAtPath_];

    v55 = v93;
    v56 = v84;
    v57 = v85;
    if (!v54)
    {
      v72 = v86;
      v81(v85, v51, v86);
      v73 = v90;
      (*(v90 + 56))(v57, 0, 1, v72);
      (*(v56 + 104))(v57, *MEMORY[0x277D02D78], v55);
      v94 = " bootstrap options file";
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();
      (*(v56 + 8))(v57, v55);
      swift_willThrow();
      outlined consume of Data._Representation(v75, v76);

      v40 = *(v73 + 8);
      v40(v79, v72);
      v42 = v87;
      v43 = v72;
      return (v40)(v42, v43);
    }

    v59 = v91;
    v58 = v92;
    v60 = v82;
    v82(v91, v83, v92);
    type metadata accessor for CryptexAsset();
    swift_allocObject();
    v93 = v54;
    v61 = CryptexAsset.init(type:file:)();
    v62 = v88;
    v63 = *((*(*v88 + 120))() + 16);

    v60(v59, v83, v58);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v63;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v59, isUniquelyReferenced_nonNull_native);
    v78(v59, v58);
    type metadata accessor for CryptexCore();

    v66 = CryptexCore.__allocating_init(assets:)(v65);

    (*(*v62 + 128))(v66);
    outlined consume of Data._Representation(v75, v76);
  }

  else
  {
    v67 = v84;
    v68 = v85;
    v69 = v93;
    (*(v84 + 104))(v85, *MEMORY[0x277D02D60], v93);
    v94 = "common to all cryptex assets";
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v67 + 8))(v68, v69);
    swift_willThrow();
    outlined consume of Data._Representation(v44, v45);
  }

  v70 = *(v90 + 8);
  v71 = v86;
  v70(v79, v86);
  return (v70)(v87, v71);
}

uint64_t key path setter for Cryptex.rootDirectory : Cryptex(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of FilePath?(a1, &v8 - v5, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return (*(**a2 + 200))(v6);
}

uint64_t Cryptex.rootDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  swift_beginAccess();
  return outlined init with copy of FilePath?(v1 + v3, a1, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
}

uint64_t Cryptex.rootDirectory.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  swift_beginAccess();
  outlined assign with take of FilePath?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t Cryptex.__allocating_init(assets:rootDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Cryptex.init(assets:rootDirectory:)(a1, a2);
  return v4;
}

void *Cryptex.init(assets:rootDirectory:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v53 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CryptexError();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
  v13 = type metadata accessor for FilePath();
  v14 = v2 + v12;
  v15 = v2;
  (*(*(v13 - 8) + 56))(v14, 1, 1, v13);
  type metadata accessor for CryptexCore();
  v16 = CryptexCore.__allocating_init(assets:)(a1);
  if (v3)
  {
    outlined destroy of FilePath?(v48, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    goto LABEL_5;
  }

  v43 = v7;
  v44 = v5;
  v45 = v9;
  v46 = v11;
  v17 = v2;
  v2[4] = v16;

  CryptexCore.infoPlist.getter();

  v18 = dispatch thunk of CryptexAsset.data.getter();
  v20 = v48;
  v23 = v18;
  v24 = v19;

  v25 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v23, v24);
  v51 = 0;
  v27 = [v25 propertyListWithData:isa options:0 format:0 error:&v51];

  if (!v27)
  {
    v38 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = v20;
LABEL_4:
    outlined destroy of FilePath?(v21, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v15 = v17;

    goto LABEL_5;
  }

  v28 = v51;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = v45;
    v39 = v46;
    (*(v45 + 104))(v46, *MEMORY[0x277D02D48], v8);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v40 + 8))(v39, v8);
    swift_willThrow();
    v21 = v48;
    goto LABEL_4;
  }

  v29 = v49;
  v17[5] = v49;
  v30 = v8;
  v31 = v46;
  if (*(v29 + 16))
  {

    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x8000000226145BF0);
    if (v33)
    {
      outlined init with copy of Any(*(v29 + 56) + 32 * v32, &v51);

      if (swift_dynamicCast())
      {
        v34 = v49;
        v35 = v50;
        v15 = v17;
        v17[2] = v49;
        v17[3] = v35;
        v51 = 0x2D78657470797263;
        v52 = 0xE800000000000000;

        MEMORY[0x22AA76680](v34, v35);

        v36 = v43;
        Logger.init(category:)(v51, v52);
        (*(v47 + 32))(v15 + OBJC_IVAR____TtC13CryptexServer7Cryptex_logger, v36, v44);
        v37 = OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory;
        swift_beginAccess();
        outlined assign with take of FilePath?(v48, v15 + v37);
        swift_endAccess();
        return v15;
      }
    }

    else
    {
    }
  }

  v41 = v45;
  (*(v45 + 104))(v31, *MEMORY[0x277D02D48], v30);
  type metadata accessor for CryptexErrorMessage();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)();
  (*(v41 + 8))(v31, v30);
  swift_willThrow();
  outlined destroy of FilePath?(v48, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v15 = v17;

LABEL_5:
  outlined destroy of FilePath?(v15 + OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  type metadata accessor for Cryptex(0);
  swift_deallocPartialClassInstance();
  return v15;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cryptex.isPackage()()
{
  (*(*v0 + 120))();
  v1 = CryptexCore.isPackage()();

  return v1;
}

uint64_t Cryptex.__allocating_init(dir:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226145000;
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v22 = 0xD000000000000018;
  v23 = 0x8000000226145C40;
  v9 = type metadata accessor for FilePath();
  lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AA76680](v10);

  v11 = v22;
  v12 = v23;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = v11;
  *(v8 + 40) = v12;
  print(_:separator:terminator:)();

  v13 = static CryptexAssetType.allCases.getter();
  v20 = a1;
  v21 = a2;
  v14 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for closure #1 in Cryptex.init(dir:logger:), v19, v13);

  v15 = *(v9 - 8);
  (*(v15 + 16))(v7, a1, v9);
  (*(v15 + 56))(v7, 0, 1, v9);
  v16 = (*(v2 + 216))(v14, v7);
  v17 = type metadata accessor for Logger();
  (*(*(v17 - 8) + 8))(a2, v17);
  (*(v15 + 8))(a1, v9);
  return v16;
}

uint64_t closure #1 in Cryptex.init(dir:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a1;
  v54 = a4;
  v57 = type metadata accessor for CryptexAssetType();
  v6 = *(v57 - 8);
  v7 = MEMORY[0x28223BE20](v57);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = *(v12 + 16);
  v20(v17, a3, v11);
  CryptexAssetType.fileName.getter();
  FilePath.appending(_:)();
  v21 = FilePath.string.getter();
  v22 = MEMORY[0x22AA76630](v21);

  v23 = [objc_opt_self() fileHandleForReadingAtPath_];

  if (!v23)
  {
    return (*(v12 + 8))(v19, v11);
  }

  v51 = v12;
  v52 = v11;
  v50 = v6;
  v24 = *(v6 + 16);
  v25 = v57;
  v24(v10, a2, v57);
  type metadata accessor for CryptexAsset();
  swift_allocObject();
  v49 = v23;
  v26 = CryptexAsset.init(type:file:)();
  v27 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v27;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, a2, isUniquelyReferenced_nonNull_native);
  *v27 = v58;
  v29 = v55;
  v24(v55, a2, v25);
  v30 = v52;
  v31 = v56;
  v20(v56, v19, v52);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = v54;
    *v34 = 136315394;
    v35 = CryptexAssetType.name.getter();
    v36 = v29;
    v38 = v37;
    (*(v50 + 8))(v36, v57);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, &v58);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v30;
    v43 = v42;
    v44 = *(v51 + 8);
    v44(v31, v41);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v43, &v58);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_226120000, v32, v33, "Found %s at %s", v34, 0x16u);
    v46 = v54;
    swift_arrayDestroy();
    MEMORY[0x22AA76E00](v46, -1, -1);
    MEMORY[0x22AA76E00](v34, -1, -1);

    return (v44)(v19, v41);
  }

  else
  {

    v48 = *(v51 + 8);
    v48(v31, v30);
    (*(v50 + 8))(v29, v57);
    return (v48)(v19, v30);
  }
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for CryptexAssetType() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id Cryptex.copy(to:)(uint64_t a1)
{
  v177 = *MEMORY[0x277D85DE8];
  v144 = type metadata accessor for CryptexError();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v140 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v141 = &v140 - v8;
  MEMORY[0x28223BE20](v7);
  v165 = &v140 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v147 = &v140 - v11;
  v174 = type metadata accessor for CryptexAssetType();
  v154 = *(v174 - 1);
  v12 = MEMORY[0x28223BE20](v174);
  v171 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v169 = &v140 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v164 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = &v140 - v18;
  v19 = type metadata accessor for FilePath();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v153 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v140 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v140 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v140 - v29;
  v173 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v31 = 0x278584000uLL;
  v168 = objc_opt_self();
  v32 = [v168 defaultManager];
  v33 = *(v20 + 16);
  v162 = a1;
  v158 = v20 + 16;
  v157 = v33;
  v33(v28, a1, v19);
  FilePath.removingLastComponent()();
  v34 = FilePath.string.getter();
  v36 = v35;
  v146 = v20;
  v37 = *(v20 + 8);
  v155 = v30;
  v166 = v37;
  v167 = v20 + 8;
  v37(v30, v19);
  v38 = MEMORY[0x22AA76630](v34, v36);

  v175 = 0;
  LODWORD(v36) = [v32 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:0 error:&v175];

  if (!v36 || (v163 = v25, v39 = v175, v40 = [v168 defaultManager], v41 = FilePath.string.getter(), v42 = MEMORY[0x22AA76630](v41), , v175 = 0, v43 = objc_msgSend(v40, sel_createDirectoryAtPath_withIntermediateDirectories_attributes_error_, v42, 0, 0, &v175), v40, v42, !v43))
  {
    v97 = v175;
    v98 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v171 = 0;
    v52 = v173;
    v99 = v168;
    goto LABEL_32;
  }

  v145 = v6;
  v44 = *((*(*v172 + 120))(v175) + 16);

  v45 = 0;
  v47 = v44 + 64;
  v46 = *(v44 + 64);
  v149 = v44;
  v48 = 1 << *(v44 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v160 = (v154 + 16);
  v161 = (v154 + 32);
  v152 = (v146 + 48);
  v159 = (v154 + 8);
  v170 = v19;
  v52 = v173;
  v54 = v164;
  v53 = v165;
  v151 = v47;
  for (i = v51; ; v51 = i)
  {
    v173 = v52;
    if (v50)
    {
      v58 = v45;
LABEL_18:
      v61 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v62 = v61 | (v58 << 6);
      v63 = v149;
      v64 = v154;
      (*(v154 + 16))(v169, *(v149 + 48) + *(v154 + 72) * v62, v174);
      v65 = *(*(v63 + 56) + 8 * v62);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      v67 = *(v66 + 48);
      v54 = v164;
      (*(v64 + 32))();
      *&v54[v67] = v65;
      (*(*(v66 - 8) + 56))(v54, 0, 1, v66);

      v19 = v170;
      v53 = v165;
      v52 = v173;
    }

    else
    {
      v59 = v51 <= v45 + 1 ? v45 + 1 : v51;
      v60 = v59 - 1;
      while (1)
      {
        v58 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
        }

        if (v58 >= v51)
        {
          break;
        }

        v50 = *(v47 + 8 * v58);
        ++v45;
        if (v50)
        {
          v45 = v58;
          goto LABEL_18;
        }
      }

      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      (*(*(v96 - 8) + 56))(v54, 1, 1, v96);
      v50 = 0;
      v45 = v60;
    }

    v68 = v54;
    v69 = v156;
    outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v68, v156, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
      break;
    }

    v71 = *(v69 + *(v70 + 48));
    (*v161)(v171, v69, v174);
    v172 = v71;
    dispatch thunk of CryptexAsset.path.getter();
    if ((*v152)(v53, 1, v19) == 1)
    {
      outlined destroy of FilePath?(v53, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v72 = v163;
LABEL_24:
      v77 = v169;
      CryptexAsset.type.getter();
      CryptexAssetType._4cc.getter();
      (*v159)(v77, v174);
      goto LABEL_26;
    }

    v73 = v147;
    MEMORY[0x22AA76570]();
    v166(v53, v19);
    v74 = type metadata accessor for FilePath.Component();
    v75 = *(v74 - 8);
    v76 = (*(v75 + 48))(v73, 1, v74);
    v72 = v163;
    if (v76 == 1)
    {
      outlined destroy of FilePath?(v73, &_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
      v19 = v170;
      goto LABEL_24;
    }

    FilePath.Component.string.getter();
    (*(v75 + 8))(v73, v74);
    v19 = v170;
LABEL_26:
    v157(v155, v162, v19);
    FilePath.appending(_:)();
    v78 = [v168 defaultManager];
    v79 = FilePath.string.getter();
    v80 = MEMORY[0x22AA76630](v79);

    [v78 createFileAtPath:v80 contents:0 attributes:0];

    v81 = FilePath.string.getter();
    v82 = MEMORY[0x22AA76630](v81);

    v83 = objc_opt_self();
    v84 = [v83 fileHandleForWritingAtPath_];

    if (!v84)
    {
      v126 = v72;
      v127 = v142;
      v128 = v170;
      v157(v142, v126, v170);
      (*(v146 + 56))(v127, 0, 1, v128);
      v129 = v143;
      (*(v143 + 104))(v127, *MEMORY[0x277D02D78], v144);
      v175 = 0;
      v176 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v175 = 0x742064656C696146;
      v176 = 0xEF206E65706F206FLL;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E10]);
      v130 = v171;
      v131 = v174;
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v132);

      MEMORY[0x22AA76680](0x6F662079706F6320, 0xEF65746972772072);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      v98 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();

      (*(v129 + 8))(v127, v144);
      v19 = v128;
      swift_willThrow();

      v166(v163, v128);
      (*v159)(v130, v131);
      v171 = 0;
      v6 = v145;
      v52 = v173;
      v99 = v168;
      v31 = 0x278584000;
      goto LABEL_32;
    }

    v85 = CryptexAsset.file.getter();
    v86 = [v85 fileDescriptor];

    fcopyfile(v86, [v84 fileDescriptor], 0, 0xC000Fu);
    v87 = FilePath.string.getter();
    v88 = MEMORY[0x22AA76630](v87);

    v89 = [v83 fileHandleForReadingAtPath_];

    if (!v89)
    {
      v133 = v142;
      v19 = v170;
      v157(v142, v72, v170);
      (*(v146 + 56))(v133, 0, 1, v19);
      v134 = v143;
      v135 = v144;
      (*(v143 + 104))(v133, *MEMORY[0x277D02D78], v144);
      v175 = 0;
      v176 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v175 = 0x742064656C696146;
      v176 = 0xEF206E65706F206FLL;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E10]);
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AA76680](v136);

      MEMORY[0x22AA76680](0x6F662079706F6320, 0xEE00646165722072);
      type metadata accessor for CryptexErrorMessage();
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
      v98 = swift_allocError();
      static CryptexError.error(_:_:file:function:lineNumber:)();

      (*(v134 + 8))(v133, v135);
      swift_willThrow();
      v175 = 0;
      if ([v84 closeAndReturnError_])
      {
        v137 = v175;
      }

      else
      {
        v138 = v175;
        v139 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v165 = v139;
      }

      v6 = v145;
      v52 = v173;
      v99 = v168;
      v31 = 0x278584000;

      v166(v163, v19);
      (*v159)(v171, v174);
      v171 = 0;
      goto LABEL_32;
    }

    v90 = v171;
    (*v160)(v169, v171, v174);
    type metadata accessor for CryptexAsset();
    swift_allocObject();
    v91 = v89;
    v92 = CryptexAsset.init(type:file:)();
    v93 = v173;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v93;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v92, v90, isUniquelyReferenced_nonNull_native);

    v52 = v175;
    v175 = 0;
    if ([v84 closeAndReturnError_])
    {
      v95 = v175;
    }

    else
    {
      v55 = v175;
      v56 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v148 = 0;
    }

    v57 = v163;
    v54 = v164;
    v53 = v165;

    v19 = v170;
    v166(v57, v170);
    (*v159)(v171, v174);
    v47 = v151;
  }

  v123 = v141;
  (v157)(v141);
  (*(v146 + 56))(v123, 0, 1, v19);
  type metadata accessor for Cryptex(0);
  v104 = swift_allocObject();

  v125 = v148;
  Cryptex.init(assets:rootDirectory:)(v124, v123);
  if (!v125)
  {
    goto LABEL_50;
  }

  v171 = 0;
  v6 = v145;
  v31 = 0x278584000;
  v98 = v125;
  v99 = v168;
LABEL_32:
  v100 = [v99 *(v31 + 1368)];
  v101 = FilePath.string.getter();
  v102 = MEMORY[0x22AA76630](v101);

  v175 = 0;
  v103 = [v100 removeItemAtPath:v102 error:&v175];

  v104 = v175;
  if (v103)
  {
    v169 = v98;
    v105 = v52 + 64;
    v106 = 1 << *(v52 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & *(v52 + 64);
    v109 = (v106 + 63) >> 6;
    v174 = (v146 + 48);
    v172 = v146 + 32;
    v110 = v175;

    v111 = 0;
    v145 = v6;
    v170 = v19;
    v173 = v52;
    if (v108)
    {
      goto LABEL_38;
    }

    while (1)
    {
LABEL_39:
      v112 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        goto LABEL_60;
      }

      if (v112 >= v109)
      {
        break;
      }

      v108 = *(v105 + 8 * v112);
      ++v111;
      if (v108)
      {
        while (1)
        {
          v113 = __clz(__rbit64(v108));
          v108 &= v108 - 1;
          v114 = *(*(v52 + 56) + ((v112 << 9) | (8 * v113)));

          v104 = v114;
          dispatch thunk of CryptexAsset.path.getter();
          if ((*v174)(v6, 1, v19) == 1)
          {

            outlined destroy of FilePath?(v6, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
            v111 = v112;
            if (!v108)
            {
              goto LABEL_39;
            }
          }

          else
          {
            (*v172)(v153, v6, v19);
            v115 = [v168 defaultManager];
            v116 = FilePath.string.getter();
            v117 = MEMORY[0x22AA76630](v116);

            v175 = 0;
            v118 = [v115 removeItemAtPath:v117 error:&v175];

            v104 = v175;
            if (v118)
            {
              v119 = v175;
              v19 = v170;
              v166(v153, v170);
            }

            else
            {
              v120 = v175;
              v104 = _convertNSErrorToError(_:)();

              swift_willThrow();

              v19 = v170;
              v166(v153, v170);
              v171 = 0;
            }

            v111 = v112;
            v6 = v145;
            v52 = v173;
            if (!v108)
            {
              goto LABEL_39;
            }
          }

LABEL_38:
          v112 = v111;
        }
      }
    }

    swift_willThrow();
  }

  else
  {
    v121 = v175;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_50:

  return v104;
}

uint64_t Cryptex.move(to:)(uint64_t a1)
{
  v155 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for CryptexError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v117 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = &v113 - v6;
  v148 = type metadata accessor for FilePath.Component();
  v144 = *(v148 - 8);
  v7 = MEMORY[0x28223BE20](v148);
  v136 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v147 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v115 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v113 - v13;
  v152 = type metadata accessor for FilePath();
  v14 = *(v152 - 8);
  v15 = MEMORY[0x28223BE20](v152);
  v135 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v138 = &v113 - v18;
  MEMORY[0x28223BE20](v17);
  v149 = &v113 - v19;
  v20 = type metadata accessor for CryptexAssetType();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v151 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v146 = &v113 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v142 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v141 = &v113 - v28;
  v150 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v134 = objc_opt_self();
  v29 = [v134 defaultManager];
  v137 = a1;
  v30 = FilePath.string.getter();
  v31 = MEMORY[0x22AA76630](v30);

  v153 = 0;
  v32 = [v29 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v153];

  if (v32)
  {
    v113 = v3;
    v114 = v2;
    v33 = *((*(*v118 + 120))(v153) + 16);

    v34 = 0;
    v35 = *(v33 + 64);
    v119 = v33 + 64;
    v129 = v33;
    v36 = 1 << *(v33 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & v35;
    v39 = (v36 + 63) >> 6;
    v143 = (v21 + 16);
    v145 = (v21 + 32);
    v131 = (v14 + 48);
    v128 = (v14 + 32);
    v127 = (v144 + 48);
    v123 = (v144 + 32);
    v132 = (v14 + 16);
    v122 = (v144 + 16);
    v133 = v14;
    v126 = (v14 + 8);
    v124 = (v144 + 8);
    v130 = (v21 + 8);
    v40 = v149;
    v121 = v21;
    v41 = v150;
    v120 = v39;
    v125 = v20;
    if ((v37 & v35) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v150 = v41;
    v42 = v34;
LABEL_13:
    v44 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v45 = v44 | (v42 << 6);
    v46 = v129;
    v47 = v146;
    v48 = v21;
    (*(v21 + 16))(v146, *(v129 + 48) + *(v21 + 72) * v45, v20);
    v49 = *(*(v46 + 56) + 8 * v45);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
    v51 = *(v50 + 48);
    v52 = *(v48 + 32);
    v53 = v142;
    v52(v142, v47, v20);
    *&v53[v51] = v49;
    (*(*(v50 - 8) + 56))(v53, 0, 1, v50);

    v144 = v42;
    v54 = v133;
    v40 = v149;
    v41 = v150;
    while (1)
    {
      v55 = v53;
      v56 = v141;
      outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v55, v141, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetSgMR);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
      {
        break;
      }

      v58 = *(v56 + *(v57 + 48));
      (*v145)(v151, v56, v20);
      v59 = v140;
      dispatch thunk of CryptexAsset.path.getter();
      v60 = v152;
      if ((*v131)(v59, 1, v152) == 1)
      {

        outlined destroy of FilePath?(v59, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
        v91 = v113;
        v92 = v117;
        v93 = v114;
        (*(v113 + 104))(v117, *MEMORY[0x277D02D48], v114);
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();
        (*(v91 + 8))(v92, v93);
        swift_willThrow();

        v94 = *v130;
        v95 = v151;
LABEL_27:
        v101 = v20;
        return (v94)(v95, v101);
      }

      v150 = v58;
      v61 = (*v128)(v40, v59, v60);
      v62 = v139;
      MEMORY[0x22AA76570](v61);
      v63 = v148;
      if ((*v127)(v62, 1, v148) == 1)
      {

        outlined destroy of FilePath?(v62, &_s6System8FilePathV9ComponentVSgMd, &_s6System8FilePathV9ComponentVSgMR);
        v96 = v60;
        v97 = v117;
        (*(v54 + 16))(v117, v40, v96);
        (*(v54 + 56))(v97, 0, 1, v96);
        v98 = v113;
        (*(v113 + 104))(v97, *MEMORY[0x277D02D78], v114);
        v153 = 0;
        v154 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v153 = 0xD00000000000001BLL;
        v154 = 0x8000000226145C80;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E10]);
        v99 = v151;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA76680](v100);

        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();

        (*(v98 + 8))(v97, v114);
        swift_willThrow();

        (*(v54 + 8))(v149, v152);
        v94 = *v130;
        v95 = v99;
        goto LABEL_27;
      }

      v64 = v147;
      (*v123)(v147, v62, v63);
      v65 = *v132;
      (*v132)(v135, v137, v60);
      (*v122)(v136, v64, v63);
      v66 = v138;
      FilePath.appending(_:)();
      v67 = [v134 defaultManager];
      v68 = FilePath.string.getter();
      v69 = MEMORY[0x22AA76630](v68);

      v70 = FilePath.string.getter();
      v71 = MEMORY[0x22AA76630](v70);

      v153 = 0;
      v72 = [v67 moveItemAtPath:v69 toPath:v71 error:&v153];

      if (!v72)
      {
        v102 = v153;

        _convertNSErrorToError(_:)();

        swift_willThrow();

        v103 = *v126;
        v104 = v66;
        v105 = v152;
        (*v126)(v104, v152);
        (*v124)(v147, v148);
        v103(v149, v105);
        v94 = *v130;
        v95 = v151;
        goto LABEL_30;
      }

      v73 = v153;
      v74 = FilePath.string.getter();
      v75 = MEMORY[0x22AA76630](v74);

      v76 = [objc_opt_self() fileHandleForReadingAtPath_];

      if (!v76)
      {

        v106 = v117;
        v107 = v152;
        v65(v117, v66, v152);
        v108 = v133 + 56;
        (*(v133 + 56))(v106, 0, 1, v107);
        v109 = v113;
        (*(v113 + 104))(v106, *MEMORY[0x277D02D78], v114);
        v153 = 0;
        v154 = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v153 = 0x742064656C696146;
        v154 = 0xEF206E65706F206FLL;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E10]);
        v110 = v151;
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x22AA76680](v111);

        MEMORY[0x22AA76680](0x6F66207473656420, 0xEE00646165722072);
        type metadata accessor for CryptexErrorMessage();
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
        swift_allocError();
        static CryptexError.error(_:_:file:function:lineNumber:)();

        (*(v109 + 8))(v106, v114);
        swift_willThrow();

        v112 = *(v108 - 48);
        v112(v138, v107);
        (*v124)(v147, v148);
        v112(v149, v107);
        v94 = *v130;
        v95 = v110;
LABEL_30:
        v101 = v125;
        return (v94)(v95, v101);
      }

      v77 = v151;
      v20 = v125;
      (*v143)(v146, v151, v125);
      type metadata accessor for CryptexAsset();
      swift_allocObject();
      v78 = v76;
      v79 = CryptexAsset.init(type:file:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153 = v41;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v79, v77, isUniquelyReferenced_nonNull_native);

      v81 = *v126;
      v82 = v66;
      v83 = v152;
      v41 = v153;
      (*v126)(v82, v152);
      (*v124)(v147, v148);
      v40 = v149;
      v81(v149, v83);
      (*v130)(v77, v20);
      v34 = v144;
      v21 = v121;
      v39 = v120;
      if (v38)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (v39 <= v34 + 1)
      {
        v43 = v34 + 1;
      }

      else
      {
        v43 = v39;
      }

      while (1)
      {
        v42 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
        }

        if (v42 >= v39)
        {
          break;
        }

        v38 = *(v119 + 8 * v42);
        ++v34;
        if (v38)
        {
          v150 = v41;
          goto LABEL_13;
        }
      }

      v144 = v43 - 1;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMd, &_s10CryptexKit0A9AssetTypeO3key_AA0aC0C5valuetMR);
      v53 = v142;
      (*(*(v84 - 8) + 56))(v142, 1, 1, v84);
      v38 = 0;
      v54 = v133;
    }

    type metadata accessor for CryptexCore();
    v87 = v116;
    result = CryptexCore.__allocating_init(assets:)(v41);
    v88 = v152;
    if (!v87)
    {
      v89 = v118;
      (*(*v118 + 128))(result);
      v90 = v115;
      (*(v54 + 16))(v115, v137, v88);
      (*(v54 + 56))(v90, 0, 1, v88);
      return (*(*v89 + 200))(v90);
    }
  }

  else
  {
    v85 = v153;

    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t Cryptex.graft(at:)(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v65 = v3;
  v66 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v60 - v7;
  v8 = type metadata accessor for CryptexAssetType();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = [objc_opt_self() defaultManager];
  v19 = FilePath.string.getter();
  v20 = MEMORY[0x22AA76630](v19);

  v68[0] = 0;
  v21 = [v18 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:v68];

  if (!v21)
  {
    v38 = v68[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v22 = *(*v1 + 256);
  v23 = v68[0];
  v24 = v67;
  result = v22(a1);
  if (v24)
  {
    return result;
  }

  v60 = a1;
  v67 = v1;
  v26 = v65;
  v27 = *(v66 + 48);
  v28 = v27(v17, 1, v65);
  v29 = outlined destroy of FilePath?(v17, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  if (v28 != 1)
  {
    v39 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v41 = v40;
    v42 = MEMORY[0x277D02D70];
LABEL_11:
    (*(*(v39 - 8) + 104))(v41, *v42, v39);
    return swift_willThrow();
  }

  v30 = *((*(*v67 + 120))(v29) + 16);

  v31 = v63;
  (*(v64 + 104))(v11, *MEMORY[0x277D02DE8], v63);
  if (!*(v30 + 16) || (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v33 & 1) == 0))
  {

    (*(v64 + 8))(v11, v31);
    v39 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    v41 = v43;
    v42 = MEMORY[0x277D02D48];
    goto LABEL_11;
  }

  v34 = *(*(v30 + 56) + 8 * v32);
  v35 = *(v64 + 8);

  v35(v11, v63);

  dispatch thunk of CryptexAsset.path.getter();
  if (v27(v15, 1, v26) == 1)
  {
    outlined destroy of FilePath?(v15, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v36 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D02D80], v36);
    swift_willThrow();
  }

  else
  {
    v44 = v66;
    v45 = v62;
    (*(v66 + 32))(v62, v15, v26);
    v46 = v60;
    static APFSAdapter.graft(dmg:at:)();
    v64 = v34;
    v47 = v61;
    (*(v44 + 16))(v61, v46, v26);
    v48 = v67;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      LODWORD(v60) = v50;
      v52 = v51;
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v52 = 136315394;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v48 + 16), *(v48 + 24), v68);
      *(v52 + 12) = 2080;
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = *(v44 + 8);
      v56(v47, v26);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v68);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_226120000, v49, v60, "%s grafted at %s", v52, 0x16u);
      v58 = v63;
      swift_arrayDestroy();
      MEMORY[0x22AA76E00](v58, -1, -1);
      MEMORY[0x22AA76E00](v52, -1, -1);

      return (v56)(v62, v26);
    }

    else
    {

      v59 = *(v44 + 8);
      v59(v47, v26);
      return (v59)(v45, v26);
    }
  }
}

uint64_t Cryptex.graftPoint(under:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v55 = a2;
  v70 = type metadata accessor for FilePath();
  v58 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
  MEMORY[0x28223BE20](v67);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
  v68 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  v19 = v69;
  result = static APFSAdapter.allDisksGrafted(under:logger:)(v65, v2 + OBJC_IVAR____TtC13CryptexServer7Cryptex_logger);
  if (!v19)
  {
    v62 = v12;
    v63 = v10;
    v69 = 0;
    v64 = v16;
    v65 = v13;
    v54 = v18;
    v60 = *(result + 16);
    if (!v60)
    {
LABEL_14:

      return (*(v58 + 56))(v55, 1, 1, v70);
    }

    v66 = v6;
    v21 = 0;
    v59 = (v58 + 48);
    v53 = (v58 + 32);
    v56 = (v58 + 8);
    v57 = v2;
    v23 = v64;
    v22 = v65;
    v24 = v2;
    v61 = result;
    while (1)
    {
      if (v21 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v26 = v4;
      v27 = v24;
      v28 = v70;
      v29 = outlined init with copy of FilePath?(result + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v21, v23, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v30 = *(v22 + 48);
      v31 = v27;
      (*(*v27 + 120))(v29);
      v32 = v69;
      CryptexCore.diskImage.getter();
      v69 = v32;
      if (v32)
      {

        v45 = &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd;
        v46 = &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR;
        v47 = v23;
        return outlined destroy of FilePath?(v47, v45, v46);
      }

      v33 = v62;
      dispatch thunk of CryptexAsset.path.getter();

      v34 = *(v67 + 48);
      v35 = v23 + v30;
      v36 = v33;
      v37 = v66;
      outlined init with copy of FilePath?(v35, v66, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      outlined init with copy of FilePath?(v36, v37 + v34, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v38 = *v59;
      if ((*v59)(v37, 1, v28) == 1)
      {
        break;
      }

      outlined init with copy of FilePath?(v37, v63, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      if (v38(v37 + v34, 1, v70) == 1)
      {
        outlined destroy of FilePath?(v36, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
        (*v56)(v63, v70);
        v4 = v26;
        v22 = v65;
        v24 = v57;
LABEL_5:
        outlined destroy of FilePath?(v37, &_s6System8FilePathVSg_ADtMd, &_s6System8FilePathVSg_ADtMR);
        v23 = v64;
        goto LABEL_6;
      }

      v4 = v26;
      v39 = v26;
      v40 = v70;
      (*v53)(v39, v37 + v34, v70);
      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854D8]);
      v41 = v63;
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *v56;
      (*v56)(v4, v40);
      outlined destroy of FilePath?(v36, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v43(v41, v40);
      outlined destroy of FilePath?(v66, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v23 = v64;
      v22 = v65;
      v44 = v54;
      v24 = v57;
      if (v42)
      {
        goto LABEL_17;
      }

LABEL_6:
      ++v21;
      outlined destroy of FilePath?(v23, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      result = v61;
      if (v60 == v21)
      {
        goto LABEL_14;
      }
    }

    outlined destroy of FilePath?(v36, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    v25 = v38(v37 + v34, 1, v70);
    v24 = v31;
    v4 = v26;
    v22 = v65;
    if (v25 == 1)
    {
      outlined destroy of FilePath?(v37, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
      v44 = v54;
      v23 = v64;
LABEL_17:

      outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(v23, v44, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMd, &_s6System8FilePathV10graftPoint_ACSg03dmgC0tMR);
      v48 = *(v22 + 48);
      v49 = v58;
      v50 = v55;
      v51 = v70;
      (*(v58 + 32))(v55, v44, v70);
      (*(v49 + 56))(v50, 0, 1, v51);
      v45 = &_s6System8FilePathVSgMd;
      v46 = &_s6System8FilePathVSgMR;
      v47 = v44 + v48;
      return outlined destroy of FilePath?(v47, v45, v46);
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t Cryptex.ungraft(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for FilePath();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  result = (*(*v3 + 256))(a1);
  if (!v2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return outlined destroy of FilePath?(v7, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
    }

    else
    {
      (*(v9 + 32))(v14, v7, v8);
      static APFSAdapter.ungraft(_:)(v14);
      (*(v9 + 16))(v12, v14, v8);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v18 = 136315394;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + 16), *(v3 + 24), &v31);
        *(v18 + 12) = 2080;
        lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type FilePath and conformance FilePath, MEMORY[0x277D854C0], MEMORY[0x277D854E8]);
        v29 = v17;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        v28 = v16;
        v22 = *(v9 + 8);
        v22(v12, v8);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

        *(v18 + 14) = v23;
        v24 = v28;
        _os_log_impl(&dword_226120000, v28, v29, "%s ungrafted from %s", v18, 0x16u);
        v25 = v30;
        swift_arrayDestroy();
        MEMORY[0x22AA76E00](v25, -1, -1);
        MEMORY[0x22AA76E00](v18, -1, -1);

        return (v22)(v14, v8);
      }

      else
      {

        v26 = *(v9 + 8);
        v26(v12, v8);
        return (v26)(v14, v8);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Cryptex.unlinkAssets()()
{
  v1 = v0;
  v83[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v62 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v82 = type metadata accessor for FilePath();
  v9 = *(v82 - 8);
  v10 = MEMORY[0x28223BE20](v82);
  v74 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v65 = &v62 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - v15;
  v17 = *((*(*v0 + 120))(v14) + 16);

  v19 = 0;
  v20 = v17 + 64;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v17 + 64);
  v24 = (v21 + 63) >> 6;
  v81 = (v9 + 48);
  v77 = (v9 + 32);
  v71 = (v9 + 16);
  v72 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v63 = v9;
  v25 = (v9 + 8);
  v26 = v16;
  v80 = v25;
  *&v18 = 136315138;
  v69 = v18;
  v70 = v0;
  v75 = v16;
  v76 = v8;
  v73 = v17;
  if (v23)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v27);
    ++v19;
    if (v23)
    {
      while (1)
      {
        v28 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v29 = *(*(v17 + 56) + ((v27 << 9) | (8 * v28)));

        dispatch thunk of CryptexAsset.path.getter();
        if ((*v81)(v8, 1, v82) == 1)
        {

          outlined destroy of FilePath?(v8, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
          v19 = v27;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v79 = v29;
          v30 = v82;
          (*v77)(v26, v8, v82);
          v31 = v74;
          (*v71)(v74, v26, v30);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v67 = v34;
            v68 = swift_slowAlloc();
            v83[0] = v68;
            *v34 = v69;
            v35 = FilePath.string.getter();
            v37 = v36;
            v78 = *v80;
            v78(v31, v82);
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v83);

            v39 = v67;
            *(v67 + 1) = v38;
            v40 = v39;
            _os_log_impl(&dword_226120000, v32, v33, "Deleting %s", v39, 0xCu);
            v41 = v68;
            __swift_destroy_boxed_opaque_existential_0(v68);
            MEMORY[0x22AA76E00](v41, -1, -1);
            MEMORY[0x22AA76E00](v40, -1, -1);
          }

          else
          {

            v78 = *v80;
            v78(v31, v82);
          }

          v42 = [objc_opt_self() defaultManager];
          v26 = v75;
          v43 = FilePath.string.getter();
          v44 = MEMORY[0x22AA76630](v43);

          v83[0] = 0;
          v45 = [v42 removeItemAtPath:v44 error:v83];

          v46 = v83[0];
          v8 = v76;
          if (!v45)
          {
            v61 = v46;
            _convertNSErrorToError(_:)();

            swift_willThrow();

            v78(v26, v82);
            return;
          }

          v78(v26, v82);

          v19 = v27;
          v1 = v70;
          v17 = v73;
          if (!v23)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v27 = v19;
      }
    }
  }

  v48 = v66;
  (*(*v1 + 192))(v47);
  if ((*v81)(v48, 1, v82) == 1)
  {
    outlined destroy of FilePath?(v48, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  }

  else
  {
    v49 = v65;
    (*v77)(v65, v48, v82);
    v50 = [objc_opt_self() defaultManager];
    v51 = FilePath.string.getter();
    v52 = MEMORY[0x22AA76630](v51);

    v83[0] = 0;
    v53 = [v50 removeItemAtPath:v52 error:v83];

    v54 = v83[0];
    if (v53)
    {
      v55 = v63 + 56;
      v56 = v64;
      v57 = v82;
      (*(v63 + 56))(v64, 1, 1, v82);
      v58 = *(*v1 + 200);
      v59 = v54;
      v58(v56);
      (*(v55 - 48))(v49, v57);
    }

    else
    {
      v60 = v83[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*v80)(v49, v82);
    }
  }
}

char *Cryptex.deinit()
{

  v1 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of FilePath?(v0 + OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  return v0;
}

uint64_t Cryptex.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13CryptexServer7Cryptex_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of FilePath?(v0 + OBJC_IVAR____TtC13CryptexServer7Cryptex_rootDirectory, &_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CryptexAssetType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(&lazy protocol witness table cache variable for type CryptexAssetType and conformance CryptexAssetType, MEMORY[0x277D02DF8], MEMORY[0x277D02E00]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CryptexAssetType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t outlined assign with take of FilePath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Cryptex(uint64_t a1)
{
  result = type metadata singleton initialization cache for Cryptex;
  if (!type metadata singleton initialization cache for Cryptex)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CryptexAssetType();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v33 = type metadata accessor for CryptexAssetType();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10CryptexKit0C9AssetTypeO_AC0cE0CTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A9AssetTypeO_AA0aC0CtMd, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMd, &_ss18_DictionaryStorageCy10CryptexKit0C9AssetTypeOAC0cE0CGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of FilePath?(v9, v5, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMd, &_s10CryptexKit0A9AssetTypeO_AA0aC0CtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CryptexAssetType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t outlined init with take of (key: CryptexAssetType, value: CryptexAsset)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata completion function for Cryptex(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FilePath?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
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

uint64_t lazy protocol witness table accessor for type Cryptex.BootstrapOptions and conformance Cryptex.BootstrapOptions(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InventoryManager.__allocating_init(persistent:ephemeral:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = a1;
  *(v4 + 120) = a2;
  return v4;
}

uint64_t InventoryManager.init(persistent:ephemeral:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t InventoryManager.allInventories()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CryptexServer9InventoryCSgGMd, &_ss23_ContiguousArrayStorageCy13CryptexServer9InventoryCSgGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2261450B0;
  v2 = *(v0 + 120);
  *(v1 + 32) = *(v0 + 112);
  *(v1 + 40) = v2;

  return v1;
}

uint64_t InventoryManager.processAllInventories(closure:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](InventoryManager.processAllInventories(closure:), v2, 0);
}

uint64_t InventoryManager.processAllInventories(closure:)()
{
  result = (*(**(v0 + 32) + 112))();
  *(v0 + 40) = result;
  v2 = *(result + 16);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 16);
    while (1)
    {
      *(v0 + 56) = v3;
      if (v3 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v5 = *(result + 32 + 8 * v3);
      *(v0 + 64) = v5;
      if (v5)
      {
        break;
      }

      if (v2 == ++v3)
      {
        goto LABEL_6;
      }
    }

    swift_retain_n();
    v8 = (v4 + *v4);
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = InventoryManager.processAllInventories(closure:);

    return v8(v5);
  }

  else
  {
LABEL_6:

    v6 = *(v0 + 8);

    return v6();
  }
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = InventoryManager.processAllInventories(closure:);
  }

  else
  {

    v4 = InventoryManager.processAllInventories(closure:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v2 = v0[7] + 5;
  v3 = 1 - v0[6];
  while (v3 + v2 != 5)
  {
    v0[7] = v2 - 4;
    v4 = v0[5];
    if ((v2 - 4) >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v5 = *(v4 + 8 * v2);
    v0[8] = v5;
    ++v2;
    if (v5)
    {
      v6 = v0[2];
      swift_retain_n();
      v9 = (v6 + *v6);
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = InventoryManager.processAllInventories(closure:);

      return v9(v5);
    }
  }

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t InventoryManager.start()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](InventoryManager.start(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
    *(v0 + 32) = *(*v2 + 240);
    *(v0 + 40) = v3;
    v4 = InventoryManager.start();
    return MEMORY[0x2822009F8](v4, v2, 0);
  }

  *(v0 + 56) = 0;
  v2 = *(v1 + 112);
  *(v0 + 64) = v2;
  if (v2)
  {
    v5 = (*v2 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
    *(v0 + 72) = *(*v2 + 240);
    *(v0 + 80) = v5;
    v4 = InventoryManager.start();
    return MEMORY[0x2822009F8](v4, v2, 0);
  }

  return (*(v0 + 8))();
}

{
  (*(v0 + 32))();
  *(v0 + 48) = 0;
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](InventoryManager.start(), v1, 0);
}

{
  *(v0 + 56) = *(v0 + 48);
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 64) = v1;
  if (!v1)
  {
    return (*(v0 + 8))();
  }

  v2 = (*v1 + 240) & 0xFFFFFFFFFFFFLL | 0x15AC000000000000;
  *(v0 + 72) = *(*v1 + 240);
  *(v0 + 80) = v2;
  return MEMORY[0x2822009F8](InventoryManager.start(), v1, 0);
}

{
  (*(v0 + 72))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t InventoryManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InventoryManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of InventoryManager.processAllInventories(closure:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of InventoryManager.processAllInventories(closure:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of InventoryManager.processAllInventories(closure:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of InventoryManager.start()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of InventoryManager.start();

  return v4();
}

uint64_t VirtualEnvConfig.globalEnvRoot.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t VirtualEnvConfig.init(globalEnvRoot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CryptexError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FilePath.isAbsolute.getter())
  {
    v8 = type metadata accessor for FilePath();
    return (*(*(v8 - 8) + 32))(a2, a1, v8);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D02D48], v4);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type CryptexErrorMessage and conformance CryptexErrorMessage();
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v5 + 8))(v7, v4);
    swift_willThrow();
    v10 = type metadata accessor for FilePath();
    return (*(*(v10 - 8) + 8))(a1, v10);
  }
}

uint64_t type metadata accessor for VirtualEnvConfig(uint64_t a1)
{
  result = type metadata singleton initialization cache for VirtualEnvConfig;
  if (!type metadata singleton initialization cache for VirtualEnvConfig)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Server.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CryptexServer6Server_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t Server.__allocating_init(queue:xpcListener:persistentInventory:ephemeralInventory:clientAuthenticator:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  *(v9 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v9 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v10, a4);
  *(v9 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(a5, &v12, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v13)
  {
    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);

    outlined init with take of BootstrapVirtualEnv.Strategy(&v12, &v14);
  }

  else
  {
    v15 = &type metadata for XPCClientAuthenticator;
    v16 = &protocol witness table for XPCClientAuthenticator;
    XPCClientAuthenticator.init()();

    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v13)
    {
      outlined destroy of FilePath?(&v12, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v14, v9 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v9;
}

uint64_t Server.init(queue:xpcListener:persistentInventory:ephemeralInventory:clientAuthenticator:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  (*(v12 + 32))(v6 + OBJC_IVAR____TtC13CryptexServer6Server_logger, v14, v11);
  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v15, a4);
  *(v6 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(a5, &v19, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v20)
  {
    v16 = a1;
    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);

    outlined init with take of BootstrapVirtualEnv.Strategy(&v19, &v21);
  }

  else
  {
    v22 = &type metadata for XPCClientAuthenticator;
    v23 = &protocol witness table for XPCClientAuthenticator;
    v17 = a1;
    XPCClientAuthenticator.init()();

    outlined destroy of FilePath?(a5, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v20)
    {
      outlined destroy of FilePath?(&v19, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v21, v6 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v6;
}

uint64_t static Server.createAnonymous(queue:persistentInventory:ephemeralInventory:)(void *a1, uint64_t a2, uint64_t a3)
{
  xpc_connection_create(0, 0);
  v5 = objc_allocWithZone(type metadata accessor for SendableXPCObj());
  swift_unknownObjectRetain();
  v6 = SendableXPCObj.init(_:)();
  type metadata accessor for Server(0);
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v7 = swift_allocObject();
  Logger.init(category:)(0x726576726573, 0xE600000000000000);
  *(v7 + OBJC_IVAR____TtC13CryptexServer6Server_xpcListener) = SendableXPCObj.value.getter();
  type metadata accessor for InventoryManager();

  *(v7 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) = InventoryManager.__allocating_init(persistent:ephemeral:)(v8, a3);
  *(v7 + OBJC_IVAR____TtC13CryptexServer6Server_queue) = a1;
  outlined init with copy of FilePath?(v17, &v12, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
  if (v13)
  {
    v9 = a1;
    swift_unknownObjectRelease();

    outlined destroy of FilePath?(v17, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    outlined init with take of BootstrapVirtualEnv.Strategy(&v12, &v14);
  }

  else
  {
    v15 = &type metadata for XPCClientAuthenticator;
    v16 = &protocol witness table for XPCClientAuthenticator;
    v10 = a1;
    XPCClientAuthenticator.init()();
    swift_unknownObjectRelease();

    outlined destroy of FilePath?(v17, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    if (v13)
    {
      outlined destroy of FilePath?(&v12, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMd, &_s13CryptexServer27ClientAuthenticatorProtocol_pSgMR);
    }
  }

  outlined init with take of BootstrapVirtualEnv.Strategy(&v14, v7 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
  return v7;
}

uint64_t type metadata accessor for Server(uint64_t a1)
{
  result = type metadata singleton initialization cache for Server;
  if (!type metadata singleton initialization cache for Server)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Server.handle(clientError:)(uint64_t a1)
{
  v2 = XPC_ERROR_CONNECTION_INTERRUPTED.getter();
  swift_unknownObjectRelease();
  if (v2 == a1)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Client connection interrupted";
LABEL_8:
      _os_log_impl(&dword_226120000, oslog, v4, v6, v5, 2u);
      MEMORY[0x22AA76E00](v5, -1, -1);
    }
  }

  else
  {
    v3 = XPC_ERROR_CONNECTION_INVALID.getter();
    swift_unknownObjectRelease();
    if (v3 != a1)
    {
      return;
    }

    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Client connection invalid";
      goto LABEL_8;
    }
  }
}

uint64_t Server.handle(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for CryptexError();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for Cryptex.InstallOptions();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6System8FilePathVSgMd, &_s6System8FilePathVSgMR);
  v3[12] = swift_task_alloc();
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v7;
  v3[14] = v6;

  return MEMORY[0x2822009F8](Server.handle(request:), v7, v6);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](Server.handle(request:), v5, v4);
}

uint64_t Server.handle(request:)()
{
  v1 = v0[12];
  type metadata accessor for Cryptex(0);
  v2 = RequestInstall.assets.getter();
  v3 = type metadata accessor for FilePath();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[15] = Cryptex.__allocating_init(assets:rootDirectory:)(v2, v1);
  v0[16] = 0;
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[4];
  RequestInstall.options.getter();
  v10 = Cryptex.InstallOptions.ephemeral.getter();
  v11 = *(v8 + 8);
  v0[17] = v11;
  v0[18] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v7);
  v12 = 112;
  if (v10)
  {
    v12 = 120;
  }

  v13 = *(*(v9 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager) + v12);
  v0[19] = v13;
  if (v13)
  {

    RequestInstall.options.getter();
    v14 = *v13 + 304;
    v0[20] = *v14;
    v0[21] = v14 & 0xFFFFFFFFFFFFLL | 0x7A20000000000000;

    return MEMORY[0x2822009F8](Server.handle(request:), v13, 0);
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[5];
    (*(v16 + 104))(v15, *MEMORY[0x277D02D50], v17);
    type metadata accessor for CryptexErrorMessage();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
    swift_allocError();
    static CryptexError.error(_:_:file:function:lineNumber:)();
    (*(v16 + 8))(v15, v17);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  (*(v0 + 160))(*(v0 + 120), v3);
  *(v0 + 176) = v1;
  v2(v3, v4);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v1)
  {
    v7 = Server.handle(request:);
  }

  else
  {
    v7 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  ResponseInstall.init()();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 80) = 0;
  v3 = *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 80;
  v7 = (*(*v3 + 120) + **(*v3 + 120));
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = Server.handle(request:);

  return v7(&async function pointer to partial apply for closure #1 in Server.handle(request:), v4);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = Server.handle(request:);
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  if (*(v0 + 80))
  {
    ResponseUninstall.init()();
  }

  else
  {
    v2 = type metadata accessor for CryptexError();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D02D68], v2);
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[4];
  v0[2] = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_inventoryManager);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v0 + 2;
  v6 = (*(*v2 + 120) + **(*v2 + 120));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = Server.handle(request:);

  return v6(&async function pointer to partial apply for closure #1 in Server.handle(request:), v3);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = Server.handle(request:);
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = Server.handle(request:);
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  ResponseInstalledInfoPlists.init(infoPlistFDs:)();
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.handle(request:), v1, v0);
}

{
  v1 = type metadata accessor for CryptexError();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D02D68], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in Server.handle(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Cryptex.UninstallOptions();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

uint64_t closure #1 in Server.handle(request:)()
{
  v1 = v0[9];
  v2 = v0[2];
  v0[10] = RequestUninstall.identifier.getter();
  v0[11] = v3;
  v4 = type metadata accessor for CryptexVersion();
  v0[12] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[13] = v6;
  v0[14] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v7 = *v2 + 288;
  v0[15] = *v7;
  v0[16] = v7 & 0xFFFFFFFFFFFFLL | 0xB243000000000000;

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), v2, 0);
}

{
  v1 = *(v0 + 72);
  *(v0 + 176) = (*(v0 + 120))(*(v0 + 80), *(v0 + 88), v1) & 1;

  outlined destroy of FilePath?(v1, &_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR);

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

{
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 96);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    **(v0 + 32) = 1;
    *(v0 + 136) = RequestUninstall.identifier.getter();
    *(v0 + 144) = v5;
    v1(v3, 1, 1, v2);
    Cryptex.UninstallOptions.init()();
    v6 = *v4 + 296;
    *(v0 + 152) = *v6;
    *(v0 + 160) = v6 & 0xFFFFFFFFFFFFLL | 0x16D3000000000000;

    return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), v4, 0);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 144), v1, v2);
  *(v0 + 168) = 0;

  (*(v4 + 8))(v2, v3);
  outlined destroy of FilePath?(v1, &_s10CryptexKit0A7VersionVSgMd, &_s10CryptexKit0A7VersionVSgMR);

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v0 + 48) = (*(v0 + 32))();

  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), 0, 0);
}

{
  specialized Array.append<A>(contentsOf:)(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Server.handle(request:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](Server.handle(request:), v4, v3);
}

uint64_t closure #1 in Server.handle(request:)(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a1 + 312;
  v2[4] = *v3;
  v2[5] = v3 & 0xFFFFFFFFFFFFLL | 0x3917000000000000;
  return MEMORY[0x2822009F8](closure #1 in Server.handle(request:), a1, 0);
}

uint64_t Server.handle(anyRequest:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for CryptexError();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit16RequestUninstallVSgMd, &_s10CryptexKit16RequestUninstallVSgMR);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for RequestUninstall();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit16RequestTestErrorVSgMd, &_s10CryptexKit16RequestTestErrorVSgMR);
  v3[32] = swift_task_alloc();
  v6 = type metadata accessor for RequestTestError();
  v3[33] = v6;
  v3[34] = *(v6 - 8);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit14RequestInstallVSgMd, &_s10CryptexKit14RequestInstallVSgMR);
  v3[36] = swift_task_alloc();
  v7 = type metadata accessor for RequestInstall();
  v3[37] = v7;
  v3[38] = *(v7 - 8);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit26RequestInstalledInfoPlistsVSgMd, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMR);
  v3[40] = swift_task_alloc();
  v8 = type metadata accessor for RequestInstalledInfoPlists();
  v3[41] = v8;
  v3[42] = *(v8 - 8);
  v3[43] = swift_task_alloc();
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[44] = v10;
  v3[45] = v9;

  return MEMORY[0x2822009F8](Server.handle(anyRequest:), v10, v9);
}

uint64_t Server.handle(anyRequest:)()
{
  v1 = v0[42];
  outlined init with copy of AssetAuthenticatorProtocol(v0[23], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CryptexKit7Request_pMd, &_s10CryptexKit7Request_pMR);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[42];
    v4 = v0[43];
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[24];
    v9 = v0[22];
    v3(v7, 0, 1, v6);
    (*(v5 + 32))(v4, v7, v6);
    v10 = *(*v8 + 160);
    v11 = type metadata accessor for ResponseInstalledInfoPlists();
    v12 = MEMORY[0x277D02E38];
    v9[3] = v11;
    v9[4] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    v74 = (v10 + *v10);
    v14 = swift_task_alloc();
    v0[46] = v14;
    *v14 = v0;
    v14[1] = Server.handle(anyRequest:);
    v15 = v0[43];
    v16 = boxed_opaque_existential_1;
    v17 = v74;

    return v17(v16, v15);
  }

  v18 = v0[40];
  v19 = v0[38];
  v20 = v0[23];
  v3(v18, 1, 1, v0[41]);
  outlined destroy of FilePath?(v18, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMd, &_s10CryptexKit26RequestInstalledInfoPlistsVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v20, (v0 + 7));
  v21 = swift_dynamicCast();
  v22 = *(v19 + 56);
  if (v21)
  {
    v24 = v0[38];
    v23 = v0[39];
    v26 = v0[36];
    v25 = v0[37];
    v27 = v0[24];
    v28 = v0[22];
    v22(v26, 0, 1, v25);
    (*(v24 + 32))(v23, v26, v25);
    v29 = *(*v27 + 144);
    v30 = type metadata accessor for ResponseInstall();
    v31 = MEMORY[0x277D02E20];
    v28[3] = v30;
    v28[4] = v31;
    v32 = __swift_allocate_boxed_opaque_existential_1(v28);
    v75 = (v29 + *v29);
    v33 = swift_task_alloc();
    v0[48] = v33;
    *v33 = v0;
    v33[1] = Server.handle(anyRequest:);
    v15 = v0[39];
    v16 = v32;
    v17 = v75;

    return v17(v16, v15);
  }

  v34 = v0[36];
  v35 = v0[34];
  v36 = v0[23];
  v22(v34, 1, 1, v0[37]);
  outlined destroy of FilePath?(v34, &_s10CryptexKit14RequestInstallVSgMd, &_s10CryptexKit14RequestInstallVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v36, (v0 + 12));
  v37 = swift_dynamicCast();
  v38 = *(v35 + 56);
  if (v37)
  {
    v40 = v0[34];
    v39 = v0[35];
    v42 = v0[32];
    v41 = v0[33];
    v43 = v0[24];
    v44 = v0[22];
    v38(v42, 0, 1, v41);
    (*(v40 + 32))(v39, v42, v41);
    v45 = *(*v43 + 168);
    v46 = type metadata accessor for ResponseTestError();
    v47 = MEMORY[0x277D02E28];
    v44[3] = v46;
    v44[4] = v47;
    v48 = __swift_allocate_boxed_opaque_existential_1(v44);
    v76 = (v45 + *v45);
    v49 = swift_task_alloc();
    v0[50] = v49;
    *v49 = v0;
    v49[1] = Server.handle(anyRequest:);
    v15 = v0[35];
    v16 = v48;
    v17 = v76;

    return v17(v16, v15);
  }

  v50 = v0[32];
  v51 = v0[30];
  v52 = v0[23];
  v38(v50, 1, 1, v0[33]);
  outlined destroy of FilePath?(v50, &_s10CryptexKit16RequestTestErrorVSgMd, &_s10CryptexKit16RequestTestErrorVSgMR);
  outlined init with copy of AssetAuthenticatorProtocol(v52, (v0 + 17));
  v53 = swift_dynamicCast();
  v54 = *(v51 + 56);
  if (v53)
  {
    v56 = v0[30];
    v55 = v0[31];
    v58 = v0[28];
    v57 = v0[29];
    v59 = v0[24];
    v60 = v0[22];
    v54(v58, 0, 1, v57);
    (*(v56 + 32))(v55, v58, v57);
    v61 = *(*v59 + 152);
    v62 = type metadata accessor for ResponseUninstall();
    v63 = MEMORY[0x277D02E30];
    v60[3] = v62;
    v60[4] = v63;
    v64 = __swift_allocate_boxed_opaque_existential_1(v60);
    v77 = (v61 + *v61);
    v65 = swift_task_alloc();
    v0[52] = v65;
    *v65 = v0;
    v65[1] = Server.handle(anyRequest:);
    v15 = v0[31];
    v16 = v64;
    v17 = v77;

    return v17(v16, v15);
  }

  v67 = v0[28];
  v69 = v0[26];
  v68 = v0[27];
  v70 = v0[25];
  v71 = v0[23];
  v54(v67, 1, 1, v0[29]);
  outlined destroy of FilePath?(v67, &_s10CryptexKit16RequestUninstallVSgMd, &_s10CryptexKit16RequestUninstallVSgMR);
  (*(v69 + 104))(v68, *MEMORY[0x277D02D48], v70);
  _StringGuts.grow(_:)(47);

  __swift_project_boxed_opaque_existential_1(v71, v71[3]);
  swift_getDynamicType();
  v72 = _typeName(_:qualified:)();
  MEMORY[0x22AA76680](v72);

  MEMORY[0x22AA76680](0xD000000000000013, 0x8000000226145E20);
  type metadata accessor for CryptexErrorMessage();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexErrorMessage and conformance CryptexErrorMessage, MEMORY[0x277D02D28], MEMORY[0x277D02D30]);
  swift_allocError();
  static CryptexError.error(_:_:file:function:lineNumber:)();

  (*(v69 + 8))(v68, v70);
  swift_willThrow();

  v73 = v0[1];

  return v73();
}

{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = Server.handle(anyRequest:);
  }

  else
  {
    v5 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[42] + 8))(v0[43], v0[41]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = Server.handle(anyRequest:);
  }

  else
  {
    v5 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[38] + 8))(v0[39], v0[37]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = Server.handle(anyRequest:);
  }

  else
  {
    v5 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = Server.handle(anyRequest:);
  }

  else
  {
    v5 = Server.handle(anyRequest:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[22];
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[22];
  (*(v0[38] + 8))(v0[39], v0[37]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[22];
  (*(v0[34] + 8))(v0[35], v0[33]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[22];
  (*(v0[30] + 8))(v0[31], v0[29]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  v2 = v0[1];

  return v2();
}

uint64_t Server.handle(message:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for CryptexError();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for RequestWrapper();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v5;
  v2[32] = v6;

  return MEMORY[0x2822009F8](Server.handle(message:), v5, v6);
}

uint64_t Server.handle(message:)()
{
  v30 = v0;
  v29[2] = *MEMORY[0x277D85DE8];
  v1 = xpc_dictionary_get_remote_connection(*(v0 + 160));
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = v1;
    reply = xpc_dictionary_create_reply(*(v0 + 160));
    if (reply)
    {
      *(v0 + 152) = reply;
      pid = xpc_connection_get_pid(v2);
      *(v0 + 320) = pid;
      static RequestWrapper.from(xpc:)();
      v5 = *(v0 + 168);
      RequestWrapper.request.getter();
      *(v0 + 288) = 0u;
      *(v0 + 304) = 0u;
      xpc_dictionary_get_audit_token();
      v6 = (v5 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator);
      v7 = *(v5 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator + 24);
      v8 = *(v5 + OBJC_IVAR____TtC13CryptexServer6Server_clientAuthenticator + 32);
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v8 + 8))(v0 + 16, *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), v7, v8);
      outlined init with copy of AssetAuthenticatorProtocol(v0 + 16, v0 + 56);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29[0] = v20;
        *v19 = 136315394;
        v21 = *(v0 + 80);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v21);
        v22 = *(v21 - 8);
        swift_task_alloc();
        (*(v22 + 16))();
        v23 = String.init<A>(describing:)();
        v25 = v24;

        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v29);

        *(v19 + 4) = v26;
        *(v19 + 12) = 1024;
        *(v19 + 14) = pid;
        _os_log_impl(&dword_226120000, v16, v17, "Received %s from pid %d", v19, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x22AA76E00](v20, -1, -1);
        MEMORY[0x22AA76E00](v19, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0((v0 + 56));
      }

      v28 = (*(**(v0 + 168) + 176) + **(**(v0 + 168) + 176));
      v27 = swift_task_alloc();
      *(v0 + 272) = v27;
      *v27 = v0;
      v27[1] = Server.handle(message:);

      return v28(v0 + 96, v0 + 16);
    }

    v9 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226120000, v9, v12, "Failed to create reply to xpc message", v13, 2u);
      MEMORY[0x22AA76E00](v13, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226120000, v9, v10, "Failed to get client xpc connection from message", v11, 2u);
      MEMORY[0x22AA76E00](v11, -1, -1);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = Server.handle(message:);
  }

  else
  {
    v5 = Server.handle(message:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v18 = v0;
  v17[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v4 + 8))(v2, v3);
  outlined init with take of BootstrapVirtualEnv.Strategy((v0 + 96), v1);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 280);
  Result<>.populate(xpcDict:)();
  if (v5)
  {
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000226145EA0, v17);
      _os_log_impl(&dword_226120000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA76E00](v10, -1, -1);
      MEMORY[0x22AA76E00](v9, -1, -1);
    }

    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type CryptexError and conformance CryptexError, MEMORY[0x277D02DB8], MEMORY[0x277D02DC0]);
    swift_allocError();
    (*(v12 + 104))(v13, *MEMORY[0x277D02DB0], v11);
    CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
    swift_storeEnumTagMultiPayload();
    Result<>.populate(xpcDict:)();
    outlined destroy of FilePath?(*(v0 + 232), &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  }

  v14 = *(v0 + 240);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  outlined destroy of FilePath?(v14, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  swift_unknownObjectRelease();

  v15 = *(v0 + 8);

  return v15();
}

{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  MEMORY[0x22AA76CB0](v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 320);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2112;
    MEMORY[0x22AA76CB0](v4);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 10) = v10;
    *v9 = v10;
    _os_log_impl(&dword_226120000, v5, v6, "Failed to handle request from pid %d with error: %@", v8, 0x12u);
    outlined destroy of FilePath?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA76E00](v9, -1, -1);
    MEMORY[0x22AA76E00](v8, -1, -1);
  }

  CryptexErrorMessage.init(_:_:file:function:lineNumber:)();
  swift_storeEnumTagMultiPayload();
  Result<>.populate(xpcDict:)();
  v11 = *(v0 + 240);
  xpc_dictionary_send_reply();
  swift_unknownObjectRelease();
  outlined destroy of FilePath?(v11, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMd, &_ss6ResultOy10CryptexKit8Response_pAC0B12ErrorMessageVGMR);
  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Server.handle(clientEvent:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  type metadata accessor for Server(0);
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type Server and conformance Server, type metadata accessor for Server, &protocol conformance descriptor for Server);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](Server.handle(clientEvent:), v4, v3);
}

uint64_t Server.handle(clientEvent:)()
{
  v17 = v0;
  v1 = MEMORY[0x22AA76FB0](*(v0 + 24));
  if (v1 == XPC_TYPE_ERROR.getter())
  {
    (*(**(v0 + 32) + 136))(*(v0 + 24));
LABEL_7:
    v11 = *(v0 + 8);

    return v11();
  }

  v2 = MEMORY[0x22AA76FB0](*(v0 + 24));
  if (v2 != XPC_TYPE_DICTIONARY.getter())
  {
    swift_unknownObjectRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 24);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      swift_getObjectType();
      *(v0 + 16) = v5;
      swift_unknownObjectRetain();
      v8 = String.init<A>(describing:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_226120000, v3, v4, "Unexpected XPC: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AA76E00](v7, -1, -1);
      MEMORY[0x22AA76E00](v6, -1, -1);
    }

    goto LABEL_7;
  }

  v15 = (*(**(v0 + 32) + 184) + **(**(v0 + 32) + 184));
  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  v13[1] = Server.handle(clientEvent:);
  v14 = *(v0 + 24);

  return v15(v14);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void Server.handle(serverError:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_226120000, oslog, v2, "Server error: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AA76E00](v4, -1, -1);
    MEMORY[0x22AA76E00](v3, -1, -1);
  }

  else
  {
  }
}

void Server.handle(localClient:)(_xpc_connection_s *a1)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = partial apply for closure #1 in Server.handle(localClient:);
  v5[5] = v3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ();
  v5[3] = &block_descriptor;
  v4 = _Block_copy(v5);

  xpc_connection_set_event_handler(a1, v4);
  _Block_release(v4);
  xpc_connection_set_target_queue(a1, *(v1 + OBJC_IVAR____TtC13CryptexServer6Server_queue));
  xpc_connection_activate(a1);
}

uint64_t closure #1 in Server.handle(localClient:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    objc_allocWithZone(type metadata accessor for SendableXPCObj());
    swift_unknownObjectRetain();
    v7 = SendableXPCObj.init(_:)();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v7;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in Server.handle(localClient:), v9);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Server.handle(localClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in Server.handle(localClient:), 0, 0);
}

uint64_t closure #1 in closure #1 in Server.handle(localClient:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = SendableXPCObj.value.getter();
  v1[4] = v3;
  v6 = (*(*v2 + 192) + **(*v2 + 192));
  v4 = swift_task_alloc();
  v1[5] = v4;
  *v4 = v1;
  v4[1] = closure #1 in closure #1 in Server.handle(localClient:);

  return v6(v3);
}

uint64_t closure #1 in closure #1 in Server.handle(localClient:)()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of FilePath?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of FilePath?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of FilePath?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of FilePath?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}