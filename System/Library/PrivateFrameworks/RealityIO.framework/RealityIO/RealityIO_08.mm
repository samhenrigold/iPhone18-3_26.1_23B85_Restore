uint64_t lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int BuilderOrder.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BuilderOrder and conformance BuilderOrder()
{
  result = lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder;
  if (!lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderOrder and conformance BuilderOrder);
  }

  return result;
}

uint64_t closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for __RKEntityActionSpecification();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a2, v16);
  (*(v17 + 56))(v10, 0, 1, v16);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __RKEntityCustomActionArguments.init(target:actionIdentifier:customArguments:)();
  (*(v12 + 104))(v15, *MEMORY[0x277CDAFA8], v11);
  v18 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *a3 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *a3 = v18;
  }

  v18[2] = v21 + 1;
  return (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v15, v11);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
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

uint64_t specialized static ActionBuilder.generateNotificationActionSpecifications(inputs:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v27 - v2;
  v4 = type metadata accessor for __RKEntityGroupActionOrder();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSS_Tt1g5Tf4ndn_n(0x696669746E656469, 0xEA00000000007265, v7);
  v12 = v11;
  v20 = *(specialized Inputs.pathsForRelationship(named:requestContext:)(0x6465746365666661, 0xEF737463656A624FLL, v13) + 16);

  if (v20)
  {
    v27[0] = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](v21, v22);
    v27[-4] = v27;
    v27[-3] = v10;
    v27[-2] = v12;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateNotificationActionSpecifications(inputs:), &v27[-6]);

    result = v27[0];
    if (*(v27[0] + 16) >= 2uLL)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v23 = type metadata accessor for __RKEntityActionSpecification();
      v24 = *(v23 - 8);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_2619891C0;
      (*(v5 + 104))(v9, *MEMORY[0x277CDAEF8], v4);

      __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
      (*(v24 + 104))(v26 + v25, *MEMORY[0x277CDAFA0], v23);

      return v26;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v14 = type metadata accessor for __RKEntityActionSpecification();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2619891C0;
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    __RKEntityCustomActionArguments.init(target:actionIdentifier:customArguments:)();
    (*(v15 + 104))(v17 + v16, *MEMORY[0x277CDAFA8], v14);
    return v17;
  }

  return result;
}

uint64_t USDImportService.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &dword_26187B000, v2, "[USDImportService] RealityIO USDImportService instantiated.  RealityIO will be used to service load requests from USDImportService.", 131, 2, MEMORY[0x277D84F90]);

  return v0;
}

char *_s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(char *a1, int a2, int a3, int a4)
{
  v28[0] = a2;
  v28[1] = a3;
  v6 = type metadata accessor for __EngineRef();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v7 + 8))(v10, v6);
  if (specialized static USDImportService.canLoad(url:)(v16))
  {
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = (v12 + 8);
    if (a4)
    {
      SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();
    }

    else
    {
      SingleUseImporterWithURL = RIOImportSessionCreateWithURL();
    }

    v24 = SingleUseImporterWithURL;

    type metadata accessor for ImportSession(0);
    swift_allocObject();
    v26 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5(v24, v25);
    v27 = *v20;
    (*v20)(a1, v11);
    v27(v16, v11);
    return v26;
  }

  else
  {
    v22 = *(v12 + 8);
    v22(a1, v11);
    v22(v16, v11);
    return 0;
  }
}

uint64_t static USDImportService.urlForUSD(named:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v12 - 8, v13);
  v68 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v16, v14);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v20, v17);
  v71 = &v58 - v21;
  v72 = v7;
  v22 = 0;
  v69 = (v8 + 56);
  v70 = v11;
  v67 = (v8 + 48);
  v62 = 0;
  v63 = (v8 + 32);
  v60 = (v8 + 8);
  v61 = a3;
  v64 = v19;
  v65 = a1;
  v59 = a2;
  while (1)
  {
    v23 = &outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v22;
    v25 = *(v23 + 4);
    v24 = *(v23 + 5);

    v26 = MEMORY[0x26670EFB0](a1, a2);
    v27 = a2;
    if (v24)
    {

      v28 = MEMORY[0x26670EFB0](v25, v24);
    }

    else
    {
      v28 = 0;
    }

    v29 = a3;
    v30 = [a3 URLForResource:v26 withExtension:{v28, v58}];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = v70;
    v33 = v72;
    v66 = *v69;
    v66(v19, v31, 1, v72);
    v34 = v19;
    v35 = v71;
    outlined init with take of URL?(v34, v71);
    v36 = v68;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v35, v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*v67)(v36, 1, v33) != 1)
    {
      break;
    }

    outlined destroy of Any?(v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    outlined destroy of Any?(v36, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v19 = v64;
    a3 = v29;
    a2 = v27;
LABEL_3:
    a1 = v65;
    if (++v22 == 6)
    {
      v56 = 1;
      v57 = v58;
      v50 = v72;
      return (v66)(v57, v56, 1, v50);
    }
  }

  v37 = *v63;
  (*v63)(v32, v36, v33);
  if (!v24)
  {
    result = URL.isFileURL.getter();
    if (result)
    {
      v39 = 0;
      v40 = MEMORY[0x277D84F90];
LABEL_14:
      v41 = 6;
      if (v39 > 6)
      {
        v41 = v39;
      }

      v42 = v41 + 1;
      v43 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v39 + 40);
      while (v39 != 6)
      {
        if (v42 == ++v39)
        {
          __break(1u);
          return result;
        }

        v44 = v43 + 2;
        v45 = *v43;
        v43 += 2;
        if (v45)
        {
          v46 = *(v44 - 3);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
            v40 = result;
          }

          v48 = *(v40 + 16);
          v47 = *(v40 + 24);
          if (v48 >= v47 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v40);
            v40 = result;
          }

          *(v40 + 16) = v48 + 1;
          v49 = v40 + 16 * v48;
          *(v49 + 32) = v46;
          *(v49 + 40) = v45;
          goto LABEL_14;
        }
      }

      URL.pathExtension.getter();
      v51 = String.lowercased()();

      v73 = v51;
      v32 = v70;
      MEMORY[0x28223BE20](v52, v53);
      *(&v58 - 2) = &v73;
      v54 = v62;
      v55 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, (&v58 - 4), v40);
      v62 = v54;
      v50 = v72;

      outlined destroy of Any?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      if (v55)
      {
        goto LABEL_31;
      }

      a3 = v61;
      v19 = v64;
    }

    else
    {
      outlined destroy of Any?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      a3 = v61;
      v19 = v64;
      v50 = v72;
    }

    (*v60)(v32, v50);
    a2 = v59;
    goto LABEL_3;
  }

  outlined destroy of Any?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v50 = v72;
LABEL_31:
  v57 = v58;
  v37(v58, v32, v50);
  v56 = 0;
  return (v66)(v57, v56, 1, v50);
}

uint64_t USDImportService.init()(uint64_t a1)
{
  v2 = v1;
  v3 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v3, &dword_26187B000, v4, "[USDImportService] RealityIO USDImportService instantiated.  RealityIO will be used to service load requests from USDImportService.", 131, 2, MEMORY[0x277D84F90]);

  return v2;
}

BOOL static USDImportService.canLoad(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v13 - v8;
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, &v13 - v8);
  v10 = type metadata accessor for URL();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v11;
}

unint64_t USDImportService.LoadError.errorDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4.n128_f32[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v4);
  v9 = &v33 - v8;
  Error = type metadata accessor for USDImportService.LoadError(0);
  MEMORY[0x28223BE20](Error, v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of USDImportService.LoadError(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000033;
      }

      else
      {
        return 0xD00000000000002DLL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000030;
    }

    else
    {
      return 0xD000000000000037;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v35 = 0;
        v36 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        MEMORY[0x26670F080](0xD000000000000034, 0x80000002619974C0);
        v20 = Dictionary.description.getter();
        v22 = v21;

        MEMORY[0x26670F080](v20, v22);

        return v35;
      }

      v27 = *v13;
      v28 = v13[1];
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      MEMORY[0x26670F080](0xD00000000000001ALL, 0x8000000261997480);
      v34 = v27;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v29);

      MEMORY[0x26670F080](0xD000000000000013, 0x80000002619974A0);
      v34 = v28;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v30);

      v17 = 0x62616C6961766120;
      v18 = 0xEA0000000000656CLL;
LABEL_16:
      MEMORY[0x26670F080](v17, v18);
      return v35;
    }

    if (!EnumCaseMultiPayload)
    {
      v15 = *v13;
      v16 = v13[1];
      v35 = 0;
      v36 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v35 = 0xD000000000000023;
      v36 = 0x8000000261995C60;
      MEMORY[0x26670F080](v15, v16);

      v17 = 0x6E7562206E692022;
      v18 = 0xEB00000000656C64;
      goto LABEL_16;
    }

    outlined init with take of URL?(v13, v9);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v35 = 0xD00000000000001ELL;
    v36 = 0x80000002619975C0;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v9, v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v23 = type metadata accessor for URL();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      outlined destroy of Any?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      object = 0xE600000000000000;
      countAndFlagsBits = 0x79726F6D656DLL;
    }

    else
    {
      v31 = URL.path(percentEncoded:)(1);
      object = v31._object;
      (*(v24 + 8))(v6, v23);
      countAndFlagsBits = v31._countAndFlagsBits;
    }

    MEMORY[0x26670F080](countAndFlagsBits, object);

    MEMORY[0x26670F080](34, 0xE100000000000000);
    v32 = v35;
    outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return v32;
  }
}

char *USDImportService.load(with:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4.n128_f32[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v170 = v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v4);
  v171 = v160 - v8;
  v10.n128_f32[0] = MEMORY[0x28223BE20](v9, v7);
  v164 = v160 - v11;
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v10);
  v163 = v160 - v14;
  v16.n128_f32[0] = MEMORY[0x28223BE20](v15, v13);
  v18 = v160 - v17;
  MEMORY[0x28223BE20](v19, v16);
  v21 = v160 - v20;
  v177 = type metadata accessor for URL();
  Error = *(v177 - 8);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v177, v22);
  v165 = v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f32[0] = MEMORY[0x28223BE20](v25, v23);
  v169 = v160 - v27;
  v29.n128_f32[0] = MEMORY[0x28223BE20](v28, v26);
  v168 = v160 - v30;
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v29);
  v166 = v160 - v33;
  v35.n128_f32[0] = MEMORY[0x28223BE20](v34, v32);
  v162 = v160 - v36;
  v38.n128_f32[0] = MEMORY[0x28223BE20](v37, v35);
  v161 = v160 - v39;
  v41.n128_f32[0] = MEMORY[0x28223BE20](v40, v38);
  v43 = v160 - v42;
  MEMORY[0x28223BE20](v44, v41);
  v46 = v160 - v45;
  if (*(a1 + 2))
  {
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x8000000261997180);
    if (v48)
    {
      outlined init with copy of Any(*(a1 + 7) + 32 * v47, &v175);
      if (swift_dynamicCast())
      {
        if (v173)
        {
          if (one-time initialization token for rioAudio != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          __swift_project_value_buffer(v49, static Logger.rioAudio);
          v50 = static os_log_type_t.error.getter();
          v51 = Logger.logObject.getter();
          if (os_log_type_enabled(v51, v50))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_26187B000, v51, v50, "Ignoring generateDecimatedMesh param: no longer supported.", v52, 2u);
            MEMORY[0x266713AD0](v52, -1, -1);
          }
        }
      }
    }
  }

  if (*(a1 + 2) && (v53 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v54 & 1) != 0) && (outlined init with copy of Any(*(a1 + 7) + 32 * v53, &v175), (swift_dynamicCast() & 1) != 0))
  {
    v55 = 0xD000000000000013;
    if (v173 == 0x6D6F724664616F4CLL && v174 == 0xEB000000004C5255)
    {
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v63 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*(a1 + 2) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746E65746E6F63, 0xEA0000000000664FLL), (v65 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 7) + 32 * v64, &v175);
      v66 = v177;
      v67 = swift_dynamicCast();
      v68 = Error;
      v160[0] = *(Error + 56);
      v160[1] = Error + 56;
      (v160[0])(v21, v67 ^ 1u, 1, v66);
      if ((*(v68 + 48))(v21, 1, v66) != 1)
      {
        (*(Error + 32))(v46, v21, v177);
        if (*(a1 + 2))
        {
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E68746977, 0xE800000000000000);
          if (v70)
          {
            outlined init with copy of Any(*(a1 + 7) + 32 * v69, &v175);
            if (swift_dynamicCast())
            {
            }
          }
        }

        v71 = type metadata accessor for Entity();
        v72 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v46, v71, 0, 0);
        if (!v72)
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          swift_allocError();
          v93 = v92;
          v94 = Error;
          v18 = v177;
          (*(Error + 16))(v92, v46, v177);
          (v160[0])(v93, 0, 1, v18);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_177;
        }

        v21 = v72;
        a1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        RIOImportSessionUpdateSynchronouslyOnEngineQueue();
        result = RIOImportSessionGetSceneCount();
        v18 = v177;
        if ((result & 0x8000000000000000) == 0)
        {
          v74 = result;
          if (!result)
          {
            goto LABEL_70;
          }

          v43 = 0;
          v55 = 0;
          do
          {
            if (RIOImportSessionIsSceneActive())
            {
              v75 = __OFADD__(v43++, 1);
              if (v75)
              {
                __break(1u);
                goto LABEL_47;
              }
            }

            ++v55;
          }

          while (v74 != v55);
          if (v43 < 2)
          {
LABEL_70:
            a1 = *(v21 + 3);
            v91 = *(Error + 8);

            v91(v46, v18);

            return a1;
          }

          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v94 = Error;
LABEL_177:
          v145 = *(v94 + 8);
          a1 = (v94 + 8);
          v145(v46, v18);
          return a1;
        }

        goto LABEL_195;
      }
    }

    else
    {
LABEL_47:
      (*(Error + 56))(v21, 1, 1, v177);
    }

    outlined destroy of Any?(v21, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v55 = 0xD000000000000013;
  }

LABEL_17:
  if (*(a1 + 2) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000), (v57 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 7) + 32 * v56, &v175);
    v58 = swift_dynamicCast();
    v59 = Error;
    v60 = v177;
    if (v58)
    {
      if (v173 == (v55 - 3) && 0x8000000261997240 == v174)
      {
      }

      else
      {
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v76 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (*(a1 + 2) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(0x73746E65746E6F63, 0xEA0000000000664FLL), (v78 & 1) != 0))
      {
        outlined init with copy of Any(*(a1 + 7) + 32 * v77, &v175);
        v79 = swift_dynamicCast();
        (*(v59 + 56))(v18, v79 ^ 1u, 1, v60);
        if ((*(v59 + 48))(v18, 1, v60) != 1)
        {
          (*(v59 + 32))(v43, v18, v60);
          if (*(a1 + 2))
          {
            v80 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E68746977, 0xE800000000000000);
            if (v81)
            {
              outlined init with copy of Any(*(a1 + 7) + 32 * v80, &v175);
              swift_dynamicCast();
            }
          }

          v89 = v167;
          v90 = specialized USDImportService.loadModel(contentsOf:withName:)(v43);
          if (!v89)
          {
            a1 = v90;
          }

          (*(v59 + 8))(v43, v60);
          goto LABEL_116;
        }
      }

      else
      {
        (*(v59 + 56))(v18, 1, 1, v60);
      }

      outlined destroy of Any?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  else
  {
    v59 = Error;
    v60 = v177;
  }

LABEL_24:
  if (*(a1 + 2))
  {
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
    if (v62)
    {
      outlined init with copy of Any(*(a1 + 7) + 32 * v61, &v175);
      if (swift_dynamicCast())
      {
        if (v173 == 0x6D6F724664616F4CLL && v174 == 0xEE00656C646E7542)
        {
        }

        else
        {
          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v82 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (*(a1 + 2))
        {
          v83 = specialized __RawDictionaryStorage.find<A>(_:)(0x64656D616ELL, 0xE500000000000000);
          if (v84)
          {
            outlined init with copy of Any(*(a1 + 7) + 32 * v83, &v175);
            if (swift_dynamicCast())
            {
              v86 = v173;
              v85 = v174;
              specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, a1, &v175);
              if (v176)
              {
                type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
                if (swift_dynamicCast())
                {
                  v87 = v173;
                  v88 = v163;
                  static USDImportService.urlForUSD(named:in:)(v86, v85, v173, v163);
                  if ((*(v59 + 48))(v88, 1, v60) == 1)
                  {
                    outlined destroy of Any?(v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                    type metadata accessor for ModelEntity();
                    swift_allocObject();
                    a1 = ModelEntity.init()();

                    return a1;
                  }

                  a1 = v161;
                  (*(v59 + 32))(v161, v88, v60);
                  v146 = type metadata accessor for Entity();
                  v147 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(a1, v146, 0, 0);
                  if (v147)
                  {
                    v148 = v147;
                    v170 = v87;
                    v171 = v87;
                    v149 = [v171 bundleIdentifier];
                    if (v149)
                    {
                      v150 = v149;
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                    }

                    v153 = [v171 bundlePath];
                    static String._unconditionallyBridgeFromObjectiveC(_:)();

                    v154 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
                    swift_beginAccess();
                    v155 = *&v148[v154];
                    String.utf8CString.getter();
                    v156 = v155;

                    String.utf8CString.getter();

                    String.utf8CString.getter();
                    RIOImportSessionSetBundleInfo();

                    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
                    result = RIOImportSessionGetSceneCount();
                    if ((result & 0x8000000000000000) != 0)
                    {
                      goto LABEL_196;
                    }

                    v157 = result;
                    v59 = Error;
                    v60 = v177;
                    v87 = v170;
                    if (!result)
                    {
                      goto LABEL_191;
                    }

                    v158 = 0;
                    v159 = 0;
                    while (1)
                    {
                      if (RIOImportSessionIsSceneActive())
                      {
                        v75 = __OFADD__(v158++, 1);
                        if (v75)
                        {
                          break;
                        }
                      }

                      if (v157 == ++v159)
                      {
                        goto LABEL_190;
                      }
                    }

                    __break(1u);
LABEL_190:
                    if (v158 < 2)
                    {
LABEL_191:
                      a1 = *(v148 + 3);

                      (*(v59 + 8))(v161, v60);

                      return a1;
                    }

                    type metadata accessor for USDImportService.LoadError(0);
                    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
                    swift_allocError();
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();

                    a1 = v161;
                  }

                  else
                  {
                    type metadata accessor for USDImportService.LoadError(0);
                    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
                    swift_allocError();
                    v152 = v151;
                    (*(v59 + 16))(v151, a1, v60);
                    (*(v59 + 56))(v152, 0, 1, v60);
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                  }

                  (*(v59 + 8))(a1, v60);

                  return a1;
                }
              }

              else
              {

                outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
              }
            }
          }
        }
      }
    }
  }

LABEL_74:
  if (!*(a1 + 2))
  {
    goto LABEL_80;
  }

  v95 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v96 & 1) == 0)
  {
    goto LABEL_80;
  }

  outlined init with copy of Any(*(a1 + 7) + 32 * v95, &v175);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v173 == 0xD000000000000013 && 0x8000000261997220 == v174)
  {
  }

  else
  {
    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v99 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, a1, &v175);
  if (!v176)
  {
LABEL_102:
    outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
    goto LABEL_80;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_80;
  }

  v101 = v173;
  v100 = v174;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, a1, &v175);
  if (!v176)
  {

    goto LABEL_102;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if (swift_dynamicCast())
  {
    v102 = v173;
    v103 = v167;
    v104 = USDImportService.loadModel(named:in:)(v101, v100, v173);
    if (!v103)
    {
      a1 = v104;
    }

    return a1;
  }

LABEL_80:
  if (!*(a1 + 2))
  {
    goto LABEL_105;
  }

  v97 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v98 & 1) == 0)
  {
    goto LABEL_105;
  }

  outlined init with copy of Any(*(a1 + 7) + 32 * v97, &v175);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_105;
  }

  if (v173 == 0xD000000000000019 && 0x8000000261997200 == v174)
  {
  }

  else
  {
    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v105 & 1) == 0)
    {
      goto LABEL_105;
    }
  }

  specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, a1, &v175);
  if (!v176)
  {
LABEL_104:
    outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
    goto LABEL_105;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_105;
  }

  v107 = v173;
  v106 = v174;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, a1, &v175);
  if (!v176)
  {

    goto LABEL_104;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if (swift_dynamicCast())
  {
    v108 = v173;
    a1 = v164;
    static USDImportService.urlForUSD(named:in:)(v107, v106, v173, v164);
    if ((*(v59 + 48))(a1, 1, v60) == 1)
    {
      outlined destroy of Any?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      a1 = type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      swift_allocError();
      *v109 = v107;
      v109[1] = v106;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v142 = v162;
      (*(v59 + 32))(v162, a1, v60);

      v143 = v167;
      v144 = specialized USDImportService.loadBodyTracked(contentsOf:withName:)(v142);
      if (!v143)
      {
        a1 = v144;
      }

      (*(v59 + 8))(v142, v60);

      swift_bridgeObjectRelease_n();
    }

    return a1;
  }

LABEL_105:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1, &v175);
  if (!v176)
  {
LABEL_120:
    v115 = &_sypSgMd;
    v116 = &_sypSgMR;
    v117 = &v175;
    goto LABEL_121;
  }

  if (swift_dynamicCast())
  {
    if (v173 == 0xD000000000000016 && 0x80000002619971E0 == v174)
    {

      goto LABEL_111;
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v110)
    {
LABEL_111:
      specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, a1, &v175);
      if (v176)
      {
        v111 = v171;
        v112 = swift_dynamicCast();
        (*(v59 + 56))(v111, v112 ^ 1u, 1, v60);
        if ((*(v59 + 48))(v111, 1, v60) != 1)
        {
          v113 = v166;
          (*(v59 + 32))(v166, v111, v60);
          v114 = specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, a1, &v175);
          if (v176)
          {
            if (swift_dynamicCast())
            {
              a1 = specialized USDImportService.loadBodyTracked(contentsOf:withName:)(v113);
              (*(v59 + 8))(v113, v60);
LABEL_116:

              return a1;
            }

            (*(v59 + 8))(v113, v60);
            goto LABEL_122;
          }

          (*(v59 + 8))(v113, v60, v114);
          goto LABEL_120;
        }
      }

      else
      {
        outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
        v111 = v171;
        (*(v59 + 56))(v171, 1, 1, v60);
      }

      v115 = &_s10Foundation3URLVSgMd;
      v116 = &_s10Foundation3URLVSgMR;
      v117 = v111;
LABEL_121:
      outlined destroy of Any?(v117, v115, v116);
    }
  }

LABEL_122:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1, &v175);
  if (!v176)
  {
    v118 = &_sypSgMd;
    v119 = &_sypSgMR;
    v120 = &v175;
LABEL_136:
    outlined destroy of Any?(v120, v118, v119);
    goto LABEL_137;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_137;
  }

  if (v173 == 0xD000000000000011 && 0x80000002619971C0 == v174)
  {

    goto LABEL_129;
  }

  v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v121 & 1) == 0)
  {
LABEL_137:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1, &v175);
    if (v176)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_164;
      }

      if (v173 == 0xD000000000000013 && 0x80000002619971A0 == v174)
      {
      }

      else
      {
        v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v128 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, a1, &v175);
      if (v176)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_164;
        }

        v130 = v173;
        v129 = v174;
        specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, a1, &v175);
        if (v176)
        {
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
          if (swift_dynamicCast())
          {
            v131 = v173;
            a1 = USDImportService.loadAnchor(named:in:)(v130, v129, v173);

            return a1;
          }

LABEL_164:
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          swift_allocError();
          *v140 = a1;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return a1;
        }
      }
    }

    outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
    goto LABEL_164;
  }

LABEL_129:
  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, a1, &v175);
  if (!v176)
  {
    outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
    v122 = v170;
    (*(v59 + 56))(v170, 1, 1, v60);
    goto LABEL_135;
  }

  v122 = v170;
  v123 = swift_dynamicCast();
  v124 = *(v59 + 56);
  v124(v122, v123 ^ 1u, 1, v60);
  if ((*(v59 + 48))(v122, 1, v60) == 1)
  {
LABEL_135:
    v118 = &_s10Foundation3URLVSgMd;
    v119 = &_s10Foundation3URLVSgMR;
    v120 = v122;
    goto LABEL_136;
  }

  v125 = v168;
  (*(v59 + 32))(v168, v122, v60);
  specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, a1, &v175);
  if (v176)
  {
    v126 = swift_dynamicCast();
    v127 = v165;
    if (v126)
    {
    }
  }

  else
  {
    outlined destroy of Any?(&v175, &_sypSgMd, &_sypSgMR);
    v127 = v165;
  }

  a1 = (v59 + 16);
  v132 = *(v59 + 16);
  v133 = v169;
  v132(v169, v125, v60);
  v132(v127, v133, v60);
  if (!_s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v127, 0, 0, 1))
  {
    Error = type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    v139 = v138;
    v132(v138, v125, v60);
    v124(v139, 0, 1, v60);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_172;
  }

  a1 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v134 = result;
    if (!result)
    {
      goto LABEL_199;
    }

    v135 = 0;
    v136 = 0;
    while (1)
    {
      if (RIOImportSessionIsSceneActive())
      {
        v75 = __OFADD__(v135++, 1);
        if (v75)
        {
          break;
        }
      }

      if (v134 == ++v136)
      {
        goto LABEL_158;
      }
    }

    __break(1u);
LABEL_158:
    if (v135 < 2)
    {
LABEL_199:
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCastClass())
      {

        v137 = *(v59 + 8);
        v137(v169, v60);
        v137(v168, v60);
        return swift_dynamicCastClassUnconditional();
      }
    }

    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v125 = v168;
LABEL_172:
    v141 = *(v59 + 8);
    v141(v169, v60);
    v141(v125, v60);
    return a1;
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> USDImportService.loadAsync(with:)(Swift::OpaquePointer with)
{
  v3 = v2;
  v4 = v1;
  v295 = type metadata accessor for DispatchWorkItemFlags();
  v294 = *(v295 - 8);
  MEMORY[0x28223BE20](v295, v6);
  v291 = &v284 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for DispatchQoS();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293, v8);
  v290 = &v284 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v10 - 8, v11);
  v300 = &v284 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f32[0] = MEMORY[0x28223BE20](v14, v12);
  v299 = &v284 - v16;
  v18.n128_f32[0] = MEMORY[0x28223BE20](v17, v15);
  v301 = &v284 - v19;
  v21.n128_f32[0] = MEMORY[0x28223BE20](v20, v18);
  v302 = &v284 - v22;
  v24.n128_f32[0] = MEMORY[0x28223BE20](v23, v21);
  v297 = &v284 - v25;
  v27.n128_f32[0] = MEMORY[0x28223BE20](v26, v24);
  v303 = &v284 - v28;
  v30.n128_f32[0] = MEMORY[0x28223BE20](v29, v27);
  v304 = &v284 - v31;
  v33.n128_f32[0] = MEMORY[0x28223BE20](v32, v30);
  v298 = &v284 - v34;
  MEMORY[0x28223BE20](v35, v33);
  v37 = &v284 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v40.n128_f32[0] = MEMORY[0x28223BE20](v38 - 8, v39);
  v308 = (&v284 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43.n128_f32[0] = MEMORY[0x28223BE20](v42, v40);
  v288 = &v284 - v44;
  v46.n128_f32[0] = MEMORY[0x28223BE20](v45, v43);
  v296 = &v284 - v47;
  v49.n128_f32[0] = MEMORY[0x28223BE20](v48, v46);
  v309 = (&v284 - v50);
  v52.n128_f32[0] = MEMORY[0x28223BE20](v51, v49);
  v310 = &v284 - v53;
  MEMORY[0x28223BE20](v54, v52);
  v56 = &v284 - v55;
  v311 = type metadata accessor for URL();
  v318 = *(v311 - 1);
  v58.n128_f32[0] = MEMORY[0x28223BE20](v311, v57);
  v305 = &v284 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.n128_f32[0] = MEMORY[0x28223BE20](v60, v58);
  v287 = &v284 - v62;
  v64.n128_f32[0] = MEMORY[0x28223BE20](v63, v61);
  v289 = &v284 - v65;
  v67.n128_f32[0] = MEMORY[0x28223BE20](v66, v64);
  v306 = &v284 - v68;
  v70.n128_f32[0] = MEMORY[0x28223BE20](v69, v67);
  v307 = (&v284 - v71);
  MEMORY[0x28223BE20](v72, v70);
  v74 = &v284 - v73;
  specialized Dictionary.subscript.getter(0xD000000000000015, 0x8000000261997180, with._rawValue, &aBlock);
  if (v314)
  {
    if (swift_dynamicCast() && (v317 & 1) != 0)
    {
      v286 = v37;
      if (one-time initialization token for rioAudio != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.rioAudio);
      v76 = static os_log_type_t.error.getter();
      v77 = Logger.logObject.getter();
      if (os_log_type_enabled(v77, v76))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_26187B000, v77, v76, "Ignoring generateDecimatedMesh param: no longer supported.", v78, 2u);
        v79 = v78;
        v3 = v2;
        MEMORY[0x266713AD0](v79, -1, -1);
      }

      v37 = v286;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v286 = v37;
  if (__PAIR128__(0x80000002619973E0, 0xD000000000000010) == v317)
  {
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
  if (!v314)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    (*(v318 + 56))(v56, 1, 1, v311);
    goto LABEL_23;
  }

  v81 = v311;
  v82 = swift_dynamicCast();
  v83 = v318;
  (*(v318 + 56))(v56, v82 ^ 1u, 1, v81);
  if ((*(v83 + 48))(v56, 1, v81) == 1)
  {
LABEL_23:
    v89 = &_s10Foundation3URLVSgMd;
    v90 = &_s10Foundation3URLVSgMR;
    p_aBlock = v56;
LABEL_26:
    outlined destroy of Any?(p_aBlock, v89, v90);
    goto LABEL_27;
  }

  v84 = v318;
  v85 = v56;
  v86 = v311;
  (*(v318 + 32))(v74, v85, v311);
  v87 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    (*(v84 + 8))(v74, v86, v87);
LABEL_25:
    v89 = &_sypSgMd;
    v90 = &_sypSgMR;
    p_aBlock = &aBlock;
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
  if (swift_dynamicCast())
  {
    v309 = swift_allocObject();
    v309[1] = v317;
    specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
    v285 = v4;
    if (v314)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
      if (swift_dynamicCast())
      {
        v88 = swift_allocObject();
        *(v88 + 16) = v317;
        v308 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_197:
        specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
        if (v314)
        {
          if (swift_dynamicCast())
          {
            v166 = v317;
          }

          else
          {
            v166 = 2;
          }
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v166 = 2;
        }

        v310 = v3;
        specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
        if (v314)
        {
          v167 = swift_dynamicCast();
          if (v167)
          {
            v168 = v317;
          }

          else
          {
            v168 = 0;
          }

          v169 = v167 ^ 1;
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v168 = 0;
          v169 = 1;
        }

        specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
        if (v314)
        {
          v170 = v166;
          v171 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
          v172 = v286;
          v173 = swift_dynamicCast();
          v174 = *(*(v171 - 8) + 56);
          v175 = v171;
          v166 = v170;
          v174(v172, v173 ^ 1u, 1, v175);
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v176 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
          (*(*(v176 - 8) + 56))(v286, 1, 1, v176);
        }

        specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
        if (v314)
        {
          swift_dynamicCast();
        }

        else
        {
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        }

        v177 = v286;
        v178 = v308;
        specialized USDImportService.loadAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v74, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v309, v308, v88, v166, v168, v169, v286);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v178, v88);

        (*(v318 + 8))(v74, v311);
        v179 = v177;
        goto LABEL_379;
      }
    }

    else
    {
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

    v308 = 0;
    v88 = 0;
    goto LABEL_197;
  }

  (*(v318 + 8))(v74, v311);
LABEL_27:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (v314)
  {
    v92 = swift_dynamicCast();
    v93 = v318;
    if (v92)
    {
      if (__PAIR128__(0x80000002619973C0, 0xD000000000000013) == v317)
      {
      }

      else
      {
        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v94 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
      if (v314)
      {
        if (swift_dynamicCast())
        {
          v95 = v317;
          specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
          if (v314)
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_336:

              v93 = v318;
              goto LABEL_32;
            }

            v96 = v317;
            specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
            if (v314)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
              if (swift_dynamicCast())
              {
                v318 = swift_allocObject();
                *(v318 + 16) = v317;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                v285 = v4;
                if (v314)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v97 = swift_allocObject();
                    *(v97 + 16) = v317;
                    v311 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_346:
                    specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                    if (v314)
                    {
                      if (swift_dynamicCast())
                      {
                        v228 = v317;
                      }

                      else
                      {
                        v228 = 2;
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v228 = 2;
                    }

                    v310 = v3;
                    specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                    if (v314)
                    {
                      v229 = swift_dynamicCast();
                      if (v229)
                      {
                        v230 = v317;
                      }

                      else
                      {
                        v230 = 0;
                      }

                      LODWORD(v231) = v229 ^ 1;
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v230 = 0;
                      LODWORD(v231) = 1;
                    }

                    specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                    if (v314)
                    {
                      v232 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      LODWORD(v309) = v231;
                      v231 = v230;
                      v233 = v97;
                      v234 = v228;
                      v235 = v96;
                      v236 = v232;
                      v237 = v298;
                      v238 = swift_dynamicCast();
                      v239 = *(*(v236 - 8) + 56);
                      v240 = v236;
                      v96 = v235;
                      v228 = v234;
                      v97 = v233;
                      v230 = v231;
                      LOBYTE(v231) = v309;
                      v239(v237, v238 ^ 1u, 1, v240);
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v241 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v237 = v298;
                      (*(*(v241 - 8) + 56))(v298, 1, 1, v241);
                    }

                    v242 = v311;
                    USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v95, *(&v95 + 1), v96, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v318, v311, v97, v228, v230, v231, v237);
                    outlined consume of (@escaping @callee_guaranteed () -> ())?(v242, v97);

LABEL_378:

                    v179 = v237;
                    goto LABEL_379;
                  }
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v311 = 0;
                v97 = 0;
                goto LABEL_346;
              }

              goto LABEL_336;
            }
          }

          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v93 = v318;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v93 = v318;
  }

LABEL_32:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    goto LABEL_54;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (__PAIR128__(0x80000002619973A0, 0xD000000000000011) == v317)
  {
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v98 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
  if (v314)
  {
    if (swift_dynamicCast())
    {
      v99 = v317;
      specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
      if (v314)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit6EntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit6EntityCs5Error_pGcMR);
        if (swift_dynamicCast())
        {
          v100 = swift_allocObject();
          *(v100 + 16) = v317;
          specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
          v285 = v4;
          if (v314)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
            if (swift_dynamicCast())
            {
              v101 = swift_allocObject();
              *(v101 + 16) = v317;
              v318 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_219:
              specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
              if (v314)
              {
                v180 = swift_dynamicCast();
                v181 = v317;
                if (!v180)
                {
                  v181 = 2;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v181 = 2;
              }

              LODWORD(v311) = v181;
              specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
              if (v314)
              {
                v182 = swift_dynamicCast();
                if (v182)
                {
                  v183 = v317;
                }

                else
                {
                  v183 = 0;
                }

                v184 = v182 ^ 1;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v183 = 0;
                v184 = 1;
              }

              specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
              if (v314)
              {
                v185 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v186 = v304;
                v187 = swift_dynamicCast();
                (*(*(v185 - 8) + 56))(v186, v187 ^ 1u, 1, v185);
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v188 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v186 = v304;
                (*(*(v188 - 8) + 56))(v304, 1, 1, v188);
              }

              v189 = v318;
              USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v99, *(&v99 + 1), thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v100, v318, v101, v311, v183, v184, v186);
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v189, v101);

              outlined consume of Data._Representation(v99, *(&v99 + 1));
              outlined destroy of Any?(v186, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
              return;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }

          v318 = 0;
          v101 = 0;
          goto LABEL_219;
        }

        outlined consume of Data._Representation(v99, *(&v99 + 1));
      }

      else
      {
        outlined consume of Data._Representation(v99, *(&v99 + 1));
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      v93 = v318;
    }
  }

  else
  {
LABEL_54:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_55:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_60;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_60:
    v102 = v311;
    goto LABEL_61;
  }

  if (__PAIR128__(0x8000000261997380, 0xD000000000000015) == v317)
  {

    v102 = v311;
  }

  else
  {
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v102 = v311;
    if ((v103 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
  if (!v314)
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v104 = v310;
    (*(v93 + 56))(v310, 1, 1, v102);
    goto LABEL_113;
  }

  v104 = v310;
  v105 = swift_dynamicCast();
  (*(v93 + 56))(v104, v105 ^ 1u, 1, v102);
  if ((*(v93 + 48))(v104, 1, v102) == 1)
  {
LABEL_113:
    outlined destroy of Any?(v104, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    goto LABEL_61;
  }

  v106 = v104;
  v107 = v307;
  (*(v93 + 32))(v307, v106, v102);
  v108 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (v314)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
    if (swift_dynamicCast())
    {
      v109 = swift_allocObject();
      *(v109 + 16) = v317;
      specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
      if (v314)
      {
        v110 = swift_dynamicCast();
        v111 = *(&v317 + 1);
        if (!v110)
        {
          v111 = 0;
        }

        v310 = v111;
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        v310 = 0;
      }

      specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
      v285 = v4;
      if (v314)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
        if (swift_dynamicCast())
        {
          v190 = swift_allocObject();
          *(v190 + 16) = v317;
          v191 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_239:
          specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
          if (v314)
          {
            if (swift_dynamicCast())
            {
              v192 = v317;
            }

            else
            {
              v192 = 2;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v192 = 2;
          }

          specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
          if (v314)
          {
            v193 = swift_dynamicCast();
            if (v193)
            {
              v194 = v317;
            }

            else
            {
              v194 = 0;
            }

            v195 = v193 ^ 1;
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v194 = 0;
            v195 = 1;
          }

          specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
          if (v314)
          {
            v196 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
            v197 = v303;
            v198 = swift_dynamicCast();
            (*(*(v196 - 8) + 56))(v197, v198 ^ 1u, 1, v196);
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            v199 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
            v197 = v303;
            (*(*(v199 - 8) + 56))(v303, 1, 1, v199);
          }

          v200 = v307;
          specialized USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v307, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v109, v191, v190, v192, v194, v195, v197);
LABEL_293:
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v191, v190);

          (*(v318 + 8))(v200, v311);
          outlined destroy of Any?(v197, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
          return;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      v191 = 0;
      v190 = 0;
      goto LABEL_239;
    }

    (*(v93 + 8))(v107, v102);
  }

  else
  {
    (*(v93 + 8))(v107, v102, v108);
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_61:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
LABEL_84:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_85;
  }

  if (swift_dynamicCast())
  {
    if (__PAIR128__(0x8000000261997360, 0xD000000000000018) == v317)
    {

      goto LABEL_75;
    }

    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v112)
    {
LABEL_75:
      specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
      if (v314)
      {
        if (swift_dynamicCast())
        {
          v113 = v317;
          specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
          if (v314)
          {
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
            if (swift_dynamicCast())
            {
              v285 = v4;
              v114 = v317;
              specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
              if (v314)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
                if (swift_dynamicCast())
                {
                  v318 = swift_allocObject();
                  *(v318 + 16) = v317;
                  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                  if (v314)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                    if (swift_dynamicCast())
                    {
                      v115 = swift_allocObject();
                      *(v115 + 16) = v317;
                      v311 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_363:
                      specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                      if (v314)
                      {
                        if (swift_dynamicCast())
                        {
                          v243 = v317;
                        }

                        else
                        {
                          v243 = 2;
                        }
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v243 = 2;
                      }

                      v310 = v3;
                      specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                      if (v314)
                      {
                        v244 = swift_dynamicCast();
                        if (v244)
                        {
                          v245 = v317;
                        }

                        else
                        {
                          v245 = 0;
                        }

                        v246 = v244 ^ 1;
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v245 = 0;
                        v246 = 1;
                      }

                      specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                      if (v314)
                      {
                        v247 = v245;
                        v248 = v115;
                        v249 = v243;
                        v250 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                        v237 = v297;
                        v251 = swift_dynamicCast();
                        v252 = *(*(v250 - 8) + 56);
                        v253 = v250;
                        v243 = v249;
                        v115 = v248;
                        v245 = v247;
                        v252(v237, v251 ^ 1u, 1, v253);
                      }

                      else
                      {
                        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                        v254 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                        v237 = v297;
                        (*(*(v254 - 8) + 56))(v297, 1, 1, v254);
                      }

                      v255 = v311;
                      USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v113, *(&v113 + 1), v114, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v318, v311, v115, v243, v245, v246, v237);
                      outlined consume of (@escaping @callee_guaranteed () -> ())?(v255, v115);

                      goto LABEL_378;
                    }
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                  }

                  v311 = 0;
                  v115 = 0;
                  goto LABEL_363;
                }
              }

              else
              {

                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
              }

              v4 = v285;
              v102 = v311;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }
        }

        goto LABEL_85;
      }

      goto LABEL_84;
    }
  }

LABEL_85:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    goto LABEL_97;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  if (__PAIR128__(0x8000000261997340, 0xD000000000000016) == v317)
  {
  }

  else
  {
    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v116 & 1) == 0)
    {
      goto LABEL_98;
    }
  }

  specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
  if (v314)
  {
    if (swift_dynamicCast())
    {
      v117 = *(&v317 + 1);
      v118 = v317;
      specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
      if (v314)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit11ModelEntityCs5Error_pGcMR);
        if (swift_dynamicCast())
        {
          v285 = v4;
          v119 = swift_allocObject();
          *(v119 + 16) = v317;
          specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
          v318 = v119;
          if (v314)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
            if (swift_dynamicCast())
            {
              v120 = swift_allocObject();
              *(v120 + 16) = v317;
              v121 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_257:
              v310 = v3;
              specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
              if (v314)
              {
                if (swift_dynamicCast())
                {
                  v201 = v317;
                }

                else
                {
                  v201 = 2;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v201 = 2;
              }

              specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
              if (v314)
              {
                v202 = swift_dynamicCast();
                if (v202)
                {
                  v203 = v317;
                }

                else
                {
                  v203 = 0;
                }

                v204 = v202 ^ 1;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v203 = 0;
                v204 = 1;
              }

              specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
              if (v314)
              {
                v205 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v206 = v302;
                v207 = swift_dynamicCast();
                (*(*(v205 - 8) + 56))(v206, v207 ^ 1u, 1, v205);
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v208 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                v206 = v302;
                (*(*(v208 - 8) + 56))(v302, 1, 1, v208);
              }

              USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v118, v117, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<ModelEntity, Error>) -> (@out ()), v318, v121, v120, v201, v203, v204, v206);
LABEL_313:
              outlined consume of (@escaping @callee_guaranteed () -> ())?(v121, v120);

              outlined consume of Data._Representation(v118, v117);
              v179 = v206;
LABEL_379:
              outlined destroy of Any?(v179, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
              return;
            }
          }

          else
          {
            outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          }

          v121 = 0;
          v120 = 0;
          goto LABEL_257;
        }

        outlined consume of Data._Representation(v118, v117);
      }

      else
      {
        outlined consume of Data._Representation(v118, v117);
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      }
    }
  }

  else
  {
LABEL_97:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

LABEL_98:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
LABEL_121:
    v131 = &_sypSgMd;
    v132 = &_sypSgMR;
    v133 = &aBlock;
    goto LABEL_122;
  }

  if (swift_dynamicCast())
  {
    if (__PAIR128__(0x8000000261997320, 0xD000000000000016) == v317)
    {

      goto LABEL_103;
    }

    v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v122)
    {
LABEL_103:
      specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
      if (v314)
      {
        v123 = v309;
        v124 = swift_dynamicCast();
        (*(v93 + 56))(v123, v124 ^ 1u, 1, v102);
        if ((*(v93 + 48))(v123, 1, v102) != 1)
        {
          v125 = v123;
          v126 = v306;
          (*(v93 + 32))(v306, v125, v102);
          v127 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
          if (v314)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
            if (swift_dynamicCast())
            {
              v128 = swift_allocObject();
              *(v128 + 16) = v317;
              specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
              if (v314)
              {
                v129 = swift_dynamicCast();
                v130 = *(&v317 + 1);
                if (!v129)
                {
                  v130 = 0;
                }

                v310 = v130;
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                v310 = 0;
              }

              specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
              v285 = v4;
              if (v314)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                if (swift_dynamicCast())
                {
                  v190 = swift_allocObject();
                  *(v190 + 16) = v317;
                  v191 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_278:
                  specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                  if (v314)
                  {
                    if (swift_dynamicCast())
                    {
                      v209 = v317;
                    }

                    else
                    {
                      v209 = 2;
                    }
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v209 = 2;
                  }

                  specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                  if (v314)
                  {
                    v210 = swift_dynamicCast();
                    if (v210)
                    {
                      v211 = v317;
                    }

                    else
                    {
                      v211 = 0;
                    }

                    v212 = v210 ^ 1;
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v211 = 0;
                    v212 = 1;
                  }

                  specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                  if (v314)
                  {
                    v213 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                    v197 = v301;
                    v214 = swift_dynamicCast();
                    (*(*(v213 - 8) + 56))(v197, v214 ^ 1u, 1, v213);
                  }

                  else
                  {
                    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                    v215 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                    v197 = v301;
                    (*(*(v215 - 8) + 56))(v301, 1, 1, v215);
                  }

                  v200 = v306;
                  specialized USDImportService.loadAnchorAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v306, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v128, v191, v190, v209, v211, v212, v197);
                  goto LABEL_293;
                }
              }

              else
              {
                outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
              }

              v191 = 0;
              v190 = 0;
              goto LABEL_278;
            }

            (*(v93 + 8))(v126, v102);
            goto LABEL_123;
          }

          (*(v93 + 8))(v126, v102, v127);
          goto LABEL_121;
        }
      }

      else
      {
        outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
        v123 = v309;
        (*(v93 + 56))(v309, 1, 1, v102);
      }

      v131 = &_s10Foundation3URLVSgMd;
      v132 = &_s10Foundation3URLVSgMR;
      v133 = v123;
LABEL_122:
      outlined destroy of Any?(v133, v131, v132);
    }
  }

LABEL_123:
  specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    goto LABEL_137;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_138;
  }

  if (__PAIR128__(0x8000000261997300, 0xD000000000000018) == v317)
  {
  }

  else
  {
    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v134 & 1) == 0)
    {
      goto LABEL_138;
    }
  }

  specialized Dictionary.subscript.getter(0x64656D616ELL, 0xE500000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
LABEL_137:
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_138;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_138;
  }

  v135 = v317;
  specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
  if (!v314)
  {
    goto LABEL_295;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_340:

    v102 = v311;
LABEL_138:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v314)
    {
LABEL_150:
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      goto LABEL_151;
    }

    if (swift_dynamicCast())
    {
      if (__PAIR128__(0x80000002619972C0, 0xD000000000000017) == v317)
      {

        goto LABEL_143;
      }

      v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v139)
      {
LABEL_143:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
        if (v314)
        {
          if (swift_dynamicCast())
          {
            v117 = *(&v317 + 1);
            v118 = v317;
            specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
            if (v314)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
              if (swift_dynamicCast())
              {
                v285 = v4;
                v140 = swift_allocObject();
                *(v140 + 16) = v317;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                v318 = v140;
                if (v314)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v120 = swift_allocObject();
                    *(v120 + 16) = v317;
                    v121 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
LABEL_298:
                    v310 = v3;
                    specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
                    if (v314)
                    {
                      if (swift_dynamicCast())
                      {
                        v216 = v317;
                      }

                      else
                      {
                        v216 = 2;
                      }
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v216 = 2;
                    }

                    specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
                    if (v314)
                    {
                      v217 = swift_dynamicCast();
                      if (v217)
                      {
                        v218 = v317;
                      }

                      else
                      {
                        v218 = 0;
                      }

                      v219 = v217 ^ 1;
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v218 = 0;
                      v219 = 1;
                    }

                    specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
                    if (v314)
                    {
                      v220 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v206 = v300;
                      v221 = swift_dynamicCast();
                      (*(*(v220 - 8) + 56))(v206, v221 ^ 1u, 1, v220);
                    }

                    else
                    {
                      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                      v222 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
                      v206 = v300;
                      (*(*(v222 - 8) + 56))(v300, 1, 1, v222);
                    }

                    USDImportService.loadAnchorAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(v118, v117, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v318, v121, v120, v216, v218, v219, v206);
                    goto LABEL_313;
                  }
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v121 = 0;
                v120 = 0;
                goto LABEL_298;
              }

              outlined consume of Data._Representation(v118, v117);
            }

            else
            {
              outlined consume of Data._Representation(v118, v117);
              outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            }
          }

          goto LABEL_151;
        }

        goto LABEL_150;
      }
    }

LABEL_151:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v314)
    {
      goto LABEL_166;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_167;
    }

    if (__PAIR128__(0x80000002619972A0, 0xD00000000000001ELL) == v317)
    {
    }

    else
    {
      v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v141 & 1) == 0)
      {
        goto LABEL_167;
      }
    }

    specialized Dictionary.subscript.getter(1701667182, 0xE400000000000000, with._rawValue, &aBlock);
    if (v314)
    {
      if (swift_dynamicCast())
      {
        v142 = v317;
        specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
        if (v314)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
          if (swift_dynamicCast())
          {
            v143 = swift_allocObject();
            *(v143 + 16) = v317;
            specialized Dictionary.subscript.getter(0x656C646E7562, 0xE600000000000000, with._rawValue, &aBlock);
            if (v314)
            {
              type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSBundle, 0x277CCA8D8);
              if (swift_dynamicCast())
              {
                v144 = v317;
                specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                if (v314)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                  if (swift_dynamicCast())
                  {
                    v145 = swift_allocObject();
                    *(v145 + 16) = v317;
                    v318 = v145;

                    v146 = v288;
                    static USDImportService.urlForUSD(named:in:)(v142, *(&v142 + 1), v144, v288);
                    v147 = v311;
                    if ((*(v93 + 48))(v146, 1, v311) == 1)
                    {
                      outlined destroy of Any?(v146, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
                      type metadata accessor for __ServiceLocator();
                      static __ServiceLocator.shared.getter();
                      dispatch thunk of __ServiceLocator.engine.getter();
                      v310 = v3;

                      v311 = __Engine.queue.getter();

                      v148 = swift_allocObject();
                      *(v148 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply;
                      *(v148 + 24) = v143;
                      *(v148 + 32) = v142;
                      v315 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
                      v316 = v148;
                      *&aBlock = MEMORY[0x277D85DD0];
                      *(&aBlock + 1) = 1107296256;
                      v313 = thunk for @escaping @callee_guaranteed () -> ();
                      v314 = &block_descriptor_17;
                      v149 = _Block_copy(&aBlock);

                      v150 = v290;
                      static DispatchQoS.unspecified.getter();
                      *&v317 = MEMORY[0x277D84F90];
                      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
                      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
                      v151 = v291;
                      v152 = v295;
                      dispatch thunk of SetAlgebra.init<A>(_:)();
                      v153 = v311;
                      MEMORY[0x26670F3A0](0, v150, v151, v149);

                      _Block_release(v149);

                      (*(v294 + 8))(v151, v152);
                      (*(v292 + 8))(v150, v293);
                    }

                    else
                    {
                      v280 = v287;
                      (*(v93 + 32))(v287, v146, v147);

                      specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(v280, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v143, thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply, v318);

                      swift_bridgeObjectRelease_n();

                      (*(v93 + 8))(v280, v147);
                    }

                    return;
                  }
                }

                else
                {

                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }
              }

              else
              {
              }
            }

            else
            {

              outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
            }

            v102 = v311;
          }

          else
          {

            v102 = v311;
          }
        }

        else
        {

          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          v102 = v311;
        }
      }
    }

    else
    {
LABEL_166:
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    }

LABEL_167:
    specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
    if (!v314)
    {
      goto LABEL_316;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_318;
    }

    if (__PAIR128__(0x8000000261997280, 0xD00000000000001BLL) == v317)
    {
    }

    else
    {
      v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v154 & 1) == 0)
      {
        goto LABEL_318;
      }
    }

    specialized Dictionary.subscript.getter(0x73746E65746E6F63, 0xEA0000000000664FLL, with._rawValue, &aBlock);
    if (v314)
    {
      v155 = v308;
      v156 = swift_dynamicCast();
      (*(v93 + 56))(v155, v156 ^ 1u, 1, v102);
      if ((*(v93 + 48))(v155, 1, v102) != 1)
      {
        v157 = v155;
        v158 = v305;
        (*(v93 + 32))(v305, v157, v102);
        v159 = specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
        if (v314)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
          if (swift_dynamicCast())
          {
            v160 = swift_allocObject();
            *(v160 + 16) = v317;
            v161 = specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
            if (v314)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
              if (swift_dynamicCast())
              {
                v162 = swift_allocObject();
                *(v162 + 16) = v317;
                specialized Dictionary.subscript.getter(0x656D614E68746977, 0xE800000000000000, with._rawValue, &aBlock);
                if (v314)
                {
                  swift_dynamicCast();
                }

                else
                {
                  outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
                }

                v256 = v305;
                specialized USDImportService.loadBodyTrackedAsync(contentsOf:withName:fulfill:postLoad:)(v305, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v160, thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply, v162);

                (*(v93 + 8))(v256, v102);
                return;
              }

              (*(v93 + 8))(v305, v102);

              goto LABEL_318;
            }

            (*(v93 + 8))(v305, v102, v161);

            goto LABEL_316;
          }

          (*(v93 + 8))(v158, v102);
LABEL_318:
          specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, with._rawValue, &aBlock);
          if (v314)
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_334;
            }

            if (__PAIR128__(0x8000000261997260, 0xD00000000000001CLL) == v317)
            {
            }

            else
            {
              v223 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v223 & 1) == 0)
              {
                goto LABEL_334;
              }
            }

            specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, with._rawValue, &aBlock);
            if (v314)
            {
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_334;
              }

              v224 = v317;
              specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
              if (v314)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit17BodyTrackedEntityCs5Error_pGcMR);
                if (swift_dynamicCast())
                {
                  v225 = swift_allocObject();
                  *(v225 + 16) = v317;
                  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
                  if (v314)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
                    if (swift_dynamicCast())
                    {
                      v226 = swift_allocObject();
                      *(v226 + 16) = v317;
                      USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:)(v224, *(&v224 + 1), thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v225, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error), v226);

                      outlined consume of Data._Representation(v224, *(&v224 + 1));
                      return;
                    }

                    outlined consume of Data._Representation(v224, *(&v224 + 1));

                    goto LABEL_334;
                  }

                  outlined consume of Data._Representation(v224, *(&v224 + 1));

                  goto LABEL_333;
                }

                outlined consume of Data._Representation(v224, *(&v224 + 1));
LABEL_334:
                type metadata accessor for USDImportService.LoadError(0);
                lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
                swift_allocError();
                v227->_rawValue = with._rawValue;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                return;
              }

              outlined consume of Data._Representation(v224, *(&v224 + 1));
            }
          }

LABEL_333:
          outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
          goto LABEL_334;
        }

        (*(v93 + 8))(v158, v102, v159);
LABEL_316:
        v163 = &_sypSgMd;
        v164 = &_sypSgMR;
        v165 = &aBlock;
        goto LABEL_317;
      }
    }

    else
    {
      outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
      v155 = v308;
      (*(v93 + 56))(v308, 1, 1, v102);
    }

    v163 = &_s10Foundation3URLVSgMd;
    v164 = &_s10Foundation3URLVSgMR;
    v165 = v155;
LABEL_317:
    outlined destroy of Any?(v165, v163, v164);
    goto LABEL_318;
  }

  v309 = v317;
  specialized Dictionary.subscript.getter(0x6C6C69666C7566, 0xE700000000000000, with._rawValue, &aBlock);
  if (!v314)
  {

LABEL_295:

    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v102 = v311;
    goto LABEL_138;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMd, &_sys6ResultOy10RealityKit12AnchorEntityCs5Error_pGcMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_340;
  }

  v285 = v4;
  v306 = swift_allocObject();
  *(v306 + 16) = v317;
  specialized Dictionary.subscript.getter(0x64616F4C74736F70, 0xE800000000000000, with._rawValue, &aBlock);
  if (v314)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySDySSypGKcMd, &_sySDySSypGKcMR);
    v136 = swift_dynamicCast();
    v137 = v299;
    if (v136)
    {
      v138 = swift_allocObject();
      *(v138 + 16) = v317;
      v307 = thunk for @escaping @callee_guaranteed (@in_guaranteed [String : Any]) -> (@out (), @error @owned Error)partial apply;
      v308 = v138;
    }

    else
    {
      v307 = 0;
      v308 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v307 = 0;
    v308 = 0;
    v137 = v299;
  }

  specialized Dictionary.subscript.getter(0xD000000000000018, 0x80000002619972E0, with._rawValue, &aBlock);
  if (v314)
  {
    v257 = swift_dynamicCast();
    v258 = v317;
    if (!v257)
    {
      v258 = 2;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v258 = 2;
  }

  LODWORD(v305) = v258;
  v310 = v3;
  specialized Dictionary.subscript.getter(0x694C79726F6D656DLL, 0xEB0000000074696DLL, with._rawValue, &aBlock);
  if (v314)
  {
    v259 = swift_dynamicCast();
    if (v259)
    {
      v260 = v317;
    }

    else
    {
      v260 = 0;
    }

    v261 = v259 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v260 = 0;
    v261 = 1;
  }

  specialized Dictionary.subscript.getter(0x7365727574616566, 0xEE0070696B536F54, with._rawValue, &aBlock);
  if (v314)
  {
    v262 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
    v263 = swift_dynamicCast();
    (*(*(v262 - 8) + 56))(v137, v263 ^ 1u, 1, v262);
  }

  else
  {
    outlined destroy of Any?(&aBlock, &_sypSgMd, &_sypSgMR);
    v264 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
    (*(*(v264 - 8) + 56))(v137, 1, 1, v264);
  }

  v265 = v296;
  static USDImportService.urlForUSD(named:in:)(v135, *(&v135 + 1), v309, v296);
  v266 = v318;
  v267 = v311;
  if ((*(v318 + 48))(v265, 1, v311) == 1)
  {
    outlined destroy of Any?(v265, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v268 = __Engine.queue.getter();

    v269 = swift_allocObject();
    v270 = v306;
    *(v269 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply;
    *(v269 + 24) = v270;
    *(v269 + 32) = v135;
    v315 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
    v316 = v269;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v313 = thunk for @escaping @callee_guaranteed () -> ();
    v314 = &block_descriptor_39;
    v271 = _Block_copy(&aBlock);

    v272 = v290;
    static DispatchQoS.unspecified.getter();
    *&v317 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v273 = v291;
    v274 = v295;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v272, v273, v271);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v307, v308);
    _Block_release(v271);

    (*(v294 + 8))(v273, v274);
    v275 = v299;
    (*(v292 + 8))(v272, v293);
  }

  else
  {
    v276 = v289;
    (*(v266 + 32))(v289, v265, v267);
    v283 = v137;
    v282 = v261;
    v281 = v260;
    v277 = v308;
    v278 = v309;
    v279 = v307;
    _s9RealityIO16USDImportServiceC19loadAsyncCommonImpl33_591477937901C3574B11AA1E47A8ACC410contentsOf5named2in22configureImportSession7fulfill8postLoad24enforceMemoryConstraints11memoryLimit14featuresToSkip12selectEntity10entityTypey10Foundation3URLV_SSSgSo8NSBundleCSgyAA0tU0CcSgys6ResultOyxs5Error_pGcySDySSypGKcSgSbSgSiSg0A3Kit6EntityC02__X7OptionsV16LoadableFeaturesVSgA9_AYKcSgxmtA9_RbzlFA7_12AnchorEntityC_Tt9g5(v276, v135, *(&v135 + 1), v309, 0, 0, thunk for @escaping @callee_guaranteed (@in_guaranteed Result<BodyTrackedEntity, Error>) -> (@out ())partial apply, v306, v307, v308, v305, v281, v282, v283, 0, 0);
    v275 = v299;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v279, v277);

    (*(v266 + 8))(v276, v267);
  }

  outlined destroy of Any?(v275, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
}

void specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t), float a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for USDImportService.LoadError(0);
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
  v6 = swift_allocError();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a4, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_storeEnumTagMultiPayload();
  a1(v6, 1);
}

void specialized closure #3 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t), float a2)
{
  type metadata accessor for USDImportService.LoadError(0);
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
  v3 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a1(v3, 1);
}

void specialized closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(void (*a1)(void *, uint64_t), float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for USDImportService.LoadError(0);
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
  v8 = swift_allocError();
  *v9 = a4;
  v9[1] = a5;
  swift_storeEnumTagMultiPayload();
  a1(v8, 1);
}

uint64_t specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  v91 = a7;
  v95 = a4;
  v99 = a2;
  v100 = a3;
  v101 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v96 = *(v21 - 8);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v98 = &v89 - v23;
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  result = swift_allocObject();
  v102 = result;
  *(result + 16) = 0;
  if (a5)
  {
    swift_beginAccess();
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v25 = result;
      v93 = v15;
      v94 = v20;
      if (!result)
      {
        goto LABEL_11;
      }

      v26 = v12;
      v27 = v11;
      v28 = v17;
      v29 = v16;
      v30 = 0;
      v31 = 0;
      while (1)
      {
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v30++, 1))
          {
            break;
          }
        }

        if (v25 == ++v31)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v16 = v29;
      v17 = v28;
      v11 = v27;
      v12 = v26;
      if (v30 >= 2)
      {
        type metadata accessor for USDImportService.LoadError(0);
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
        v35 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v92 = v16;
        v36 = v102;
        v37 = *(v102 + 16);
        *(v102 + 16) = v35;

        v38 = (v101 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v39 = *v38;
        v40 = v38[1];
        *v38 = 0;
        v38[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v39, v40);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v101 = __Engine.queue.getter();

        v41 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v42 = (*(v96 + 80) + 48) & ~*(v96 + 80);
        v43 = swift_allocObject();
        v44 = v99;
        v45 = v100;
        v43[2] = v36;
        v43[3] = v44;
        v46 = v103;
        v43[4] = v45;
        v43[5] = v46;
        outlined init with take of URL?(v41, v43 + v42);
        v109 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v110 = v43;
        aBlock = MEMORY[0x277D85DD0];
        v106 = 1107296256;
        v107 = thunk for @escaping @callee_guaranteed () -> ();
        v108 = &block_descriptor_156;
        v47 = _Block_copy(&aBlock);

        v48 = v94;
        static DispatchQoS.unspecified.getter();
        v104 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v49 = v93;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v50 = v101;
        MEMORY[0x26670F3A0](0, v48, v49, v47);
        _Block_release(v47);

        (*(v12 + 8))(v49, v11);
        (*(v17 + 8))(v48, v92);
      }

      else
      {
LABEL_11:
        if (a6)
        {
          v33 = v91;

          v34 = v101;
          v51 = a6(v101);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, v33);
          v53 = v102;
          v52 = v103;
          *(v103 + 16) = v51;
        }

        else
        {
          v52 = v103;
          *(v103 + 16) = *(a5 + 24);

          v34 = v101;
          v53 = v102;
        }

        v54 = *(v52 + 16);
        if (!v54)
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v57 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v58 = *(v53 + 16);
          *(v53 + 16) = v57;

          v59 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v60 = *v59;
          v61 = v59[1];
          *v59 = 0;
          v59[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v60, v61);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v101 = __Engine.queue.getter();

          v62 = v98;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v63 = (*(v96 + 80) + 48) & ~*(v96 + 80);
          v64 = swift_allocObject();
          v65 = v99;
          v66 = v100;
          v64[2] = v53;
          v64[3] = v65;
          v67 = v103;
          v64[4] = v66;
          v64[5] = v67;
          outlined init with take of URL?(v62, v64 + v63);
          v109 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v110 = v64;
          aBlock = MEMORY[0x277D85DD0];
          v106 = 1107296256;
          v107 = thunk for @escaping @callee_guaranteed () -> ();
          v108 = &block_descriptor_163;
          v68 = _Block_copy(&aBlock);

          v69 = v94;
          static DispatchQoS.unspecified.getter();
          v104 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v70 = v93;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v71 = v101;
          MEMORY[0x26670F3A0](0, v69, v70, v68);
          _Block_release(v68);

          (*(v12 + 8))(v70, v11);
          (*(v17 + 8))(v69, v16);

LABEL_24:
        }

        v55 = specialized USDImportService.generatePostLoadData(from:entity:)(v34, v54);

        v56 = *(v55 + 2);
        v92 = v16;
        v90 = v17;
        if (v56)
        {
          if (a9)
          {
            a9(v55);
          }

          v72 = v95;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v73 = swift_allocError();
          v72 = v95;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v75 = *(v53 + 16);
          *(v53 + 16) = v73;
        }

        v76 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v77 = *v76;
        v78 = v76[1];
        *v76 = 0;
        v76[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v77, v78);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v79 = __Engine.queue.getter();

        v80 = v98;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v72, v98, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v81 = (*(v96 + 80) + 48) & ~*(v96 + 80);
        v82 = swift_allocObject();
        v83 = v99;
        v84 = v100;
        v82[2] = v53;
        v82[3] = v83;
        v85 = v103;
        v82[4] = v84;
        v82[5] = v85;
        outlined init with take of URL?(v80, v82 + v81);
        v109 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v110 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v106 = 1107296256;
        v107 = thunk for @escaping @callee_guaranteed () -> ();
        v108 = &block_descriptor_170;
        v86 = _Block_copy(&aBlock);

        v87 = v94;
        static DispatchQoS.unspecified.getter();
        v104 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v88 = v93;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v87, v88, v86);
        _Block_release(v86);

        (*(v12 + 8))(v88, v11);
        (*(v90 + 8))(v87, v92);
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v86 = a7;
  v95 = a4;
  v97 = a2;
  v98 = a3;
  v91 = a1;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v93 = *(v20 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v96 = &v85 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  result = swift_allocObject();
  v99 = result;
  *(result + 16) = 0;
  if (a5)
  {
    swift_beginAccess();
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v25 = result;
      v88 = v16;
      v89 = v14;
      v90 = v19;
      v26 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v27 = v23;
      v28 = v15;
      v29 = 0;
      v30 = 0;
      while (1)
      {
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v29++, 1))
          {
            break;
          }
        }

        if (v25 == ++v30)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v32 = v29 < 2;
      v15 = v28;
      v26 = v11;
      v23 = v27;
      if (v32)
      {
LABEL_12:
        if (a6)
        {
          v33 = v86;

          v34 = v91;
          v35 = a6(v91);
          v85 = v26;
          v50 = v35;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, v33);
          *(v23 + 16) = v50;
          v51 = v99;
        }

        else
        {
          v85 = v26;
          *(v23 + 16) = *(a5 + 24);

          v51 = v99;
          v34 = v91;
        }

        v52 = *(v23 + 16);
        if (!v52 || (type metadata accessor for ModelEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v55 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v56 = *(v51 + 16);
          *(v51 + 16) = v55;

          v57 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v58 = *v57;
          v59 = v57[1];
          *v57 = 0;
          v57[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v58, v59);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v60 = __Engine.queue.getter();

          v61 = v96;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v62 = (*(v93 + 80) + 48) & ~*(v93 + 80);
          v63 = swift_allocObject();
          v64 = v97;
          v65 = v98;
          v63[2] = v51;
          v63[3] = v64;
          v63[4] = v65;
          v63[5] = v23;
          outlined init with take of URL?(v61, v63 + v62);
          v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v106 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v102 = 1107296256;
          v103 = thunk for @escaping @callee_guaranteed () -> ();
          v104 = &block_descriptor_289;
          v66 = _Block_copy(&aBlock);

          v67 = v90;
          static DispatchQoS.unspecified.getter();
          v100 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v68 = v89;
          v69 = v92;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v67, v68, v66);
          _Block_release(v66);

          (*(v85 + 8))(v68, v69);
          (*(v88 + 8))(v67, v15);

LABEL_25:
        }

        v53 = specialized USDImportService.generatePostLoadData(from:entity:)(v34, v52);

        v54 = *(v53 + 2);
        v87 = v15;
        if (v54)
        {
          v44 = v85;
          if (a9)
          {
            a9(v53);
          }

          v70 = v95;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v71 = swift_allocError();
          v70 = v95;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v73 = *(v51 + 16);
          *(v51 + 16) = v71;

          v44 = v85;
        }

        v74 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v75 = *v74;
        v76 = v74[1];
        *v74 = 0;
        v74[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v75, v76);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v77 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v70, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v78 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v79 = swift_allocObject();
        v80 = v97;
        v81 = v98;
        v79[2] = v51;
        v79[3] = v80;
        v79[4] = v81;
        v79[5] = v23;
        outlined init with take of URL?(v77, v79 + v78);
        v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v106 = v79;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_296;
        v49 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError(0);
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
        v36 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v87 = v15;
        v37 = v99;
        v38 = *(v99 + 16);
        *(v99 + 16) = v36;

        v39 = (v91 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v40 = *v39;
        v41 = v39[1];
        *v39 = 0;
        v39[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v43 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v44 = v11;
        v45 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v46 = swift_allocObject();
        v47 = v97;
        v48 = v98;
        v46[2] = v37;
        v46[3] = v47;
        v46[4] = v48;
        v46[5] = v23;
        outlined init with take of URL?(v43, v46 + v45);
        v105 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v106 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_282;
        v49 = _Block_copy(&aBlock);
      }

      v82 = v90;
      static DispatchQoS.unspecified.getter();
      v100 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v83 = v89;
      v84 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v82, v83, v49);
      _Block_release(v49);

      (*(v44 + 8))(v83, v84);
      (*(v88 + 8))(v82, v87);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v86 = a7;
  v95 = a4;
  v97 = a2;
  v98 = a3;
  v91 = a1;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v93 = *(v20 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v96 = &v85 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  result = swift_allocObject();
  v99 = result;
  *(result + 16) = 0;
  if (a5)
  {
    swift_beginAccess();
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v25 = result;
      v88 = v16;
      v89 = v14;
      v90 = v19;
      v26 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v27 = v23;
      v28 = v15;
      v29 = 0;
      v30 = 0;
      while (1)
      {
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v29++, 1))
          {
            break;
          }
        }

        if (v25 == ++v30)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v32 = v29 < 2;
      v15 = v28;
      v26 = v11;
      v23 = v27;
      if (v32)
      {
LABEL_12:
        if (a6)
        {
          v33 = v86;

          v34 = v91;
          v35 = a6(v91);
          v85 = v26;
          v50 = v35;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, v33);
          *(v23 + 16) = v50;
          v51 = v99;
        }

        else
        {
          v85 = v26;
          *(v23 + 16) = *(a5 + 24);

          v51 = v99;
          v34 = v91;
        }

        v52 = *(v23 + 16);
        if (!v52 || (type metadata accessor for AnchorEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v55 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v56 = *(v51 + 16);
          *(v51 + 16) = v55;

          v57 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v58 = *v57;
          v59 = v57[1];
          *v57 = 0;
          v57[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v58, v59);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v60 = __Engine.queue.getter();

          v61 = v96;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v62 = (*(v93 + 80) + 48) & ~*(v93 + 80);
          v63 = swift_allocObject();
          v64 = v97;
          v65 = v98;
          v63[2] = v51;
          v63[3] = v64;
          v63[4] = v65;
          v63[5] = v23;
          outlined init with take of URL?(v61, v63 + v62);
          v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v106 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v102 = 1107296256;
          v103 = thunk for @escaping @callee_guaranteed () -> ();
          v104 = &block_descriptor_413;
          v66 = _Block_copy(&aBlock);

          v67 = v90;
          static DispatchQoS.unspecified.getter();
          v100 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v68 = v89;
          v69 = v92;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v67, v68, v66);
          _Block_release(v66);

          (*(v85 + 8))(v68, v69);
          (*(v88 + 8))(v67, v15);

LABEL_25:
        }

        v53 = specialized USDImportService.generatePostLoadData(from:entity:)(v34, v52);

        v54 = *(v53 + 2);
        v87 = v15;
        if (v54)
        {
          v44 = v85;
          if (a9)
          {
            a9(v53);
          }

          v70 = v95;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v71 = swift_allocError();
          v70 = v95;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v73 = *(v51 + 16);
          *(v51 + 16) = v71;

          v44 = v85;
        }

        v74 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v75 = *v74;
        v76 = v74[1];
        *v74 = 0;
        v74[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v75, v76);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v77 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v70, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v78 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v79 = swift_allocObject();
        v80 = v97;
        v81 = v98;
        v79[2] = v51;
        v79[3] = v80;
        v79[4] = v81;
        v79[5] = v23;
        outlined init with take of URL?(v77, v79 + v78);
        v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v106 = v79;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_420;
        v49 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError(0);
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
        v36 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v87 = v15;
        v37 = v99;
        v38 = *(v99 + 16);
        *(v99 + 16) = v36;

        v39 = (v91 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v40 = *v39;
        v41 = v39[1];
        *v39 = 0;
        v39[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v43 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v44 = v11;
        v45 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v46 = swift_allocObject();
        v47 = v97;
        v48 = v98;
        v46[2] = v37;
        v46[3] = v47;
        v46[4] = v48;
        v46[5] = v23;
        outlined init with take of URL?(v43, v46 + v45);
        v105 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v106 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_406;
        v49 = _Block_copy(&aBlock);
      }

      v82 = v90;
      static DispatchQoS.unspecified.getter();
      v100 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v83 = v89;
      v84 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v82, v83, v49);
      _Block_release(v49);

      (*(v44 + 8))(v83, v84);
      (*(v88 + 8))(v82, v87);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v86 = a7;
  v95 = a4;
  v97 = a2;
  v98 = a3;
  v91 = a1;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v12);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v93 = *(v20 - 8);
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v96 = &v85 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  result = swift_allocObject();
  v99 = result;
  *(result + 16) = 0;
  if (a5)
  {
    swift_beginAccess();
    result = RIOImportSessionGetSceneCount();
    if ((result & 0x8000000000000000) == 0)
    {
      v25 = result;
      v88 = v16;
      v89 = v14;
      v90 = v19;
      v26 = v11;
      if (!result)
      {
        goto LABEL_12;
      }

      v27 = v23;
      v28 = v15;
      v29 = 0;
      v30 = 0;
      while (1)
      {
        if (RIOImportSessionIsSceneActive())
        {
          if (__OFADD__(v29++, 1))
          {
            break;
          }
        }

        if (v25 == ++v30)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_10:
      v32 = v29 < 2;
      v15 = v28;
      v26 = v11;
      v23 = v27;
      if (v32)
      {
LABEL_12:
        if (a6)
        {
          v33 = v86;

          v34 = v91;
          v35 = a6(v91);
          v85 = v26;
          v50 = v35;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(a6, v33);
          *(v23 + 16) = v50;
          v51 = v99;
        }

        else
        {
          v85 = v26;
          *(v23 + 16) = *(a5 + 24);

          v51 = v99;
          v34 = v91;
        }

        v52 = *(v23 + 16);
        if (!v52 || (type metadata accessor for BodyTrackedEntity(), !swift_dynamicCastClass()))
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v55 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v56 = *(v51 + 16);
          *(v51 + 16) = v55;

          v57 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
          swift_beginAccess();
          v58 = *v57;
          v59 = v57[1];
          *v57 = 0;
          v57[1] = 0;
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v58, v59);
          ImportSession.sceneUpdatePassCompletion.didset();
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v60 = __Engine.queue.getter();

          v61 = v96;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          v62 = (*(v93 + 80) + 48) & ~*(v93 + 80);
          v63 = swift_allocObject();
          v64 = v97;
          v65 = v98;
          v63[2] = v51;
          v63[3] = v64;
          v63[4] = v65;
          v63[5] = v23;
          outlined init with take of URL?(v61, v63 + v62);
          v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v106 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v102 = 1107296256;
          v103 = thunk for @escaping @callee_guaranteed () -> ();
          v104 = &block_descriptor_514;
          v66 = _Block_copy(&aBlock);

          v67 = v90;
          static DispatchQoS.unspecified.getter();
          v100 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v68 = v89;
          v69 = v92;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v67, v68, v66);
          _Block_release(v66);

          (*(v85 + 8))(v68, v69);
          (*(v88 + 8))(v67, v15);

LABEL_25:
        }

        v53 = specialized USDImportService.generatePostLoadData(from:entity:)(v34, v52);

        v54 = *(v53 + 2);
        v87 = v15;
        if (v54)
        {
          v44 = v85;
          if (a9)
          {
            a9(v53);
          }

          v70 = v95;
        }

        else
        {

          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          v71 = swift_allocError();
          v70 = v95;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          swift_storeEnumTagMultiPayload();
          v73 = *(v51 + 16);
          *(v51 + 16) = v71;

          v44 = v85;
        }

        v74 = (v34 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v75 = *v74;
        v76 = v74[1];
        *v74 = 0;
        v74[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v75, v76);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v77 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v70, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v78 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v79 = swift_allocObject();
        v80 = v97;
        v81 = v98;
        v79[2] = v51;
        v79[3] = v80;
        v79[4] = v81;
        v79[5] = v23;
        outlined init with take of URL?(v77, v79 + v78);
        v105 = closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v106 = v79;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_521;
        v49 = _Block_copy(&aBlock);
      }

      else
      {
        type metadata accessor for USDImportService.LoadError(0);
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
        v36 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v87 = v15;
        v37 = v99;
        v38 = *(v99 + 16);
        *(v99 + 16) = v36;

        v39 = (v91 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
        swift_beginAccess();
        v40 = *v39;
        v41 = v39[1];
        *v39 = 0;
        v39[1] = 0;
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
        ImportSession.sceneUpdatePassCompletion.didset();
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v42 = __Engine.queue.getter();

        v43 = v96;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v95, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v44 = v11;
        v45 = (*(v93 + 80) + 48) & ~*(v93 + 80);
        v46 = swift_allocObject();
        v47 = v97;
        v48 = v98;
        v46[2] = v37;
        v46[3] = v47;
        v46[4] = v48;
        v46[5] = v23;
        outlined init with take of URL?(v43, v46 + v45);
        v105 = partial apply for specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v106 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v102 = 1107296256;
        v103 = thunk for @escaping @callee_guaranteed () -> ();
        v104 = &block_descriptor_507;
        v49 = _Block_copy(&aBlock);
      }

      v82 = v90;
      static DispatchQoS.unspecified.getter();
      v100 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v83 = v89;
      v84 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v82, v83, v49);
      _Block_release(v49);

      (*(v44 + 8))(v83, v84);
      (*(v88 + 8))(v82, v87);

      goto LABEL_25;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9RealityIO16USDImportServiceC19loadAsyncCommonImpl33_591477937901C3574B11AA1E47A8ACC4LL10contentsOf5named2in22configureImportSession7fulfill8postLoad24enforceMemoryConstraints11memoryLimit14featuresToSkip12selectEntity10entityTypey10Foundation3URLV_SSSgSo8NSBundleCSgyAA0tU0CcSgys6ResultOyxs5Error_pGcySDySSypGKcSgSbSgSiSg0A3Kit6EntityC02__X7OptionsV16LoadableFeaturesVSgA9_AYKcSgxmtA9_RbzlFA7_12AnchorEntityC_Tt9g5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), char a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16)
{
  v155 = a8;
  v154 = a7;
  v139 = a6;
  v159 = a5;
  v140 = a4;
  v148 = a3;
  v137[1] = a2;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v17);
  v143 = v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v19);
  v142 = v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v137 - v23;
  v25 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v150 = *(v25 - 8);
  v27.n128_f32[0] = MEMORY[0x28223BE20](v25, v26);
  v138 = v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v27);
  v149 = v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v151 = *(v31 - 8);
  v33.n128_f32[0] = MEMORY[0x28223BE20](v31 - 8, v32);
  v153 = v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v34;
  MEMORY[0x28223BE20](v35, v33);
  v37 = v137 - v36;
  v38 = type metadata accessor for URL();
  v39 = *(v38 - 8);
  v41.n128_f32[0] = MEMORY[0x28223BE20](v38, v40);
  v43 = v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v44, v41);
  v47 = v137 - v46;
  v48 = *(v39 + 16);
  v48(v137 - v46, a1, v38, v45);
  (v48)(v37, a1, v38);
  v157 = v39;
  v49 = v39;
  v50 = v159;
  v51 = *(v49 + 56);
  v160 = v37;
  v51(v37, 0, 1, v38);
  v156 = v47;
  v158 = v38;
  (v48)(v43, v47, v38);
  v52 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v43, 0, 0, 1);
  v53 = v52;
  if (v50)
  {
    if (v52)
    {
      v54 = v139;
      sub_26187DB8C(v50, v139);

      v50(v55);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v50, v54);
      goto LABEL_5;
    }
  }

  else if (v52)
  {
LABEL_5:
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a14, v24, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v56 = v150;
    v57 = (*(v150 + 48))(v24, 1, v25);
    v58 = v149;
    if (v57 == 1)
    {

      result = outlined destroy of Any?(v24, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v56 + 32))(v149, v24, v25);

      v71 = v138;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v72 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v73 = *(v56 + 8);
      v73(v71, v25);
      if (v72)
      {
        swift_beginAccess();
        RIOImportSessionSetLoadAudio();
      }

      result = (v73)(v58, v25);
    }

    if (a11 != 2 && (a11 & 1) != 0)
    {
      if (a13)
      {
        result = MEMORY[0x266713650](result);
        v74 = result;
      }

      else
      {
        v74 = a12;
      }

      if (v74 + 0x4000000000000000 < 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v75 = swift_allocObject();
      v76 = MEMORY[0x277D84F90];
      *(v75 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v77 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v78 = *(v53 + v77);
      v166 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v167 = v75;
      aBlock = MEMORY[0x277D85DD0];
      v163 = 1107296256;
      v164 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v165 = &block_descriptor_443;
      v79 = _Block_copy(&aBlock);
      v80 = v78;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v79);

      swift_beginAccess();
      v81 = *(v75 + 16);

      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 1 << *(v81 + 32);
      v88 = -1;
      if (v87 < 64)
      {
        v88 = ~(-1 << v87);
      }

      v89 = v88 & *(v81 + 64);
      v90 = (v87 + 63) >> 6;
      if (v89)
      {
        while (1)
        {
          v91 = v82;
LABEL_24:
          v92 = (*(v81 + 56) + ((v91 << 11) | (32 * __clz(__rbit64(v89)))));
          v93 = __OFADD__(v83, *v92);
          v83 += *v92;
          if (v93)
          {
            break;
          }

          v94 = v92[1];
          v93 = __OFADD__(v84, v94);
          v84 += v94;
          if (v93)
          {
            goto LABEL_54;
          }

          v95 = v92[2];
          v93 = __OFADD__(v85, v95);
          v85 += v95;
          if (v93)
          {
            goto LABEL_55;
          }

          v89 &= v89 - 1;
          v96 = v92[3];
          if (v96 > v86)
          {
            v86 = v96;
          }

          v82 = v91;
          if (!v89)
          {
            goto LABEL_21;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      while (1)
      {
LABEL_21:
        v91 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v91 >= v90)
        {
          break;
        }

        v89 = *(v81 + 64 + 8 * v91);
        ++v82;
        if (v89)
        {
          goto LABEL_24;
        }
      }

      v97 = v84 * v86;
      if ((v84 * v86) >> 64 != (v84 * v86) >> 63)
      {
        goto LABEL_57;
      }

      if ((v97 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_58;
      }

      if ((v85 * 3) >> 64 != (3 * v85) >> 63)
      {
        goto LABEL_59;
      }

      if ((3 * v85 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v98 = 4 * v97;
      v99 = v98 + 12 * v85;
      if (__OFADD__(v98, 12 * v85))
      {
        goto LABEL_61;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= 2 * v74 / 3)
      {
        v100 = 2 * v74 / 3;
      }

      else
      {
        v100 = result;
      }

      v93 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v93)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v101 & ~(v101 >> 63), v53, COERCE_DOUBLE(0x100000001000));
      v103 = v102;

      v104 = v99 + v103;
      if (__OFADD__(v99, v103))
      {
        goto LABEL_63;
      }

      v105 = (v104 * 3) >> 64;
      v106 = 3 * v104;
      if (v105 != v106 >> 63)
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        return result;
      }

      if (__OFADD__(v74, 10))
      {
        goto LABEL_65;
      }

      v107 = v106;
      if (v74 + 10 < v106 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v108 = __Engine.queue.getter();

        v109 = swift_allocObject();
        v110 = v155;
        v109[2] = v154;
        v109[3] = v110;
        v109[4] = v107 / 2;
        v109[5] = v74;
        v166 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v167 = v109;
        aBlock = MEMORY[0x277D85DD0];
        v163 = 1107296256;
        v164 = thunk for @escaping @callee_guaranteed () -> ();
        v165 = &block_descriptor_457;
        v111 = _Block_copy(&aBlock);

        v112 = v142;
        static DispatchQoS.unspecified.getter();
        v161 = v76;
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v113 = v143;
        v114 = v147;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v112, v113, v111);
        _Block_release(v111);

        (*(v146 + 8))(v113, v114);
        (*(v144 + 8))(v112, v145);
        v70 = v160;
        goto LABEL_45;
      }
    }

    v115 = v53;
    v149 = a16;
    v159 = a10;
    v150 = a9;
    if (v140 && v148)
    {
      v116 = v140;
      v117 = [v116 bundleIdentifier];
      if (v117)
      {
        v118 = v117;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v119 = [v116 bundlePath];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v120 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v121 = *(v53 + v120);
      String.utf8CString.getter();
      v122 = v121;

      String.utf8CString.getter();

      String.utf8CString.getter();
      RIOImportSessionSetBundleInfo();
    }

    v123 = v153;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v160, v153, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v124 = (*(v151 + 80) + 40) & ~*(v151 + 80);
    v125 = (v152 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
    v127 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    v129 = v154;
    v128[2] = v53;
    v128[3] = v129;
    v128[4] = v155;
    outlined init with take of URL?(v123, v128 + v124);
    *(v128 + v125) = v53;
    v130 = (v128 + v126);
    *v130 = a15;
    v131 = v149;
    v130[1] = v149;
    *(v128 + v127) = v141;
    v132 = (v128 + ((v127 + 15) & 0xFFFFFFFFFFFFFFF8));
    v133 = v150;
    v134 = v159;
    *v132 = v150;
    v132[1] = v134;
    v135 = (v115 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v136 = v135[1];
    v154 = *v135;
    *v135 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v135[1] = v128;
    swift_retain_n();

    sub_26187DB8C(a15, v131);

    sub_26187DB8C(v133, v134);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v154, v136);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    outlined destroy of Any?(v160, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v157 + 8))(v156, v158);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v60 = __Engine.queue.getter();

  v61 = v160;
  v62 = v153;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v160, v153, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v63 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v64 = swift_allocObject();
  v65 = v155;
  *(v64 + 16) = v154;
  *(v64 + 24) = v65;
  outlined init with take of URL?(v62, v64 + v63);
  v166 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v167 = v64;
  aBlock = MEMORY[0x277D85DD0];
  v163 = 1107296256;
  v164 = thunk for @escaping @callee_guaranteed () -> ();
  v165 = &block_descriptor_434;
  v66 = _Block_copy(&aBlock);

  v67 = v142;
  static DispatchQoS.unspecified.getter();
  v161 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v68 = v143;
  v69 = v147;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v67, v68, v66);
  _Block_release(v66);

  (*(v146 + 8))(v68, v69);
  (*(v144 + 8))(v67, v145);
  v70 = v61;
LABEL_45:
  outlined destroy of Any?(v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v157 + 8))(v156, v158);
}

char *specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v5 = type metadata accessor for __EngineRef();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16, v13);
  v19 = &v33 - v18;
  v20 = *(v11 + 16);
  v20(&v33 - v18, a1, v10, v17);
  (v20)(v15, v19, v10);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  if (specialized static USDImportService.canLoad(url:)(v15))
  {
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    SingleUseImporterWithURL = RIOImportSessionCreateSingleUseImporterWithURL();

    type metadata accessor for ImportSession(0);
    swift_allocObject();
    v26 = specialized ImportSession.init<A>(core:entityType:)(SingleUseImporterWithURL, v34, v25);
    v27 = *(v11 + 8);
    v27(v15, v10);
    v27(v19, v10);
    v28 = v35;
    if (v35 && v26)
    {
      v29 = v33;
      sub_26187DB8C(v35, v33);

      v28(v30);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v28, v29);
    }
  }

  else
  {
    v31 = *(v11 + 8);
    v31(v15, v10);
    v31(v19, v10);
    return 0;
  }

  return v26;
}

uint64_t USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  LODWORD(v151) = a8;
  v148 = a7;
  v147 = a6;
  v162 = a5;
  v161 = a4;
  v158 = type metadata accessor for DispatchWorkItemFlags();
  v156 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v14);
  v155 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for DispatchQoS();
  v157 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v16);
  v160 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v137 - v20;
  v150 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v149 = *(v150 - 8);
  v23.n128_f32[0] = MEMORY[0x28223BE20](v150, v22);
  v143 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v23);
  v144 = &v137 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v152 = *(v27 - 8);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v27 - 8, v28);
  v154 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v29);
  v34 = &v137 - v33;
  v153 = v35;
  MEMORY[0x28223BE20](v36, v32);
  v38 = &v137 - v37;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for USDImportService();
  v145 = a3;
  static USDImportService.urlForUSD(named:in:)(a1, a2, a3, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    outlined destroy of Any?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v44 = __Engine.queue.getter();

    v45 = swift_allocObject();
    v46 = v162;
    v45[2] = v161;
    v45[3] = v46;
    v45[4] = a1;
    v45[5] = a2;
    v168 = partial apply for closure #1 in USDImportService.loadBodyTrackedAsync(named:in:fulfill:postLoad:);
    v169 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v165 = 1107296256;
    v166 = thunk for @escaping @callee_guaranteed () -> ();
    v167 = &block_descriptor_183;
    v47 = _Block_copy(&aBlock);

    v48 = v160;
    static DispatchQoS.unspecified.getter();
    v163 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v49 = v155;
    v50 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v48, v49, v47);
    _Block_release(v47);

    (*(v156 + 8))(v49, v50);
    (*(v157 + 8))(v48, v159);
  }

  v141 = a1;
  v140 = a2;
  (*(v40 + 32))(v43, v38, v39);
  v51 = type metadata accessor for Entity();
  (*(v40 + 16))(v34, v43, v39);
  (*(v40 + 56))(v34, 0, 1, v39);
  v52 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(v43, v51, 0, 0);
  v142 = v39;
  if (!v52)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v57 = __Engine.queue.getter();

    v58 = v154;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v34, v154, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v59 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v60 = swift_allocObject();
    v61 = v162;
    *(v60 + 16) = v161;
    *(v60 + 24) = v61;
    outlined init with take of URL?(v58, v60 + v59);
    v168 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v169 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v165 = 1107296256;
    v166 = thunk for @escaping @callee_guaranteed () -> ();
    v167 = &block_descriptor_190;
    v62 = _Block_copy(&aBlock);

    v63 = v160;
    static DispatchQoS.unspecified.getter();
    v163 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v64 = v155;
    v65 = v158;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v63, v64, v62);
    _Block_release(v62);

    (*(v156 + 8))(v64, v65);
    (*(v157 + 8))(v63, v159);
    outlined destroy of Any?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v40 + 8))(v43, v142);
  }

  v53 = v52;
  v137 = v43;
  v139 = v40;
  v138 = v34;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a11, v21, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v54 = v149;
  v55 = v150;
  if ((*(v149 + 48))(v21, 1, v150) == 1)
  {

    v56 = outlined destroy of Any?(v21, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v66 = v144;
    (*(v54 + 32))(v144, v21, v55);

    v67 = v143;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
    v68 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v69 = *(v54 + 8);
    v69(v67, v55);
    if (v68)
    {
      swift_beginAccess();
      RIOImportSessionSetLoadAudio();
    }

    v56 = (v69)(v66, v55);
  }

  if (v151 == 2 || (v151 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (a10)
  {
    result = MEMORY[0x266713650](v56);
  }

  else
  {
    result = a9;
  }

  if (result + 0x4000000000000000 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v151 = result;
  v71 = 2 * result / 3;
  v72 = swift_allocObject();
  *(v72 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v73 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v74 = *(v53 + v73);
  v168 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
  v169 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v165 = 1107296256;
  v166 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  v167 = &block_descriptor_199;
  v75 = _Block_copy(&aBlock);
  v76 = v74;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v75);

  swift_beginAccess();
  v77 = *(v72 + 16);

  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 1 << *(v77 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v77 + 64);
  v86 = (v83 + 63) >> 6;
  v87 = v139;
  v88 = v162;
  if (v85)
  {
    while (1)
    {
      v89 = v78;
LABEL_23:
      v90 = (*(v77 + 56) + ((v89 << 11) | (32 * __clz(__rbit64(v85)))));
      v91 = __OFADD__(v79, *v90);
      v79 += *v90;
      if (v91)
      {
        break;
      }

      v92 = v90[1];
      v91 = __OFADD__(v80, v92);
      v80 += v92;
      if (v91)
      {
        goto LABEL_50;
      }

      v93 = v90[2];
      v91 = __OFADD__(v81, v93);
      v81 += v93;
      if (v91)
      {
        goto LABEL_51;
      }

      v85 &= v85 - 1;
      v94 = v90[3];
      if (v94 > v82)
      {
        v82 = v94;
      }

      v78 = v89;
      if (!v85)
      {
        goto LABEL_20;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  while (1)
  {
LABEL_20:
    v89 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v89 >= v86)
    {
      break;
    }

    v85 = *(v77 + 64 + 8 * v89);
    ++v78;
    if (v85)
    {
      goto LABEL_23;
    }
  }

  v95 = v80 * v82;
  if ((v80 * v82) >> 64 != (v80 * v82) >> 63)
  {
    goto LABEL_53;
  }

  v96 = v138;
  if ((v95 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v97 = 3 * v81;
  if ((v81 * 3) >> 64 != (3 * v81) >> 63)
  {
    goto LABEL_55;
  }

  if ((v97 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v98 = 4 * v95;
  v99 = v98 + 12 * v81;
  if (__OFADD__(v98, 4 * v97))
  {
    goto LABEL_57;
  }

  result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  if (result >= v71)
  {
    v100 = v71;
  }

  else
  {
    v100 = result;
  }

  v91 = __OFSUB__(v100, v99);
  v101 = v100 - v99;
  if (v91)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v101 & ~(v101 >> 63), v53, COERCE_DOUBLE(0x100000001000));
  v102 = v160;
  v104 = v103;

  v105 = v99 + v104;
  if (__OFADD__(v99, v104))
  {
    goto LABEL_59;
  }

  v106 = (v105 * 3) >> 64;
  v107 = 3 * v105;
  if (v106 == v107 >> 63)
  {
    if (__OFADD__(v151, 10))
    {
      goto LABEL_61;
    }

    v108 = v107;
    if (v151 + 10 < v107 / 2)
    {
      v109 = v151;
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      v110 = __Engine.queue.getter();

      v111 = swift_allocObject();
      v111[2] = v161;
      v111[3] = v88;
      v111[4] = v108 / 2;
      v111[5] = v109;
      v168 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v169 = v111;
      aBlock = MEMORY[0x277D85DD0];
      v165 = 1107296256;
      v166 = thunk for @escaping @callee_guaranteed () -> ();
      v167 = &block_descriptor_213_0;
      v112 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v163 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v113 = v155;
      v114 = v158;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v102, v113, v112);
      _Block_release(v112);

      (*(v156 + 8))(v113, v114);
      (*(v157 + 8))(v102, v159);
      outlined destroy of Any?(v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v87 + 8))(v137, v142);
    }

LABEL_45:
    v115 = v145;
    v116 = [v115 bundleIdentifier];
    if (v116)
    {
      v117 = v116;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v118 = [v115 bundlePath];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    v160 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v120 = *(v53 + v119);
    String.utf8CString.getter();
    v121 = v120;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    v122 = v138;
    v123 = v154;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v138, v154, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v124 = (*(v152 + 80) + 40) & ~*(v152 + 80);
    v125 = (v153 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
    v127 = (v126 + 23) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    v129 = v161;
    v128[2] = v53;
    v128[3] = v129;
    v128[4] = v162;
    outlined init with take of URL?(v123, v128 + v124);
    *(v128 + v125) = v53;
    v130 = (v128 + v126);
    *v130 = 0;
    v130[1] = 0;
    *(v128 + v127) = v146;
    v131 = (v128 + ((v127 + 15) & 0xFFFFFFFFFFFFFFF8));
    v132 = v147;
    v133 = v148;
    *v131 = v147;
    v131[1] = v133;
    v134 = (v53 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v135 = *v134;
    v136 = v134[1];
    *v134 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v134[1] = v128;
    swift_retain_n();

    sub_26187DB8C(v132, v133);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v135, v136);
    ImportSession.sceneUpdatePassCompletion.didset();

    RIOImportSessionUpdate();

    outlined destroy of Any?(v122, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v139 + 8))(v137, v142);
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined copy of Data._Representation(a2, a3);
  Data.Iterator.init(_:at:)();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Data.Iterator and conformance Data.Iterator, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  v11 = 0;
  while (1)
  {
    result = dispatch thunk of IteratorProtocol.next()();
    if (v16[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v15 = *(a1 + 16);
      if (v15 != v11)
      {
        if (v11 < v15)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v13 = *(a1 + 16);
    if (v11 == v13)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v11 >= v13)
    {
      break;
    }

    v14 = *(a1 + 32 + v11++);
    if (v16[14] != v14)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10)
{
  v114 = a8;
  LODWORD(v124) = a7;
  v117 = a6;
  v116 = a5;
  v125 = a4;
  v127 = a3;
  v126 = a2;
  v122 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v11);
  v119 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for DispatchQoS();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v13);
  v118 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v112 - v17;
  v19 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v20 = *(v19 - 8);
  v22.n128_f32[0] = MEMORY[0x28223BE20](v19, v21);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v22);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v28 - 8, v31);
  v33 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v32);
  v36 = &v112 - v35;
  v37 = type metadata accessor for URL();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(a1, v126, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAL_Tt0g5);
  if (v38)
  {
    v39 = v38;
    v113 = v30;
    v126 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      outlined destroy of Any?(v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v20 + 32))(v27, v18, v19);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v49 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v50 = *(v20 + 8);
      v50(v24, v19);
      if (v49)
      {
        swift_beginAccess();
        RIOImportSessionSetLoadAudio();
      }

      v50(v27, v19);
    }

    v51 = v127;
    v52 = v36;
    v53 = v126;
    v54 = v113;
    if (v124 != 2 && (v124 & 1) != 0)
    {
      result = v114;
      if (a9)
      {
        result = MEMORY[0x266713650](v114);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v56 = v39;
      v114 = result;
      v57 = 2 * result / 3;
      v58 = swift_allocObject();
      *(v58 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v59 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v60 = *(v56 + v59);
      v133 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v134 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v130 = 1107296256;
      v131 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v132 = &block_descriptor_229_0;
      v61 = _Block_copy(&aBlock);
      v62 = v60;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v61);

      swift_beginAccess();
      v63 = *(v58 + 16);

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 1 << *(v63 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v63 + 64);
      v72 = (v69 + 63) >> 6;
      if (v71)
      {
        while (1)
        {
          v73 = v64;
LABEL_20:
          v74 = (*(v63 + 56) + ((v73 << 11) | (32 * __clz(__rbit64(v71)))));
          v75 = __OFADD__(v65, *v74);
          v65 += *v74;
          if (v75)
          {
            break;
          }

          v76 = v74[1];
          v75 = __OFADD__(v66, v76);
          v66 += v76;
          if (v75)
          {
            goto LABEL_45;
          }

          v77 = v74[2];
          v75 = __OFADD__(v67, v77);
          v67 += v77;
          if (v75)
          {
            goto LABEL_46;
          }

          v71 &= v71 - 1;
          v78 = v74[3];
          if (v78 > v68)
          {
            v68 = v78;
          }

          v64 = v73;
          if (!v71)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v73 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v73 >= v72)
        {
          break;
        }

        v71 = *(v63 + 64 + 8 * v73);
        ++v64;
        if (v71)
        {
          goto LABEL_20;
        }
      }

      v79 = v66 * v68;
      if ((v66 * v68) >> 64 != (v66 * v68) >> 63)
      {
        goto LABEL_48;
      }

      v53 = v126;
      if ((v79 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      v80 = 3 * v67;
      if ((v67 * 3) >> 64 != (3 * v67) >> 63)
      {
        goto LABEL_50;
      }

      if ((v80 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v81 = 4 * v79;
      v82 = v81 + 12 * v67;
      if (__OFADD__(v81, 4 * v80))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v57)
      {
        v83 = v57;
      }

      else
      {
        v83 = result;
      }

      v75 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v75)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v124 = v56;
      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v84 & ~(v84 >> 63), v56, COERCE_DOUBLE(0x100000001000));
      v85 = v122;
      v86 = v123;
      v88 = v87;

      v89 = v82 + v88;
      if (__OFADD__(v82, v88))
      {
        goto LABEL_54;
      }

      v90 = (v89 * 3) >> 64;
      v91 = 3 * v89;
      v54 = v113;
      if (v90 != v91 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v39 = v56;
      v51 = v127;
      if (__OFADD__(v114, 10))
      {
        goto LABEL_56;
      }

      v52 = v36;
      v92 = v91;
      if (v114 + 10 < v91 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v93 = __Engine.queue.getter();

        v94 = swift_allocObject();
        v95 = v125;
        v94[2] = v51;
        v94[3] = v95;
        v96 = v114;
        v94[4] = v92 / 2;
        v94[5] = v96;
        v133 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v134 = v94;
        aBlock = MEMORY[0x277D85DD0];
        v130 = 1107296256;
        v131 = thunk for @escaping @callee_guaranteed () -> ();
        v132 = &block_descriptor_243;
        v97 = _Block_copy(&aBlock);

        v98 = v118;
        static DispatchQoS.unspecified.getter();
        v128 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v99 = v119;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v98, v99, v97);
        _Block_release(v97);

        (*(v86 + 8))(v99, v85);
        (*(v120 + 8))(v98, v121);
        v48 = v36;
        goto LABEL_41;
      }
    }

    v112 = v52;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v52, v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v100 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v101 = (v54 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    v104[2] = v39;
    v104[3] = v51;
    v104[4] = v125;
    outlined init with take of URL?(v53, v104 + v100);
    *(v104 + v101) = v39;
    v105 = (v104 + v102);
    *v105 = 0;
    v105[1] = 0;
    *(v104 + v103) = v115;
    v106 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
    v107 = v116;
    v108 = v117;
    *v106 = v116;
    v106[1] = v108;
    v109 = (v39 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v110 = *v109;
    v111 = v109[1];
    *v109 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v109[1] = v104;
    swift_retain_n();

    sub_26187DB8C(v107, v108);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v110, v111);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v112, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v40 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v36, v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v42 = swift_allocObject();
  v43 = v125;
  *(v42 + 16) = v127;
  *(v42 + 24) = v43;
  outlined init with take of URL?(v33, v42 + v41);
  v133 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v134 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v130 = 1107296256;
  v131 = thunk for @escaping @callee_guaranteed () -> ();
  v132 = &block_descriptor_220;
  v44 = _Block_copy(&aBlock);

  v45 = v118;
  static DispatchQoS.unspecified.getter();
  v128 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v46 = v119;
  v47 = v122;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v45, v46, v44);
  _Block_release(v44);

  (*(v123 + 8))(v46, v47);
  (*(v120 + 8))(v45, v121);
  v48 = v36;
LABEL_41:
  outlined destroy of Any?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t USDImportService.loadModel(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for URL();
  v16.n128_f32[0] = MEMORY[0x28223BE20](v14, v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v19, v16);
  v22 = &v61 - v21;
  MEMORY[0x28223BE20](v23, v20);
  v25 = &v61 - v24;
  v68 = a1;
  v69 = a2;
  v26 = a1;
  v28 = v27;
  static USDImportService.urlForUSD(named:in:)(v26, a2, a3, v13);
  if ((*(v28 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of Any?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for ModelEntity();
    swift_allocObject();
    return ModelEntity.init()();
  }

  v64 = v10;
  (*(v28 + 32))(v25, v13, v14);
  v30 = *(v28 + 16);
  v30(v22, v25, v14);
  v66 = v30;
  v67 = v18;
  v30(v18, v25, v14);
  v70 = v22;
  URL._bridgeToObjectiveC()(v31);
  v32 = v70;
  v34 = v33;
  v35 = RIOPxrUsdStageCreateWithFileURL();

  if (v35 && (TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage(), v65 = v25, v37 = TopLevelEntityFromStage, type metadata accessor for Stage(), inited = swift_initStackObject(), *(inited + 16) = v37, v39 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(inited, v32, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5), v37, v25 = v65, v35, v39))
  {
    v40 = a3;
    v41 = [v40 bundleIdentifier];
    if (v41)
    {
      v42 = v41;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v62 = 0;
    }

    v46 = [v40 bundlePath];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v40;

    v47 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
    swift_beginAccess();
    v48 = *(v39 + v47);
    String.utf8CString.getter();
    v49 = v48;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    RIOImportSessionUpdateSynchronouslyOnEngineQueue();
    result = RIOImportSessionGetSceneCount();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v50 = result;
    v51 = v71;
    if (!result)
    {
      goto LABEL_18;
    }

    v52 = 0;
    v53 = 0;
    while (1)
    {
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v52++, 1))
        {
          break;
        }
      }

      if (v50 == ++v53)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    if (v52 >= 2)
    {
      type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v32 = v70;
      v45 = v67;
    }

    else
    {
LABEL_18:
      v55 = v64;
      v45 = v67;
      v66(v64, v67, v14);
      v56 = (*(v28 + 56))(v55, 0, 1, v14);
      v57 = specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(v55, v56);
      if (!v51)
      {
        v59 = v57;
        outlined destroy of Any?(v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

        v60 = *(v28 + 8);
        v60(v65, v14);
        v60(v45, v14);
        v60(v70, v14);
        return v59;
      }

      outlined destroy of Any?(v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v32 = v70;
    }

    v25 = v65;
  }

  else
  {
    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    v44 = v43;
    v66(v43, v25, v14);
    (*(v28 + 56))(v44, 0, 1, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v45 = v67;
  }

  v58 = *(v28 + 8);
  v58(v25, v14);
  v58(v45, v14);
  return (v58)(v32, v14);
}

uint64_t USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v185 = a8;
  v181 = a7;
  v180 = a6;
  v199 = a5;
  v200 = a3;
  v201 = a4;
  v194 = type metadata accessor for DispatchWorkItemFlags();
  v197 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v13);
  v196 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for DispatchQoS();
  v198 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v15);
  v193 = v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v182 = v173 - v19;
  v184 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v183 = *(v184 - 8);
  v21.n128_f32[0] = MEMORY[0x28223BE20](v184, v20);
  v176 = v173 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v21);
  v177 = v173 - v24;
  v188 = type metadata accessor for __EngineRef();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v25);
  v186 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v189 = *(v27 - 8);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v27 - 8, v28);
  v191 = v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v31, v29);
  v34 = v173 - v33;
  v190 = v35;
  MEMORY[0x28223BE20](v36, v32);
  v38 = v173 - v37;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v43.n128_f32[0] = MEMORY[0x28223BE20](v39, v42);
  v192 = v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.n128_f32[0] = MEMORY[0x28223BE20](v44, v43);
  v47 = v173 - v46;
  MEMORY[0x28223BE20](v48, v45);
  v50 = v173 - v49;
  type metadata accessor for USDImportService();
  v51 = a1;
  v52 = a1;
  v53 = a2;
  static USDImportService.urlForUSD(named:in:)(v52, a2, v200, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    outlined destroy of Any?(v38, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v54 = __Engine.queue.getter();

    v55 = swift_allocObject();
    v56 = v199;
    v55[2] = v201;
    v55[3] = v56;
    v55[4] = v51;
    v55[5] = v53;
    v209 = partial apply for closure #1 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
    v210 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v206 = 1107296256;
    v207 = thunk for @escaping @callee_guaranteed () -> ();
    v208 = &block_descriptor_309;
    v57 = _Block_copy(&aBlock);

    v58 = v193;
    static DispatchQoS.unspecified.getter();
    v204 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v59 = v196;
    v60 = v194;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v58, v59, v57);
    _Block_release(v57);

    (*(v197 + 8))(v59, v60);
    (*(v198 + 8))(v58, v195);
  }

  v173[0] = v51;
  v173[1] = a2;
  v61 = v40;
  v62 = *(v40 + 32);
  v62(v50, v38, v39);
  v63 = *(v61 + 16);
  v63(v34, v50, v39);
  v202 = v39;
  v175 = v61;
  v65 = v61 + 56;
  v64 = *(v61 + 56);
  v178 = v34;
  v64(v34, 0, 1, v202);
  v63(v47, v50, v202);
  v66 = v192;
  v174 = v50;
  v63(v192, v50, v202);
  v67 = *(v65 + 24);
  v68 = v202;
  v69 = (v67 + 16) & ~v67;
  v70 = swift_allocObject();
  v62((v70 + v69), v66, v68);
  v192 = v47;
  URL._bridgeToObjectiveC()(&v211);
  v72 = v71;
  v73 = RIOPxrUsdStageCreateWithFileURL();

  v74 = v201;
  if (!v73)
  {
LABEL_8:
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v90 = __Engine.queue.getter();

    v91 = v178;
    v92 = v191;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v178, v191, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v93 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v94 = swift_allocObject();
    v95 = v199;
    *(v94 + 16) = v74;
    *(v94 + 24) = v95;
    outlined init with take of URL?(v92, v94 + v93);
    v209 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v210 = v94;
    aBlock = MEMORY[0x277D85DD0];
    v206 = 1107296256;
    v207 = thunk for @escaping @callee_guaranteed () -> ();
    v208 = &block_descriptor_319;
    v96 = _Block_copy(&aBlock);

    v97 = v193;
    static DispatchQoS.unspecified.getter();
    v204 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v98 = v196;
    v99 = v194;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v97, v98, v96);
    _Block_release(v96);

    (*(v197 + 8))(v98, v99);
    (*(v198 + 8))(v97, v195);
    v100 = *(v175 + 8);
    v100(v192, v68);
    outlined destroy of Any?(v91, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v100(v174, v68);
  }

  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v76 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v77 = v186;
  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v187 + 8))(v77, v188);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v80 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage, v79);
  if (!v80)
  {

    goto LABEL_8;
  }

  v81 = v80;
  v188 = v70;
  v82 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();

  RIOImportSessionSetIsLoadModelUseCase();
  v83 = *(v81 + v82);
  URL._bridgeToObjectiveC()(&v211);
  v85 = v84;
  RIOImportSessionSetOriginalUrl();

  v86 = v182;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a11, v182, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v87 = v183;
  v88 = v184;
  if ((*(v183 + 48))(v86, 1, v184) == 1)
  {

    result = outlined destroy of Any?(v86, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  }

  else
  {
    v101 = v177;
    (*(v87 + 32))(v177, v86, v88);

    v102 = v176;
    static Entity.__LoadOptions.LoadableFeatures.audio.getter();
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
    v103 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v104 = *(v87 + 8);
    v104(v102, v88);
    if (v103)
    {
      RIOImportSessionSetLoadAudio();
    }

    result = (v104)(v101, v88);
  }

  v187 = v82;
  if (v185 == 2 || (v185 & 1) == 0)
  {
LABEL_47:
    v150 = v200;
    v151 = [v150 bundleIdentifier];
    if (v151)
    {
      v152 = v151;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v153 = [v150 bundlePath];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v154 = *(v81 + v82);
    String.utf8CString.getter();
    v155 = v154;

    String.utf8CString.getter();

    String.utf8CString.getter();
    RIOImportSessionSetBundleInfo();

    v156 = v191;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v178, v191, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v157 = (*(v189 + 80) + 40) & ~*(v189 + 80);
    v158 = (v190 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
    v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
    v160 = (v159 + 23) & 0xFFFFFFFFFFFFFFF8;
    v161 = swift_allocObject();
    v162 = v201;
    v161[2] = v81;
    v161[3] = v162;
    v161[4] = v199;
    outlined init with take of URL?(v156, v161 + v157);
    *(v161 + v158) = v81;
    v163 = (v161 + v159);
    v164 = v188;
    *v163 = partial apply for closure #3 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
    v163[1] = v164;
    *(v161 + v160) = v179;
    v165 = (v161 + ((v160 + 15) & 0xFFFFFFFFFFFFFFF8));
    v166 = v180;
    v167 = v181;
    *v165 = v180;
    v165[1] = v167;
    v168 = (v81 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v169 = *v168;
    v170 = v168[1];
    *v168 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v168[1] = v161;
    swift_retain_n();

    sub_26187DB8C(v166, v167);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v169, v170);
    ImportSession.sceneUpdatePassCompletion.didset();

    RIOImportSessionUpdate();

    v171 = *(v175 + 8);
    v172 = v202;
    v171(v192, v202);
    outlined destroy of Any?(v178, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (v171)(v174, v172);
  }

  if (a10)
  {
    result = MEMORY[0x266713650](result);
    v105 = result;
  }

  else
  {
    v105 = a9;
  }

  if (v105 + 0x4000000000000000 < 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v106 = swift_allocObject();
  *(v106 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v107 = *(v81 + v82);
  v209 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
  v210 = v106;
  aBlock = MEMORY[0x277D85DD0];
  v206 = 1107296256;
  v207 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  v208 = &block_descriptor_328;
  v108 = _Block_copy(&aBlock);
  v109 = v107;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v108);

  swift_beginAccess();
  v110 = *(v106 + 16);

  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 1 << *(v110 + 32);
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v118 = v117 & *(v110 + 64);
  v119 = (v116 + 63) >> 6;
  if (v118)
  {
    while (1)
    {
      v120 = v111;
LABEL_26:
      v121 = (*(v110 + 56) + ((v120 << 11) | (32 * __clz(__rbit64(v118)))));
      v122 = __OFADD__(v112, *v121);
      v112 += *v121;
      if (v122)
      {
        break;
      }

      v123 = v121[1];
      v122 = __OFADD__(v113, v123);
      v113 += v123;
      if (v122)
      {
        goto LABEL_52;
      }

      v124 = v121[2];
      v122 = __OFADD__(v114, v124);
      v114 += v124;
      if (v122)
      {
        goto LABEL_53;
      }

      v118 &= v118 - 1;
      v125 = v121[3];
      if (v125 > v115)
      {
        v115 = v125;
      }

      v111 = v120;
      if (!v118)
      {
        goto LABEL_23;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  while (1)
  {
LABEL_23:
    v120 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v120 >= v119)
    {
      break;
    }

    v118 = *(v110 + 64 + 8 * v120);
    ++v111;
    if (v118)
    {
      goto LABEL_26;
    }
  }

  v126 = v113 * v115;
  if ((v113 * v115) >> 64 != (v113 * v115) >> 63)
  {
    goto LABEL_55;
  }

  if ((v126 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_56;
  }

  v127 = 3 * v114;
  if ((v114 * 3) >> 64 != (3 * v114) >> 63)
  {
    goto LABEL_57;
  }

  if ((v127 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v128 = 4 * v126;
  v129 = v128 + 12 * v114;
  if (__OFADD__(v128, 4 * v127))
  {
    goto LABEL_59;
  }

  result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
  if (result >= 2 * v105 / 3)
  {
    v130 = 2 * v105 / 3;
  }

  else
  {
    v130 = result;
  }

  v122 = __OFSUB__(v130, v129);
  v131 = v130 - v129;
  if (v122)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v131 & ~(v131 >> 63), v81, COERCE_DOUBLE(0x100000001000));
  v132 = v198;
  v133 = v197;
  v135 = v134;

  v136 = v129 + v135;
  if (__OFADD__(v129, v135))
  {
    goto LABEL_61;
  }

  v137 = (v136 * 3) >> 64;
  v138 = 3 * v136;
  v139 = v196;
  v82 = v187;
  if (v137 == v138 >> 63)
  {
    if (__OFADD__(v105, 10))
    {
      goto LABEL_63;
    }

    v140 = v138;
    if (v105 + 10 < v138 / 2)
    {
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      v141 = __Engine.queue.getter();

      v142 = swift_allocObject();
      v143 = v199;
      v142[2] = v201;
      v142[3] = v143;
      v142[4] = v140 / 2;
      v142[5] = v105;
      v209 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v210 = v142;
      aBlock = MEMORY[0x277D85DD0];
      v206 = 1107296256;
      v207 = thunk for @escaping @callee_guaranteed () -> ();
      v208 = &block_descriptor_342;
      v144 = _Block_copy(&aBlock);

      v145 = v193;
      static DispatchQoS.unspecified.getter();
      v203 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v146 = v139;
      v147 = v194;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x26670F3A0](0, v145, v146, v144);
      _Block_release(v144);

      (*(v133 + 8))(v146, v147);
      (*(v132 + 8))(v145, v195);
      v148 = *(v175 + 8);
      v149 = v202;
      v148(v192, v202);
      outlined destroy of Any?(v178, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v148(v174, v149);
    }

    goto LABEL_47;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void closure #1 in USDImportService.loadAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(void (*a1)(void *, uint64_t), float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for USDImportService.LoadError(0);
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
  v8 = swift_allocError();
  *v9 = a4;
  v9[1] = a5;
  swift_storeEnumTagMultiPayload();

  a1(v8, 1);
}

uint64_t closure #3 in USDImportService.loadModelAsync(named:in:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = a3(v9, a1);
  outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v12;
}

id USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, char a9, uint64_t a10)
{
  v129 = a7;
  v126 = a6;
  v125 = a5;
  v140 = a4;
  v139 = a3;
  v135 = type metadata accessor for DispatchWorkItemFlags();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v13);
  v131 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v15);
  v130 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v122 - v19;
  v128 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v127 = *(v128 - 8);
  v22.n128_f32[0] = MEMORY[0x28223BE20](v128, v21);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v22);
  v123 = &v122 - v26;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v136 = *(v32 - 8);
  v34.n128_f32[0] = MEMORY[0x28223BE20](v32 - 8, v33);
  v138 = &v122 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v35;
  v37 = MEMORY[0x28223BE20](v36, v34);
  v38 = *(v28 + 56);
  v141 = &v122 - v39;
  v40 = v38(v37);
  v41 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2, v40);
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    v122 = a8;
    type metadata accessor for Stage();
    swift_allocObject();

    outlined copy of Data._Representation(a1, a2);
    v57 = Stage.init(identifier:data:)(v43, v44, a1, a2);
    URL.init(fileURLWithPath:)();

    v58 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(v57, v31, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5);

    (*(v28 + 8))(v31, v27);
    v59 = v122;
    if (v58)
    {
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v20, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v60 = v127;
      v61 = v128;
      if ((*(v127 + 48))(v20, 1, v128) == 1)
      {

        result = outlined destroy of Any?(v20, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      }

      else
      {
        v62 = v123;
        (*(v60 + 32))(v123, v20, v61);

        static Entity.__LoadOptions.LoadableFeatures.audio.getter();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
        v63 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v64 = *(v60 + 8);
        v64(v24, v61);
        if (v63)
        {
          swift_beginAccess();
          RIOImportSessionSetLoadAudio();
        }

        result = (v64)(v62, v61);
        v59 = v122;
      }

      if (v129 != 2 && (v129 & 1) != 0)
      {
        if (a9)
        {
          result = MEMORY[0x266713650](result);
          v59 = result;
        }

        if (v59 + 0x4000000000000000 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v65 = v59;
        v66 = 2 * v59 / 3;
        v67 = swift_allocObject();
        *(v67 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v68 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
        swift_beginAccess();
        v69 = *(v58 + v68);
        v147 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
        v148 = v67;
        aBlock = MEMORY[0x277D85DD0];
        v144 = 1107296256;
        v145 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
        v146 = &block_descriptor_358;
        v70 = _Block_copy(&aBlock);
        v71 = v69;

        RIOImportSessionGatherMeshEstimates();
        _Block_release(v70);

        swift_beginAccess();
        v72 = *(v67 + 16);

        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        v78 = 1 << *(v72 + 32);
        v79 = -1;
        if (v78 < 64)
        {
          v79 = ~(-1 << v78);
        }

        v80 = v79 & *(v72 + 64);
        v81 = (v78 + 63) >> 6;
        if (v80)
        {
          while (1)
          {
            v82 = v73;
LABEL_23:
            v83 = (*(v72 + 56) + ((v82 << 11) | (32 * __clz(__rbit64(v80)))));
            v84 = __OFADD__(v74, *v83);
            v74 += *v83;
            if (v84)
            {
              break;
            }

            v85 = v83[1];
            v84 = __OFADD__(v75, v85);
            v75 += v85;
            if (v84)
            {
              goto LABEL_47;
            }

            v86 = v83[2];
            v84 = __OFADD__(v76, v86);
            v76 += v86;
            if (v84)
            {
              goto LABEL_48;
            }

            v80 &= v80 - 1;
            v87 = v83[3];
            if (v87 > v77)
            {
              v77 = v87;
            }

            v73 = v82;
            if (!v80)
            {
              goto LABEL_20;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        while (1)
        {
LABEL_20:
          v82 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v82 >= v81)
          {
            break;
          }

          v80 = *(v72 + 64 + 8 * v82);
          ++v73;
          if (v80)
          {
            goto LABEL_23;
          }
        }

        v88 = v75 * v77;
        if ((v75 * v77) >> 64 != (v75 * v77) >> 63)
        {
          goto LABEL_50;
        }

        if ((v88 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_51;
        }

        v89 = 3 * v76;
        if ((v76 * 3) >> 64 != (3 * v76) >> 63)
        {
          goto LABEL_52;
        }

        if ((v89 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v90 = 4 * v88;
        v91 = v90 + 12 * v76;
        if (__OFADD__(v90, 4 * v89))
        {
          goto LABEL_54;
        }

        result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
        if (result >= v66)
        {
          v92 = v66;
        }

        else
        {
          v92 = result;
        }

        v84 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v84)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v93 & ~(v93 >> 63), v58, COERCE_DOUBLE(0x100000001000));
        v95 = v94;

        v96 = v91 + v95;
        if (__OFADD__(v91, v95))
        {
          goto LABEL_56;
        }

        v97 = (v96 * 3) >> 64;
        v98 = 3 * v96;
        if (v97 != v98 >> 63)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        if (__OFADD__(v65, 10))
        {
          goto LABEL_58;
        }

        v99 = v98;
        if (v65 + 10 < v98 / 2)
        {
          type metadata accessor for __ServiceLocator();
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v100 = __Engine.queue.getter();

          v101 = swift_allocObject();
          v102 = v140;
          v101[2] = v139;
          v101[3] = v102;
          v101[4] = v99 / 2;
          v101[5] = v65;
          v147 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v148 = v101;
          aBlock = MEMORY[0x277D85DD0];
          v144 = 1107296256;
          v145 = thunk for @escaping @callee_guaranteed () -> ();
          v146 = &block_descriptor_372;
          v103 = _Block_copy(&aBlock);

          v104 = v130;
          static DispatchQoS.unspecified.getter();
          v142 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v105 = v131;
          v106 = v135;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v104, v105, v103);
          _Block_release(v103);

          (*(v134 + 8))(v105, v106);
          (*(v132 + 8))(v104, v133);
          v55 = v141;
          goto LABEL_4;
        }
      }

      v107 = v141;
      v108 = v138;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v141, v138, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v109 = (*(v136 + 80) + 40) & ~*(v136 + 80);
      v110 = (v137 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v113 = swift_allocObject();
      v114 = v139;
      v113[2] = v58;
      v113[3] = v114;
      v113[4] = v140;
      outlined init with take of URL?(v108, v113 + v109);
      *(v113 + v110) = v58;
      v115 = (v113 + v111);
      *v115 = closure #2 in USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
      v115[1] = 0;
      *(v113 + v112) = v124;
      v116 = (v113 + ((v112 + 15) & 0xFFFFFFFFFFFFFFF8));
      v117 = v125;
      v118 = v126;
      *v116 = v125;
      v116[1] = v118;
      v119 = (v58 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
      swift_beginAccess();
      v120 = *v119;
      v121 = v119[1];
      *v119 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
      v119[1] = v113;
      swift_retain_n();

      sub_26187DB8C(v117, v118);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v120, v121);
      ImportSession.sceneUpdatePassCompletion.didset();

      swift_beginAccess();
      RIOImportSessionUpdate();

      return outlined destroy of Any?(v107, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v45 = __Engine.queue.getter();

  v46 = v141;
  v47 = v138;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v141, v138, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v48 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v49 = swift_allocObject();
  v50 = v140;
  *(v49 + 16) = v139;
  *(v49 + 24) = v50;
  outlined init with take of URL?(v47, v49 + v48);
  v147 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v148 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v144 = 1107296256;
  v145 = thunk for @escaping @callee_guaranteed () -> ();
  v146 = &block_descriptor_349;
  v51 = _Block_copy(&aBlock);

  v52 = v130;
  static DispatchQoS.unspecified.getter();
  v142 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v53 = v131;
  v54 = v135;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v52, v53, v51);
  _Block_release(v51);

  (*(v134 + 8))(v53, v54);
  (*(v132 + 8))(v52, v133);
  v55 = v46;
LABEL_4:
  outlined destroy of Any?(v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t USDImportService.loadAnchor(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v11, v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v17, v14);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v21, v18);
  v23 = &v47 - v22;
  v54 = a1;
  v24 = a1;
  v26 = v25;
  static USDImportService.urlForUSD(named:in:)(v24, a2, a3, v10);
  if ((*(v12 + 48))(v10, 1, v26) == 1)
  {
    outlined destroy of Any?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for AnchorEntity();
    swift_allocObject();
    return MEMORY[0x26670DA40]();
  }

  v49 = v3;
  v50 = a2;
  (*(v12 + 32))(v23, v10, v26);
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();

  v52 = *(v12 + 8);
  v53 = v12 + 8;
  v52(v20, v26);
  v28 = *(v12 + 16);
  v28(v16, v23, v26);
  v28(v20, v16, v26);
  v29 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v20, 0, 0, 1);
  v51 = v16;
  if (!v29)
  {
    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    v35 = v34;
    v28(v34, v23, v26);
    (*(v12 + 56))(v35, 0, 1, v26);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_20:
    v46 = v52;
    v52(v51, v26);
    return v46(v23, v26);
  }

  v30 = v29;
  v47 = v23;
  v31 = a3;
  v32 = [v31 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v48 = 0;
  }

  v36 = [v31 bundlePath];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v38 = *&v30[v37];
  String.utf8CString.getter();
  v39 = v38;

  String.utf8CString.getter();

  String.utf8CString.getter();
  RIOImportSessionSetBundleInfo();

  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v40 = result;
    if (!result)
    {
      goto LABEL_24;
    }

    v41 = 0;
    v42 = 0;
    while (1)
    {
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v41++, 1))
        {
          break;
        }
      }

      if (v40 == ++v42)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_16:
    if (v41 < 2)
    {
LABEL_24:
      type metadata accessor for AnchorEntity();
      if (swift_dynamicCastClass())
      {

        v44 = swift_dynamicCastClassUnconditional();
        v45 = v52;
        v52(v51, v26);
        v45(v47, v26);
        return v44;
      }
    }

    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v23 = v47;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t USDImportService.loadAnchorAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, uint64_t a10)
{
  v114 = a8;
  LODWORD(v124) = a7;
  v117 = a6;
  v116 = a5;
  v125 = a4;
  v127 = a3;
  v126 = a2;
  v122 = type metadata accessor for DispatchWorkItemFlags();
  v123 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v11);
  v119 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for DispatchQoS();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v13);
  v118 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v112 - v17;
  v19 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v20 = *(v19 - 8);
  v22.n128_f32[0] = MEMORY[0x28223BE20](v19, v21);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v22);
  v27 = &v112 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v32.n128_f32[0] = MEMORY[0x28223BE20](v28 - 8, v31);
  v33 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v32);
  v36 = &v112 - v35;
  v37 = type metadata accessor for URL();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  v38 = closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(a1, v126, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ06AnchorK0C_Tt0g5);
  if (v38)
  {
    v39 = v38;
    v113 = v30;
    v126 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a10, v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      outlined destroy of Any?(v18, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      (*(v20 + 32))(v27, v18, v19);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v49 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v50 = *(v20 + 8);
      v50(v24, v19);
      if (v49)
      {
        swift_beginAccess();
        RIOImportSessionSetLoadAudio();
      }

      v50(v27, v19);
    }

    v51 = v127;
    v52 = v36;
    v53 = v126;
    v54 = v113;
    if (v124 != 2 && (v124 & 1) != 0)
    {
      result = v114;
      if (a9)
      {
        result = MEMORY[0x266713650](v114);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v56 = v39;
      v114 = result;
      v57 = 2 * result / 3;
      v58 = swift_allocObject();
      *(v58 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v59 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v60 = *(v56 + v59);
      v133 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v134 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v130 = 1107296256;
      v131 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v132 = &block_descriptor_473;
      v61 = _Block_copy(&aBlock);
      v62 = v60;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v61);

      swift_beginAccess();
      v63 = *(v58 + 16);

      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 1 << *(v63 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v63 + 64);
      v72 = (v69 + 63) >> 6;
      if (v71)
      {
        while (1)
        {
          v73 = v64;
LABEL_20:
          v74 = (*(v63 + 56) + ((v73 << 11) | (32 * __clz(__rbit64(v71)))));
          v75 = __OFADD__(v65, *v74);
          v65 += *v74;
          if (v75)
          {
            break;
          }

          v76 = v74[1];
          v75 = __OFADD__(v66, v76);
          v66 += v76;
          if (v75)
          {
            goto LABEL_45;
          }

          v77 = v74[2];
          v75 = __OFADD__(v67, v77);
          v67 += v77;
          if (v75)
          {
            goto LABEL_46;
          }

          v71 &= v71 - 1;
          v78 = v74[3];
          if (v78 > v68)
          {
            v68 = v78;
          }

          v64 = v73;
          if (!v71)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v73 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v73 >= v72)
        {
          break;
        }

        v71 = *(v63 + 64 + 8 * v73);
        ++v64;
        if (v71)
        {
          goto LABEL_20;
        }
      }

      v79 = v66 * v68;
      if ((v66 * v68) >> 64 != (v66 * v68) >> 63)
      {
        goto LABEL_48;
      }

      v53 = v126;
      if ((v79 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      v80 = 3 * v67;
      if ((v67 * 3) >> 64 != (3 * v67) >> 63)
      {
        goto LABEL_50;
      }

      if ((v80 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v81 = 4 * v79;
      v82 = v81 + 12 * v67;
      if (__OFADD__(v81, 4 * v80))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v57)
      {
        v83 = v57;
      }

      else
      {
        v83 = result;
      }

      v75 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v75)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v124 = v56;
      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v84 & ~(v84 >> 63), v56, COERCE_DOUBLE(0x100000001000));
      v85 = v122;
      v86 = v123;
      v88 = v87;

      v89 = v82 + v88;
      if (__OFADD__(v82, v88))
      {
        goto LABEL_54;
      }

      v90 = (v89 * 3) >> 64;
      v91 = 3 * v89;
      v54 = v113;
      if (v90 != v91 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v39 = v56;
      v51 = v127;
      if (__OFADD__(v114, 10))
      {
        goto LABEL_56;
      }

      v52 = v36;
      v92 = v91;
      if (v114 + 10 < v91 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v93 = __Engine.queue.getter();

        v94 = swift_allocObject();
        v95 = v125;
        v94[2] = v51;
        v94[3] = v95;
        v96 = v114;
        v94[4] = v92 / 2;
        v94[5] = v96;
        v133 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v134 = v94;
        aBlock = MEMORY[0x277D85DD0];
        v130 = 1107296256;
        v131 = thunk for @escaping @callee_guaranteed () -> ();
        v132 = &block_descriptor_487;
        v97 = _Block_copy(&aBlock);

        v98 = v118;
        static DispatchQoS.unspecified.getter();
        v128 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v99 = v119;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v98, v99, v97);
        _Block_release(v97);

        (*(v86 + 8))(v99, v85);
        (*(v120 + 8))(v98, v121);
        v48 = v36;
        goto LABEL_41;
      }
    }

    v112 = v52;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v52, v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v100 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v101 = (v54 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    v104[2] = v39;
    v104[3] = v51;
    v104[4] = v125;
    outlined init with take of URL?(v53, v104 + v100);
    *(v104 + v101) = v39;
    v105 = (v104 + v102);
    *v105 = 0;
    v105[1] = 0;
    *(v104 + v103) = v115;
    v106 = (v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8));
    v107 = v116;
    v108 = v117;
    *v106 = v116;
    v106[1] = v108;
    v109 = (v39 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v110 = *v109;
    v111 = v109[1];
    *v109 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v109[1] = v104;
    swift_retain_n();

    sub_26187DB8C(v107, v108);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v110, v111);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v112, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v40 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v36, v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v42 = swift_allocObject();
  v43 = v125;
  *(v42 + 16) = v127;
  *(v42 + 24) = v43;
  outlined init with take of URL?(v33, v42 + v41);
  v133 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v134 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v130 = 1107296256;
  v131 = thunk for @escaping @callee_guaranteed () -> ();
  v132 = &block_descriptor_464;
  v44 = _Block_copy(&aBlock);

  v45 = v118;
  static DispatchQoS.unspecified.getter();
  v128 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v46 = v119;
  v47 = v122;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v45, v46, v44);
  _Block_release(v44);

  (*(v123 + 8))(v46, v47);
  (*(v120 + 8))(v45, v121);
  v48 = v36;
LABEL_41:
  outlined destroy of Any?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t closure #1 in USDImportService.loadAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for __EngineRef();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2, v9);
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = v13;
  type metadata accessor for Stage();
  swift_allocObject();
  outlined copy of Data._Representation(a1, a2);
  Stage.init(identifier:data:)(v14, v15, a1, a2);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v7 + 8))(v11, v6);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v18 = a3(SingleUseImporterWithStage);

  if (!v18)
  {
    return 0;
  }

  return v18;
}

uint64_t USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a6;
  v87 = a5;
  v99 = a4;
  v97 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v11);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v14 = *(v13 - 8);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v13, v15);
  v82 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v16);
  v83 = &v81 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  v27.n128_f32[0] = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v27);
  v32 = &v81 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v95 = *(v33 - 8);
  v34 = *(v95 + 64);
  v36.n128_f32[0] = MEMORY[0x28223BE20](v33 - 8, v35);
  v96 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v37, v36);
  v39 = *(v21 + 56);
  v98 = &v81 - v40;
  v39(v38);
  v84 = v14;
  v41 = *(v14 + 56);
  v100 = v32;
  v85 = v13;
  v42 = v41(v32, 1, 1, v13);
  v43 = specialized static USDImportService.createDummyDataFilename(from:)(a1, a2, v42);
  if (v44 && (v45 = v43, v46 = v44, type metadata accessor for Stage(), swift_allocObject(), , outlined copy of Data._Representation(a1, a2), v58 = Stage.init(identifier:data:)(v45, v46, a1, a2), URL.init(fileURLWithPath:)(), , v59 = specialized static USDImportService.loadModel_createImportSession(stage:url:)(v58, v24, _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5), , (*(v21 + 8))(v24, v20), v59))
  {
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v100, v29, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v60 = v84;
    v61 = v85;
    if ((*(v84 + 48))(v29, 1, v85) == 1)
    {

      outlined destroy of Any?(v29, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      v62 = v83;
      (*(v60 + 32))(v83, v29, v61);

      v63 = v82;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v64 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v65 = *(v60 + 8);
      v65(v63, v61);
      if (v64)
      {
        swift_beginAccess();
        RIOImportSessionSetLoadAudio();
      }

      v65(v62, v61);
    }

    v66 = v98;
    v67 = v96;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v98, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v68 = (*(v95 + 80) + 40) & ~*(v95 + 80);
    v69 = (v34 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    v73 = v97;
    v72[2] = v59;
    v72[3] = v73;
    v72[4] = v99;
    outlined init with take of URL?(v67, v72 + v68);
    *(v72 + v69) = v59;
    v74 = (v72 + v70);
    *v74 = closure #2 in USDImportService.loadBodyTrackedAsync(from:fulfill:postLoad:);
    v74[1] = 0;
    *(v72 + v71) = v86;
    v75 = (v72 + ((v71 + 15) & 0xFFFFFFFFFFFFFFF8));
    v76 = v87;
    v77 = v88;
    *v75 = v87;
    v75[1] = v77;
    v78 = (v59 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v79 = *v78;
    v80 = v78[1];
    *v78 = closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    v78[1] = v72;
    swift_retain_n();

    sub_26187DB8C(v76, v77);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v79, v80);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    outlined destroy of Any?(v100, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    return outlined destroy of Any?(v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    v47 = __Engine.queue.getter();

    v48 = v98;
    v49 = v96;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v98, v96, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v50 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v51 = swift_allocObject();
    v52 = v99;
    *(v51 + 16) = v97;
    *(v51 + 24) = v52;
    outlined init with take of URL?(v49, v51 + v50);
    aBlock[4] = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_535;
    v53 = _Block_copy(aBlock);

    v54 = v89;
    static DispatchQoS.unspecified.getter();
    v101 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v55 = v91;
    v56 = v94;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26670F3A0](0, v54, v55, v53);
    _Block_release(v53);

    (*(v93 + 8))(v55, v56);
    (*(v90 + 8))(v54, v92);
    outlined destroy of Any?(v100, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    outlined destroy of Any?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

uint64_t closure #2 in USDImportService.loadModelAsync(from:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = a2(v7, a1);
  outlined destroy of Any?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v9;
}

void protocol witness for USDImportService.init() in conformance USDImportService(uint64_t *a2@<X8>)
{
  type metadata accessor for USDImportService();
  v3 = swift_allocObject();
  v4 = static os_log_type_t.info.getter();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &dword_26187B000, v5, "[USDImportService] RealityIO USDImportService instantiated.  RealityIO will be used to service load requests from USDImportService.", 131, 2, MEMORY[0x277D84F90]);

  *a2 = v3;
}

void specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v9;
LABEL_3:
    a2(v9, 1);

    return;
  }

  swift_beginAccess();
  if (!*(a4 + 16))
  {
    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    v9 = swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a5, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    swift_storeEnumTagMultiPayload();
    goto LABEL_3;
  }

  a2(v11, 0);
}

void specialized closure #1 in $defer #1 <A>() in closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  swift_beginAccess();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = v11;
    a2(v11, 1);
    v13 = v11;
  }

  else
  {
    swift_beginAccess();
    if (*(a4 + 16))
    {
      a6(0);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;

        a2(v15, 0);

        return;
      }

      type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      v18 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      a2(v18, 1);
      v13 = v18;
    }

    else
    {
      type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      v16 = swift_allocError();
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a5, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      swift_storeEnumTagMultiPayload();
      a2(v16, 1);
      v13 = v16;
    }
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static USDImportService.canLoad(url:)(uint64_t a1)
{
  result = URL.isFileURL.getter();
  if (result)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
LABEL_3:
    if (v2 <= 6)
    {
      v4 = 6;
    }

    else
    {
      v4 = v2;
    }

    v5 = v4 + 1;
    v6 = (&outlined read-only object #0 of one-time initialization function for supportedFilePathExtensions + 16 * v2 + 40);
    while (1)
    {
      if (v2 == 6)
      {
        URL.pathExtension.getter();
        v14 = String.lowercased()();

        v18 = v14;
        MEMORY[0x28223BE20](v15, v16);
        v17[2] = &v18;
        v13 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v17, v3);

        return v13 & 1;
      }

      if (v5 == ++v2)
      {
        break;
      }

      v7 = v6 + 2;
      v8 = *v6;
      v6 += 2;
      if (v8)
      {
        v9 = *(v7 - 3);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v11 + 1;
        v12 = v3 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
    return v13 & 1;
  }

  return result;
}

uint64_t type metadata accessor for USDImportService.LoadError(uint64_t a1)
{
  result = type metadata singleton initialization cache for USDImportService.LoadError;
  if (!type metadata singleton initialization cache for USDImportService.LoadError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(uint64_t a1, float a2)
{
  v19 = a1;
  v2 = type metadata accessor for Entity.ChildCollection();
  v3 = *(v2 - 8);
  v5.n128_f32[0] = MEMORY[0x28223BE20](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v5);
  v10 = &v18 - v9;
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v11 = dispatch thunk of Collection.distance(from:to:)();
  v12 = *(v3 + 8);
  v12(v10, v2);
  if (v11 < 1)
  {
    Error = type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v19, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return Error;
  }

  HasHierarchy.children.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v20[5] == v20[0])
  {
    v12(v7, v2);
LABEL_8:
    Error = type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    goto LABEL_9;
  }

  v15 = dispatch thunk of Collection.subscript.read();

  v15(v20, 0);
  v12(v7, v2);
  type metadata accessor for ModelEntity();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    goto LABEL_8;
  }

  Error = v16;

  Entity.coreEntity.getter();

  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  HasHierarchy.setParent(_:preservingWorldTransform:)();
  return Error;
}

uint64_t specialized USDImportService.loadModel(contentsOf:withName:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v54 - v4;
  v56 = type metadata accessor for __EngineRef();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v7);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v10, v12);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16, v13);
  v19 = v54 - v18;
  v59 = v11;
  v20 = *(v11 + 16);
  v20(v54 - v18, a1, v10, v17);
  v60 = v15;
  v55 = a1;
  v58 = v20;
  (v20)(v15, a1, v10);
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = RIOPxrUsdStageCreateWithFileURL();

  if (!v24)
  {
    goto LABEL_15;
  }

  v54[0] = v5;
  v57 = v19;
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v26 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v56);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v29 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage, v28);
  if (!v29)
  {

    v19 = v57;
LABEL_15:
    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    v9 = v49;
    v58(v49, v55, v10);
    v50 = v59;
    (*(v59 + 56))(v9, 0, 1, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v51 = *(v50 + 8);
    v51(v60, v10);
    v51(v19, v10);
    return v9;
  }

  v30 = v29;
  v31 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();

  RIOImportSessionSetIsLoadModelUseCase();
  v32 = *&v30[v31];
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  RIOImportSessionSetOriginalUrl();

  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  result = RIOImportSessionGetSceneCount();
  if ((result & 0x8000000000000000) == 0)
  {
    v37 = result;
    v38 = v57;
    if (!result)
    {
      goto LABEL_12;
    }

    v39 = 0;
    v9 = 0;
    while (1)
    {
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v39++, 1))
        {
          break;
        }
      }

      if (v37 == ++v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    if (v39 >= 2)
    {
      type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v52 = *(v59 + 8);
      v52(v60, v10);
      v52(v38, v10);
    }

    else
    {
LABEL_12:
      v41 = v54[0];
      v42 = v60;
      v58(v54[0], v60, v10);
      v43 = v59 + 56;
      v44 = (*(v59 + 56))(v41, 0, 1, v10);
      v45 = v54[1];
      v46 = specialized static USDImportService.loadModel_selectEntity(contentsOf:importSession:)(v41, v44);
      v47 = (v43 - 48);
      if (v45)
      {
        outlined destroy of Any?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v48 = *v47;
        (*v47)(v42, v10);
        v48(v38, v10);
      }

      else
      {
        v9 = v46;
        outlined destroy of Any?(v41, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

        v53 = *v47;
        (*v47)(v42, v10);
        v53(v38, v10);
      }
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t specialized static USDImportService.loadBodyTracked_selectEntity(contentsOf:importSession:)(uint64_t a1)
{
  v18 = a1;
  v1 = type metadata accessor for BodyTrackingComponent();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = type metadata accessor for __EntityRef();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Entity.ChildCollection();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  HasHierarchy.children.getter();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v12 = dispatch thunk of Collection.distance(from:to:)();
  (*(v8 + 8))(v11, v7);
  if (v12 < 1)
  {
    Error = type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v18, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return Error;
  }

  Entity.coreEntity.getter();
  Child = REEntityGetChild();
  if (!Child)
  {
    Error = type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    goto LABEL_8;
  }

  v19[3] = MEMORY[0x277D841D8];
  v19[0] = Child;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v19);
  type metadata accessor for BodyTrackedEntity();
  swift_allocObject();
  Error = MEMORY[0x26670DC40](v6);

  Entity.coreEntity.getter();
  REBodyTrackingComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    BodyTrackingComponent.init()();
    HasBodyTracking.bodyTracking.setter();
  }

  HasHierarchy.setParent(_:preservingWorldTransform:)();

  return Error;
}

uint64_t specialized USDImportService.loadBodyTracked(contentsOf:withName:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v53 = &v52 - v4;
  v56 = type metadata accessor for __EngineRef();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15, v12);
  v18 = &v52 - v17;
  v19 = *(v10 + 16);
  v19(&v52 - v17, a1, v9, v16);
  v57 = v19;
  v58 = v14;
  v55 = a1;
  (v19)(v14, a1, v9);
  v59 = v18;
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = RIOPxrUsdStageCreateWithFileURL();

  if (!v23)
  {
    goto LABEL_15;
  }

  v52 = v10;
  TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
  type metadata accessor for __ServiceLocator();
  v25 = TopLevelEntityFromStage;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  dispatch thunk of __Engine.__coreEngine.getter();

  __AssetRef.__as<A>(_:)();
  (*(v5 + 8))(v8, v56);
  SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
  type metadata accessor for ImportSession(0);
  swift_allocObject();
  v28 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ011BodyTrackedK0C_Tt0g5(SingleUseImporterWithStage, v27);
  if (!v28)
  {

    v10 = v52;
LABEL_15:
    type metadata accessor for USDImportService.LoadError(0);
    lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
    swift_allocError();
    v47 = v46;
    v57(v46, v55, v9);
    (*(v10 + 56))(v47, 0, 1, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v48 = *(v10 + 8);
    v48(v58, v9);
    return (v48)(v59, v9);
  }

  v29 = v28;
  v30 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();

  RIOImportSessionSetIsLoadModelUseCase();
  v31 = *&v29[v30];
  v32 = v59;
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  RIOImportSessionSetOriginalUrl();

  RIOImportSessionUpdateSynchronouslyOnEngineQueue();
  result = RIOImportSessionGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = result;
    v38 = v58;
    if (!result)
    {
      goto LABEL_12;
    }

    v39 = 0;
    v40 = 0;
    while (1)
    {
      if (RIOImportSessionIsSceneActive())
      {
        if (__OFADD__(v39++, 1))
        {
          break;
        }
      }

      if (v37 == ++v40)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:
    if (v39 >= 2)
    {
      type metadata accessor for USDImportService.LoadError(0);
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v49 = *(v52 + 8);
      v49(v38, v9);
      return (v49)(v32, v9);
    }

    else
    {
LABEL_12:
      v42 = v53;
      v57(v53, v38, v9);
      v43 = v52;
      (*(v52 + 56))(v42, 0, 1, v9);
      v44 = v54;
      specialized static USDImportService.loadBodyTracked_selectEntity(contentsOf:importSession:)(v42);
      if (v44)
      {
        outlined destroy of Any?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45 = *(v43 + 8);
        v45(v38, v9);
        v45(v32, v9);
      }

      else
      {
        outlined destroy of Any?(v42, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        type metadata accessor for BodyTrackedEntity();
        if (swift_dynamicCastClass())
        {

          v50 = *(v43 + 8);
          v50(v38, v9);
          v50(v32, v9);
          return swift_dynamicCastClassUnconditional();
        }

        else
        {
          type metadata accessor for USDImportService.LoadError(0);
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type USDImportService.LoadError and conformance USDImportService.LoadError, type metadata accessor for USDImportService.LoadError, &protocol conformance descriptor for USDImportService.LoadError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v51 = *(v43 + 8);
          v51(v38, v9);

          return (v51)(v32, v9);
        }
      }
    }
  }

  return result;
}

uint64_t specialized USDImportService.loadAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v115 = a8;
  v118 = a7;
  v129 = a6;
  v121 = a5;
  v119 = a4;
  v131 = a3;
  v130 = a2;
  v125 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v10);
  v126 = &v114[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = type metadata accessor for DispatchQoS();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v12);
  v127 = &v114[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v114[-v16];
  v18 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v128 = *(v18 - 8);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v18, v19);
  v22 = &v114[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v20);
  v117 = &v114[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v132 = *(v25 - 8);
  v26 = *(v132 + 64);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v114[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30, v28);
  v32 = &v114[-v31];
  v33 = type metadata accessor for Entity();
  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v32, a1, v34);
  (*(v35 + 56))(v32, 0, 1, v34);
  v36 = specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:configureImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)(a1, v33, 0, 0);
  if (v36)
  {
    v37 = v36;
    v116 = v26;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v17, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v38 = v128;
    if ((*(v128 + 48))(v17, 1, v18) == 1)
    {
      v39 = v37;

      outlined destroy of Any?(v17, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    }

    else
    {
      v49 = v117;
      (*(v38 + 32))(v117, v17, v18);

      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v50 = v37;
      v51 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v52 = *(v38 + 8);
      v52(v22, v18);
      if (v51)
      {
        swift_beginAccess();
        v39 = v50;
        RIOImportSessionSetLoadAudio();
      }

      else
      {
        v39 = v50;
      }

      v52(v49, v18);
    }

    v53 = v116;
    v54 = v132;
    v55 = v130;
    v56 = v29;
    if (v129 != 2 && (v129 & 1) != 0)
    {
      result = v118;
      if (v115)
      {
        result = MEMORY[0x266713650](v118, v29);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v118 = result;
      v58 = 2 * result / 3;
      v59 = swift_allocObject();
      *(v59 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v60 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v61 = *(v39 + v60);
      v138 = partial apply for closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates();
      v139 = v59;
      aBlock = MEMORY[0x277D85DD0];
      v135 = 1107296256;
      v136 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v137 = &block_descriptor_132_0;
      v62 = _Block_copy(&aBlock);
      v63 = v61;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v62);

      swift_beginAccess();
      v64 = *(v59 + 16);

      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 1 << *(v64 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v72 = v71 & *(v64 + 64);
      v73 = (v70 + 63) >> 6;
      if (v72)
      {
        while (1)
        {
          v74 = v65;
LABEL_21:
          v75 = (*(v64 + 56) + ((v74 << 11) | (32 * __clz(__rbit64(v72)))));
          v76 = __OFADD__(v66, *v75);
          v66 += *v75;
          if (v76)
          {
            break;
          }

          v77 = v75[1];
          v76 = __OFADD__(v67, v77);
          v67 += v77;
          if (v76)
          {
            goto LABEL_46;
          }

          v78 = v75[2];
          v76 = __OFADD__(v68, v78);
          v68 += v78;
          if (v76)
          {
            goto LABEL_47;
          }

          v72 &= v72 - 1;
          v79 = v75[3];
          if (v79 > v69)
          {
            v69 = v79;
          }

          v65 = v74;
          if (!v72)
          {
            goto LABEL_18;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      while (1)
      {
LABEL_18:
        v74 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v74 >= v73)
        {
          break;
        }

        v72 = *(v64 + 64 + 8 * v74);
        ++v65;
        if (v72)
        {
          goto LABEL_21;
        }
      }

      v80 = v67 * v69;
      if ((v67 * v69) >> 64 != (v67 * v69) >> 63)
      {
        goto LABEL_49;
      }

      if ((v80 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_50;
      }

      v81 = 3 * v68;
      if ((v68 * 3) >> 64 != (3 * v68) >> 63)
      {
        goto LABEL_51;
      }

      if ((v81 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v82 = 4 * v80;
      v83 = v82 + 12 * v68;
      if (__OFADD__(v82, 4 * v81))
      {
        goto LABEL_53;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v58)
      {
        v84 = v58;
      }

      else
      {
        v84 = result;
      }

      v76 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v76)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v85 & ~(v85 >> 63), v39, COERCE_DOUBLE(0x100000001000));
      v87 = v86;

      v88 = v83 + v87;
      if (__OFADD__(v83, v87))
      {
        goto LABEL_55;
      }

      v89 = (v88 * 3) >> 64;
      v90 = 3 * v88;
      v91 = v126;
      v53 = v116;
      v54 = v132;
      if (v89 != v90 >> 63)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return result;
      }

      if (__OFADD__(v118, 10))
      {
        goto LABEL_57;
      }

      v92 = v90 / 2;
      v56 = v29;
      v93 = v125;
      if (v118 + 10 < v90 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v94 = __Engine.queue.getter();

        v95 = swift_allocObject();
        v96 = v131;
        v95[2] = v55;
        v95[3] = v96;
        v97 = v118;
        v95[4] = v92;
        v95[5] = v97;
        v138 = partial apply for specialized closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
        v139 = v95;
        aBlock = MEMORY[0x277D85DD0];
        v135 = 1107296256;
        v136 = thunk for @escaping @callee_guaranteed () -> ();
        v137 = &block_descriptor_144;
        v98 = _Block_copy(&aBlock);

        v99 = v127;
        static DispatchQoS.unspecified.getter();
        v133 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v99, v91, v98);
        _Block_release(v98);

        (*(v124 + 8))(v91, v93);
        (*(v122 + 8))(v99, v123);
        v48 = v32;
        goto LABEL_42;
      }
    }

    v100 = v56;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v32, v56, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v101 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v102 = (v53 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
    v105 = v32;
    v106 = swift_allocObject();
    v106[2] = v39;
    v106[3] = v55;
    v106[4] = v131;
    outlined init with take of URL?(v100, v106 + v101);
    *(v106 + v102) = v39;
    v107 = (v106 + v103);
    *v107 = 0;
    v107[1] = 0;
    *(v106 + v104) = v120;
    v108 = (v106 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
    v109 = v119;
    v110 = v121;
    *v108 = v119;
    v108[1] = v110;
    v111 = (v39 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v112 = *v111;
    v113 = v111[1];
    *v111 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
    v111[1] = v106;
    swift_retain_n();

    sub_26187DB8C(v109, v110);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v112, v113);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    return outlined destroy of Any?(v105, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v40 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v32, v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v41 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v42 = swift_allocObject();
  v43 = v131;
  *(v42 + 16) = v130;
  *(v42 + 24) = v43;
  outlined init with take of URL?(v29, v42 + v41);
  v138 = partial apply for specialized closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
  v139 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v135 = 1107296256;
  v136 = thunk for @escaping @callee_guaranteed () -> ();
  v137 = &block_descriptor_123;
  v44 = _Block_copy(&aBlock);

  v45 = v127;
  static DispatchQoS.unspecified.getter();
  v133 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v46 = v126;
  v47 = v125;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v45, v46, v44);
  _Block_release(v44);

  (*(v124 + 8))(v46, v47);
  (*(v122 + 8))(v45, v123);
  v48 = v32;
LABEL_42:
  outlined destroy of Any?(v48, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t specialized static USDImportService.createDummyDataFilename(from:)(uint64_t a1, unint64_t a2, float a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of static USDImportService.sniffUSDExtension(forData:), a1, a2))
  {
    v13 = 2053403509;
  }

  else if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #1 of static USDImportService.sniffUSDExtension(forData:), a1, a2))
  {
    v13 = 1633973109;
  }

  else
  {
    if ((specialized Sequence<>.starts<A>(with:)(&outlined read-only object #2 of static USDImportService.sniffUSDExtension(forData:), a1, a2) & 1) == 0)
    {

      return 0;
    }

    v13 = 1667527541;
  }

  v15[0] = v10;
  v15[1] = v12;
  MEMORY[0x26670F080](46, 0xE100000000000000);
  MEMORY[0x26670F080](v13, 0xE400000000000000);

  return v15[0];
}

id specialized USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9)
{
  v140 = a8;
  v143 = a7;
  v150 = a6;
  v146 = a5;
  v144 = a4;
  v162 = a2;
  v163 = a3;
  v158 = type metadata accessor for DispatchWorkItemFlags();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v10);
  v154 = &v139[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = type metadata accessor for DispatchQoS();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v12);
  v153 = &v139[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v147 = &v139[-v16];
  v149 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v148 = *(v149 - 8);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v149, v17);
  v141 = &v139[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v18);
  v142 = &v139[-v21];
  v152 = type metadata accessor for __EngineRef();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v22);
  v24 = &v139[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v25, v28);
  v30 = &v139[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31, v29);
  v33 = &v139[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v159 = *(v34 - 8);
  v36.n128_f32[0] = MEMORY[0x28223BE20](v34 - 8, v35);
  v161 = &v139[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = v37;
  v39 = MEMORY[0x28223BE20](v38, v36);
  v41 = &v139[-v40];
  v42 = *(v26 + 16);
  v42(&v139[-v40], a1, v25, v39);
  v43 = *(v26 + 56);
  v166 = v41;
  v43(v41, 0, 1, v25);
  (v42)(v33, a1, v25);
  (v42)(v30, a1, v25);
  v44 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v45 = swift_allocObject();
  v164 = v26;
  v165 = v25;
  (*(v26 + 32))(v45 + v44, v30, v25);
  v46 = v33;
  URL._bridgeToObjectiveC()(v47);
  v49 = v48;
  v50 = RIOPxrUsdStageCreateWithFileURL();

  if (v50)
  {
    TopLevelEntityFromStage = RIOPxrUsdUtilsCreateTopLevelEntityFromStage();
    v52 = type metadata accessor for __ServiceLocator();
    v53 = TopLevelEntityFromStage;
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.__coreEngine.getter();

    __AssetRef.__as<A>(_:)();
    (*(v151 + 8))(v24, v152);
    SingleUseImporterWithStage = RIOImportSessionCreateSingleUseImporterWithStage();
    type metadata accessor for ImportSession(0);
    swift_allocObject();
    v56 = _s9RealityIO13ImportSessionC4core10entityTypeACSgSo09RIOImportD3RefaSg_xmtc0A3Kit6EntityCRbzlufcAJ05ModelK0C_Tt0g5(SingleUseImporterWithStage, v55);
    if (v56)
    {
      v57 = v56;
      v151 = v52;
      v58 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();

      RIOImportSessionSetIsLoadModelUseCase();
      v59 = *(v57 + v58);
      v152 = v46;
      URL._bridgeToObjectiveC()(&v175);
      v61 = v60;
      RIOImportSessionSetOriginalUrl();

      v62 = v147;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v147, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v63 = v148;
      v64 = v149;
      if ((*(v148 + 48))(v62, 1, v149) == 1)
      {

        result = outlined destroy of Any?(v62, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      }

      else
      {
        v77 = v142;
        (*(v63 + 32))(v142, v62, v64);

        v78 = v141;
        static Entity.__LoadOptions.LoadableFeatures.audio.getter();
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
        v79 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v80 = *(v63 + 8);
        v80(v78, v64);
        if (v79)
        {
          RIOImportSessionSetLoadAudio();
        }

        result = (v80)(v77, v64);
      }

      if (v150 != 2 && (v150 & 1) != 0)
      {
        if (v140)
        {
          result = MEMORY[0x266713650](result);
          v143 = result;
        }

        if (v143 + 0x4000000000000000 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v81 = 2 * v143 / 3;
        v82 = swift_allocObject();
        v83 = MEMORY[0x277D84F90];
        *(v82 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v84 = *(v57 + v58);
        v173 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
        v174 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v170 = 1107296256;
        v171 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
        v172 = &block_descriptor_262;
        v85 = _Block_copy(&aBlock);
        v86 = v84;

        RIOImportSessionGatherMeshEstimates();
        _Block_release(v85);

        swift_beginAccess();
        v87 = *(v82 + 16);

        v88 = 0;
        v89 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 1 << *(v87 + 32);
        v94 = -1;
        if (v93 < 64)
        {
          v94 = ~(-1 << v93);
        }

        v95 = v94 & *(v87 + 64);
        v96 = (v93 + 63) >> 6;
        if (v95)
        {
          while (1)
          {
            v97 = v88;
LABEL_23:
            v98 = (*(v87 + 56) + ((v97 << 11) | (32 * __clz(__rbit64(v95)))));
            v99 = __OFADD__(v89, *v98);
            v89 += *v98;
            if (v99)
            {
              break;
            }

            v100 = v98[1];
            v99 = __OFADD__(v90, v100);
            v90 += v100;
            if (v99)
            {
              goto LABEL_47;
            }

            v101 = v98[2];
            v99 = __OFADD__(v91, v101);
            v91 += v101;
            if (v99)
            {
              goto LABEL_48;
            }

            v95 &= v95 - 1;
            v102 = v98[3];
            if (v102 > v92)
            {
              v92 = v102;
            }

            v88 = v97;
            if (!v95)
            {
              goto LABEL_20;
            }
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        while (1)
        {
LABEL_20:
          v97 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v97 >= v96)
          {
            break;
          }

          v95 = *(v87 + 64 + 8 * v97);
          ++v88;
          if (v95)
          {
            goto LABEL_23;
          }
        }

        v103 = v90 * v92;
        if ((v90 * v92) >> 64 != (v90 * v92) >> 63)
        {
          goto LABEL_50;
        }

        if ((v103 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_51;
        }

        v104 = 3 * v91;
        if ((v91 * 3) >> 64 != (3 * v91) >> 63)
        {
          goto LABEL_52;
        }

        if ((v104 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v105 = 4 * v103;
        v106 = v105 + 12 * v91;
        if (__OFADD__(v105, 4 * v104))
        {
          goto LABEL_54;
        }

        result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
        if (result >= v81)
        {
          v107 = v81;
        }

        else
        {
          v107 = result;
        }

        v99 = __OFSUB__(v107, v106);
        v108 = v107 - v106;
        if (v99)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v108 & ~(v108 >> 63), v57, COERCE_DOUBLE(0x100000001000));
        v110 = v109;

        v111 = v106 + v110;
        if (__OFADD__(v106, v110))
        {
          goto LABEL_56;
        }

        v112 = (v111 * 3) >> 64;
        v113 = 3 * v111;
        if (v112 != v113 >> 63)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        if (__OFADD__(v143, 10))
        {
          goto LABEL_58;
        }

        v114 = v113;
        if (v143 + 10 < v113 / 2)
        {
          static __ServiceLocator.shared.getter();
          dispatch thunk of __ServiceLocator.engine.getter();

          v115 = __Engine.queue.getter();

          v116 = swift_allocObject();
          v117 = v163;
          v116[2] = v162;
          v116[3] = v117;
          v118 = v143;
          v116[4] = v114 / 2;
          v116[5] = v118;
          v173 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
          v174 = v116;
          aBlock = MEMORY[0x277D85DD0];
          v170 = 1107296256;
          v171 = thunk for @escaping @callee_guaranteed () -> ();
          v172 = &block_descriptor_274;
          v119 = _Block_copy(&aBlock);

          v120 = v153;
          static DispatchQoS.unspecified.getter();
          v167 = v83;
          lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v121 = v154;
          v122 = v158;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x26670F3A0](0, v120, v121, v119);
          _Block_release(v119);

          (*(v157 + 8))(v121, v122);
          (*(v155 + 8))(v120, v156);
          (*(v164 + 8))(v152, v165);
          v76 = v166;
          goto LABEL_7;
        }
      }

      v158 = v58;
      v123 = v161;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v166, v161, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v124 = (*(v159 + 80) + 40) & ~*(v159 + 80);
      v125 = (v160 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
      v126 = v45;
      v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
      v128 = (v127 + 23) & 0xFFFFFFFFFFFFFFF8;
      v129 = swift_allocObject();
      v130 = v162;
      v131 = v163;
      v129[2] = v57;
      v129[3] = v130;
      v129[4] = v131;
      outlined init with take of URL?(v123, v129 + v124);
      *(v129 + v125) = v57;
      v132 = (v129 + v127);
      *v132 = partial apply for closure #2 in USDImportService.loadModelAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:);
      v132[1] = v126;
      *(v129 + v128) = v145;
      v133 = (v129 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8));
      v134 = v144;
      v135 = v146;
      *v133 = v144;
      v133[1] = v135;
      v136 = (v57 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
      swift_beginAccess();
      v137 = *v136;
      v138 = v136[1];
      *v136 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
      v136[1] = v129;
      swift_retain_n();

      sub_26187DB8C(v134, v135);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v137, v138);
      ImportSession.sceneUpdatePassCompletion.didset();

      RIOImportSessionUpdate();

      (*(v164 + 8))(v152, v165);
      return outlined destroy of Any?(v166, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v66 = __Engine.queue.getter();

  v67 = v166;
  v68 = v161;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v166, v161, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v69 = (*(v159 + 80) + 32) & ~*(v159 + 80);
  v70 = swift_allocObject();
  v71 = v163;
  *(v70 + 16) = v162;
  *(v70 + 24) = v71;
  outlined init with take of URL?(v68, v70 + v69);
  v173 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v174 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v170 = 1107296256;
  v171 = thunk for @escaping @callee_guaranteed () -> ();
  v172 = &block_descriptor_254;
  v72 = _Block_copy(&aBlock);

  v73 = v153;
  static DispatchQoS.unspecified.getter();
  v168 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v74 = v154;
  v75 = v158;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v73, v74, v72);
  _Block_release(v72);

  (*(v157 + 8))(v74, v75);
  (*(v155 + 8))(v73, v156);
  (*(v164 + 8))(v46, v165);
  v76 = v67;
LABEL_7:
  outlined destroy of Any?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t specialized USDImportService.loadAnchorAsync(contentsOf:withName:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v120 = a8;
  v127 = a7;
  v140 = a6;
  v130 = a5;
  v128 = a4;
  v144 = a3;
  v143 = a2;
  v134 = type metadata accessor for DispatchWorkItemFlags();
  v135 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v10);
  v131 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v133 = type metadata accessor for DispatchQoS();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v12);
  v136 = &v119[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v137 = &v119[-v16];
  v139 = type metadata accessor for Entity.__LoadOptions.LoadableFeatures();
  v138 = *(v139 - 8);
  v18.n128_f32[0] = MEMORY[0x28223BE20](v139, v17);
  v125 = &v119[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20, v18);
  v126 = &v119[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v145 = *(v22 - 8);
  v23 = *(v145 + 64);
  v25.n128_f32[0] = MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v119[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v25);
  v29 = &v119[-v28];
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v33.n128_f32[0] = MEMORY[0x28223BE20](v30, v32);
  v35 = &v119[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v36, v33);
  v39 = &v119[-v38];
  v40 = *(v31 + 16);
  v40(&v119[-v38], a1, v30, v37);
  (v40)(v29, a1, v30);
  v142 = v31;
  (*(v31 + 56))(v29, 0, 1, v30);
  (v40)(v35, v39, v30);
  v41 = _s9RealityIO13ImportSessionC10contentsOf15pipelineVersion9threading10entityType13isolationModeACSg10Foundation3URLV_So09RIOImportd8PipelineH0VSo0pD9ThreadingVxmSo0pd14StageIsolationM0Vtc0A3Kit6EntityCRbzlufCAS06AnchorV0C_Tt2t4g5(v35, 0, 0, 1);
  if (v41)
  {
    v42 = v41;
    v124 = v23;
    v123 = &v119[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v122 = v39;
    v141 = v29;
    v43 = v137;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a9, v137, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
    v44 = v138;
    v45 = v139;
    v46 = (*(v138 + 48))(v43, 1, v139);
    v121 = v30;
    if (v46 == 1)
    {

      outlined destroy of Any?(v43, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMd, &_s10RealityKit6EntityC13__LoadOptionsV16LoadableFeaturesVSgMR);
      v47 = v141;
    }

    else
    {
      v56 = v126;
      (*(v44 + 32))(v126, v43, v45);

      v57 = v125;
      static Entity.__LoadOptions.LoadableFeatures.audio.getter();
      lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type Entity.__LoadOptions.LoadableFeatures and conformance Entity.__LoadOptions.LoadableFeatures, MEMORY[0x277CDB140], MEMORY[0x277CDB148]);
      v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v59 = *(v44 + 8);
      v59(v57, v45);
      v47 = v141;
      if (v58)
      {
        swift_beginAccess();
        RIOImportSessionSetLoadAudio();
      }

      v59(v56, v45);
    }

    v60 = v124;
    v61 = v145;
    v62 = v123;
    if (v140 != 2 && (v140 & 1) != 0)
    {
      result = v127;
      if (v120)
      {
        result = MEMORY[0x266713650](v127);
      }

      if (result + 0x4000000000000000 < 0)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v127 = result;
      v64 = 2 * result / 3;
      v65 = swift_allocObject();
      *(v65 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v66 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
      swift_beginAccess();
      v67 = *(v42 + v66);
      v151 = closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()partial apply;
      v152 = v65;
      aBlock = MEMORY[0x277D85DD0];
      v148 = 1107296256;
      v149 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
      v150 = &block_descriptor_386;
      v68 = _Block_copy(&aBlock);
      v69 = v67;

      RIOImportSessionGatherMeshEstimates();
      _Block_release(v68);

      swift_beginAccess();
      v70 = *(v65 + 16);

      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 1 << *(v70 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v78 = v77 & *(v70 + 64);
      v79 = (v76 + 63) >> 6;
      if (v78)
      {
        while (1)
        {
          v80 = v71;
LABEL_20:
          v81 = (*(v70 + 56) + ((v80 << 11) | (32 * __clz(__rbit64(v78)))));
          v82 = __OFADD__(v72, *v81);
          v72 += *v81;
          if (v82)
          {
            break;
          }

          v83 = v81[1];
          v82 = __OFADD__(v73, v83);
          v73 += v83;
          if (v82)
          {
            goto LABEL_45;
          }

          v84 = v81[2];
          v82 = __OFADD__(v74, v84);
          v74 += v84;
          if (v82)
          {
            goto LABEL_46;
          }

          v78 &= v78 - 1;
          v85 = v81[3];
          if (v85 > v75)
          {
            v75 = v85;
          }

          v71 = v80;
          if (!v78)
          {
            goto LABEL_17;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      while (1)
      {
LABEL_17:
        v80 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v80 >= v79)
        {
          break;
        }

        v78 = *(v70 + 64 + 8 * v80);
        ++v71;
        if (v78)
        {
          goto LABEL_20;
        }
      }

      v86 = v73 * v75;
      if ((v73 * v75) >> 64 != (v73 * v75) >> 63)
      {
        goto LABEL_48;
      }

      if ((v86 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_49;
      }

      if ((v74 * 3) >> 64 != (3 * v74) >> 63)
      {
        goto LABEL_50;
      }

      if ((3 * v74 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v87 = 4 * v86;
      v88 = v87 + 12 * v74;
      if (__OFADD__(v87, 12 * v74))
      {
        goto LABEL_52;
      }

      result = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      if (result >= v64)
      {
        v89 = v64;
      }

      else
      {
        v89 = result;
      }

      v82 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v82)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(v90 & ~(v90 >> 63), v42, COERCE_DOUBLE(0x100000001000));
      v47 = v141;
      v92 = v91;

      v93 = v88 + v92;
      if (__OFADD__(v88, v92))
      {
        goto LABEL_54;
      }

      v94 = (v93 * 3) >> 64;
      v95 = 3 * v93;
      v96 = v135;
      v97 = v134;
      v60 = v124;
      v61 = v145;
      if (v94 != v95 >> 63)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      if (__OFADD__(v127, 10))
      {
        goto LABEL_56;
      }

      v98 = v95 / 2;
      v62 = v123;
      if (v127 + 10 < v95 / 2)
      {
        type metadata accessor for __ServiceLocator();
        static __ServiceLocator.shared.getter();
        dispatch thunk of __ServiceLocator.engine.getter();

        v99 = __Engine.queue.getter();

        v100 = swift_allocObject();
        v101 = v144;
        v100[2] = v143;
        v100[3] = v101;
        v102 = v127;
        v100[4] = v98;
        v100[5] = v102;
        v151 = closure #4 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
        v152 = v100;
        aBlock = MEMORY[0x277D85DD0];
        v148 = 1107296256;
        v149 = thunk for @escaping @callee_guaranteed () -> ();
        v150 = &block_descriptor_398;
        v103 = _Block_copy(&aBlock);

        v104 = v136;
        static DispatchQoS.unspecified.getter();
        v146 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v105 = v131;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x26670F3A0](0, v104, v105, v103);
        _Block_release(v103);

        (*(v96 + 8))(v105, v97);
        (*(v132 + 8))(v104, v133);
        outlined destroy of Any?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        (*(v142 + 8))(v122, v121);
      }
    }

    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v47, v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v106 = (*(v61 + 80) + 40) & ~*(v61 + 80);
    v107 = (v60 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
    v109 = (v108 + 23) & 0xFFFFFFFFFFFFFFF8;
    v110 = swift_allocObject();
    v111 = v143;
    v110[2] = v42;
    v110[3] = v111;
    v110[4] = v144;
    outlined init with take of URL?(v62, v110 + v106);
    *(v110 + v107) = v42;
    v112 = (v110 + v108);
    *v112 = 0;
    v112[1] = 0;
    *(v110 + v109) = v129;
    v113 = (v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8));
    v114 = v128;
    v115 = v130;
    *v113 = v128;
    v113[1] = v115;
    v116 = (v42 + OBJC_IVAR____TtC9RealityIO13ImportSession_sceneUpdatePassCompletion);
    swift_beginAccess();
    v117 = *v116;
    v118 = v116[1];
    *v116 = partial apply for specialized closure #5 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:);
    v116[1] = v110;
    swift_retain_n();

    sub_26187DB8C(v114, v115);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v117, v118);
    ImportSession.sceneUpdatePassCompletion.didset();

    swift_beginAccess();
    RIOImportSessionUpdate();

    outlined destroy of Any?(v141, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v142 + 8))(v122, v121);
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v48 = __Engine.queue.getter();

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v29, v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v49 = (*(v145 + 80) + 32) & ~*(v145 + 80);
  v50 = swift_allocObject();
  v51 = v144;
  *(v50 + 16) = v143;
  *(v50 + 24) = v51;
  outlined init with take of URL?(v26, v50 + v49);
  v151 = closure #1 in USDImportService.loadAsyncCommonImpl<A>(contentsOf:named:in:createImportSession:fulfill:postLoad:enforceMemoryConstraints:memoryLimit:featuresToSkip:selectEntity:entityType:)specialized partial apply;
  v152 = v50;
  aBlock = MEMORY[0x277D85DD0];
  v148 = 1107296256;
  v149 = thunk for @escaping @callee_guaranteed () -> ();
  v150 = &block_descriptor_378;
  v52 = _Block_copy(&aBlock);

  v53 = v136;
  static DispatchQoS.unspecified.getter();
  v146 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type USDImportService.LoadError and conformance USDImportService.LoadError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v54 = v131;
  v55 = v134;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26670F3A0](0, v53, v54, v52);
  _Block_release(v52);

  (*(v135 + 8))(v54, v55);
  (*(v132 + 8))(v53, v133);
  outlined destroy of Any?(v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v142 + 8))(v39, v30);
}