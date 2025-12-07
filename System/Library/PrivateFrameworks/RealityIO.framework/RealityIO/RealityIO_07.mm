uint64_t ImportSession.TextureOperatorContainer.deinit()
{

  return v0;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ImportSession.TextureOperatorContainer@<X0>(void *a1@<X8>)
{
  v2 = ImportSession.TextureOperatorContainer.makeIterator()();

  *a1 = v2;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ImportSession.TextureOperatorContainer()
{
  v0 = specialized _copySequenceToContiguousArray<A>(_:)();

  return v0;
}

uint64_t specialized Sequence._copyContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ImportSession.TextureOperatorContainer.makeIterator()();

  v8 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *a1 = v6;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v9 = v12;
    v8 = 0;
    if (v12)
    {
      v10 = v11;
      while (1)
      {
        *a2 = v10;
        *(a2 + 8) = v9;
        if (a3 - 1 == v8)
        {
          break;
        }

        dispatch thunk of _AnyIteratorBoxBase.next()();
        v10 = v11;
        v9 = v12;
        ++v8;
        a2 += 24;
      }

      v8 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)(char a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ShySSGTt0g5Tf4g_n(v3);
  v5 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v6 = *(v1 + v5);
  type metadata accessor for __ServiceLocator();
  v7 = v6;
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v2;
  aBlock[4] = partial apply for closure #1 in ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @unowned UnsafePointer<Int8>, @unowned UnsafePointer<Int8>) -> ();
  aBlock[3] = &block_descriptor_59_0;
  v9 = _Block_copy(aBlock);

  RIOImportSessionGatherTextureInfoWithOptionallyUnusedTextures();
  _Block_release(v9);

  swift_beginAccess();
  v10 = *(v2 + 16);
  swift_beginAccess();
  v11 = *(v4 + 16);

  type metadata accessor for ImportSession.TextureOperatorContainer();
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v11;
  return result;
}

void closure #1 in ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String.init(cString:)();
  v10 = v9;
  v11 = String.init(cString:)();
  v13 = v12;
  swift_beginAccess();
  v14 = *(a4 + 16);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13), (v16 & 1) != 0))
  {
    v28 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();

    specialized Set._Variant.insert(_:)(&v27, v8, v10);

    v17 = v28;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v11, v13, isUniquelyReferenced_nonNull_native);

    v19 = v26;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    *(inited + 32) = v8;
    v21 = inited + 32;
    *(inited + 40) = v10;
    v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of String(v21);
    swift_beginAccess();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v11, v13, v23);

    v19 = v28;
  }

  *(a4 + 16) = v19;
  swift_endAccess();
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    RERetain();
    swift_beginAccess();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v11, v13, v25);

    *(a5 + 16) = v28;
    swift_endAccess();
  }

  else
  {
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?, @unowned UnsafePointer<Int8>, @unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t ImportSession.MeshAssetEstimate.approximateFootprint.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v0[2];
  v5 = (v4 * 3) >> 64;
  v6 = 3 * v4;
  if (v5 != v6 >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = 4 * v3;
  result = v7 + 4 * v6;
  if (__OFADD__(v7, 4 * v6))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void *static ImportSession.MeshAssetEstimate.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result[3];
  if (a2[3] > v10)
  {
    v10 = a2[3];
  }

  *a3 = *result + *a2;
  a3[1] = v6;
  a3[2] = v9;
  a3[3] = v10;
  return result;
}

double static ImportSession.MeshAssetEstimate.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *ImportSession.MeshAssetEstimates.makeIterator()()
{
  v1 = *v0;
  v2 = -1 << *(*v0 + 32);
  v3 = *v0 + 64;
  v4 = ~v2;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMd, &_ss12_IteratorBoxCySD0A0VySS9RealityIO13ImportSessionC17MeshAssetEstimateV_GGMR);
  v8 = swift_allocObject();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = 0;
  v8[6] = v7;

  return v8;
}

double ImportSession.MeshAssetEstimates.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 32 * v6);
    v9 = *v8;
    v10 = v8[1];
    *a3 = *v8;
    *(a3 + 16) = v10;
    *(a3 + 32) = 0;
  }

  else
  {
    *&v9 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1;
  }

  return *&v9;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ImportSession.MeshAssetEstimates@<X0>(void *a1@<X8>)
{
  v2 = ImportSession.MeshAssetEstimates.makeIterator()();

  *a1 = v2;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ImportSession.MeshAssetEstimates()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

RealityIO::ImportSession::MeshAssetEstimates __swiftcall ImportSession.gatherEntitiesWithMeshAssetEstimates()()
{
  v2 = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9RealityIO13ImportSessionC17MeshAssetEstimateVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v5 = *(v1 + v4);
  aBlock[4] = partial apply for closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ();
  aBlock[3] = &block_descriptor_65;
  v6 = _Block_copy(aBlock);
  v7 = v5;

  RIOImportSessionGatherMeshEstimates();
  _Block_release(v6);

  swift_beginAccess();
  v8 = *(v3 + 16);

  *v2 = v8;
  return result;
}

uint64_t closure #1 in ImportSession.gatherEntitiesWithMeshAssetEstimates()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = String.init(cString:)();
  v13 = v12;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a6 + 16);
  *(a6 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a3, a4, a5, v11, v13, isUniquelyReferenced_nonNull_native);

  *(a6 + 16) = v16;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned Int, @unowned Int, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v11(a2, a3, a4, a5, a6);
}

uint64_t ImportSession.EvaluationFault.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImportSession.EvaluationFault(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImportSession.EvaluationFault(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v22 = v35;
    v32 = v6;
    v33 = v3;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v23 = v19;
        v24 = v11;
        (*(v12 + 32))(v15, v23, v11);
        MEMORY[0x26670FA20](3);
        __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
        dispatch thunk of Hashable.hash(into:)();
        (*(v22 + 8))(v10, v7);
        v25 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v25);
        v26 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(HIDWORD(v26));
        __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
        Hasher._combine(_:)(v27);
        v28 = v32;
        __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
        _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
        v29 = v33;
        dispatch thunk of Hashable.hash(into:)();
        (*(v34 + 8))(v28, v29);
        return (*(v12 + 8))(v15, v24);
      }

      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      return MEMORY[0x26670FA20](0);
    }

    v21 = 6;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v21 = 4;
  }

  else
  {
    v21 = 5;
  }

  MEMORY[0x26670FA20](v21);
  String.hash(into:)();
}

Swift::Int ImportSession.EvaluationFault.hashValue.getter()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImportSession.EvaluationFault()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImportSession.EvaluationFault()
{
  Hasher.init(_seed:)();
  ImportSession.EvaluationFault.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ImportSession.getEvaluationFaults()(float a1)
{
  v2 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say9RealityIO13ImportSessionC15EvaluationFaultOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = OBJC_IVAR____TtC9RealityIO13ImportSession_deploymentTarget;
  swift_beginAccess();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v1 + v12, v10, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    closure #1 in ImportSession.getEvaluationFaults()(v6, v11, aBlock);
    (*(v3 + 8))(v6, v2);
  }

  v13 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;
  swift_beginAccess();
  v14 = *(v1 + v13);
  aBlock[4] = partial apply for closure #2 in ImportSession.getEvaluationFaults();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ();
  aBlock[3] = &block_descriptor_71_0;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  RIOImportSessionGatherFaultRecords();
  _Block_release(v15);

  swift_beginAccess();
  v17 = *(v11 + 16);

  return v17;
}

uint64_t addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v12 = *(type metadata accessor for ImportSession.EvaluationFault(0) - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v14 + v13);

    specialized Array.append<A>(contentsOf:)(v14);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v16 = v11;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v17 = *(type metadata accessor for ImportSession.EvaluationFault(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v19 + v18);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    v16 = v19;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a1, a2, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v21;
  return swift_endAccess();
}

uint64_t closure #1 in ImportSession.getEvaluationFaults()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a2;
  v22 = a3;
  v4 = type metadata accessor for ImportSession.EvaluationFault(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  __REAssetBundle.ExportOptions.PlatformOS.rawValue.getter();
  (*(v9 + 8))(v12, v8);
  LODWORD(v8) = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  v13 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() >> 32;
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  *&v14 = __PAIR64__(v13, v8);
  *(&v14 + 1) = v15;
  v21 = v14;
  String.utf8CString.getter();

  VersionFromDeploymentTarget = RERealityFileWriterGetVersionFromDeploymentTarget();

  if (!VersionFromDeploymentTarget)
  {
    v18 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    swift_storeEnumTagMultiPayload();
    addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(0, 0xE000000000000000, v7, v20);
    result = outlined destroy of ImportSession.EvaluationFault(v7);
  }

  *v22 = VersionFromDeploymentTarget;
  return result;
}

uint64_t closure #2 in ImportSession.getEvaluationFaults()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ImportSession.EvaluationFault(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = String.init(cString:)();
  v12 = v11;
  if (a2)
  {
    *v9 = String.init(cString:)();
    v9[1] = v13;
  }

  swift_storeEnumTagMultiPayload();
  addFault #1 (_:_:) in ImportSession.getEvaluationFaults()(v10, v12, v9, a4);

  return outlined destroy of ImportSession.EvaluationFault(v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned RIOImportSessionFaultType, @unowned UnsafePointer<Int8>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void ImportSession.getCompatibilityFaults(for:)(uint64_t a1)
{
  v1 = ImportSession.getCompatibilityFaultsByPrimPath(for:)(a1);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84FA0];
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        specialized Set.union<A>(_:)(v10, v8);
        v8 = v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportSession.EvaluationFault(0);
  v9 = *(v8 - 8);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v11);
  v16 = &v28 - v15;
  swift_beginAccess();
  v17 = *(a4 + 16);
  if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v19 & 1) != 0))
  {
    v30 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    outlined init with copy of ImportSession.EvaluationFault(a3, v13);

    specialized Set._Variant.insert(_:)(v16, v13);
    outlined destroy of ImportSession.EvaluationFault(v16);
    v20 = v30;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, a1, a2, isUniquelyReferenced_nonNull_native);

    v22 = v29;
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMd, &_ss23_ContiguousArrayStorageCy9RealityIO13ImportSessionC15EvaluationFaultOGMR);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2619891C0;
    outlined init with copy of ImportSession.EvaluationFault(a3, v24 + v23);
    v25 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO13ImportSessionC15EvaluationFaultO_Tt0g5Tf4g_n(v24);
    swift_setDeallocating();
    outlined destroy of ImportSession.EvaluationFault(v24 + v23);
    swift_deallocClassInstance();
    swift_beginAccess();

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a1, a2, v26);

    v22 = v30;
  }

  *(a4 + 16) = v22;
  return swift_endAccess();
}

uint64_t closure #1 in ImportSession.getCompatibilityFaultsByPrimPath(for:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ImportSession.EvaluationFault(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = String.init(cString:)();
  v12 = v11;
  if (a2 == 4 || a2 == 3)
  {
    *v9 = String.init(cString:)();
    v9[1] = v13;
    swift_storeEnumTagMultiPayload();
    addFault #1 (_:_:) in ImportSession.getCompatibilityFaultsByPrimPath(for:)(v10, v12, v9, a4);

    return outlined destroy of ImportSession.EvaluationFault(v9);
  }

  else
  {
  }
}

uint64_t __REAssetBundle.ExportOptions.DeploymentTarget.hash(into:)(uint64_t a1)
{
  v1 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v7 + 8))(v10, v6);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v11);
  v12 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v12));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v13);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int __REAssetBundle.ExportOptions.DeploymentTarget.hashValue.getter()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v1 + 8))(v4, v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __REAssetBundle.ExportOptions.DeploymentTarget(uint64_t a1)
{
  v1 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v7 + 8))(v10, v6);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v11);
  v12 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v12));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v13);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v2 + 8))(v5, v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __REAssetBundle.ExportOptions.DeploymentTarget()
{
  v0 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACC8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v6 + 8))(v9, v5);
  v10 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v10);
  v11 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(HIDWORD(v11));
  __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  Hasher._combine(_:)(v12);
  __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformRequirement and conformance __REAssetBundle.ExportOptions.PlatformRequirement, MEMORY[0x277CDACE0], MEMORY[0x277CDACE8]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v1 + 8))(v4, v0);
  return Hasher._finalize()();
}

uint64_t static ImportSession.primPathMetadataKey.getter()
{
  RIOImportSessionPrimPathMetadataKey();

  return String.init(cString:)();
}

uint64_t static ImportSession.resolvedPathMetadataKey.getter()
{
  RIOImportSessionResolvedPathMetadataKey();

  return String.init(cString:)();
}

uint64_t static ImportSession.assetInfoMetadataKey.getter()
{
  RIOImportSessionAssetInfoMetadataKey();

  return String.init(cString:)();
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of __REAssetBundle.ExportOptions.DeploymentTarget?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMd, &_s10RealityKit15__REAssetBundleV13ExportOptionsV16DeploymentTargetVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v8);
    v19 = a2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      v8 = v1[1];
      specialized _NativeDictionary._insert(at:key:value:)(v4, v8, v2, v5);
      v9 = v8;
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    outlined destroy of SceneDescriptionFoundations.Path(*(v7 + 48) + 8 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

void *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t), __n128 a4)
{
  v6 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1, a4);
    v10 = v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = a2(v10, v8, v6);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo19REComponentClassPtraSo8RETypeIDaG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So19ij8Ptra_So8L6IDaTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n02_suijvwlx15SbIgyyd_AbDSbs5z76_pIegnndzo_TR057_s9RealityIO13ImportSessionC20realityKitComponentsSDySo19ab7vw3D28X34GvgZSbAF_AHtXEfU_Tf4nnd_nTf3nnpf_nTf1nnc_nTm(v13, v8, v6, a3);
  result = MEMORY[0x266713AD0](v13, -1, -1);
  if (!v4)
  {
    return v14;
  }

  return result;
}

Swift::Int specialized closure #1 in _NativeDictionary.filter(_:)(Swift::Int result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
LABEL_4:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    if (one-time initialization token for realityKitComponentClasses != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v16 = *(static ImportSession.realityKitComponentClasses + 2);
    v17 = (static ImportSession.realityKitComponentClasses + 32);
    while (v16)
    {
      v18 = *v17++;
      --v16;
      if (v18 == v15)
      {
        *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

{
  v21 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    if (one-time initialization token for realityKitComponentClasses != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    v17 = *(static ImportSession.realityKitComponentClasses + 2);
    v18 = (static ImportSession.realityKitComponentClasses + 32);
    while (v17)
    {
      v19 = *v18++;
      --v17;
      if (v19 == v16)
      {
        goto LABEL_5;
      }
    }

    *(v21 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v21, a2, v4, a3);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo19REComponentClassPtraSo8RETypeIDaG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So19ij8Ptra_So8L6IDaTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAiKIsgnndzo_Tf1nc_n02_suijvwlx15SbIgyyd_AbDSbs5z76_pIegnndzo_TR057_s9RealityIO13ImportSessionC20realityKitComponentsSDySo19ab7vw3D28X34GvgZSbAF_AHtXEfU_Tf4nnd_nTf3nnpf_nTf1nnc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

Swift::Int specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 16 * v16);
    Hasher.init(_seed:)();
    MEMORY[0x26670FA20](v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 16 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90] + 32;
  if (v4)
  {
    while (1)
    {
      v11 = v8;
LABEL_8:
      v12 = __clz(__rbit64(v4)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(a1 + 56) + 32 * v12);
      v31 = v16[1];
      v32 = *v16;
      if (v7)
      {

        v17 = v9;
        v18 = __OFSUB__(v7--, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v19 = v9[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_9RealityIO13ImportSessionC17MeshAssetEstimateV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_9RealityIO13ImportSessionC17MeshAssetEstimateV5valuetGMR);
        v17 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v17) - 32) / 48;
        v17[2] = v21;
        v17[3] = 2 * v22;
        v23 = v17 + 4;
        v24 = v9[3] >> 1;
        v10 = &v17[6 * v24 + 4];
        v25 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;
        if (v9[2])
        {
          if (v17 != v9 || v23 >= &v9[6 * v24 + 4])
          {
            memmove(v23, v9 + 4, 48 * v24);
          }

          v9[2] = 0;
        }

        else
        {
        }

        v18 = __OFSUB__(v25, 1);
        v7 = v25 - 1;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      v4 &= v4 - 1;
      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v32;
      *(v10 + 32) = v31;
      v10 += 48;
      v9 = v17;
      v8 = v11;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v11);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v27 = v9[3];
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v18 = __OFSUB__(v28, v7);
  v29 = v28 - v7;
  if (!v18)
  {
    v9[2] = v29;
    return v9;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)()
{
  ImportSession.TextureOperatorContainer.makeIterator()();
  result = dispatch thunk of _AnyIteratorBoxBase.next()();
  v1 = v18;
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v18)
  {
    v4 = MEMORY[0x277D84F90] + 32;
    v5 = v17;
    while (1)
    {
      if (!v3)
      {
        v6 = v2[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v16 = v1;
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_s13OpaquePointerV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_s13OpaquePointerV5valuetGMR);
        v9 = swift_allocObject();
        v10 = (_swift_stdlib_malloc_size(v9) - 32) / 24;
        v9[2] = v8;
        v9[3] = 2 * v10;
        v11 = (v9 + 4);
        v12 = v2[3] >> 1;
        if (v2[2])
        {
          if (v9 != v2 || v11 >= &v2[3 * v12 + 4])
          {
            memmove(v9 + 4, v2 + 4, 24 * v12);
          }

          v2[2] = 0;
        }

        v4 = v11 + 24 * v12;
        v3 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - v12;

        v2 = v9;
        v1 = v16;
      }

      if (__OFSUB__(v3--, 1))
      {
        break;
      }

      *v4 = v5;
      *(v4 + 8) = v1;
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      v5 = v17;
      v1 = v18;
      v4 += 24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    __break(1u);
  }

  else
  {

    v15 = v2[3];
    if (v15 >= 2)
    {
      v2[2] = v15 >> 1;
    }

    return v2;
  }

  return result;
}

uint64_t specialized static __REAssetBundle.ExportOptions.DeploymentTarget.== infix(_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformRequirement();
  v3 = *(v2 - 8);
  v5.n128_f32[0] = MEMORY[0x28223BE20](v2, v4);
  v34 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v5);
  v33 = &v31[-v8];
  v9 = type metadata accessor for __REAssetBundle.ExportOptions.PlatformOS();
  v10 = *(v9 - 8);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v9, v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v12);
  v17 = &v31[-v16];
  v35 = a1;
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  __REAssetBundle.ExportOptions.DeploymentTarget.platform.getter();
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(&lazy protocol witness table cache variable for type __REAssetBundle.ExportOptions.PlatformOS and conformance __REAssetBundle.ExportOptions.PlatformOS, MEMORY[0x277CDACC0], MEMORY[0x277CDACD0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v37 == v36)
  {
    v18 = *(v10 + 8);
    v18(v14, v9);
    v18(v17, v9);
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v19 = v3;
    v20 = v2;
    v21 = *(v10 + 8);
    v21(v14, v9);
    v21(v17, v9);
    v2 = v20;
    v3 = v19;

    v22 = 0;
    if ((v32 & 1) == 0)
    {
      return v22 & 1;
    }
  }

  v23 = __REAssetBundle.ExportOptions.DeploymentTarget.version.getter();
  v25 = v24;
  v22 = 0;
  if (v23 == __REAssetBundle.ExportOptions.DeploymentTarget.version.getter() && v25 == v26)
  {
    v27 = v33;
    __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
    v28 = v34;
    __REAssetBundle.ExportOptions.DeploymentTarget.platformRequirement.getter();
    v22 = static __REAssetBundle.ExportOptions.PlatformRequirement.== infix(_:_:)();
    v29 = *(v3 + 8);
    v29(v28, v2);
    v29(v27, v2);
  }

  return v22 & 1;
}

uint64_t specialized static ImportSession.EvaluationFault.== infix(_:_:)(uint64_t a1, uint64_t a2, float a3)
{
  v53 = a1;
  v54 = a2;
  v3 = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportSession.EvaluationFault(0);
  v9.n128_f32[0] = MEMORY[0x28223BE20](v7, v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v9);
  v15 = (&v51 - v14);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v16, v13);
  v19 = (&v51 - v18);
  v21.n128_f32[0] = MEMORY[0x28223BE20](v20, v17);
  v23 = &v51 - v22;
  v25.n128_f32[0] = MEMORY[0x28223BE20](v24, v21);
  v27 = (&v51 - v26);
  MEMORY[0x28223BE20](v28, v25);
  v30 = (&v51 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v51 - v33;
  v36 = (&v51 + *(v35 + 56) - v33);
  outlined init with copy of ImportSession.EvaluationFault(v53, &v51 - v33);
  outlined init with copy of ImportSession.EvaluationFault(v54, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v41 = v23;
    v42 = v51;
    v43 = v52;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        outlined init with copy of ImportSession.EvaluationFault(v34, v41);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          (*(v42 + 32))(v6, v36, v43);
          v48 = specialized static __REAssetBundle.ExportOptions.DeploymentTarget.== infix(_:_:)(v41);
          v49 = *(v42 + 8);
          v49(v6, v43);
          v49(v41, v43);
          outlined destroy of ImportSession.EvaluationFault(v34);
          return v48 & 1;
        }

        (*(v42 + 8))(v41, v43);
        goto LABEL_25;
      }

      outlined init with copy of ImportSession.EvaluationFault(v34, v27);
      v45 = *v27;
      v44 = v27[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      outlined init with copy of ImportSession.EvaluationFault(v34, v30);
      v45 = *v30;
      v44 = v30[1];
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_24;
      }
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_32;
      }

LABEL_25:
      outlined destroy of Any?(v34, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMd, &_s9RealityIO13ImportSessionC15EvaluationFaultO_AEtMR);
      goto LABEL_26;
    }

    outlined init with copy of ImportSession.EvaluationFault(v34, v11);
    v45 = *v11;
    v44 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of ImportSession.EvaluationFault(v34, v19);
      v39 = *v19;
      v38 = v19[1];
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        if (v39 != *v36 || v38 != v36[1])
        {
          goto LABEL_17;
        }

LABEL_22:

        goto LABEL_32;
      }

      goto LABEL_24;
    }

    outlined init with copy of ImportSession.EvaluationFault(v34, v15);
    v45 = *v15;
    v44 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  if (v45 == *v36 && v44 == v36[1])
  {
    goto LABEL_22;
  }

LABEL_17:
  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
LABEL_32:
    outlined destroy of ImportSession.EvaluationFault(v34);
    v48 = 1;
    return v48 & 1;
  }

  outlined destroy of ImportSession.EvaluationFault(v34);
LABEL_26:
  v48 = 0;
  return v48 & 1;
}

unint64_t lazy protocol witness table accessor for type ImportSession.LoadError and conformance ImportSession.LoadError()
{
  result = lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError;
  if (!lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError;
  if (!lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportSession.LoadError and conformance ImportSession.LoadError);
  }

  return result;
}

uint64_t _sSo10CFErrorRefaABs5Error10FoundationWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ImportSession.TextureOperatorContainer.__deallocating_deinit(void (*a1)(void), void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return a3(v3, 32, 7);
}

uint64_t lazy protocol witness table accessor for type AnyIterator<(key: String, value: OpaquePointer)> and conformance AnyIterator<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_get_74Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*(*(*a1 + 16) + 16));
  *a3 = result;
  return result;
}

void type metadata completion function for ImportSession(uint64_t a1, float a2)
{
  type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget?(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ImportSession.LoadError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImportSession.LoadError(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for ImportSession.EvaluationFault(uint64_t a1, float a2)
{
  result = type metadata accessor for __REAssetBundle.ExportOptions.DeploymentTarget();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id static ToolsFoundations.Token.Scope.getter@<X0>(void *a4@<X8>)
{
  return static ToolsFoundations.Token.Scope.getter(a4);
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  *a4 = result;
  return result;
}

char *ToolsFoundations.Token.schemaPropertyNames()()
{
  v0 = RIOPxrTfTokenCopyTypeSchemaPropertyNames();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    v3 = v2;
    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v2;
    if ((v3 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = MEMORY[0x26670F670](i, v3);
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v11;
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
      }
    }

    else
    {
      v12 = 32;
      do
      {
        v13 = *(v2 + 16);
        v14 = *(v2 + 24);
        v15 = *(v3 + v12);
        if (v13 >= v14 >> 1)
        {
          v16 = v14 > 1;
          v17 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v13 + 1, 1);
          v15 = v17;
        }

        *(v2 + 16) = v13 + 1;
        *(v2 + 8 * v13 + 32) = v15;
        v12 += 8;
        --v4;
      }

      while (v4);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t (*RigidSchema.xformTranslateOp.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A20;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.xformOrientOp.modify(char *a1))(uint64_t a1)
{
  strcpy(a1, "xformOp:orient");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.xformScaleOp.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "xformOp:scale");
  *(a1 + 14) = -4864;
  return RigidSchema.xformTranslateOp.modify;
}

void RigidSchema.xformOpOrder.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*RigidSchema.xformOpOrder.modify(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformOpOrder.modify;
}

uint64_t (*RigidSchema.radius.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x737569646172;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.height.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x746867696568;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.size.modify(void *a1))(uint64_t a1)
{
  *a1 = 1702521203;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.content.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x746E65746E6F63;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.font.modify(void *a1))(uint64_t a1)
{
  *a1 = 1953394534;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.pointSize.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x7A6953746E696F70;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.width.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6874646977;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.depth.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x6874706564;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.horizontalAlignment.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000261996A40;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.verticalAlignment.modify(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A60;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*RigidSchema.wrapMode.modify(void *a1))(uint64_t a1)
{
  *a1 = 0x65646F4D70617277;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Capsule.radius.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x737569646172;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Capsule.height.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x746867696568;
  a1[1] = 0xE600000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Cube.size.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 1702521203;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.content.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x746E65746E6F63;
  a1[1] = 0xE700000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.font.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 1953394534;
  a1[1] = 0xE400000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.pointSize.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x7A6953746E696F70;
  a1[1] = 0xE900000000000065;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.width.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x6874646977;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.depth.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x6874706564;
  a1[1] = 0xE500000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.horizontalAlignment.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000013;
  a1[1] = 0x8000000261996A40;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.verticalAlignment.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A60;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for PreliminaryText.wrapMode.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0x65646F4D70617277;
  a1[1] = 0xE800000000000000;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformTranslateOp.modify in conformance Schema(void *a1))(uint64_t a1)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x8000000261996A20;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformOrientOp.modify in conformance Schema(char *a1))(uint64_t a1)
{
  strcpy(a1, "xformOp:orient");
  a1[15] = -18;
  return RigidSchema.xformTranslateOp.modify;
}

uint64_t (*protocol witness for Xformable.xformScaleOp.modify in conformance Schema(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "xformOp:scale");
  *(a1 + 14) = -4864;
  return RigidSchema.xformTranslateOp.modify;
}

void protocol witness for Xformable.xformOpOrder.getter in conformance Schema(uint64_t a1@<X8>)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t (*protocol witness for Xformable.xformOpOrder.modify in conformance Schema(uint64_t a1))(uint64_t a1)
{
  strcpy(a1, "xformOpOrder");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  return RigidSchema.xformTranslateOp.modify;
}

void __swiftcall UsdGeomXformable.localTransformation(at:)(simd_double4x4_optional *__return_ptr retstr, Swift::Double at)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *((*(*(v2 + 8) + 8))() + 16);

  LocalTransformation = RIOPxrUsdGeomXformableXformQueryGetLocalTransformation();

  if (LocalTransformation)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _sSo14simd_double4x4aSgWOi_(&v10);
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v19 = v10;
    v20 = v11;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0_(&v19);
  }

  v6 = v26;
  *retstr->value.columns[3].f64 = v25;
  *&retstr->value.columns[3].f64[2] = v6;
  retstr->is_nil = v27;
  v7 = v22;
  *retstr->value.columns[1].f64 = v21;
  *&retstr->value.columns[1].f64[2] = v7;
  v8 = v24;
  *retstr->value.columns[2].f64 = v23;
  *&retstr->value.columns[2].f64[2] = v8;
  v9 = v20;
  *retstr->value.columns[0].f64 = v19;
  *&retstr->value.columns[0].f64[2] = v9;
}

void __swiftcall UsdGeomXformable.localTransformation(at:)(simd_float4x4_optional *__return_ptr retstr, Swift::Double at)
{
  UsdGeomXformable.localTransformation(at:)(&v8, at);
  if (_sSo14simd_double4x4aSgWOg(&v8) == 1)
  {
    v3 = 1;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    v3 = 0;
    v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[0].f64), *&v8.value.columns[0].f64[2]);
    v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[1].f64), *&v8.value.columns[1].f64[2]);
    v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[2].f64), *&v8.value.columns[2].f64[2]);
    v7 = vcvt_hight_f32_f64(vcvt_f32_f64(*v8.value.columns[3].f64), *&v8.value.columns[3].f64[2]);
  }

  retstr->value.columns[0] = v4;
  retstr->value.columns[1] = v5;
  retstr->value.columns[2] = v6;
  retstr->value.columns[3] = v7;
  retstr->is_nil = v3;
}

uint64_t UsdGeomXformable.timeSamples.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(*(a2 + 8) + 8))(a1) + 16);

  CopyTimeSamples = RIOPxrUsdGeomXformableXformQueryCopyTimeSamples();

  static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  return MEMORY[0x277D84F90];
}

uint64_t XformPrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA5Xform_pGMd, &_s9RealityIO10PropertiesVyAA5Xform_pGMR);
  return v0;
}

uint64_t MeshPrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Mesh_pGMd, &_s9RealityIO10PropertiesVyAA4Mesh_pGMR);
  return v0;
}

uint64_t XformPrim.__deallocating_deinit(uint64_t *a1, uint64_t *a2)
{

  outlined destroy of Any?(v2 + 24, a1, a2);

  return swift_deallocClassInstance();
}

uint64_t CapsulePrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA7Capsule_pGMd, &_s9RealityIO10PropertiesVyAA7Capsule_pGMR);
  return v0;
}

uint64_t ConePrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Cone_pGMd, &_s9RealityIO10PropertiesVyAA4Cone_pGMR);
  return v0;
}

uint64_t CubePrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA4Cube_pGMd, &_s9RealityIO10PropertiesVyAA4Cube_pGMR);
  return v0;
}

uint64_t CylinderPrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA8Cylinder_pGMd, &_s9RealityIO10PropertiesVyAA8Cylinder_pGMR);
  return v0;
}

uint64_t SpherePrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA6Sphere_pGMd, &_s9RealityIO10PropertiesVyAA6Sphere_pGMR);
  return v0;
}

uint64_t PreliminaryTextPrim.deinit()
{

  outlined destroy of Any?(v0 + 24, &_s9RealityIO10PropertiesVyAA15PreliminaryText_pGMd, &_s9RealityIO10PropertiesVyAA15PreliminaryText_pGMR);
  return v0;
}

void *Stage.xform(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for XformPrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.mesh(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for MeshPrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.capsule(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for CapsulePrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.cone(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for ConePrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.cube(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for CubePrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.cylinder(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for CylinderPrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.sphere(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for SpherePrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

void *Stage.preliminaryText(at:)(uint64_t *a1)
{
  if (String.count.getter() < 1)
  {
    v1 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v1 = RIOPxrTfTokenCreateWithCString();
  }

  v2 = v1;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  type metadata accessor for PreliminaryTextPrim(0);
  v5 = swift_allocObject();
  v5[7] = &type metadata for Schema;
  v5[8] = &protocol witness table for Schema;
  v5[2] = v4;
  v5[3] = v4;

  return v5;
}

uint64_t Stage.materialBindingAPI(at:)(uint64_t *a1)
{
  v1 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v3 = swift_allocObject();
  *(v3 + 16) = PrimIfNeeded;
  type metadata accessor for MaterialBindingAPI();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t MaterialBindingAPI.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MaterialBindingAPI.bind(material:)(uint64_t a1)
{
  v1 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v2 = RIOPxrUsdShadeMaterialBindingAPIBind();

  return v2;
}

uint64_t MaterialBindingAPI.bind(material:collection:)(uint64_t a1, uint64_t a2)
{
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v3 = RIOPxrUsdShadeMaterialBindingAPIBindCollection();

  return v3;
}

Swift::Bool __swiftcall MaterialBindingAPI.unbind()()
{
  v0 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v1 = RIOPxrUsdShadeMaterialBindingAPIUnbind();

  return v1;
}

uint64_t MaterialBindingAPI.unbind(collection:)(uint64_t a1)
{
  v1 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v2 = RIOPxrUsdShadeMaterialBindingAPIUnbindCollection();

  return v2;
}

void key path getter for MaterialBindingAPI.materialBindingStrengthForDirectBinding : MaterialBindingAPI(uint64_t *a2@<X8>)
{
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v4 = RIOPxrUsdShadeMaterialBindingAPICopyMaterialBindingStrengthForDirectBinding();

  *a2 = v4;
}

void key path setter for MaterialBindingAPI.materialBindingStrengthForDirectBinding : MaterialBindingAPI(uint64_t *a1, uint64_t a2)
{
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
}

void MaterialBindingAPI.materialBindingStrengthForDirectBinding.setter(id *a1)
{
  v2 = *a1;
  v1 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
}

void (*MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = *(v1 + 16);
  v3 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v4 = RIOPxrUsdShadeMaterialBindingAPICopyMaterialBindingStrengthForDirectBinding();

  *a1 = v4;
  return MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify;
}

void MaterialBindingAPI.materialBindingStrengthForDirectBinding.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
  }

  else
  {
    v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
    RIOPxrUsdShadeMaterialBindingAPISetMaterialBindingStrengthForDirectBinding();
  }
}

uint64_t MaterialBindingAPI.collectionBindings.getter()
{
  v1 = v0;
  v2 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v3 = RIOPxrUsdShadeMaterialBindingAPICopyCollectionBindings();

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      type metadata accessor for RIOPxrUsdShadeMaterialBindingAPICollectionBindingRef(0);
      v7 = v3;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = v10 + 1;
        v12 = MEMORY[0x26670F670]();
        type metadata accessor for MaterialCollectionBinding();
        v13 = swift_allocObject();
        *(v13 + 16) = v1;
        *(v13 + 24) = v12;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = v11;
      }

      while (v8 != v11);
    }

    else
    {
      type metadata accessor for MaterialCollectionBinding();
      v14 = 32;
      do
      {
        v15 = *(v6 + v14);
        v16 = swift_allocObject();
        *(v16 + 16) = v1;
        *(v16 + 24) = v15;

        v17 = v15;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 += 8;
        --v8;
      }

      while (v8);
    }

    return v4;
  }

  return result;
}

void MaterialBindingAPI.directBinding.getter(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdShadeMaterialBindingAPICreateFromObjectRef();
  v5 = a1();

  *a2 = v5;
}

uint64_t _sSo14simd_double4x4aSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *keypath_getTm@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v7 = *a1;
  v6 = a1[1];
  v9[0] = v7;
  v9[1] = v6;

  return a5(v9);
}

id one-time initialization function for iblPropertyName(uint64_t a1)
{
  return one-time initialization function for infoID(a1, 7103081, 0xE300000000000000, "ibl", &static ImageBasedLightBuilder.iblPropertyName);
}

{
  return one-time initialization function for infoID(a1, 7103081, 0xE300000000000000, "ibl", &static VirtualEnvironmentProbeComponentBuilder.iblPropertyName);
}

id one-time initialization function for intensityPropertyName()
{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static ImageBasedLightBuilder.intensityPropertyName = result;
  return result;
}

{
  if (String.count.getter() < 1)
  {
    result = RIOPxrTfTokenEmpty();
  }

  else
  {
    result = RIOPxrTfTokenCreateWithCString();
  }

  static VirtualEnvironmentProbeComponentBuilder.intensityPropertyName = result;
  return result;
}

uint64_t ImageBasedLightBuilder.run(inputs:)(uint64_t a1, float a2)
{
  v3 = v2;
  v133 = *MEMORY[0x277D85DE8];
  v5 = Inputs.prim.getter();
  v6 = RIOPxrUsdObjectCopyName();
  v7 = RIOPxrTfTokenCopyString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_23;
  }

  v11 = RIOPxrUsdPrimCopyAttribute();
  v12 = RIOPxrUsdAttributeCopyValue();
  if (!v12)
  {

LABEL_24:
    ImageBasedLightBuilder.clear(inputs:)(a1);
  }

  v13 = v12;
  v14 = RIOPxrVtValueCopyToken();

  if (!v14)
  {
LABEL_23:

    goto LABEL_24;
  }

  v15 = RIOPxrTfTokenCopyString();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != 0xD00000000000001ALL || 0x8000000261996D60 != v18)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_11:
  if (Prim.parent.getter())
  {
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for iblComponents != -1)
      {
        swift_once();
      }

      v126 = static OS_os_log.iblComponents;
      LODWORD(v125) = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26198A8E0;
      v25 = RIOPxrUsdObjectCopyPath();
      v26 = RIOPxrSdfPathCopyString();
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = MEMORY[0x277D837D0];
      *(v24 + 56) = MEMORY[0x277D837D0];
      v31 = lazy protocol witness table accessor for type String and conformance String();
      *(v24 + 64) = v31;
      *(v24 + 32) = v27;
      *(v24 + 40) = v29;

      *(v24 + 96) = v30;
      *(v24 + 104) = v31;
      *(v24 + 72) = v8;
      *(v24 + 80) = v10;
      os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v126, v125, v24);
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&aBlock, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v130)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {

      v126 = v127;
      if ((RIOPxrUsdPrimIsActive() & 1) == 0)
      {
        ImageBasedLightBuilder.clear(inputs:)(a1);
      }

      if (one-time initialization token for iblPropertyName != -1)
      {
        swift_once();
      }

      v20 = static ImageBasedLightBuilder.iblPropertyName;
      if (RIOPxrUsdPrimHasAttribute())
      {
        v21 = RIOPxrUsdPrimCopyAttribute();
        type metadata accessor for AnyAttribute();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
      }

      else
      {

        *&aBlock = 0;
        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(aBlock);
        v22 = 0;
      }

      if (one-time initialization token for iblBlendPropertyName != -1)
      {
        swift_once();
      }

      v35 = static ImageBasedLightBuilder.iblBlendPropertyName;
      if (RIOPxrUsdPrimHasAttribute())
      {
        v36 = RIOPxrUsdPrimCopyAttribute();
        type metadata accessor for AnyAttribute();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
      }

      else
      {

        *&aBlock = 0;
        lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
        swift_willThrowTypedImpl();
        outlined consume of Object.Error(aBlock);
        v37 = 0;
      }

      if (one-time initialization token for blendEnablePropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.blendEnablePropertyName;
      v38 = static ImageBasedLightBuilder.blendEnablePropertyName;
      v39 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      if (v39 && (LOBYTE(aBlock) = 0, Bool = RIOPxrVtValueGetBool(), v39, (Bool & 1) != 0))
      {
        v41 = aBlock;
      }

      else
      {
        v41 = 0;
      }

      v122 = v41;
      if (one-time initialization token for rotationEnablePropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.rotationEnablePropertyName;
      v42 = static ImageBasedLightBuilder.rotationEnablePropertyName;
      v43 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      if (v43 && (LOBYTE(aBlock) = 0, v44 = RIOPxrVtValueGetBool(), v43, (v44 & 1) != 0))
      {
        v45 = aBlock;
      }

      else
      {
        v45 = 0;
      }

      v121 = v45;
      if (one-time initialization token for mixFactorPropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.mixFactorPropertyName;
      v46 = static ImageBasedLightBuilder.mixFactorPropertyName;
      v47 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      v48 = 0;
      if (v47)
      {
        LODWORD(aBlock) = 0;
        Float = RIOPxrVtValueGetFloat();

        if (Float)
        {
          v48 = aBlock;
        }
      }

      if (one-time initialization token for blendIBLsFactorPropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.blendIBLsFactorPropertyName;
      v50 = static ImageBasedLightBuilder.blendIBLsFactorPropertyName;
      v51 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      v52 = 0;
      if (v51)
      {
        LODWORD(aBlock) = 0;
        v53 = RIOPxrVtValueGetFloat();

        if (v53)
        {
          v52 = aBlock;
        }
      }

      if (one-time initialization token for isGlobalPropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.isGlobalPropertyName;
      v54 = static ImageBasedLightBuilder.isGlobalPropertyName;
      v55 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      if (v55 && (LOBYTE(aBlock) = 0, v56 = RIOPxrVtValueGetBool(), v55, (v56 & 1) != 0))
      {
        v57 = aBlock;
      }

      else
      {
        v57 = 0;
      }

      v120 = v57;
      if (one-time initialization token for intensityPropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.intensityPropertyName;
      v58 = static ImageBasedLightBuilder.intensityPropertyName;
      v59 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      v60 = 0;
      if (v59)
      {
        LODWORD(aBlock) = 0;
        v61 = RIOPxrVtValueGetFloat();

        if (v61)
        {
          v60 = aBlock;
        }
      }

      if (one-time initialization token for mixColorPropertyName != -1)
      {
        swift_once();
      }

      *&aBlock = static ImageBasedLightBuilder.mixColorPropertyName;
      v62 = static ImageBasedLightBuilder.mixColorPropertyName;
      v63 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&aBlock, v5);

      v124 = 0u;
      if (v63)
      {
        aBlock = 0uLL;
        Float3 = RIOPxrVtValueGetFloat3();

        if (Float3)
        {
          v124 = aBlock;
        }
      }

      v65 = specialized ImageBasedLightBuilder.getMode(fromPrim:)(v5);
      v67 = v65;
      v68 = *(v3 + 16);
      v69 = v65 == 3 && v68 == 3;
      if (v68 != 3 && v65 != 3)
      {
        v70 = 1701736302;
        if (*(v3 + 16))
        {
          if (v68 == 1)
          {
            v71 = 0xE600000000000000;
            v72 = 0x656C676E6973;
          }

          else
          {
            v71 = 0xE500000000000000;
            v72 = 0x646E656C62;
          }
        }

        else
        {
          v71 = 0xE400000000000000;
          v72 = 1701736302;
        }

        if (v67)
        {
          if (v67 == 1)
          {
            v73 = 0xE600000000000000;
            v70 = 0x656C676E6973;
          }

          else
          {
            v73 = 0xE500000000000000;
            v70 = 0x646E656C62;
          }
        }

        else
        {
          v73 = 0xE400000000000000;
        }

        if (v72 == v70 && v71 == v73)
        {
          v69 = 1;
        }

        else
        {
          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      v123 = v22;
      if (v22)
      {

        EmptyValue = RIOPxrUsdAttributeCopyValue();
        if (!EmptyValue)
        {
          EmptyValue = RIOPxrVtValueCreateEmptyValue();
        }

        v75 = RIOPxrVtValueCopyAssetPath();

        v76 = *(v3 + 24);
        if (v76)
        {
          if (v75)
          {
            v118 = v37;
            type metadata accessor for RIOPxrSdfAssetPathRef(0);
            lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef();
            v77 = v76;
            v125 = v75;
            v78 = v75;
            v79 = v77;
            v80 = static _CFObject.== infix(_:_:)();

            if (v69)
            {
              LODWORD(v81) = v80 ^ 1;
              v37 = v118;
              v82 = v125;
              goto LABEL_119;
            }

            v37 = v118;
            v82 = v125;
            goto LABEL_118;
          }

          goto LABEL_109;
        }

        if (v75)
        {
          v76 = 0;
          v83 = v75;
          goto LABEL_112;
        }
      }

      else
      {
        v76 = *(v3 + 24);
        if (v76)
        {
LABEL_109:
          v83 = 0;
          v75 = v76;
LABEL_112:
          v84 = v75;

          if (v69)
          {
            LODWORD(v81) = 1;
            v82 = v83;
            goto LABEL_119;
          }

          v82 = v83;
          goto LABEL_118;
        }
      }

      v82 = 0;
      if (v69)
      {
        LODWORD(v81) = 0;
        goto LABEL_119;
      }

LABEL_118:
      LODWORD(v81) = 1;
LABEL_119:
      v119 = v67;
      v125 = v82;
      if (v37)
      {

        v85 = RIOPxrUsdAttributeCopyValue();
        if (!v85)
        {
          v85 = RIOPxrVtValueCreateEmptyValue();
        }

        v86 = v37;

        v87 = RIOPxrVtValueCopyAssetPath();

        v88 = *(v3 + 32);
        if (v88)
        {
          if (v87)
          {
            LODWORD(v118) = v81;
            type metadata accessor for RIOPxrSdfAssetPathRef(0);
            lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef();
            v89 = v88;
            v81 = v87;
            v90 = v89;
            static _CFObject.== infix(_:_:)();

            LOBYTE(v81) = v118;
            goto LABEL_131;
          }

          goto LABEL_126;
        }

        if (v87)
        {
          v88 = 0;
          v91 = v87;
          goto LABEL_129;
        }
      }

      else
      {
        v86 = 0;
        v88 = *(v3 + 32);
        if (v88)
        {
LABEL_126:
          v91 = 0;
          v87 = v88;
LABEL_129:
          v92 = v87;

          v87 = v91;
          goto LABEL_131;
        }
      }

      v87 = 0;
LABEL_131:
      v118 = &v118;
      MEMORY[0x28223BE20](v65, v66);
      v101[16] = v81 & 1;
      v102 = v123;
      v103 = a1;
      v104 = v93 & 1;
      v105 = v86;
      v94 = v125;
      v106 = v126;
      v107 = v3;
      v108 = v119;
      v109 = v52;
      v110 = v95;
      v111 = v60;
      v112 = v96;
      v113 = v97;
      v114 = v48;
      v115 = v124;
      v116 = v125;
      v117 = v87;
      v98 = swift_allocObject();
      *(v98 + 16) = partial apply for closure #1 in ImageBasedLightBuilder.run(inputs:);
      *(v98 + 24) = v101;
      v131 = thunk for @callee_guaranteed () -> ()partial apply;
      v132 = v98;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v129 = thunk for @escaping @callee_guaranteed () -> ();
      v130 = &block_descriptor_30_1;
      v99 = _Block_copy(&aBlock);

      RIOBuilderInputsPerformBlockSyncOnEngineQueue();

      _Block_release(v99);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      return result;
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock);
  }

  if (one-time initialization token for iblComponents != -1)
  {
    swift_once();
  }

  v32 = static OS_os_log.iblComponents;
  v33 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2619891C0;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 32) = v8;
  *(v34 + 40) = v10;
  os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v32, v33, v34);
}

void closure #1 in ImageBasedLightBuilder.run(inputs:)(char a1, uint64_t a2, float a3, float a4, float a5, __n128 a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, char a13, char a14, char a15, void *a16, void *a17)
{
  if ((a1 & 1) != 0 && a2)
  {

    Inputs.createIBLAsset(on:)(v21);

    if ((a8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    *(swift_allocObject() + 16) = 0;
    if ((a8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (a9)
  {

    Inputs.createIBLAsset(on:)(v22);

    goto LABEL_9;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
  *(swift_allocObject() + 16) = 0;
LABEL_9:
  __AssetRef.__as<A>(_:)();
  REImageBasedLightComponentGetComponentType();
  v23 = REEntityGetOrAddComponentByClass();
  swift_beginAccess();
  v24 = objc_getAssociatedObject(a11, &static BuilderAssociatedKeys.CoreReference);
  swift_endAccess();
  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v31, &v32);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    RIOBuilderAddComponent();

    if (a12 > 1u)
    {
      if (a12 != 2)
      {
        if (a1)
        {
          REImageBasedLightComponentSetIBLNullable();
        }

        if (a8)
        {
          REImageBasedLightComponentSetIBLBlendNullable();
        }

        REImageBasedLightComponentSetEnableBlend();
        REImageBasedLightComponentSetBlendIBLsFactor();
        goto LABEL_28;
      }

      if (a1)
      {
        REImageBasedLightComponentSetIBLNullable();
      }

      if (a8)
      {
        REImageBasedLightComponentSetIBLBlendNullable();
      }

      REImageBasedLightComponentSetEnableBlend();
      REImageBasedLightComponentSetBlendIBLsFactor();
    }

    else if (a12)
    {
      if (a1)
      {
        REImageBasedLightComponentSetIBLNullable();
      }

      REImageBasedLightComponentSetEnableBlend();
    }

    else
    {
      REImageBasedLightComponentSetIBLNullable();
    }

    *(a11 + 16) = a12;
LABEL_28:
    REImageBasedLightComponentSetIntensityExponent();
    REImageBasedLightComponentSetRotationEnabled();
    REImageBasedLightComponentSetBlendRotationEnabled();
    REImageBasedLightComponentSetGlobalIBL();
    REImageBasedLightComponentSetMixFactor();
    REImageBasedLightComponentSetMixColor();
    MEMORY[0x26670FF10](v23);

    v25 = *(a11 + 24);
    *(a11 + 24) = a16;
    v26 = a16;

    v27 = *(a11 + 32);
    *(a11 + 32) = a17;
    v28 = a17;

    *(a11 + 41) = 1;
    return;
  }

  __break(1u);
}

void ImageBasedLightBuilder.clear(inputs:)(uint64_t a1)
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&aBlock, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v10)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      if (*(v1 + 41) == 1)
      {
        MEMORY[0x28223BE20](v13, v2);
        v7[2] = v3;
        v7[3] = v1;
        v4 = swift_allocObject();
        *(v4 + 16) = partial apply for closure #1 in ImageBasedLightBuilder.clear(inputs:);
        *(v4 + 24) = v7;
        v11 = partial apply for thunk for @callee_guaranteed () -> ();
        v12 = v4;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v9 = thunk for @escaping @callee_guaranteed () -> ();
        v10 = &block_descriptor_15;
        v5 = _Block_copy(&aBlock);

        RIOBuilderInputsPerformBlockSyncOnEngineQueue();
        _Block_release(v5);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(&aBlock);
  }
}

void closure #1 in ImageBasedLightBuilder.clear(inputs:)(uint64_t a1, uint64_t a2)
{
  __AssetRef.__as<A>(_:)();
  REImageBasedLightComponentGetComponentType();
  REEntityRemoveComponentByClass();
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;

  v4 = *(a2 + 32);
  *(a2 + 32) = 0;

  *(a2 + 41) = 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageBasedLightBuilder.Mode(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656C676E6973;
  if (v2 != 1)
  {
    v4 = 0x646E656C62;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C676E6973;
  if (*a2 != 1)
  {
    v8 = 0x646E656C62;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImageBasedLightBuilder.Mode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ImageBasedLightBuilder.Mode(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImageBasedLightBuilder.Mode()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ImageBasedLightBuilder.Mode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImageBasedLightBuilder.Mode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImageBasedLightBuilder.Mode(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C676E6973;
  if (v2 != 1)
  {
    v5 = 0x646E656C62;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ImageBasedLightBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode()
{
  result = lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode;
  if (!lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageBasedLightBuilder.Mode and conformance ImageBasedLightBuilder.Mode);
  }

  return result;
}

uint64_t specialized ImageBasedLightBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v8 = static ImageBasedLightBuilder.realityKitComponentTypeName;
  v0 = static ImageBasedLightBuilder.realityKitComponentTypeName;
  v1 = specialized TypeNamePrimDirtyState.__allocating_init(typeName:)(&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v1;
  v3 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v4 = v8;
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v5 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(v3, v4, 0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26198A640;
  *(v6 + 32) = v5;
  v8 = v3;

  specialized Sequence.forEach(_:)(v6);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v8;
}

unint64_t specialized ImageBasedLightBuilder.Mode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageBasedLightBuilder.Mode.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t specialized ImageBasedLightBuilder.getMode(fromPrim:)(uint64_t a1)
{
  if (one-time initialization token for modePropertyName != -1)
  {
    swift_once();
  }

  v12 = static ImageBasedLightBuilder.modePropertyName;
  v2 = static ImageBasedLightBuilder.modePropertyName;
  v3 = specialized AudioMixGroupBuilder.getAttribute(named:fromPrim:)(&v12, a1);

  if (!v3)
  {
    return 3;
  }

  v4 = RIOPxrVtValueCopyToken();

  if (!v4)
  {
    return 3;
  }

  v5 = RIOPxrTfTokenCopyString();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImageBasedLightBuilder.Mode.init(rawValue:), v9);

  if (v10 >= 3)
  {
    return 3;
  }

  else
  {
    return v10;
  }
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef)
  {
    type metadata accessor for RIOPxrSdfAssetPathRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfAssetPathRef and conformance RIOPxrSdfAssetPathRef);
  }

  return result;
}

uint64_t static StageDirtyStateBuilder.buildBlock(_:)(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  specialized Sequence.forEach(_:)(a1);
  return v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO15StageDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d68IO7BuilderPAAE12generateCore7primRefySo015RIOPxrUsdObjectG0a_tFSo030igfjw6AA0mL5H52Ccfu_32bf63a0112cb27e84fc959358271e62f1AkITf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v22 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v24 = result;
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v24 = result;
  v25 = v5;
  v26 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v24;
    v9 = v25;
    v11 = v26;
    v12 = *(specialized Set.subscript.getter(v24, v25, v26, a1) + 32);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v22)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVy9RealityIO15StageDirtyStateC_GMd, &_sSh5IndexVy9RealityIO15StageDirtyStateC_GMR);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v23, 0);
      if (v6 == v2)
      {
LABEL_28:
        outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v24, v25, v26);
        return v27;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_32;
      }

      v14 = v10 >> 6;
      v15 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v15 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v16 = v15 & (-2 << (v10 & 0x3F));
      if (v16)
      {
        v13 = __clz(__rbit64(v16)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v14 << 6;
        v18 = v14 + 1;
        v19 = (a1 + 64 + 8 * v14);
        while (v18 < (v13 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
            v13 = __clz(__rbit64(v20)) + v17;
            goto LABEL_27;
          }
        }

        result = outlined consume of Set<ToolsFoundations.Token>.Index._Variant(v10, v9, 0);
      }

LABEL_27:
      v24 = v13;
      v25 = v9;
      v26 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void Builder.addComponent<A>(component:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for __ComponentTypeRef();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Component.__coreComponentType.getter();
  type metadata accessor for REComponentType(0);
  __ComponentTypeRef.__as<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v10 = REComponentClassFromType();
  if (v10)
  {
    v12 = Builder.outputs.getter(v10, v11, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
    RIOBuilderAddComponentByClass();
  }
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo33RIOBuilderDirtyStageDescriptorRefa_SayAEGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo33RIOBuilderDirtyStageDescriptorRefa_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t Builder.prim.getter(uint64_t a1, uint64_t a2)
{
  v2 = Builder.outputs.getter(a1, a2, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v3 = RIOBuilderCopyPrim();

  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

Swift::Void __swiftcall Builder.addComponent(componentRef:)(Swift::OpaquePointer componentRef)
{
  v2 = Builder.outputs.getter(componentRef._rawValue, v1, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  RIOBuilderAddComponent();
}

void Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock = a2;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(reflecting:)();
  v25 = MEMORY[0x26670EFB0](v6);

  (*(a3 + 16))(&aBlock, a2, a3);
  v7 = (*(a3 + 8))(a2, a3);
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO15StageDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d68IO7BuilderPAAE12generateCore7primRefySo015RIOPxrUsdObjectG0a_tFSo030igfjw6AA0mL5H52Ccfu_32bf63a0112cb27e84fc959358271e62f1AkITf3nnnpk_nTf1cn_n(v7);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo33RIOBuilderDirtyStageDescriptorRefa_SayAEGTt0g5(v8);
  type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = RIOBuilderDirtyStageSubscriptionCreateWithDirtyStageDescriptors();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v30 = partial apply for closure #1 in Builder.generateCore(primRef:);
  v31 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderOutputsDescriptorRef>);
  v29 = &block_descriptor_16;
  v13 = _Block_copy(&aBlock);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v30 = partial apply for closure #2 in Builder.generateCore(primRef:);
  v31 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderOutputsDescriptorRef>);
  v29 = &block_descriptor_14;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v17;
  v30 = partial apply for closure #3 in Builder.generateCore(primRef:);
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ();
  v29 = &block_descriptor_21;
  v19 = _Block_copy(&aBlock);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = a3;
  v21[4] = v20;
  v30 = partial apply for closure #4 in Builder.generateCore(primRef:);
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ();
  v29 = &block_descriptor_28;
  v22 = _Block_copy(&aBlock);

  v23 = RIOBuilderCreateWithBuilderInfo();
  _Block_release(v22);
  _Block_release(v19);
  _Block_release(v16);
  _Block_release(v13);

  if (v23)
  {
    swift_beginAccess();
    v24 = v23;
    objc_setAssociatedObject(v3, &static BuilderAssociatedKeys.CoreReference, v24, 1);
    swift_endAccess();

    RIOBuilderSetSwiftObject();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall Builder.generateOutputs()()
{
  v3 = v2;
  v4 = Builder.outputs.getter(v0, v1, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v5 = RIOBuilderOutputsCreate();

  v6 = RIOBuilderOutputsGetSwiftObject();
  type metadata accessor for Outputs();
  if (v6)
  {
    v7 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v7 = Outputs.init(core:)(v5);
  }

  v8 = v7;
  swift_beginAccess();

  objc_setAssociatedObject(v3, &static BuilderAssociatedKeys.OutputsReference, v8, 1);
  swift_endAccess();
}

uint64_t Builder.outputs.getter(uint64_t a1, uint64_t a2, const void *a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v4, a3);
  result = swift_endAccess();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v10, &v11);
    a4(0);
    swift_dynamicCast();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Builder.primPath.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = Builder.outputs.getter(a1, a2, &static BuilderAssociatedKeys.CoreReference, type metadata accessor for RIOBuilderRef);
  v5 = RIOBuilderCopyPrimPath();

  *a3 = v5;
}

uint64_t closure #1 in Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = (*(a3 + 24))(a2, a3);
    v16 = MEMORY[0x277D84F90];
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;

    v12 = 0;
    if (!v9)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 &= v9 - 1;
        result = InputDescriptor.convertToCore()();
        if (result)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      MEMORY[0x26670F130]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v9);
LABEL_7:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        type metadata accessor for RIOBuilderInputDescriptorRef(0);
        v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v15 = RIOBuilderInputsDescriptorCreateWithInputDescriptors();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v15 = RIOBuilderInputsDescriptorCreateWithInputDescriptors();
LABEL_17:

    return v15;
  }

  return result;
}

uint64_t closure #2 in Builder.generateCore(primRef:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = (*(a3 + 32))(a2, a3);
    v22 = v5;
    v23 = MEMORY[0x277D84F90];
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;

    for (i = 0; v9; result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)())
    {
      while (1)
      {
LABEL_13:
        v16 = (*(v22 + 48) + 40 * (__clz(__rbit64(v9)) | (i << 6)));
        v18 = *v16;
        v17 = v16[1];

        v19 = MEMORY[0x26670EFB0](v18, v17);
        if (String.count.getter() < 1)
        {
          v13 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();
          v13 = RIOPxrTfTokenCreateWithCString();
        }

        v9 &= v9 - 1;
        v14 = RIOBuilderOutputDescriptorCreateWithNameAndOutputIdentifierAndOptionality();

        if (v14)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_9;
        }
      }

      MEMORY[0x26670F130](result);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

LABEL_9:
    while (1)
    {
      v15 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v15 >= v10)
      {

        type metadata accessor for RIOBuilderOutputDescriptorRef(0);
        v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v21 = RIOBuilderOutputsDescriptorCreateWithOutputDescriptors();
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v9 = *(v6 + 8 * v15);
      ++i;
      if (v9)
      {
        i = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v21 = RIOBuilderOutputsDescriptorCreateWithOutputDescriptors();
LABEL_21:

    return v21;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Unmanaged<RIOBuilderInputsDescriptorRef>)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void *closure #3 in Builder.generateCore(primRef:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Inputs();
    v8 = swift_allocObject();
    *(v8 + 56) = a1;
    v9 = a1;
    result = RIOBuilderInputsCopyStageDelta();
    if (result)
    {
      Inputs.StageDelta.init(core:)(result, v12);
      v10 = v13;
      v11 = v12[1];
      *(v8 + 16) = v12[0];
      *(v8 + 32) = v11;
      *(v8 + 48) = v10;
      (*(a4 + 40))(v8, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RIOBuilderInputsRef) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *closure #4 in Builder.generateCore(primRef:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Inputs();
    v8 = swift_allocObject();
    *(v8 + 56) = a1;
    v9 = a1;
    result = RIOBuilderInputsCopyStageDelta();
    if (result)
    {
      Inputs.StageDelta.init(core:)(result, v12);
      v10 = v13;
      v11 = v12[1];
      *(v8 + 16) = v12[0];
      *(v8 + 32) = v11;
      *(v8 + 48) = v10;
      (*(a4 + 48))(v8, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMd, &_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMd, &_sSaySo33RIOBuilderDirtyStageDescriptorRefaGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RIOBuilderDirtyStageDescriptorRef] and conformance [A]);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4UUIDVG_9RealityIO4PrimCsAE_pTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for UUID() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Path.deletingLastPathComponent()@<X0>(uint64_t *a1@<X8>)
{
  v2 = RIOPxrSdfPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = lazy protocol witness table accessor for type String and conformance String();
  v4 = MEMORY[0x26670F450](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v3);

  if (*(v4 + 16) < 2uLL)
  {

    result = RIOPxrSdfPathCreateFromCString();
    v8 = result;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v5 = Sequence<>.joined(separator:)();
    v7 = v6;

    MEMORY[0x26670F080](v5, v7);

    String.utf8CString.getter();

    v8 = RIOPxrSdfPathCreateFromCString();
  }

  *a1 = v8;
  return result;
}

uint64_t InteractionSpecificationsUSDStageErrors.errorDescription.getter(float a1)
{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of InteractionSpecificationsUSDStageErrors(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *v15;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR);
      outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v15 + *(v18 + 48), v11);
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(76);
      MEMORY[0x26670F080](0xD00000000000002BLL, 0x80000002619970A0);
      v19 = RIOPxrSdfPathCopyString();
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      MEMORY[0x26670F080](v20, v22);

      v23 = " not implemented at path: ";
      v24 = 0xD00000000000001CLL;
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
      v34 = (v15 + *(v33 + 64));
      v36 = *v34;
      v35 = v34[1];
      outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v15 + *(v33 + 48), v11);
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x26670F080](0xD000000000000019, 0x8000000261997050);
      v37 = RIOPxrSdfPathCopyString();
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      MEMORY[0x26670F080](v38, v40);

      MEMORY[0x26670F080](0x65756C6156202E22, 0xEB0000000022203ALL);
      MEMORY[0x26670F080](v36, v35);

      v23 = "Nil value at prim path: ";
      v24 = 0xD00000000000002ELL;
    }

    MEMORY[0x26670F080](v24, v23 | 0x8000000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](34, 0xE100000000000000);

    v32 = v42;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v26 = *(v25 + 64);
    outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(v15 + *(v25 + 48), v11);
    (*(v4 + 32))(v7, v15 + v26, v3);
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(129);
    MEMORY[0x26670F080](0xD00000000000001ELL, 0x80000002619970F0);
    v27 = RIOPxrSdfPathCopyString();
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    MEMORY[0x26670F080](v28, v30);

    MEMORY[0x26670F080](0xD000000000000049, 0x8000000261997110);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v31);

    MEMORY[0x26670F080](0xD000000000000013, 0x8000000261997160);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26670F080](34, 0xE100000000000000);

    v32 = v42;
    (*(v4 + 8))(v7, v3);
  }

  outlined destroy of InteractionSpecificationsUSDStageErrors.InteractionType(v11);
  return v32;
}

char *Stage.setBehavior(_:at:mapping:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = v5;
  v127 = a4;
  v131 = a1;
  v110 = type metadata accessor for __RKEntityActionGroupArguments();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v7);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
  v130 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v10);
  v120 = (&v108 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
  v14.n128_f32[0] = MEMORY[0x28223BE20](v12 - 8, v13);
  v121 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v14);
  v18 = (&v108 - v17);
  v114 = type metadata accessor for __RKEntityActionSpecification();
  v113 = *(v114 - 8);
  v20.n128_f32[0] = MEMORY[0x28223BE20](v114, v19);
  v111 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v20);
  v24 = (&v108 - v23);
  v25 = type metadata accessor for __RKEntityTriggerSpecification();
  v26 = *(v25 - 8);
  v28.n128_f32[0] = MEMORY[0x28223BE20](v25, v27);
  v132 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.n128_f32[0] = MEMORY[0x28223BE20](v30, v28);
  v33 = (&v108 - v32);
  MEMORY[0x28223BE20](v34, v31);
  v116 = &v108 - v35;
  String.utf8CString.getter();
  v36 = RIOPxrSdfPathCreateFromCString();

  v37 = RIOPxrTfTokenEmpty();
  v126 = v6;
  v128 = v36;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v39 = swift_allocObject();
  *(v39 + 16) = PrimIfNeeded;
  v40 = v39;

  v41 = String.count.getter();
  v108 = v9;
  if (v41 < 1)
  {
    v42 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v42 = RIOPxrTfTokenCreateWithCString();
  }

  v43 = v42;
  RIOPxrUsdPrimSetTypeName();

  v137[4] = &type metadata for Schema;
  v137[5] = &protocol witness table for Schema;
  v137[0] = v40;

  v44 = v116;
  __RKEntityInteractionSpecification.trigger.getter();
  v115 = v24;
  __RKEntityInteractionSpecification.action.getter();
  v45 = *(v26 + 16);
  v119 = v26 + 16;
  v118 = v45;
  v45(v33, v44, v25);
  v46 = (*(v26 + 88))(v33, v25) == *MEMORY[0x277CDAFC8];
  v122 = v26;
  if (!v46)
  {
    v69 = v128;
    v138 = v128;
    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(0x5272656767697254, 0xEB00000000746F6FLL, &v134);
    v70 = v134;
    v71 = v117;
    Stage.setTrigger(trigger:at:mapping:)(v44, &v134, v127, v72);
    v117 = v71;
    if (v71)
    {

      (*(v113 + 8))(v115, v114);
      v73 = *(v122 + 8);
      v73(v44, v25);
      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);

      v73(v33, v25);
      return v40;
    }

    v112 = v40;
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2619891C0;
    *(inited + 32) = RIOPxrUsdObjectCopyPath();
    v91 = KeyPath;
    v92 = v128;
    specialized Properties.subscript.setter(inited, v91);

    (*(v122 + 8))(v33, v25);
    v75 = v117;
LABEL_35:
    v138 = v92;
    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(0x6F526E6F69746341, 0xEA0000000000746FLL, &v134);
    v93 = v134;
    v94 = v115;
    Stage.setAction(action:at:mapping:)(v115, &v134, v127);
    if (v75)
    {
      v40 = v112;

      (*(v113 + 8))(v94, v114);
      (*(v122 + 8))(v116, v25);
      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);
    }

    else
    {
      v95 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v96 = swift_initStackObject();
      *(v96 + 16) = xmmword_2619891C0;
      *(v96 + 32) = RIOPxrUsdObjectCopyPath();
      specialized Properties.subscript.setter(v96, v95);
      v97 = v113;
      v98 = v111;
      v99 = v114;
      (*(v113 + 16))(v111, v94, v114);
      if ((*(v97 + 88))(v98, v99) == *MEMORY[0x277CDAFA0])
      {
        (*(v97 + 96))(v98, v99);
        v117 = 0;
        v100 = v109;
        v101 = v108;
        v102 = v110;
        (*(v109 + 32))(v108, v98, v110);
        v103 = v97;
        v104 = __RKEntityActionGroupArguments.exclusive.getter();
        (*(v100 + 8))(v101, v102);
      }

      else
      {
        (*(v97 + 8))(v98, v99);
        v103 = v97;
        v104 = 0;
      }

      v105 = v116;
      v106 = swift_getKeyPath();
      specialized Properties.subscript.setter(v104 & 1, v106);

      (*(v103 + 8))(v115, v99);
      (*(v122 + 8))(v105, v25);
      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);
      return v112;
    }

    return v40;
  }

  v112 = v40;
  v47 = v117;
  v48 = v26 + 96;
  v49 = (*(v26 + 96))(v33, v25);
  v50 = 0;
  v129 = *v33;
  v138 = MEMORY[0x277D84F90];
  v51 = (v130 + 56);
  v52 = (v130 + 48);
  v124 = (v48 - 64);
  v123 = (v48 - 88);
  v131 = MEMORY[0x277D84F90];
  v130 = v25;
  v53 = v121;
  while (1)
  {
    v54 = *(v129 + 16);
    v55 = v125;
    if (v50 == v54)
    {
      v56 = 1;
    }

    else
    {
      if (v50 >= v54)
      {
        goto LABEL_43;
      }

      v57 = v129 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v50;
      v58 = *(v125 + 48);
      v59 = v25;
      v60 = v120;
      *v120 = v50;
      v118(v60 + v58, v57, v59);
      v61 = v60;
      v25 = v59;
      v53 = v121;
      outlined init with take of (URL, __REAsset)(v61, v121, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtMR);
      v56 = 0;
      ++v50;
    }

    (*v51)(v53, v56, 1, v55);
    outlined init with take of (URL, __REAsset)(v53, v18, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit30__RKEntityTriggerSpecificationO7elementtSgMR);
    if ((*v52)(v18, 1, v55) == 1)
    {
      break;
    }

    v62 = *v18;
    v63 = v18 + *(v55 + 48);
    v64 = v132;
    v49 = (*v124)(v132, v63, v25);
    v134 = 0x5F72656767697254;
    v135 = 0xE800000000000000;
    v136 = v128;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v133 = v62 + 1;
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26670F080](v65);

    SceneDescriptionFoundations.Path.appendingPathComponent(_:)(v134, v135, &v134);

    v66 = v64;
    v67 = v134;
    Stage.setTrigger(trigger:at:mapping:)(v66, &v134, v127, v68);
    if (v47)
    {
      v85 = v112;

      v86 = *v123;
      v87 = v130;
      (*v123)(v132, v130);

      (*(v113 + 8))(v115, v114);
      v88 = v87;
      v40 = v85;
      v86(v116, v88);

      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMd, &_s9RealityIO10PropertiesVyAA14BehaviorSchema_pGMR);

      return v40;
    }

    MEMORY[0x26670F130]();
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v131 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v25 = v130;
    v49 = (*v123)(v132, v130);
    v131 = v138;
  }

  v132 = swift_getKeyPath();
  v49 = v131;
  if (!(v131 >> 62))
  {
    v74 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_21;
  }

LABEL_44:
  v107 = v49;
  v74 = __CocoaSet.count.getter();
  v49 = v107;
LABEL_21:
  v75 = v47;
  if (!v74)
  {

    v79 = MEMORY[0x277D84F90];
LABEL_34:
    specialized Properties.subscript.setter(v79, v132);
    v92 = v128;
    goto LABEL_35;
  }

  v76 = v49;
  v134 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74 & ~(v74 >> 63), 0);
  if ((v74 & 0x8000000000000000) == 0)
  {
    v78 = 0;
    v79 = v134;
    v80 = v76;
    v81 = v76 & 0xC000000000000001;
    do
    {
      if (v81)
      {
        MEMORY[0x26670F670](v78, v80);
      }

      else
      {
      }

      v82 = RIOPxrUsdObjectCopyPath();

      v134 = v79;
      v84 = v79[2];
      v83 = v79[3];
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        v79 = v134;
      }

      ++v78;
      v79[2] = v84 + 1;
      v79[v84 + 4] = v82;
      v25 = v130;
      v80 = v131;
    }

    while (v74 != v78);

    v75 = v47;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t SceneDescriptionFoundations.Path.appendingPathComponent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = RIOPxrSdfPathCopyString();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = v7 == 47 && v9 == 0xE100000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    MEMORY[0x26670F080](47, 0xE100000000000000);
  }

  MEMORY[0x26670F080](a1, a2);
  String.utf8CString.getter();

  v11 = RIOPxrSdfPathCreateFromCString();

  *a3 = v11;
  return result;
}

char *Stage.setTrigger(trigger:at:mapping:)(void *a1, void **a2, uint64_t a3, float a4)
{
  v132 = a3;
  v135 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v5, v7);
  v128 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f32[0] = MEMORY[0x28223BE20](v10, v8);
  v13 = &v127 - v12;
  MEMORY[0x28223BE20](v14, v11);
  v16 = &v127 - v15;
  v134 = type metadata accessor for __RKEntityTriggerSpecification();
  v17 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v18);
  v133 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = RIOPxrTfTokenEmpty();
  v131 = v20;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  type metadata accessor for Prim();
  v23 = swift_allocObject();
  *(v23 + 16) = PrimIfNeeded;

  if (String.count.getter() < 1)
  {
    v24 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v24 = RIOPxrTfTokenCreateWithCString();
  }

  v25 = v24;
  RIOPxrUsdPrimSetTypeName();

  v26 = v133;
  v27 = v134;
  v130 = *(v17 + 16);
  v130(v133, v135, v134);
  v28 = (*(v17 + 88))(v26, v27);
  if (v28 == *MEMORY[0x277CDAFE8])
  {
    (*(v17 + 96))(v26, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v30 = *(v26 + *(v29 + 48));
    v128 = *(v29 + 64);
    v31 = v13;
    v6[4](v13, v26, v5);
    if (*(v132 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v13, v32), (v33 & 1) != 0))
    {
      v34 = RIOPxrUsdObjectCopyPath();
      v138 = &type metadata for Schema;
      v139 = &protocol witness table for Schema;
      v137[0] = v23;
      KeyPath = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v36 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v36 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v36, KeyPath, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v89 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2619891C0;
      *(inited + 32) = v34;
      v91 = v34;
      specialized Properties.subscript.setter(inited, v89);
      v92 = swift_getKeyPath();
      specialized Properties.subscript.setter(COERCE__INT64(v30), 0, v92);

      (v6[1])(v31, v5);
      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA30ProximityToCameraTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA30ProximityToCameraTriggerSchema_pGMR);
      v93 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
      (*(*(v93 - 8) + 8))(v133 + v128, v93);
    }

    else
    {
      v132 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
      swift_allocError();
      v127 = v5;
      v46 = v45;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
      v48 = *(v47 + 48);
      v49 = v23;
      v50 = *(v47 + 64);
      v51 = v131;
      *v46 = v131;
      v130(v46 + v48, v135, v134);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      v52 = v46 + v50;
      v23 = v49;
      v53 = v127;
      v6[2](v52, v31, v127);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v54 = v51;

      (v6[1])(v31, v53);
      v55 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
      (*(*(v55 - 8) + 8))(v133 + v128, v55);
    }

    return v23;
  }

  if (v28 == *MEMORY[0x277CDAFF0])
  {
    (*(v17 + 96))(v26, v27);
    v37 = v128;
    v38 = v26;
    v39 = v5;
    v6[4](v128, v38, v5);
    if (*(v132 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v37, v40), (v41 & 1) != 0))
    {
      v42 = RIOPxrUsdObjectCopyPath();
      v138 = &type metadata for Schema;
      v139 = &protocol witness table for Schema;
      v137[0] = v23;
      v43 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v44 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v44 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v44, v43, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v100 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v101 = swift_initStackObject();
      *(v101 + 16) = xmmword_2619891C0;
      *(v101 + 32) = v42;
      specialized Properties.subscript.setter(v101, v100);
      (v6[1])(v37, v39);
      outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA16TapTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA16TapTriggerSchema_pGMR);
    }

    else
    {
      v132 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
      swift_allocError();
      v68 = v67;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
      v70 = *(v69 + 48);
      v71 = *(v69 + 64);
      v133 = v23;
      v72 = v131;
      *v68 = v131;
      v130(&v68[v70], v135, v134);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      v6[2](&v68[v71], v37, v39);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v73 = v72;
      v23 = v133;

      (v6[1])(v37, v39);
    }

    return v23;
  }

  if (v28 != *MEMORY[0x277CDAFE0])
  {
    if (v28 == *MEMORY[0x277CDAFD8])
    {
      (*(v17 + 96))(v26, v27);
      v74 = *v26;
      v75 = v26[1];
      v138 = &type metadata for Schema;
      v139 = &protocol witness table for Schema;
      v137[0] = v23;
      v76 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v77 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v77 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v77, v76, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v102 = swift_getKeyPath();
      specialized Properties.subscript.setter(v74, v75, v102);
      v103 = &_s9RealityIO10PropertiesVyAA25NotificationTriggerSchema_pGMd;
      v104 = &_s9RealityIO10PropertiesVyAA25NotificationTriggerSchema_pGMR;
    }

    else
    {
      if (v28 != *MEMORY[0x277CDAFD0])
      {
        v132 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        swift_allocError();
        v94 = v27;
        v96 = v95;
        v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR) + 48);
        v98 = v131;
        *v96 = v131;
        v130(v96 + v97, v135, v94);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v99 = v98;

        (*(v17 + 8))(v26, v94);
        return v23;
      }

      v138 = &type metadata for Schema;
      v139 = &protocol witness table for Schema;
      v137[0] = v23;
      v87 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v88 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v88 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v88, v87, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v108 = swift_getKeyPath();
      if (String.count.getter() < 1)
      {
        v109 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v109 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v109, v108, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v103 = &_s9RealityIO10PropertiesVyAA28SceneTransitionTriggerSchema_pGMd;
      v104 = &_s9RealityIO10PropertiesVyAA28SceneTransitionTriggerSchema_pGMR;
    }

    outlined destroy of Any?(v137, v103, v104);
    return v23;
  }

  (*(v17 + 96))(v26, v27);
  v56 = v5;
  v57 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR) + 48));

  v128 = v6;
  v58 = v6[4];
  v127 = v56;
  v58(v16, v26, v56);
  v60 = v132;
  if (!*(v132 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v16, v59), (v61 & 1) == 0))
  {

    v133 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v79 = v78;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v81 = *(v80 + 48);
    v82 = *(v80 + 64);
    v83 = v131;
    *v79 = v131;
    v130(&v79[v81], v135, v134);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    v84 = v128;
    v85 = v127;
    (*(v128 + 16))(&v79[v82], v16, v127);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v86 = v83;

    (*(v84 + 8))(v16, v85);
    return v23;
  }

  v134 = v16;
  v62 = RIOPxrUsdObjectCopyPath();
  MEMORY[0x28223BE20](v62, v63);
  v64 = v131;
  *(&v127 - 4) = v60;
  *(&v127 - 3) = v64;
  *(&v127 - 2) = v135;
  v65 = v129;
  v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4UUIDVG_9RealityIO4PrimCsAE_pTg5(partial apply for closure #1 in Stage.setTrigger(trigger:at:mapping:), (&v127 - 6), v57);
  if (v65)
  {
    (*(v128 + 8))(v134, v127);

    return v23;
  }

  v105 = v66;

  v138 = &type metadata for Schema;
  v139 = &protocol witness table for Schema;
  v137[0] = v23;
  v106 = swift_getKeyPath();

  if (String.count.getter() < 1)
  {
    v107 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v107 = RIOPxrTfTokenCreateWithCString();
  }

  v133 = v23;
  specialized Properties.subscript.setter(v107, v106, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  v111 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_2619891C0;
  *(v112 + 32) = v62;
  v113 = v62;
  specialized Properties.subscript.setter(v112, v111);
  v114 = swift_getKeyPath();
  if (v105 >> 62)
  {
    v115 = __CocoaSet.count.getter();
  }

  else
  {
    v115 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v127;
  if (!v115)
  {

    v117 = MEMORY[0x277D84F90];
LABEL_61:
    specialized Properties.subscript.setter(v117, v114);

    (*(v128 + 8))(v134, v116);
    outlined destroy of Any?(v137, &_s9RealityIO10PropertiesVyAA20CollideTriggerSchema_pGMd, &_s9RealityIO10PropertiesVyAA20CollideTriggerSchema_pGMR);
    return v133;
  }

  v136 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115 & ~(v115 >> 63), 0);
  if ((v115 & 0x8000000000000000) == 0)
  {
    v135 = v113;
    v117 = v136;
    if ((v105 & 0xC000000000000001) != 0)
    {
      v129 = v65;
      for (i = 0; i != v115; ++i)
      {
        MEMORY[0x26670F670](i, v105);
        v119 = RIOPxrUsdObjectCopyPath();
        swift_unknownObjectRelease();
        v136 = v117;
        v121 = *(v117 + 16);
        v120 = *(v117 + 24);
        if (v121 >= v120 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1);
          v117 = v136;
        }

        *(v117 + 16) = v121 + 1;
        *(v117 + 8 * v121 + 32) = v119;
      }
    }

    else
    {
      v122 = 32;
      do
      {
        v123 = RIOPxrUsdObjectCopyPath();
        v136 = v117;
        v125 = *(v117 + 16);
        v124 = *(v117 + 24);
        if (v125 >= v124 >> 1)
        {
          v126 = v123;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1);
          v123 = v126;
          v117 = v136;
        }

        *(v117 + 16) = v125 + 1;
        *(v117 + 8 * v125 + 32) = v123;
        v122 += 8;
        --v115;
      }

      while (v115);
    }

    v116 = v127;
    v113 = v135;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

ValueMetadata *Stage.setAction(action:at:mapping:)(void (**a1)(void *, uint64_t, uint64_t, char *), void **a2, uint64_t a3)
{
  v1063 = a3;
  Description = a1;
  v4 = type metadata accessor for __RKWaitActionArguments();
  v947 = *(v4 - 8);
  v948 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v946 = &v914 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v967 = *(v7 - 8);
  v968 = v7;
  v9.n128_f32[0] = MEMORY[0x28223BE20](v7, v8);
  v956 = &v914 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v9);
  v955 = &v914 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
  v15.n128_f32[0] = MEMORY[0x28223BE20](v13 - 8, v14);
  v965 = &v914 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v15);
  v966 = &v914 - v18;
  v1006 = type metadata accessor for __RKEntityHideActionArguments();
  v1005 = *(v1006 - 8);
  MEMORY[0x28223BE20](v1006, v19);
  v992 = &v914 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v943 = *(v21 - 8);
  v944 = v21;
  v23.n128_f32[0] = MEMORY[0x28223BE20](v21, v22);
  v927 = &v914 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v23);
  v926 = &v914 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
  v29.n128_f32[0] = MEMORY[0x28223BE20](v27 - 8, v28);
  v941 = &v914 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v29);
  v942 = &v914 - v32;
  v988 = type metadata accessor for __RKEntityShowActionArguments();
  v987 = *(v988 - 8);
  MEMORY[0x28223BE20](v988, v33);
  v980 = &v914 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v919 = &v914 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v40.n128_f32[0] = MEMORY[0x28223BE20](v38 - 8, v39);
  v984 = &v914 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.n128_f32[0] = MEMORY[0x28223BE20](v42, v40);
  v962 = &v914 - v44;
  MEMORY[0x28223BE20](v45, v43);
  v938 = &v914 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v49.n128_f32[0] = MEMORY[0x28223BE20](v47 - 8, v48);
  v983 = &v914 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52.n128_f32[0] = MEMORY[0x28223BE20](v51, v49);
  v961 = &v914 - v53;
  MEMORY[0x28223BE20](v54, v52);
  v937 = (&v914 - v55);
  v954 = type metadata accessor for __RKEntityMoveSelection();
  v936 = *(v954 - 8);
  v57.n128_f32[0] = MEMORY[0x28223BE20](v954, v56);
  v924 = &v914 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.n128_f32[0] = MEMORY[0x28223BE20](v59, v57);
  v934 = &v914 - v61;
  MEMORY[0x28223BE20](v62, v60);
  v935 = &v914 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
  v66.n128_f32[0] = MEMORY[0x28223BE20](v64 - 8, v65);
  v933 = &v914 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v66);
  v945 = &v914 - v69;
  v70 = type metadata accessor for __RKEntityTransformActionArguments();
  v974 = *(v70 - 8);
  v975 = v70;
  MEMORY[0x28223BE20](v70, v71);
  v969 = &v914 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments();
  v977 = *(started - 8);
  v74.n128_f32[0] = MEMORY[0x28223BE20](started, v73);
  v76 = &v914 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v74);
  v981 = &v914 - v78;
  v79 = type metadata accessor for __RKEntitySpinActionArguments();
  v921 = *(v79 - 8);
  v922 = v79;
  MEMORY[0x28223BE20](v79, v80);
  v923 = &v914 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v84.n128_f32[0] = MEMORY[0x28223BE20](v82 - 8, v83);
  v914 = &v914 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86, v84);
  v915 = &v914 - v87;
  v930 = type metadata accessor for __RKEntityOrbitEntityActionArguments();
  v949 = *(v930 - 8);
  MEMORY[0x28223BE20](v930, v88);
  v952 = &v914 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1046 = type metadata accessor for __RKEntityCustomActionArguments();
  v1045 = *(v1046 - 8);
  MEMORY[0x28223BE20](v1046, v90);
  v1044 = &v914 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v925 = type metadata accessor for __RKEntityLookAtCameraActionArguments();
  v929 = *(v925 - 8);
  MEMORY[0x28223BE20](v925, v92);
  v939 = &v914 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v986 = type metadata accessor for __RKEntityForceActionArguments();
  v991 = *(v986 - 8);
  MEMORY[0x28223BE20](v986, v94);
  v993 = &v914 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1053 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
  v1004 = *(v1053 - 8);
  MEMORY[0x28223BE20](v1053, v96);
  v1043 = (&v914 - v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
  v100.n128_f32[0] = MEMORY[0x28223BE20](v98 - 8, v99);
  v1047 = (&v914 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v102, v100);
  v1055 = (&v914 - v103);
  v998 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v996 = *(v998 - 8);
  MEMORY[0x28223BE20](v998, v104);
  v997 = &v914 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  v108.n128_f32[0] = MEMORY[0x28223BE20](v106 - 8, v107);
  v995 = &v914 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110, v108);
  v1002 = &v914 - v111;
  v1000 = type metadata accessor for __RKEntityActionAnimationStyle();
  v999 = *(v1000 - 8);
  v113.n128_f32[0] = MEMORY[0x28223BE20](v1000, v112);
  v982 = &v914 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116.n128_f32[0] = MEMORY[0x28223BE20](v115, v113);
  v960 = &v914 - v117;
  MEMORY[0x28223BE20](v118, v116);
  v989 = &v914 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  v122.n128_f32[0] = MEMORY[0x28223BE20](v120 - 8, v121);
  v964 = &v914 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125.n128_f32[0] = MEMORY[0x28223BE20](v124, v122);
  v976 = &v914 - v126;
  v128.n128_f32[0] = MEMORY[0x28223BE20](v127, v125);
  v940 = &v914 - v129;
  v131.n128_f32[0] = MEMORY[0x28223BE20](v130, v128);
  v953 = &v914 - v132;
  v134.n128_f32[0] = MEMORY[0x28223BE20](v133, v131);
  v994 = &v914 - v135;
  MEMORY[0x28223BE20](v136, v134);
  v1001 = &v914 - v137;
  v1032 = type metadata accessor for __RKEntityEmphasisActionArguments();
  v1031 = *(v1032 - 8);
  MEMORY[0x28223BE20](v1032, v138);
  v1038 = &v914 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1052 = type metadata accessor for __RKChangeSceneActionArguments();
  v1051 = *(v1052 - 8);
  MEMORY[0x28223BE20](v1052, v140);
  v1050 = &v914 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1036 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v1037 = *(v1036 - 8);
  v143.n128_f32[0] = MEMORY[0x28223BE20](v1036, v142);
  v950 = &v914 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146.n128_f32[0] = MEMORY[0x28223BE20](v145, v143);
  v951 = &v914 - v147;
  v149.n128_f32[0] = MEMORY[0x28223BE20](v148, v146);
  v972 = &v914 - v150;
  v152.n128_f32[0] = MEMORY[0x28223BE20](v151, v149);
  v1012 = &v914 - v153;
  v155.n128_f32[0] = MEMORY[0x28223BE20](v154, v152);
  v1030 = &v914 - v156;
  MEMORY[0x28223BE20](v157, v155);
  v1029 = &v914 - v158;
  v1048 = type metadata accessor for __RKAudioSpatialModeSelection();
  v1042 = *(v1048 - 8);
  v160.n128_f32[0] = MEMORY[0x28223BE20](v1048, v159);
  v1011 = &v914 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163.n128_f32[0] = MEMORY[0x28223BE20](v162, v160);
  v1027 = &v914 - v164;
  MEMORY[0x28223BE20](v165, v163);
  v1026 = &v914 - v166;
  v1035 = type metadata accessor for __RKEntityAudioActionType();
  v1034 = *(v1035 - 8);
  MEMORY[0x28223BE20](v1035, v167);
  v1024 = &v914 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1015 = type metadata accessor for __RKEntityGroupActionOrder();
  v1021 = *(v1015 - 8);
  v170.n128_f32[0] = MEMORY[0x28223BE20](v1015, v169);
  v1003 = &v914 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173.n128_f32[0] = MEMORY[0x28223BE20](v172, v170);
  v1014 = &v914 - v174;
  MEMORY[0x28223BE20](v175, v173);
  v1009 = &v914 - v176;
  v1022 = type metadata accessor for __RKEntityActionGroupArguments();
  v1033 = *(v1022 - 8);
  v178.n128_f32[0] = MEMORY[0x28223BE20](v1022, v177);
  v963 = &v914 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181.n128_f32[0] = MEMORY[0x28223BE20](v180, v178);
  v1013 = &v914 - v182;
  MEMORY[0x28223BE20](v183, v181);
  v1010 = &v914 - v184;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
  v187.n128_f32[0] = MEMORY[0x28223BE20](v185 - 8, v186);
  v1028 = &v914 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.n128_f32[0] = MEMORY[0x28223BE20](v189, v187);
  v1041 = &v914 - v191;
  MEMORY[0x28223BE20](v192, v190);
  v1008 = &v914 - v193;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
  v196.n128_f32[0] = MEMORY[0x28223BE20](v194 - 8, v195);
  v1025 = &v914 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199.n128_f32[0] = MEMORY[0x28223BE20](v198, v196);
  v1040 = &v914 - v200;
  MEMORY[0x28223BE20](v201, v199);
  v1020 = &v914 - v202;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
  v205.n128_f32[0] = MEMORY[0x28223BE20](v203 - 8, v204);
  v1023 = &v914 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208.n128_f32[0] = MEMORY[0x28223BE20](v207, v205);
  v1039 = &v914 - v209;
  MEMORY[0x28223BE20](v210, v208);
  v1019 = &v914 - v211;
  v1060 = type metadata accessor for UUID();
  v1059 = *(v1060 - 1);
  v213.n128_f32[0] = MEMORY[0x28223BE20](v1060, v212);
  v990 = &v914 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216.n128_f32[0] = MEMORY[0x28223BE20](v215, v213);
  v978 = &v914 - v217;
  v219.n128_f32[0] = MEMORY[0x28223BE20](v218, v216);
  v918 = &v914 - v220;
  v222.n128_f32[0] = MEMORY[0x28223BE20](v221, v219);
  v958 = &v914 - v223;
  v225.n128_f32[0] = MEMORY[0x28223BE20](v224, v222);
  v957 = &v914 - v226;
  v228.n128_f32[0] = MEMORY[0x28223BE20](v227, v225);
  v970 = &v914 - v229;
  v231.n128_f32[0] = MEMORY[0x28223BE20](v230, v228);
  v916 = &v914 - v232;
  v234.n128_f32[0] = MEMORY[0x28223BE20](v233, v231);
  v917 = &v914 - v235;
  v237.n128_f32[0] = MEMORY[0x28223BE20](v236, v234);
  v928 = &v914 - v238;
  v240.n128_f32[0] = MEMORY[0x28223BE20](v239, v237);
  v242 = &v914 - v241;
  v244.n128_f32[0] = MEMORY[0x28223BE20](v243, v240);
  v920 = &v914 - v245;
  v247.n128_f32[0] = MEMORY[0x28223BE20](v246, v244);
  v985 = &v914 - v248;
  v250.n128_f32[0] = MEMORY[0x28223BE20](v249, v247);
  v252 = &v914 - v251;
  v254.n128_f32[0] = MEMORY[0x28223BE20](v253, v250);
  v256 = &v914 - v255;
  v258.n128_f32[0] = MEMORY[0x28223BE20](v257, v254);
  v1018 = &v914 - v259;
  MEMORY[0x28223BE20](v260, v258);
  v262 = &v914 - v261;
  v1061 = type metadata accessor for __RKEntityAudioActionArguments();
  v1054 = *(v1061 - 1);
  v264.n128_f32[0] = MEMORY[0x28223BE20](v1061, v263);
  v1017 = &v914 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v266, v264);
  i = &v914 - v267;
  *&v1068.f64[0] = type metadata accessor for __RKEntityActionSpecification();
  v1066.f64[0] = *(*&v1068.f64[0] - 8);
  v269.n128_f32[0] = MEMORY[0x28223BE20](*&v1068.f64[0], v268);
  v959 = (&v914 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0));
  v272.n128_f32[0] = MEMORY[0x28223BE20](v271, v269);
  v971 = (&v914 - v273);
  v275.n128_f32[0] = MEMORY[0x28223BE20](v274, v272);
  v1049 = (&v914 - v276);
  v278.n128_f32[0] = MEMORY[0x28223BE20](v277, v275);
  v1007 = (&v914 - v279);
  v281.n128_f32[0] = MEMORY[0x28223BE20](v280, v278);
  v1016 = &v914 - v282;
  MEMORY[0x28223BE20](v283, v281);
  v285 = &v914 - v284;
  v286 = *a2;
  v287 = RIOPxrTfTokenEmpty();
  v932 = *(v1064 + 16);
  v1062 = v286;
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  v931 = type metadata accessor for Prim();
  v289 = swift_allocObject();
  *(v289 + 16) = PrimIfNeeded;
  v290 = v289;

  v291 = String.count.getter();
  v973 = v76;
  if (v291 < 1)
  {
    v292 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v292 = RIOPxrTfTokenCreateWithCString();
  }

  v293 = v292;
  v1067 = v290;
  RIOPxrUsdPrimSetTypeName();

  v294 = v1066.f64[0];
  v295 = *(*&v1066.f64[0] + 16);
  v296 = v1068.f64[0];
  v1058 = (*&v1066.f64[0] + 16);
  v1057 = v295;
  v295(v285, Description, *&v1068.f64[0]);
  v297 = (*(*&v294 + 88))(v285, COERCE_FLOAT64_T(*&v296));
  v298 = v297;
  if (v297 != *MEMORY[0x277CDAF90])
  {
    if (v297 == *MEMORY[0x277CDAF48])
    {
      v328 = v1068.f64[0];
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      (*(v1051 + 32))(v1050, v285, v1052);
      __RKChangeSceneActionArguments.targetSceneIdentifier.getter();
      v308 = v1067;
      if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v256, v329), (v330 & 1) == 0))
      {
        (*(v1059 + 8))(v256, v1060);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v349 = swift_allocError();
        v351 = v350;
        v352 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v353 = v1062;
        *v351 = v1062;
        v1057(&v351[v352], Description, *&v328);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v354 = v353;
        v355 = v1050;
        __RKChangeSceneActionArguments.targetSceneIdentifier.getter();
        swift_storeEnumTagMultiPayload();
        v1069 = v349;
        swift_willThrow();

        (*(v1051 + 8))(v355, v1052);
        return v308;
      }

      v331 = *(v1059 + 8);

      v331(v256, v1060);
      v332 = RIOPxrUsdObjectCopyPath();

      v1080 = &protocol witness table for Schema;
      v1079 = &type metadata for Schema;
      v1077 = v308;
      KeyPath = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v334 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v334 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v334, KeyPath, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v410 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v411 = swift_allocObject();
      *(v411 + 16) = xmmword_2619891C0;
      *(v411 + 32) = v332;
      specialized Properties.subscript.setter(v411, v410);
      (*(v1051 + 8))(v1050, v1052);
      v412 = &_s9RealityIO10PropertiesVyAA23ChangeSceneActionSchema_pGMd;
      v413 = &_s9RealityIO10PropertiesVyAA23ChangeSceneActionSchema_pGMR;
LABEL_162:
      outlined destroy of Any?(&v1077, v412, v413);
      return v308;
    }

    v308 = v1067;
    if (v297 == *MEMORY[0x277CDAFA8])
    {
      v341 = v1068.f64[0];
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      v342 = (*(v1045 + 32))(v1044, v285, v1046);
      MEMORY[0x26670E2D0](v342);
      if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v242, v343), (v344 & 1) == 0))
      {
        (*(v1059 + 8))(v242, v1060);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v367 = swift_allocError();
        v369 = v368;
        v370 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v371 = v1062;
        *v369 = v1062;
        v1057(&v369[v370], Description, *&v341);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v372 = v371;
        v373 = v1044;
        MEMORY[0x26670E2D0](v372);
        swift_storeEnumTagMultiPayload();
        v1069 = v367;
        swift_willThrow();

        (*(v1045 + 8))(v373, v1046);
        return v308;
      }

      v345 = *(v1059 + 8);

      v345(v242, v1060);
      v346 = RIOPxrUsdObjectCopyPath();

      v1080 = &protocol witness table for Schema;
      v1079 = &type metadata for Schema;
      v1077 = v308;
      v347 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v348 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v348 = RIOPxrTfTokenCreateWithCString();
      }

      specialized Properties.subscript.setter(v348, v347, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v444 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v445 = swift_allocObject();
      *(v445 + 16) = xmmword_2619891C0;
      *(v445 + 32) = v346;
      v446 = v346;
      specialized Properties.subscript.setter(v445, v444);
      v447 = swift_getKeyPath();
      v448 = v1044;
      v449 = __RKEntityCustomActionArguments.actionIdentifier.getter();
      specialized Properties.subscript.setter(v449, v450, v447);

      (*(v1045 + 8))(v448, v1046);
      v412 = &_s9RealityIO10PropertiesVyAA24NotificationActionSchema_pGMd;
      v413 = &_s9RealityIO10PropertiesVyAA24NotificationActionSchema_pGMR;
      goto LABEL_162;
    }

    if (v297 == *MEMORY[0x277CDAFB0])
    {
      v308 = *&v1068.f64[0];
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      v356 = (*(v1031 + 32))(v1038, v285, v1032);
      MEMORY[0x26670E350](v356);
      if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v252, v357), (v358 & 1) == 0))
      {
        (*(v1059 + 8))(v252, v1060);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v393 = swift_allocError();
        v395 = v394;
        v396 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v397 = v1062;
        *v395 = v1062;
        v1057(&v395[v396], Description, v308);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v398 = v397;
        v399 = v1038;
        MEMORY[0x26670E350](v398);
        swift_storeEnumTagMultiPayload();
        v1069 = v393;
        swift_willThrow();

        (*(v1031 + 8))(v399, v1032);
        return v308;
      }

      v359 = *(v1059 + 8);

      v359(v252, v1060);
      v360 = RIOPxrUsdObjectCopyPath();

      v1080 = &protocol witness table for Schema;
      v1079 = &type metadata for Schema;
      v308 = v1067;
      v1077 = v1067;
      v361 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v362 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v362 = RIOPxrTfTokenCreateWithCString();
      }

      v527 = v1000;
      v528 = v999;
      v529 = v997;
      specialized Properties.subscript.setter(v362, v361, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v530 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v531 = swift_allocObject();
      *(v531 + 16) = xmmword_2619891C0;
      *(v531 + 32) = v360;
      *&v1068.f64[0] = v360;
      specialized Properties.subscript.setter(v531, v530);
      v532 = swift_getKeyPath();
      v533 = __RKEntityEmphasisActionArguments.duration.getter();
      v534 = BYTE4(v533) & 1;
      if ((v533 & 0x100000000) != 0)
      {
        v535 = 0.0;
      }

      else
      {
        v535 = *&v533;
      }

      specialized Properties.subscript.setter(*&v535, v534, v532);
      v536 = swift_getKeyPath();
      v537 = v1001;
      __RKEntityEmphasisActionArguments.animationStyle.getter();
      v538 = v994;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v537, v994, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
      if ((*(v528 + 48))(v538, 1, v527) == 1)
      {
        outlined destroy of Any?(v537, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v539 = 0;
      }

      else
      {
        v540 = v989;
        (*(v528 + 32))(v989, v538, v527);
        __RKEntityActionAnimationStyle.rawValue.getter();
        v541 = (v528 + 8);
        if (String.count.getter() < 1)
        {

          v542 = RIOPxrTfTokenEmpty();
          (*v541)(v540, v527);
          outlined destroy of Any?(v1001, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v542 = RIOPxrTfTokenCreateWithCString();
          (*v541)(v540, v527);
          outlined destroy of Any?(v1001, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        v539 = v542;
      }

      specialized Properties.subscript.setter(v539, v536, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v573 = swift_getKeyPath();
      v574 = v1002;
      __RKEntityEmphasisActionArguments.emphasisAnimationType.getter();
      v575 = v995;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v574, v995, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
      v576 = v996;
      v577 = v998;
      if ((*(v996 + 48))(v575, 1, v998) == 1)
      {
        outlined destroy of Any?(v574, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        v578 = 0;
      }

      else
      {
        (*(v576 + 32))(v529, v575, v577);
        __RKEntityEmphasisAnimationType.rawValue.getter();
        v579 = (v576 + 8);
        if (String.count.getter() < 1)
        {

          v580 = RIOPxrTfTokenEmpty();
          (*v579)(v529, v577);
          outlined destroy of Any?(v1002, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v580 = RIOPxrTfTokenCreateWithCString();
          (*v579)(v529, v577);
          outlined destroy of Any?(v1002, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
        }

        v578 = v580;
      }

      specialized Properties.subscript.setter(v578, v573, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);

      (*(v1031 + 8))(v1038, v1032);
      v412 = &_s9RealityIO10PropertiesVyAA20EmphasisActionSchema_pGMd;
      v413 = &_s9RealityIO10PropertiesVyAA20EmphasisActionSchema_pGMR;
      goto LABEL_162;
    }

    v374 = *MEMORY[0x277CDAFA0];
    v375 = *&v1066.f64[0];
    if (v297 == v374)
    {
      v376 = v1068.f64[0];
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      (*(v1033 + 32))(v1013, v285, v1022);
      v1080 = &protocol witness table for Schema;
      v1079 = &type metadata for Schema;
      v1077 = v308;
      v377 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v378 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v378 = RIOPxrTfTokenCreateWithCString();
      }

      v285 = v1053;
      v308 = v1015;
      specialized Properties.subscript.setter(v378, v377, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v470 = swift_getKeyPath();
      v471 = v1014;
      __RKEntityActionGroupArguments.order.getter();
      v472 = v1021;
      v473 = v1003;
      (*(v1021 + 16))(v1003, v471, v308);
      v474 = (*(v472 + 88))(v473, v308);
      if (v474 != *MEMORY[0x277CDAEF8] && v474 != *MEMORY[0x277CDAF00])
      {
        goto LABEL_349;
      }

      v475 = v1066.f64[0];
      (*(v1021 + 8))(v1014, v308);
      if (String.count.getter() < 1)
      {

        v477 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();

        v476 = RIOPxrTfTokenCreateWithCString();

        v477 = v476;
      }

      specialized Properties.subscript.setter(v477, v470, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v478 = swift_getKeyPath();
      v479 = __RKEntityActionGroupArguments.loopCount.getter();
      if (v480)
      {
        goto LABEL_348;
      }

      specialized Properties.subscript.setter(v479 == 0, v478);
      v298 = swift_getKeyPath();
      v481 = __RKEntityActionGroupArguments.loopCount.getter();
      specialized Properties.subscript.setter(v481, v482 & 1, v298);
      v483 = MEMORY[0x277D84F90];
      v1075 = MEMORY[0x277D84F90];
      v484 = 0;
      v1054 = __RKEntityActionGroupArguments.actions.getter();
      v485 = *(v1054 + 16);
      Description = (v1004 + 56);
      v1061 = (v1004 + 48);
      v1060 = (*&v475 + 32);
      v1059 = *&v475 + 8;
      v375 = v1047;
      for (i = v485; ; v485 = i)
      {
        v486 = v1055;
        if (v484 == v485)
        {
          v487 = 1;
          v484 = v485;
          v308 = v1067;
        }

        else
        {
          if ((v484 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

          v375 = v1067;
          if (v484 >= *(v1054 + 16))
          {
            goto LABEL_233;
          }

          v488 = v1054 + ((*(*&v1066.f64[0] + 80) + 32) & ~*(*&v1066.f64[0] + 80)) + *(*&v1066.f64[0] + 72) * v484;
          v489 = *(v285 + 12);
          v490 = v1043;
          *v1043 = v484;
          v1057(v490 + v489, v488, *&v376);
          v491 = v490;
          v308 = v375;
          v375 = v1047;
          outlined init with take of (URL, __REAsset)(v491, v1047, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtMR);
          v487 = 0;
          ++v484;
          v486 = v1055;
        }

        (*Description)(v375, v487, 1, v285);
        outlined init with take of (URL, __REAsset)(v375, v486, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMd, &_sSi6offset_10RealityKit29__RKEntityActionSpecificationO7elementtSgMR);
        v298 = v483;
        if ((*v1061)(v486, 1, v285) == 1)
        {
          break;
        }

        v308 = *v486;
        v492 = v1049;
        (*v1060)(v1049, v486 + *(v285 + 12), COERCE_FLOAT64_T(*&v376));
        v493 = RIOPxrSdfPathCopyString();
        v494 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v496 = v495;

        v1071 = 0x5F6E6F697463412FLL;
        v1072 = 0xE800000000000000;
        if (__OFADD__(v308, 1))
        {
          __break(1u);
          goto LABEL_218;
        }

        v1070 = &v308->Kind + 1;
        v497 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26670F080](v497);

        v498 = v1071;
        v308 = v1072;
        v1071 = v494;
        v1072 = v496;

        MEMORY[0x26670F080](v498, v308);

        String.utf8CString.getter();

        v499 = RIOPxrSdfPathCreateFromCString();

        v1071 = v499;
        v500 = v1069;
        Stage.setAction(action:at:mapping:)(v492, &v1071, v1063);
        v1069 = v500;
        if (v500)
        {

          (*v1059)(v492, *&v1068.f64[0]);
          (*(v1033 + 8))(v1013, v1022);

          outlined destroy of Any?(&v1077, &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMR);

          return v308;
        }

        MEMORY[0x26670F130]();
        if (*((v1075 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1075 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v308 = *((v1075 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v492 = v1049;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v376 = v1068.f64[0];
        (*v1059)(v492, *&v1068.f64[0]);
        v483 = v1075;
        v285 = v1053;
      }

      v501 = swift_getKeyPath();
      if (v483 >> 62)
      {
        v502 = __CocoaSet.count.getter();
        v503 = v1033;
        if (v502)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v502 = *((v483 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v503 = v1033;
        if (v502)
        {
LABEL_107:
          *&v1066.f64[0] = v501;
          v1071 = MEMORY[0x277D84F90];
          v504 = &v1071;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v502 & ~(v502 >> 63), 0);
          if ((v502 & 0x8000000000000000) == 0)
          {
            v506 = 0;
            v507 = v1071;
            *&v1068.f64[0] = v483 & 0xC000000000000001;
            do
            {
              if (*&v1068.f64[0])
              {
                MEMORY[0x26670F670](v506, v483);
              }

              else
              {
              }

              v508 = RIOPxrUsdObjectCopyPath();

              v1071 = v507;
              v510 = v507[2];
              v509 = v507[3];
              if (v510 >= v509 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v509 > 1), v510 + 1, 1);
                v507 = v1071;
              }

              ++v506;
              v507[2] = v510 + 1;
              v507[v510 + 4] = v508;
              v308 = v1067;
              v483 = v298;
            }

            while (v502 != v506);

            v503 = v1033;
            v501 = *&v1066.f64[0];
            goto LABEL_331;
          }

          __break(1u);
          goto LABEL_343;
        }
      }

      v507 = MEMORY[0x277D84F90];
LABEL_331:
      specialized Properties.subscript.setter(v507, v501);
      (*(v503 + 1))(v1013, v1022);
      v412 = &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMd;
      v413 = &_s9RealityIO10PropertiesVyAA17GroupActionSchema_pGMR;
      goto LABEL_162;
    }

    if (v297 == *MEMORY[0x277CDAF70])
    {
      v400 = v1068.f64[0];
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      v401 = v992;
      v402 = (*(v1005 + 32))(v992, v285, v1006);
      v403 = v990;
      MEMORY[0x26670DFC0](v402);
      if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v403, v404), (v405 & 1) == 0))
      {
        (*(v1059 + 8))(v403, v1060);
        v1069 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v511 = swift_allocError();
        v513 = v512;
        v514 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v515 = v401;
        v516 = v1062;
        *v513 = v1062;
        v1057(&v513[v514], Description, *&v400);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        MEMORY[0x26670DFC0](v516);
        swift_storeEnumTagMultiPayload();
        v1069 = v511;
        swift_willThrow();

        (*(v1005 + 8))(v515, v1006);
        return v308;
      }

      v406 = *(v1059 + 8);

      v406(v403, v1060);
      v407 = RIOPxrUsdObjectCopyPath();

      v1080 = &protocol witness table for Schema;
      v1079 = &type metadata for Schema;
      v1077 = v308;
      v408 = swift_getKeyPath();

      if (String.count.getter() < 1)
      {
        v409 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v409 = RIOPxrTfTokenCreateWithCString();
      }

      v606 = v1000;
      specialized Properties.subscript.setter(v409, v408, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v607 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
      v608 = swift_allocObject();
      *(v608 + 16) = xmmword_2619891C0;
      *(v608 + 32) = v407;
      *&v1068.f64[0] = v407;
      specialized Properties.subscript.setter(v608, v607);
      v609 = swift_getKeyPath();
      v610 = __RKEntityHideActionArguments.duration.getter();
      v611 = BYTE4(v610) & 1;
      if ((v610 & 0x100000000) != 0)
      {
        v612 = 0.0;
      }

      else
      {
        v612 = *&v610;
      }

      specialized Properties.subscript.setter(*&v612, v611, v609);
      v613 = swift_getKeyPath();
      if (String.count.getter() < 1)
      {
        v614 = RIOPxrTfTokenEmpty();
      }

      else
      {
        v614 = RIOPxrTfTokenCreateWithCString();
      }

      v615 = v984;
      v616 = v982;
      specialized Properties.subscript.setter(v614, v613, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v617 = v983;
      __RKEntityHideActionArguments.ease.getter();
      __RKEntityHideActionArguments.easeType.getter();
      v618 = v1069;
      setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v617, v615, v308, v1062, Description);
      v1069 = v618;
      if (v618)
      {

        outlined destroy of Any?(v615, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
        outlined destroy of Any?(v617, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
        (*(v1005 + 8))(v401, v1006);
LABEL_161:
        v412 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMd;
        v413 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMR;
        goto LABEL_162;
      }

      outlined destroy of Any?(v615, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
      outlined destroy of Any?(v617, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
      *&v1066.f64[0] = swift_getKeyPath();
      v620 = v976;
      __RKEntityHideActionArguments.animationStyle.getter();
      v621 = v620;
      v622 = v964;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v620, v964, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
      v623 = v999;
      if ((*(v999 + 48))(v622, 1, v606) == 1)
      {
        outlined destroy of Any?(v621, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v624 = 0;
      }

      else
      {
        (*(v623 + 32))(v616, v622, v606);
        __RKEntityActionAnimationStyle.rawValue.getter();
        v643 = (v623 + 8);
        if (String.count.getter() < 1)
        {

          v644 = RIOPxrTfTokenEmpty();
          (*v643)(v616, v606);
          outlined destroy of Any?(v976, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        else
        {
          String.utf8CString.getter();

          v644 = RIOPxrTfTokenCreateWithCString();
          (*v643)(v616, v606);
          outlined destroy of Any?(v976, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        }

        v624 = v644;
        v401 = v992;
      }

      specialized Properties.subscript.setter(v624, *&v1066.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      *&v1066.f64[0] = swift_getKeyPath();
      v690 = v966;
      __RKEntityHideActionArguments.buildOutAnimationType.getter();
      v691 = v690;
      v692 = v965;
      outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v690, v965, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
      v694 = v967;
      v693 = v968;
      if ((*(v967 + 48))(v692, 1, v968) == 1)
      {
        outlined destroy of Any?(v690, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
        v695 = 0;
      }

      else
      {
        v696 = v955;
        (*(v694 + 32))(v955, v692, v693);
        v697 = v691;
        v698 = v956;
        (*(v694 + 16))(v956, v696, v693);
        LOBYTE(v698) = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(v698);
        (*(v694 + 8))(v696, v693);
        outlined destroy of Any?(v697, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
        __RKEntityActionVisibilityTypeUSD.rawValue.getter(v698);
        if (String.count.getter() <= 0)
        {

          v695 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();

          v699 = RIOPxrTfTokenCreateWithCString();

          v695 = v699;
        }
      }

      specialized Properties.subscript.setter(v695, *&v1066.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
      v700 = swift_getKeyPath();
      v701 = __RKEntityHideActionArguments.distance.getter();
      v702 = BYTE4(v701) & 1;
      if ((v701 & 0x100000000) != 0)
      {
        v703 = 0.0;
      }

      else
      {
        v703 = *&v701;
      }

      specialized Properties.subscript.setter(*&v703, v702, v700);

      (*(v1005 + 8))(v401, v1006);
      goto LABEL_211;
    }

    if (v297 == *MEMORY[0x277CDAF98])
    {
      (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
      v435 = v986;
      v436 = (*(v991 + 32))(v993, v285, v986);
      v437 = v985;
      MEMORY[0x26670E270](v436);
      if (*(v1063 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v437, v438);
        if (v439)
        {
          v440 = *(v1059 + 8);

          v440(v437, v1060);
          v441 = RIOPxrUsdObjectCopyPath();

          v1080 = &protocol witness table for Schema;
          v1079 = &type metadata for Schema;
          v1077 = v308;
          v442 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v443 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v443 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v443, v442, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          v634 = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v635 = swift_allocObject();
          *(v635 + 16) = xmmword_2619891C0;
          *(v635 + 32) = v441;
          v636 = v441;
          specialized Properties.subscript.setter(v635, v634);
          v637 = swift_getKeyPath();
          v638 = __RKEntityForceActionArguments.velocity.getter();
          if (v640)
          {
            v641 = 0uLL;
            v642 = 0.0;
          }

          else
          {
            v641 = vcvtq_f64_f32(v638);
            v642 = v639;
          }

          v1081 = v641;
          v1082 = v642;
          v1083 = 0;
          v1084 = v640 & 1;
          specialized Properties.subscript.setter(&v1081, v637);

          (*(v991 + 8))(v993, v435);
          v412 = &_s9RealityIO10PropertiesVyAA19ImpulseActionSchema_pGMd;
          v413 = &_s9RealityIO10PropertiesVyAA19ImpulseActionSchema_pGMR;
          goto LABEL_162;
        }
      }

      (*(v1059 + 8))(v437, v1060);
      type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
      lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
      v547 = swift_allocError();
      v549 = v548;
      v550 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
      v551 = v1062;
      *v549 = v1062;
      v1057(&v549[v550], Description, *&v1068.f64[0]);
      type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
      swift_storeEnumTagMultiPayload();
      v552 = v551;
      v553 = v993;
      MEMORY[0x26670E270](v552);
      swift_storeEnumTagMultiPayload();
      v1069 = v547;
      swift_willThrow();

      v554 = v991;
    }

    else
    {
      if (v297 == *MEMORY[0x277CDAF78])
      {
        v517 = v1068.f64[0];
        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v518 = v980;
        v519 = (*(v987 + 32))(v980, v285, v988);
        v520 = v978;
        MEMORY[0x26670E050](v519);
        if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v520, v521), (v522 & 1) == 0))
        {
          (*(v1059 + 8))(v520, v1060);
          v1069 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
          v581 = swift_allocError();
          v583 = v582;
          v584 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
          v585 = v518;
          v586 = v1062;
          *v583 = v1062;
          v1057(&v583[v584], Description, *&v517);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E050](v586);
          swift_storeEnumTagMultiPayload();
          v1069 = v581;
          swift_willThrow();

          (*(v987 + 8))(v585, v988);
          return v308;
        }

        v523 = *(v1059 + 8);

        v523(v520, v1060);
        v524 = RIOPxrUsdObjectCopyPath();

        v1080 = &protocol witness table for Schema;
        v1079 = &type metadata for Schema;
        v1077 = v308;
        v525 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
          v526 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v526 = RIOPxrTfTokenCreateWithCString();
        }

        v664 = v1000;
        specialized Properties.subscript.setter(v526, v525, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v665 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
        v666 = swift_allocObject();
        *(v666 + 16) = xmmword_2619891C0;
        *(v666 + 32) = v524;
        *&v1068.f64[0] = v524;
        specialized Properties.subscript.setter(v666, v665);
        v667 = swift_getKeyPath();
        v668 = __RKEntityShowActionArguments.duration.getter();
        v669 = BYTE4(v668) & 1;
        if ((v668 & 0x100000000) != 0)
        {
          v670 = 0.0;
        }

        else
        {
          v670 = *&v668;
        }

        specialized Properties.subscript.setter(*&v670, v669, v667);
        v671 = swift_getKeyPath();
        if (String.count.getter() < 1)
        {
          v672 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v672 = RIOPxrTfTokenCreateWithCString();
        }

        v673 = v962;
        v674 = v960;
        specialized Properties.subscript.setter(v672, v671, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v675 = v961;
        __RKEntityShowActionArguments.ease.getter();
        __RKEntityShowActionArguments.easeType.getter();
        v676 = v1069;
        setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v675, v673, v308, v1062, Description);
        v1069 = v676;
        if (v676)
        {

          outlined destroy of Any?(v673, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
          outlined destroy of Any?(v675, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
          (*(v987 + 8))(v518, v988);
          goto LABEL_161;
        }

        outlined destroy of Any?(v673, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
        outlined destroy of Any?(v675, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
        *&v1066.f64[0] = swift_getKeyPath();
        v677 = v953;
        __RKEntityShowActionArguments.animationStyle.getter();
        v678 = v677;
        v679 = v940;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v677, v940, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
        v680 = v999;
        if ((*(v999 + 48))(v679, 1, v664) == 1)
        {
          outlined destroy of Any?(v678, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          v681 = 0;
        }

        else
        {
          (*(v680 + 32))(v674, v679, v664);
          __RKEntityActionAnimationStyle.rawValue.getter();
          v722 = (v680 + 8);
          if (String.count.getter() < 1)
          {

            v723 = RIOPxrTfTokenEmpty();
            (*v722)(v674, v664);
            outlined destroy of Any?(v953, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          }

          else
          {
            String.utf8CString.getter();

            v723 = RIOPxrTfTokenCreateWithCString();
            (*v722)(v674, v664);
            outlined destroy of Any?(v953, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
          }

          v681 = v723;
          v518 = v980;
        }

        specialized Properties.subscript.setter(v681, *&v1066.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        *&v1066.f64[0] = swift_getKeyPath();
        v762 = v942;
        __RKEntityShowActionArguments.buildInAnimationType.getter();
        v763 = v762;
        v764 = v941;
        outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v762, v941, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
        v766 = v943;
        v765 = v944;
        if ((*(v943 + 48))(v764, 1, v944) == 1)
        {
          outlined destroy of Any?(v762, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
          v767 = 0;
        }

        else
        {
          v768 = v926;
          (*(v766 + 32))(v926, v764, v765);
          v769 = v763;
          v770 = v927;
          (*(v766 + 16))(v927, v768, v765);
          LOBYTE(v770) = specialized __RKEntityActionVisibilityTypeUSD.init(from:)(v770);
          (*(v766 + 8))(v768, v765);
          outlined destroy of Any?(v769, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
          __RKEntityActionVisibilityTypeUSD.rawValue.getter(v770);
          if (String.count.getter() <= 0)
          {

            v767 = RIOPxrTfTokenEmpty();
          }

          else
          {
            String.utf8CString.getter();

            v771 = RIOPxrTfTokenCreateWithCString();

            v767 = v771;
          }
        }

        specialized Properties.subscript.setter(v767, *&v1066.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v772 = swift_getKeyPath();
        v773 = __RKEntityShowActionArguments.distance.getter();
        v774 = BYTE4(v773) & 1;
        if ((v773 & 0x100000000) != 0)
        {
          v775 = 0.0;
        }

        else
        {
          v775 = *&v773;
        }

        specialized Properties.subscript.setter(*&v775, v774, v772);

        (*(v987 + 8))(v518, v988);
LABEL_211:
        v412 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMd;
        v413 = &_s9RealityIO10PropertiesVyAA22VisibilityActionSchema_pGMR;
        goto LABEL_162;
      }

      v484 = v1063;
      if (v297 == *MEMORY[0x277CDAF68])
      {
        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v555 = v977;
        v556 = v981;
        v557 = v285;
        v558 = started;
        (*(v977 + 32))(v981, v557, started);
        if (__RKEntityStartAnimateActionArguments.loopCount.getter() >= 2)
        {
          MEMORY[0x26670E5D0]();
          __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
          __RKEntityStartAnimateActionArguments.clipStart.getter();
          __RKEntityStartAnimateActionArguments.clipDuration.getter();
          __RKEntityStartAnimateActionArguments.clipReversed.getter();
          __RKEntityStartAnimateActionArguments.animationSpeed.getter();
          __RKEntityStartAnimateActionArguments.clipReverses.getter();
          v559 = v973;
          __RKEntityStartAnimateActionArguments.init(target:loopCount:multiplePerformBehavior:clipStart:clipDuration:clipReversed:animationSpeed:clipReverses:)();
          v560 = *(v555 + 16);
          v561 = v971;
          v560(v971, v559, v558);
          Description = v375[6].Description;
          v562 = v1068.f64[0];
          (Description)(v561, v298, *&v1068.f64[0]);
          (*(v1021 + 104))(v1009, *MEMORY[0x277CDAEF8], v1015);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
          v563 = (LOBYTE(v375[5].Kind) + 32) & ~LOBYTE(v375[5].Kind);
          v564 = swift_allocObject();
          *(v564 + 16) = xmmword_2619891C0;
          v1057((v564 + v563), v561, *&v562);
          __RKEntityStartAnimateActionArguments.loopCount.getter();
          v565 = v963;
          __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
          v566 = v1033;
          v567 = v959;
          v308 = v1022;
          (*(v1033 + 16))(v959, v565, v1022);
          (Description)(v567, v374, *&v562);
          v1071 = v1062;
          v568 = v1069;
          Stage.makeParentPrim(from:baseName:)(&v1071, 0x756F7247706F6F4CLL, 0xE900000000000070, &v1077);
          v1069 = v568;
          if (v568)
          {

            v569 = *(*&v1066.f64[0] + 8);
            v570 = v1068.f64[0];
            v569(v567, *&v1068.f64[0]);
            (*(v566 + 8))(v565, v308);
            v569(v971, *&v570);
            v571 = *(v977 + 8);
            v572 = started;
            v571(v973, started);
            v571(v981, v572);
          }

          else
          {
            v682 = v973;
            v683 = v1077;
            v684 = Stage.setAction(action:at:mapping:)(v567, &v1077, v1063);
            v1069 = 0;
            v739 = v684;

            v740 = *(*&v1066.f64[0] + 8);
            v741 = v1068.f64[0];
            v740(v567, *&v1068.f64[0]);
            (*(v1033 + 8))(v963, v1022);
            v740(v971, *&v741);
            v742 = *(v977 + 8);
            v743 = started;
            v742(v682, started);
            v742(v981, v743);

            return v739;
          }

          return v308;
        }

        v625 = v957;
        v626 = MEMORY[0x26670E5D0]();
        v627 = specialized Dictionary.subscript.getter(v625, v484, v626);
        (*(v1059 + 8))(v625, v1060);
        if (!v627)
        {
          *&v1066.f64[0] = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
          v1069 = swift_allocError();
          v686 = v685;
          v687 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
          v688 = v555;
          v689 = v1062;
          *v686 = v1062;
          v1057(&v686[v687], Description, *&v1068.f64[0]);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E5D0](v689);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*(v688 + 8))(v556, started);
          return v308;
        }

        v298 = RIOPxrUsdObjectCopyPath();

        v1080 = &protocol witness table for Schema;
        v1079 = &type metadata for Schema;
        v1077 = v308;
        v492 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
LABEL_218:
          v628 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v628 = RIOPxrTfTokenCreateWithCString();
        }

        v713 = v1036;
        v714 = v951;
        specialized Properties.subscript.setter(v628, v492, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v715 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
        v716 = swift_allocObject();
        *(v716 + 16) = xmmword_2619891C0;
        *(v716 + 32) = v298;
        v717 = v298;
        specialized Properties.subscript.setter(v716, v715);
        v718 = swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter();
        v719 = v1037;
        v720 = v950;
        (*(v1037 + 16))(v950, v714, v713);
        v721 = (*(v719 + 88))(v720, v713);
        if (v721 != *MEMORY[0x277CDB010] && v721 != *MEMORY[0x277CDB018] && v721 != *MEMORY[0x277CDB008])
        {
          goto LABEL_352;
        }

        (*(v1037 + 8))(v714, v713);
        if (String.count.getter() < 1)
        {

          v727 = RIOPxrTfTokenEmpty();
        }

        else
        {
          String.utf8CString.getter();

          v726 = RIOPxrTfTokenCreateWithCString();

          v727 = v726;
        }

        specialized Properties.subscript.setter(v727, v718, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v728 = swift_getKeyPath();
        v729 = v981;
        __RKEntityStartAnimateActionArguments.clipStart.getter();
        specialized Properties.subscript.setter(v730, 0, v728);
        v731 = swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.clipDuration.getter();
        specialized Properties.subscript.setter(v732, 0, v731);
        v733 = swift_getKeyPath();
        v734 = __RKEntityStartAnimateActionArguments.clipReversed.getter();
        specialized Properties.subscript.setter(v734 & 1, v733);
        v735 = swift_getKeyPath();
        __RKEntityStartAnimateActionArguments.animationSpeed.getter();
        specialized Properties.subscript.setter(COERCE__INT64(v736), 0, v735);
        v737 = swift_getKeyPath();
        v738 = __RKEntityStartAnimateActionArguments.clipReverses.getter();
        specialized Properties.subscript.setter(v738 & 1, v737);

        (*(v977 + 8))(v729, started);
        v412 = &_s9RealityIO10PropertiesVyAA20StartAnimationSchema_pGMd;
        v413 = &_s9RealityIO10PropertiesVyAA20StartAnimationSchema_pGMR;
        goto LABEL_162;
      }

      v501 = &v1085;
      if (v297 == *MEMORY[0x277CDAFB8])
      {
        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v587 = v969;
        v588 = (*(v974 + 32))(v969, v285, v975);
        v589 = v958;
        MEMORY[0x26670E410](v588);
        if (!*(v484 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v589, v590), (v591 & 1) == 0))
        {
          (*(v1059 + 8))(v589, v1060);
          type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
          lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
          v645 = swift_allocError();
          v647 = v646;
          v648 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
          v649 = v1062;
          *v647 = v1062;
          v1057(&v647[v648], Description, *&v1068.f64[0]);
          type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
          swift_storeEnumTagMultiPayload();
          MEMORY[0x26670E410](v649);
          swift_storeEnumTagMultiPayload();
          v1069 = v645;
          swift_willThrow();

          (*(v974 + 8))(v587, v975);
          return v308;
        }

        v592 = (v1059 + 8);
        v593 = *(v1059 + 8);

        v1061 = v592;
        v1058 = v593;
        v593(v589, v1060);
        v483 = RIOPxrUsdObjectCopyPath();

        v594 = RIOPxrSdfPathCopyString();
        v595 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v597 = v596;

        v1077 = v595;
        v1078 = v597;
        v1071 = 47;
        v1072 = 0xE100000000000000;
        v1075 = 95;
        v1076 = 0xE100000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v598 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v600 = v599;

        v1077 = 47;
        v1078 = 0xE100000000000000;
        MEMORY[0x26670F080](v598, v600);

        String.utf8CString.getter();

        v601 = RIOPxrSdfPathCreateFromCString();

        v602 = RIOPxrTfTokenEmpty();
        v603 = RIOPxrUsdStageCreatePrimIfNeeded();
        v604 = swift_allocObject();
        v604[2] = v603;

        if (String.count.getter() < 1)
        {
          v605 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v605 = RIOPxrTfTokenCreateWithCString();
        }

        v752 = v605;
        v753 = v969;

        RIOPxrUsdPrimSetTypeName();

        v308 = &type metadata for Schema;
        v1080 = &protocol witness table for Schema;
        v1079 = &type metadata for Schema;
        v1077 = v604;
        v754 = __RKEntityTransformActionArguments.location.getter();
        if (v758)
        {
          v503 = MEMORY[0x277D84F90];
LABEL_260:
          v788 = __RKEntityTransformActionArguments.orientation.getter();
          if ((v791 & 1) == 0)
          {
            v792 = v789;
            *&v790.f64[0] = v788;
            v1068 = v790;
            LODWORD(v790.f64[0]) = v788;
            v1066 = v790;
            v793 = swift_getKeyPath();
            v501[9] = vcvtq_f64_f32(__PAIR64__(HIDWORD(v1068.f64[0]), LODWORD(v1066.f64[0])));
            v501[10] = vcvtq_f64_f32(v792);
            v1096 = 0;
            specialized Properties.subscript.setter(v1095, v793);
            if (String.count.getter() < 1)
            {
              v794 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v794 = RIOPxrTfTokenCreateWithCString();
            }

            v795 = v794;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v503 + 2) + 1, 1, v503);
            }

            v797 = *(v503 + 2);
            v796 = *(v503 + 3);
            if (v797 >= v796 >> 1)
            {
              v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v796 > 1), v797 + 1, 1, v503);
            }

            *(v503 + 2) = v797 + 1;
            *&v503[8 * v797 + 32] = v795;
            v753 = v969;
          }

          v798 = __RKEntityTransformActionArguments.scale.getter();
          if ((v798 & 0x100000000) == 0)
          {
            *&v799 = *&v798;
            v800 = swift_getKeyPath();
            v1093[0] = v799;
            v1093[1] = v799;
            v1093[2] = v799;
            v1093[3] = 0;
            v1094 = 0;
            specialized Properties.subscript.setter(v1093, v800);
            if (String.count.getter() < 1)
            {
              v801 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v801 = RIOPxrTfTokenCreateWithCString();
            }

            v802 = v801;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v503 + 2) + 1, 1, v503);
            }

            v804 = *(v503 + 2);
            v803 = *(v503 + 3);
            if (v804 >= v803 >> 1)
            {
              v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v803 > 1), v804 + 1, 1, v503);
            }

            *(v503 + 2) = v804 + 1;
            *&v503[8 * v804 + 32] = v802;
          }

          v805 = swift_getKeyPath();

          specialized Properties.subscript.setter(v806, v805);
          v1074 = &protocol witness table for Schema;
          v1073 = v308;
          v1071 = v1067;
          v807 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v808 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v808 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v808, v807, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          v809 = swift_getKeyPath();
          *&v1066.f64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v810 = swift_allocObject();
          v1064 = xmmword_2619891C0;
          *(v810 + 16) = xmmword_2619891C0;
          *(v810 + 32) = v483;
          *&v1068.f64[0] = v483;
          specialized Properties.subscript.setter(v810, v809);
          v811 = swift_getKeyPath();
          v812 = __RKEntityTransformActionArguments.duration.getter();
          v813 = BYTE4(v812) & 1;
          if ((v812 & 0x100000000) != 0)
          {
            v814 = 0.0;
          }

          else
          {
            v814 = *&v812;
          }

          specialized Properties.subscript.setter(*&v814, v813, v811);
          v815 = swift_getKeyPath();
          v816 = v945;
          __RKEntityTransformActionArguments.moveType.getter();
          v817 = v933;
          outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v816, v933, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);
          v818 = v936;
          v819 = v954;
          if ((*(v936 + 48))(v817, 1, v954) == 1)
          {
            outlined destroy of Any?(v816, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

            v820 = 0;
          }

          else
          {
            v821 = v935;
            (*(v818 + 32))(v935, v817, v819);
            v822 = *(v818 + 16);
            v823 = v934;
            v822(v934, v821, v954);
            v824 = v924;
            v822(v924, v823, v954);
            v825 = v954;
            v826 = (*(v818 + 88))(v824, v954);
            if (v826 != *MEMORY[0x277CDAE90] && v826 != *MEMORY[0x277CDAE98])
            {
              goto LABEL_349;
            }

            v827 = *(v818 + 8);
            v827(v934, v825);
            if (String.count.getter() < 1)
            {

              v829 = RIOPxrTfTokenEmpty();
              v827(v935, v825);
              outlined destroy of Any?(v945, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

              v820 = v829;
            }

            else
            {
              String.utf8CString.getter();

              v828 = RIOPxrTfTokenCreateWithCString();
              v827(v935, v825);
              outlined destroy of Any?(v945, &_s10RealityKit23__RKEntityMoveSelectionOSgMd, &_s10RealityKit23__RKEntityMoveSelectionOSgMR);

              v820 = v828;
            }

            v753 = v969;
          }

          specialized Properties.subscript.setter(v820, v815, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          v308 = v937;
          __RKEntityTransformActionArguments.ease.getter();
          v830 = v938;
          __RKEntityTransformActionArguments.easeType.getter();
          v831 = v1069;
          setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(v308, v830, v1067, v1062, Description);
          v1069 = v831;
          if (v831)
          {

            outlined destroy of Any?(v830, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
            outlined destroy of Any?(v308, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
            (*(v974 + 8))(v753, v975);
            outlined destroy of Any?(&v1071, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMR);
            v412 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMd;
            v413 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMR;
            goto LABEL_162;
          }

          outlined destroy of Any?(v830, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
          outlined destroy of Any?(v308, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
          v832 = v919;
          __RKEntityTransformActionArguments.relativeToEntity.getter();
          v833 = v1059;
          v834 = v1060;
          if ((*(v1059 + 48))(v832, 1, v1060) == 1)
          {
            outlined destroy of Any?(v832, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v835 = v918;
            v836 = (*(v833 + 32))(v918, v832, v834);
            if (specialized Dictionary.subscript.getter(v835, v1063, v836))
            {
              v837 = RIOPxrUsdObjectCopyPath();

              v838 = swift_getKeyPath();
              v839 = RIOPxrSdfPathCopyString();
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (String.count.getter() < 1)
              {

                v840 = RIOPxrTfTokenEmpty();
              }

              else
              {
                String.utf8CString.getter();

                v840 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v840, v838, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
            }

            v1058(v918, v1060);
          }

          v874 = swift_getKeyPath();
          v875 = swift_allocObject();
          *(v875 + 16) = v1064;
          v876 = RIOPxrUsdObjectCopyPath();

          *(v875 + 32) = v876;
          specialized Properties.subscript.setter(v875, v874);

          (*(v974 + 8))(v969, v975);
          outlined destroy of Any?(&v1071, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMd, &_s9RealityIO10PropertiesVyAA21TransformActionSchema_pGMR);
          v872 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMd;
          v873 = &_s9RealityIO10PropertiesVyAA9Xformable_pGMR;
LABEL_315:
          outlined destroy of Any?(&v1077, v872, v873);
          return v1067;
        }

        *&v756.f64[0] = v754;
        v1068 = v756;
        LODWORD(v757.f64[0]) = v754;
        v1066 = v757;
        v759 = COERCE_FLOAT(vdupq_n_s64(v755).i32[2]);
        v760 = swift_getKeyPath();
        v1097 = vcvtq_f64_f32(__PAIR64__(HIDWORD(v1068.f64[0]), LODWORD(v1066.f64[0])));
        v1098 = v759;
        v1099 = 0;
        v1100 = 0;
        specialized Properties.subscript.setter(&v1097, v760);
        if (String.count.getter() < 1)
        {
          v761 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v761 = RIOPxrTfTokenCreateWithCString();
        }

        v504 = v761;
        v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v502 = *(v503 + 2);
        v505 = *(v503 + 3);
        v484 = v502 + 1;
        if (v502 < v505 >> 1)
        {
LABEL_259:
          *(v503 + 2) = v484;
          *&v503[8 * v502 + 32] = v504;
          v753 = v969;
          goto LABEL_260;
        }

LABEL_343:
        v503 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v505 > 1), v484, 1, v503);
        goto LABEL_259;
      }

      if (v297 == *MEMORY[0x277CDAF88])
      {
        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v630 = v946;
        v629 = v947;
        v631 = v948;
        (*(v947 + 32))(v946, v285, v948);
        v1080 = &protocol witness table for Schema;
        v1079 = &type metadata for Schema;
        v1077 = v308;
        v632 = swift_getKeyPath();

        if (String.count.getter() < 1)
        {
          v633 = RIOPxrTfTokenEmpty();
        }

        else
        {
          v633 = RIOPxrTfTokenCreateWithCString();
        }

        specialized Properties.subscript.setter(v633, v632, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
        v724 = swift_getKeyPath();
        __RKWaitActionArguments.duration.getter();
        specialized Properties.subscript.setter(COERCE__INT64(v725), 0, v724);
        (*(v629 + 8))(v630, v631);
        v412 = &_s9RealityIO10PropertiesVyAA16WaitActionSchema_pGMd;
        v413 = &_s9RealityIO10PropertiesVyAA16WaitActionSchema_pGMR;
        goto LABEL_162;
      }

      if (v297 == *MEMORY[0x277CDAF50])
      {
        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v650 = v484;
        v435 = v930;
        v651 = (*(v949 + 32))(v952, v285, v930);
        v652 = v928;
        MEMORY[0x26670E4C0](v651);
        if (*(v650 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v652, v653), (v654 & 1) != 0))
        {
          v655 = *(v1059 + 8);

          v655(v652, v1060);
          v656 = RIOPxrUsdObjectCopyPath();

          v658 = v917;
          MEMORY[0x26670E4C0](v657);
          if (*(v650 + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v658, v659);
            if (v660)
            {

              v655(v658, v1060);
              v661 = RIOPxrUsdObjectCopyPath();

              v1080 = &protocol witness table for Schema;
              v1079 = &type metadata for Schema;
              v1077 = v308;
              v662 = swift_getKeyPath();

              if (String.count.getter() < 1)
              {
                v663 = RIOPxrTfTokenEmpty();
              }

              else
              {
                v663 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v663, v662, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
              v877 = swift_getKeyPath();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
              v878 = swift_allocObject();
              *(v878 + 16) = xmmword_2619891C0;
              *(v878 + 32) = v656;
              v879 = v656;
              specialized Properties.subscript.setter(v878, v877);
              v880 = swift_getKeyPath();
              v881 = __RKEntityOrbitEntityActionArguments.orientToPath.getter();
              specialized Properties.subscript.setter(v881, v880);
              v882 = swift_getKeyPath();
              v883 = RIOPxrSdfPathCopyString();
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              if (String.count.getter() < 1)
              {

                v884 = RIOPxrTfTokenEmpty();
              }

              else
              {
                String.utf8CString.getter();

                v884 = RIOPxrTfTokenCreateWithCString();
              }

              specialized Properties.subscript.setter(v884, v882, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
              v885 = swift_getKeyPath();
              v886 = __RKEntityOrbitEntityActionArguments.duration.getter();
              v887 = BYTE4(v886) & 1;
              if ((v886 & 0x100000000) != 0)
              {
                v888 = 0.0;
              }

              else
              {
                v888 = *&v886;
              }

              specialized Properties.subscript.setter(*&v888, v887, v885);
              v889 = swift_getKeyPath();
              v890 = __RKEntityOrbitEntityActionArguments.rotations.getter();
              v891 = BYTE4(v890) & 1;
              if ((v890 & 0x100000000) != 0)
              {
                v892 = 0.0;
              }

              else
              {
                v892 = *&v890;
              }

              specialized Properties.subscript.setter(*&v892, v891, v889);
              v893 = v915;
              __RKEntityOrbitEntityActionArguments.spinDirection.getter();
              v894 = __RKEntityOrbitEntityActionArguments.orbitalAxis.getter();
              v896 = v1069;
              setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(v893, v894, v897, v895 & 1, v1067, v1062, Description);
              v1069 = v896;
              if (v896)
              {

                outlined destroy of Any?(v915, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
                (*(v949 + 8))(v952, v930);
                v412 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMd;
                v413 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMR;
                goto LABEL_162;
              }

              outlined destroy of Any?(v915, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
              (*(v949 + 8))(v952, v930);
              v872 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMd;
              v873 = &_s9RealityIO10PropertiesVyAA17OrbitActionSchema_pGMR;
              goto LABEL_315;
            }
          }

          v655(v658, v1060);
        }

        else
        {
          (*(v1059 + 8))(v652, v1060);
        }

        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v841 = swift_allocError();
        v843 = v842;
        v844 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v845 = v1062;
        *v843 = v1062;
        v1057(&v843[v844], Description, *&v1068.f64[0]);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v846 = v845;
        v553 = v952;
        MEMORY[0x26670E4C0](v846);
        swift_storeEnumTagMultiPayload();
        v1069 = v841;
        swift_willThrow();

        v554 = v949;
      }

      else
      {
        if (v297 != *MEMORY[0x277CDAF58])
        {
LABEL_234:
          if (v298 != *MEMORY[0x277CDAF80])
          {
            type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
            lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
            v1069 = swift_allocError();
            v783 = v782;
            v784 = v375;
            v785 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0tMR) + 48);
            v786 = v1062;
            *v783 = v1062;
            v308 = *&v1068.f64[0];
            v1057(&v783[v785], Description, *&v1068.f64[0]);
            type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            v787 = v786;

            (v784->Description)(v285, v308);
            return v308;
          }

          (v375[6].Kind)(v285, *&v1068.f64[0]);
          v744 = (*(v921 + 32))(v923, v285, v922);
          v745 = v916;
          MEMORY[0x26670E0D0](v744);
          if (!*(v484 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v745, v746), (v747 & 1) == 0))
          {
            (*(v1059 + 8))(v745, v1060);
            type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
            lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
            v847 = swift_allocError();
            v849 = v848;
            v850 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
            v851 = v1062;
            *v849 = v1062;
            v1057(&v849[v850], Description, *&v1068.f64[0]);
            type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
            swift_storeEnumTagMultiPayload();
            v852 = v851;
            v853 = v923;
            MEMORY[0x26670E0D0](v852);
            swift_storeEnumTagMultiPayload();
            v1069 = v847;
            swift_willThrow();

            (*(v921 + 8))(v853, v922);
            return v308;
          }

          v748 = *(v1059 + 8);

          v748(v745, v1060);
          v749 = RIOPxrUsdObjectCopyPath();

          v1080 = &protocol witness table for Schema;
          v1079 = &type metadata for Schema;
          v1077 = v1067;
          v750 = swift_getKeyPath();

          if (String.count.getter() < 1)
          {
            v751 = RIOPxrTfTokenEmpty();
          }

          else
          {
            v751 = RIOPxrTfTokenCreateWithCString();
          }

          specialized Properties.subscript.setter(v751, v750, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
          v898 = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
          v899 = swift_allocObject();
          *(v899 + 16) = xmmword_2619891C0;
          *(v899 + 32) = v749;
          v900 = v749;
          specialized Properties.subscript.setter(v899, v898);
          v901 = swift_getKeyPath();
          v902 = __RKEntitySpinActionArguments.duration.getter();
          v903 = BYTE4(v902) & 1;
          if ((v902 & 0x100000000) != 0)
          {
            v904 = 0.0;
          }

          else
          {
            v904 = *&v902;
          }

          specialized Properties.subscript.setter(*&v904, v903, v901);
          v905 = swift_getKeyPath();
          v906 = __RKEntitySpinActionArguments.iterations.getter();
          v907 = BYTE4(v906) & 1;
          if ((v906 & 0x100000000) != 0)
          {
            v908 = 0.0;
          }

          else
          {
            v908 = *&v906;
          }

          specialized Properties.subscript.setter(*&v908, v907, v905);
          v909 = v914;
          __RKEntitySpinActionArguments.direction.getter();
          v910 = __RKEntitySpinActionArguments.axis.getter();
          v912 = v1069;
          setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(v909, v910, v913, v911 & 1, v1067, v1062, Description);
          v1069 = v912;
          if (v912)
          {

            outlined destroy of Any?(v914, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
            (*(v921 + 8))(v923, v922);
            v412 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMd;
            v413 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMR;
            goto LABEL_162;
          }

          outlined destroy of Any?(v914, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
          (*(v921 + 8))(v923, v922);
          v872 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMd;
          v873 = &_s9RealityIO10PropertiesVyAA16SpinActionSchema_pGMR;
          goto LABEL_315;
        }

        (*(*&v1066.f64[0] + 96))(v285, *&v1068.f64[0]);
        v704 = v484;
        v435 = v925;
        v705 = (*(v929 + 32))(v939, v285, v925);
        v706 = v920;
        MEMORY[0x26670E510](v705);
        if (*(v704 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v706, v707);
          if (v708)
          {
            v709 = *(v1059 + 8);

            v709(v706, v1060);
            v710 = RIOPxrUsdObjectCopyPath();

            v1080 = &protocol witness table for Schema;
            v1079 = &type metadata for Schema;
            v1077 = v308;
            v711 = swift_getKeyPath();

            if (String.count.getter() < 1)
            {
              v712 = RIOPxrTfTokenEmpty();
            }

            else
            {
              v712 = RIOPxrTfTokenCreateWithCString();
            }

            specialized Properties.subscript.setter(v712, v711, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
            v854 = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
            v855 = swift_allocObject();
            *(v855 + 16) = xmmword_2619891C0;
            *(v855 + 32) = v710;
            v856 = v710;
            specialized Properties.subscript.setter(v855, v854);
            v857 = swift_getKeyPath();
            v858 = __RKEntityLookAtCameraActionArguments.duration.getter();
            v859 = BYTE4(v858) & 1;
            if ((v858 & 0x100000000) != 0)
            {
              v860 = 0.0;
            }

            else
            {
              v860 = *&v858;
            }

            specialized Properties.subscript.setter(*&v860, v859, v857);
            v861 = swift_getKeyPath();
            v862 = __RKEntityLookAtCameraActionArguments.direction.getter();
            v1068 = 0u;
            v865 = 0.0;
            v866 = 0.0;
            v867 = 0uLL;
            if ((v864 & 1) == 0)
            {
              v867 = vcvtq_f64_f32(v862);
              v866 = v863;
            }

            v1089 = v867;
            v1090 = v866;
            v1091 = 0;
            v1092 = v864 & 1;
            specialized Properties.subscript.setter(&v1089, v861);
            v868 = swift_getKeyPath();
            v869 = __RKEntityLookAtCameraActionArguments.upVector.getter();
            if ((v871 & 1) == 0)
            {
              v1068 = vcvtq_f64_f32(v869);
              v865 = v870;
            }

            v1085 = v1068;
            v1086 = v865;
            v1087 = 0;
            v1088 = v871 & 1;
            specialized Properties.subscript.setter(&v1085, v868);

            (*(v929 + 8))(v939, v925);
            v872 = &_s9RealityIO10PropertiesVyAA24LookAtCameraActionSchema_pGMd;
            v873 = &_s9RealityIO10PropertiesVyAA24LookAtCameraActionSchema_pGMR;
            goto LABEL_315;
          }
        }

        (*(v1059 + 8))(v706, v1060);
        type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
        lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
        v776 = swift_allocError();
        v778 = v777;
        v779 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
        v780 = v1062;
        *v778 = v1062;
        v1057(&v778[v779], Description, *&v1068.f64[0]);
        type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
        swift_storeEnumTagMultiPayload();
        v781 = v780;
        v553 = v939;
        MEMORY[0x26670E510](v781);
        swift_storeEnumTagMultiPayload();
        v1069 = v776;
        swift_willThrow();

        v554 = v929;
      }
    }

    (*(v554 + 8))(v553, v435);
    return v308;
  }

  (*(*&v294 + 96))(v285, COERCE_FLOAT64_T(*&v296));
  v299 = v1054;
  v300 = i;
  v301 = (*(v1054 + 32))(i, v285, v1061);
  MEMORY[0x26670E230](v301);
  v303 = v1063;
  if (!*(v1063 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v262, v302), (v304 & 1) == 0))
  {
    (*(v1059 + 8))(v262, v1060);
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
    v335 = swift_allocError();
    v337 = v336;
    v338 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR) + 48);
    v339 = v1062;
    *v337 = v1062;
    v1057(&v337[v338], Description, *&v1068.f64[0]);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    MEMORY[0x26670E230](v339);
    swift_storeEnumTagMultiPayload();
    v1069 = v335;
    swift_willThrow();

    v340 = *(v299 + 8);
    v308 = (v299 + 8);
    v340(v300, v1061);
    return v308;
  }

  v305 = *(v1059 + 8);

  v305(v262, v1060);
  v306 = RIOPxrUsdObjectCopyPath();

  v307 = __RKEntityAudioActionArguments.loops.getter();
  v308 = v1067;
  if (v307 != 2 && (v307 & 1) != 0)
  {
    Description = v306;
    MEMORY[0x26670E230]();
    __RKEntityAudioActionArguments.path.getter();
    v309 = v1019;
    __RKEntityAudioActionArguments.type.getter();
    v310 = (*(v1034 + 48))(v309, 1, v1035);
    v311 = v1042;
    if (v310 == 1)
    {
      __break(1u);
    }

    else
    {
      v312 = v1020;
      __RKEntityAudioActionArguments.spatialMode.getter();
      if ((*(v311 + 48))(v312, 1, v1048) != 1)
      {
        __RKEntityAudioActionArguments.volume.getter();
        if ((v313 & 1) == 0)
        {
          v314 = v1008;
          __RKEntityAudioActionArguments.multiplePerformBehavior.getter();
          if ((*(v1037 + 48))(v314, 1, v1036) != 1)
          {
            v315 = v1017;
            __RKEntityAudioActionArguments.init(target:path:type:spatialMode:volume:loops:multiplePerformBehavior:)();
            v316 = v1016;
            (*(v1054 + 16))(v1016, v315, v1061);
            v317 = *&v1066.f64[0] + 104;
            v1060 = *(*&v1066.f64[0] + 104);
            v318 = v1068.f64[0];
            (v1060)(v316, v298, *&v1068.f64[0]);
            (*(v1021 + 104))(v1009, *MEMORY[0x277CDAEF8], v1015);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
            v319 = (*(v317 - 24) + 32) & ~*(v317 - 24);
            v320 = swift_allocObject();
            *(v320 + 16) = xmmword_2619891C0;
            v1057((v320 + v319), v316, *&v318);
            v321 = v1010;
            __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
            v322 = v1033;
            v323 = v1007;
            v308 = v1022;
            (*(v1033 + 16))(v1007, v321, v1022);
            (v1060)(v323, *MEMORY[0x277CDAFA0], *&v318);
            v1071 = v1062;
            v324 = v1069;
            Stage.makeParentPrim(from:baseName:)(&v1071, 0x756F7247706F6F4CLL, 0xE900000000000070, &v1077);
            if (v324)
            {

              v325 = *(*&v1066.f64[0] + 8);
              v325(v323, *&v318);
              (*(v322 + 8))(v321, v308);
              v325(v1016, *&v318);
              v326 = *(v1054 + 8);
              v327 = v1061;
              v326(v1017, v1061);
              v326(i, v327);
              v1069 = v324;
            }

            else
            {
              v467 = v1077;
              v468 = Stage.setAction(action:at:mapping:)(v323, &v1077, v303);
              v469 = v323;
              v1069 = 0;
              v308 = v468;

              v543 = *(*&v1066.f64[0] + 8);
              v544 = v1068.f64[0];
              v543(v469, *&v1068.f64[0]);
              (*(v1033 + 8))(v1010, v1022);
              v543(v1016, *&v544);
              v545 = *(v1054 + 8);
              v546 = v1061;
              v545(v1017, v1061);
              v545(i, v546);
            }

            return v308;
          }

          goto LABEL_347;
        }

LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_350;
      }
    }

    __break(1u);
    goto LABEL_346;
  }

  v1080 = &protocol witness table for Schema;
  v1079 = &type metadata for Schema;
  v1077 = v1067;
  v363 = swift_getKeyPath();

  v364 = String.count.getter();
  v365 = v1035;
  if (v364 < 1)
  {
    v366 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v366 = RIOPxrTfTokenCreateWithCString();
  }

  v379 = v1024;
  specialized Properties.subscript.setter(v366, v363, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  v380 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  v381 = swift_allocObject();
  *(v381 + 16) = xmmword_2619891C0;
  *(v381 + 32) = v306;
  *&v1068.f64[0] = v306;
  specialized Properties.subscript.setter(v381, v380);
  v382 = swift_getKeyPath();
  __RKEntityAudioActionArguments.path.getter();
  String.utf8CString.getter();

  v383 = RIOPxrSdfAssetPathCreateFromCString();

  specialized Properties.subscript.setter(v383, v382, MEMORY[0x277D009B8], MEMORY[0x277D00DE0]);
  v384 = swift_getKeyPath();
  v385 = v1039;
  __RKEntityAudioActionArguments.type.getter();
  v386 = v1023;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v385, v1023, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
  v387 = v1034;
  if ((*(v1034 + 48))(v386, 1, v365) == 1)
  {
    outlined destroy of Any?(v385, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    v388 = 0;
    v389 = v1041;
  }

  else
  {
    (*(v387 + 32))(v379, v386, v365);
    __RKEntityAudioActionType.rawValue.getter();
    v390 = String.count.getter();
    v391 = (v387 + 8);
    v389 = v1041;
    if (v390 < 1)
    {

      v392 = RIOPxrTfTokenEmpty();
      (*v391)(v379, v365);
      outlined destroy of Any?(v1039, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    }

    else
    {
      String.utf8CString.getter();

      v392 = RIOPxrTfTokenCreateWithCString();
      (*v391)(v379, v365);
      outlined destroy of Any?(v1039, &_s10RealityKit25__RKEntityAudioActionTypeOSgMd, &_s10RealityKit25__RKEntityAudioActionTypeOSgMR);
    }

    v388 = v392;
  }

  specialized Properties.subscript.setter(v388, v384, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
  v414 = COERCE_DOUBLE(__RKEntityAudioActionArguments.volume.getter());
  v415 = v1037;
  v416 = v1025;
  if (v417)
  {
    v418 = v389;
    v419 = 0x3FF0000000000000;
  }

  else
  {
    v419 = *&v414;
    v418 = v389;
    if (v414 < 0.0)
    {
      v419 = 0;
    }
  }

  v420 = swift_getKeyPath();
  specialized Properties.subscript.setter(v419, 0, v420);
  *&v1066.f64[0] = swift_getKeyPath();
  v421 = v1040;
  __RKEntityAudioActionArguments.spatialMode.getter();
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v421, v416, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
  v422 = v1042;
  v423 = v1048;
  if ((*(v1042 + 48))(v416, 1, v1048) == 1)
  {
    outlined destroy of Any?(v421, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
    v424 = 0;
    v425 = v1036;
    v426 = v418;
    v427 = v415;
LABEL_75:
    specialized Properties.subscript.setter(v424, *&v1066.f64[0], MEMORY[0x277D00A50], MEMORY[0x277D00E40]);
    v455 = swift_getKeyPath();
    __RKEntityAudioActionArguments.multiplePerformBehavior.getter();
    v456 = v1028;
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(v426, v1028, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
    if ((*(v427 + 48))(v456, 1, v425) == 1)
    {
      outlined destroy of Any?(v426, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
      v457 = 0;
    }

    else
    {
      v458 = v1029;
      (*(v427 + 32))(v1029, v456, v425);
      v459 = *(v427 + 16);
      v460 = v1030;
      v459(v1030, v458, v425);
      v461 = v1012;
      v459(v1012, v460, v425);
      v462 = (*(v427 + 88))(v461, v425);
      if (v462 == *MEMORY[0x277CDB010])
      {
        v463 = v1041;
      }

      else
      {
        v463 = v1041;
        if (v462 != *MEMORY[0x277CDB018] && v462 != *MEMORY[0x277CDB008])
        {
          goto LABEL_351;
        }
      }

      v464 = *(v427 + 8);
      v464(v1030, v425);
      v464(v1029, v425);
      outlined destroy of Any?(v463, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMd, &_s10RealityKit39__RKEntityActionMultiplePerformBehaviorOSgMR);
      if (String.count.getter() < 1)
      {

        v457 = RIOPxrTfTokenEmpty();
      }

      else
      {
        String.utf8CString.getter();

        v465 = RIOPxrTfTokenCreateWithCString();

        v457 = v465;
      }
    }

    v466 = v1061;
    specialized Properties.subscript.setter(v457, v455, MEMORY[0x277D00A50], MEMORY[0x277D00E40]);

    (*(v1054 + 8))(i, v466);
    v412 = &_s9RealityIO10PropertiesVyAA17AudioActionSchema_pGMd;
    v413 = &_s9RealityIO10PropertiesVyAA17AudioActionSchema_pGMR;
    goto LABEL_162;
  }

  v428 = v416;
  v429 = v308;
  v430 = v1026;
  (*(v422 + 32))(v1026, v428, v423);
  v431 = *(v422 + 16);
  v432 = v1027;
  v431(v1027, v430, v1048);
  v433 = v1011;
  v431(v1011, v432, v1048);
  v434 = (*(v422 + 88))(v433, v1048);
  if (v434 == *MEMORY[0x277CDAF38])
  {
    v426 = v418;
    v427 = v415;
    goto LABEL_72;
  }

  v426 = v418;
  if (v434 == *MEMORY[0x277CDAF30])
  {
    v427 = v415;
    goto LABEL_72;
  }

  if (v434 == *MEMORY[0x277CDAF40])
  {
    v427 = v415;
LABEL_72:
    v451 = *(v1042 + 8);
    v452 = v1048;
    v451(v1027, v1048);
    v451(v1026, v452);
    outlined destroy of Any?(v1040, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMd, &_s10RealityKit29__RKAudioSpatialModeSelectionOSgMR);
    v308 = v429;
    v453 = String.count.getter();
    v425 = v1036;
    if (v453 < 1)
    {

      v424 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v454 = RIOPxrTfTokenCreateWithCString();

      v424 = v454;
    }

    goto LABEL_75;
  }

LABEL_350:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_351:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_352:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void specialized Properties.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  swift_getAtKeyPath();
  if (a2)
  {

    return;
  }

  if (String.count.getter() <= 0)
  {

    v5 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v5 = RIOPxrTfTokenCreateWithCString();
  }

  Int32 = RIOPxrSdfValueTypeNameCreateInt32();
  Attribute = RIOPxrUsdPrimCreateAttribute();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = Attribute;
  v9 = RIOPxrVtValueCreateWithInt32();
  v10 = RIOPxrUsdAttributeSetValue();

  if (!v10)
  {
  }
}

{
  swift_getAtKeyPath();
  if (a2)
  {
  }

  else
  {
    if (String.count.getter() <= 0)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    Double = RIOPxrSdfValueTypeNameCreateDouble();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v7 = RIOPxrVtValueCreateWithDouble();
    v8 = RIOPxrUsdAttributeSetValue();

    if (!v8)
    {
    }
  }
}

void specialized Properties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  if (a2)
  {
    if (String.count.getter() <= 0)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    String = RIOPxrSdfValueTypeNameCreateString();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    String.utf8CString.getter();
    v7 = RIOPxrVtValueCreateWithCString();

    v8 = RIOPxrUsdAttributeSetValue();

    if (!v8)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(uint64_t *a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (a1[4])
  {
  }

  else
  {
    if (String.count.getter() <= 0)
    {

      v3 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v3 = RIOPxrTfTokenCreateWithCString();
    }

    Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v6 = RIOPxrVtValueCreateWithDouble3();
    v7 = RIOPxrUsdAttributeSetValue();

    if (!v7)
    {
    }
  }
}

{
  swift_getAtKeyPath();
  if (a1[4])
  {
  }

  else
  {
    if (String.count.getter() <= 0)
    {

      v3 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v3 = RIOPxrTfTokenCreateWithCString();
    }

    Quatd = RIOPxrSdfValueTypeNameCreateQuatd();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v6 = RIOPxrVtValueCreateWithQuatd();
    v7 = RIOPxrUsdAttributeSetValue();

    if (!v7)
    {
    }
  }
}

void specialized Properties.subscript.setter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (a1)
  {
    if (String.count.getter() <= 0)
    {

      v3 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v3 = RIOPxrTfTokenCreateWithCString();
    }

    TokenArray = RIOPxrSdfValueTypeNameCreateTokenArray();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v6 = specialized static ToolsFoundations.Token.vtValue(from:)(a1);
    v7 = RIOPxrUsdAttributeSetValue();

    if (!v7)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t (*a4)(void *))
{
  swift_getAtKeyPath();
  if (a1)
  {
    if (String.count.getter() <= 0)
    {

      v8 = RIOPxrTfTokenEmpty();
      v7 = v8;
    }

    else
    {
      String.utf8CString.getter();

      v7 = RIOPxrTfTokenCreateWithCString();
    }

    v9 = a3(v8);
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v11 = a4(a1);
    v12 = RIOPxrUsdAttributeSetValue();

    if (!v12)
    {
    }
  }

  else
  {
  }
}

void specialized Properties.subscript.setter(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();
  if (v2 == 2)
  {
  }

  else
  {
    if (String.count.getter() <= 0)
    {

      v3 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v3 = RIOPxrTfTokenCreateWithCString();
    }

    Bool = RIOPxrSdfValueTypeNameCreateBool();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v6 = RIOPxrVtValueCreateWithBool();
    v7 = RIOPxrUsdAttributeSetValue();

    if (!v7)
    {
    }
  }
}

id closure #1 in Stage.setTrigger(trigger:at:mapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>, float a7@<S0>)
{
  if (*(a2 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a7), (v14 & 1) != 0))
  {
    *a6 = *(*(a2 + 56) + 8 * v13);
  }

  else
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
    v16 = swift_allocError();
    v18 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL010Foundation4UUIDV6targettMR);
    v20 = *(v19 + 48);
    v21 = *(v19 + 64);
    *v18 = a3;
    v22 = type metadata accessor for __RKEntityTriggerSpecification();
    (*(*(v22 - 8) + 16))(&v18[v20], a4, v22);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 16))(&v18[v21], a1, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a5 = v16;
    return a3;
  }
}

void Stage.makeParentPrim(from:baseName:)(id *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = *a1;
  SceneDescriptionFoundations.Path.deletingLastPathComponent()(&v18);
  v7 = v18;
  SceneDescriptionFoundations.Path.appendingPathComponent(_:)(a2, a3, &v20);
  v8 = v20;
  if (RIOPxrUsdStageHasPrimAtPrimPath())
  {
    v17 = a4;
    v9 = 0;
    while (!__OFADD__(v9, 1))
    {
      v18 = a2;
      v19 = a3;

      MEMORY[0x26670F080](95, 0xE100000000000000);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26670F080](v10);

      v12 = v18;
      v11 = v19;
      v13 = RIOPxrSdfPathCopyString();
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v14 == 47 && v16 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v18 = 47;
        v19 = 0xE100000000000000;
      }

      else
      {
        v18 = v14;
        v19 = v16;
        MEMORY[0x26670F080](47, 0xE100000000000000);
      }

      MEMORY[0x26670F080](v12, v11);
      String.utf8CString.getter();

      v8 = RIOPxrSdfPathCreateFromCString();

      v20 = v8;
      ++v9;
      if ((RIOPxrUsdStageHasPrimAtPrimPath() & 1) == 0)
      {
        a4 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *a4 = v8;
  }
}

void setRotationAxis #1 (direction:axis:on:) in Stage.setAction(action:at:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7)
{
  *&v37 = a7;
  v40 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v36 - v14;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v36 - v14, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMd, &_s10RealityKit27__RKEntitySpinDirectionTypeOSgMR);
  v16 = type metadata accessor for __RKEntitySpinDirectionType();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  *&v19 = 1.0;
  if (v18 != 1)
  {
    v20 = (*(v17 + 88))(v15, v16, 1.0);
    if (v20 != *MEMORY[0x277CDAF28])
    {
      *&v19 = -1.0;
      if (v20 == *MEMORY[0x277CDAF20])
      {
        goto LABEL_6;
      }

      (*(v17 + 8))(v15, v16, -1.0);
    }

    *&v19 = 1.0;
  }

LABEL_6:
  if (a4)
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v22 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
    v24 = *(v23 + 48);
    v25 = &v22[*(v23 + 64)];
    *v22 = a6;
    v26 = type metadata accessor for __RKEntityActionSpecification();
    (*(*(v26 - 8) + 16))(&v22[v24], v37, v26);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    *v25 = 1936291937;
    *(v25 + 1) = 0xE400000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = a6;
  }

  else
  {
    v37 = v19;
    *&v28.f64[0] = a2;
    *&v28.f64[1] = a3;
    v36 = v28;
    if (String.count.getter() < 1)
    {
      v29 = RIOPxrTfTokenEmpty();
    }

    else
    {
      v29 = RIOPxrTfTokenCreateWithCString();
    }

    v30 = v29;
    *&v31 = *&v37 * *&v36.f64[1];
    v36 = vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(HIDWORD(v36.f64[0]), a2)), *&v37);
    v37 = v31;
    Double3 = RIOPxrSdfValueTypeNameCreateDouble3();
    Attribute = RIOPxrUsdPrimCreateAttribute();
    v38 = v36;
    v39 = v37;
    v34 = RIOPxrVtValueCreateWithDouble3();
    v35 = RIOPxrUsdAttributeSetValue();

    if ((v35 & 1) == 0)
    {
    }
  }
}

void setEaseType #1 (ease:easeType:on:) in Stage.setAction(action:at:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v59 = a3;
  v7 = type metadata accessor for __RKEntityMoveEaseType();
  v8 = *(v7 - 8);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v7, v9);
  v54 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v10);
  v56 = &v54 - v14;
  MEMORY[0x28223BE20](v15, v13);
  v55 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  v19.n128_f32[0] = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v19);
  v24 = &v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v54 - v27;
  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a1, &v54 - v27, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  v29 = type metadata accessor for __RKEntityMoveEase();
  LODWORD(a1) = (*(*(v29 - 8) + 48))(v28, 1, v29);
  outlined destroy of Any?(v28, &_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  if (a1 != 1)
  {
    outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a2, v24, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
    v30 = (*(v8 + 48))(v24, 1, v7);
    outlined destroy of Any?(v24, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
    if (v30 == 1)
    {
      if (String.count.getter() >= 1)
      {
        v31 = RIOPxrTfTokenCreateWithCString();
LABEL_16:
        v47 = v31;
        goto LABEL_17;
      }

      v45 = RIOPxrTfTokenEmpty();
LABEL_15:
      v31 = v45;
      goto LABEL_16;
    }
  }

  outlined init with copy of __REAssetBundle.ExportOptions.DeploymentTarget?(a2, v21, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  if ((*(v8 + 48))(v21, 1, v7) == 1)
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
    lazy protocol witness table accessor for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors(&lazy protocol witness table cache variable for type InteractionSpecificationsUSDStageErrors and conformance InteractionSpecificationsUSDStageErrors, type metadata accessor for InteractionSpecificationsUSDStageErrors, &protocol conformance descriptor for InteractionSpecificationsUSDStageErrors);
    swift_allocError();
    v33 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMd, &_s9RealityIO27SceneDescriptionFoundationsO4PathV4path_AA39InteractionSpecificationsUSDStageErrorsO0H4TypeO011interactionL0SS9valueNametMR);
    v35 = *(v34 + 48);
    v36 = &v33[*(v34 + 64)];
    v37 = v58;
    *v33 = v58;
    v38 = type metadata accessor for __RKEntityActionSpecification();
    (*(*(v38 - 8) + 16))(&v33[v35], v57, v38);
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
    swift_storeEnumTagMultiPayload();
    *v36 = 0x6570795465736165;
    *(v36 + 1) = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v39 = v37;
    return;
  }

  v40 = v55;
  (*(v8 + 32))(v55, v21, v7);
  v41 = *(v8 + 16);
  v42 = v56;
  v41(v56, v40, v7);
  v43 = v54;
  v41(v54, v42, v7);
  v44 = (*(v8 + 88))(v43, v7);
  if (v44 != *MEMORY[0x277CDAE60] && v44 != *MEMORY[0x277CDAE68] && v44 != *MEMORY[0x277CDAE58])
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return;
  }

  v46 = *(v8 + 8);
  v46(v42, v7);
  v46(v40, v7);
  if (String.count.getter() < 1)
  {

    v45 = RIOPxrTfTokenEmpty();
    goto LABEL_15;
  }

  String.utf8CString.getter();

  v47 = RIOPxrTfTokenCreateWithCString();

LABEL_17:
  if (String.count.getter() < 1)
  {
    v48 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v48 = RIOPxrTfTokenCreateWithCString();
  }

  v49 = v48;
  Token = RIOPxrSdfValueTypeNameCreateToken();
  Attribute = RIOPxrUsdPrimCreateAttribute();
  v52 = RIOPxrVtValueCreateWithToken();
  v53 = RIOPxrUsdAttributeSetValue();

  if ((v53 & 1) == 0)
  {
  }
}

uint64_t key path setter for Xformable.xformTranslateOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 24);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformOrientOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 48);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformScaleOp : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 72);

  return v6(v8, v4, v5);
}

uint64_t key path setter for Xformable.xformOpOrder : Xformable(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v8[0] = v3;
  v8[1] = v2;
  v6 = *(v5 + 96);

  return v6(v8, v4, v5);
}

void *key path getter for BehaviorSchema.triggers : BehaviorSchema@<X0>(void *a1@<X0>, void *(*a2)(void *__return_ptr, uint64_t, uint64_t)@<X3>, void *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v9, v5, v6);
  v8 = v9[1];
  *a3 = v9[0];
  a3[1] = v8;
  return result;
}

uint64_t key path setter for BehaviorSchema.triggers : BehaviorSchema(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11[0] = v7;
  v11[1] = v6;

  return a5(v11, v8, v9);
}

uint64_t SceneDescriptionFoundations.Path.lastPathComponent.getter()
{
  v0 = RIOPxrSdfPathCopyString();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  v8[0] = 47;
  v8[1] = 0xE100000000000000;
  v4 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v1, v3, v8);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[4 * v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
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

void *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X8>)
{
  v35 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v8 = a5;
  v9 = a4;
  v13 = HIBYTE(a5) & 0xF;
  if (a1)
  {
    v14 = (a5 & 0x2000000000000000) != 0 ? HIBYTE(a5) & 0xF : a4 & 0xFFFFFFFFFFFFLL;
    if (v14)
    {
      v15 = 7;
      if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
      {
        v15 = 11;
      }

      v30 = v15 | (v14 << 16);
      v16 = 4 * v14;
      v12 = MEMORY[0x277D84F90];
      v17 = 15;
      do
      {
        v18 = v17 >> 14;
        if (v17 >> 14 == v16)
        {
          break;
        }

        v32 = v12;
        v29 = a1;
        while (2)
        {
          v33 = v17;
          while (1)
          {
            v34[0] = String.subscript.getter();
            v34[1] = v19;
            v20 = v35(v34);
            if (v7)
            {

              return v12;
            }

            v12 = v20;

            if (v12)
            {
              break;
            }

            v17 = String.index(after:)();
            v18 = v17 >> 14;
            if (v17 >> 14 == v16)
            {
              v12 = v32;
              v17 = v33;
              goto LABEL_39;
            }
          }

          if (v33 >> 14 == v18 && (a2 & 1) != 0)
          {
            v17 = String.index(after:)();
            v18 = v17 >> 14;
            if (v17 >> 14 != v16)
            {
              continue;
            }

            v12 = v32;
            goto LABEL_39;
          }

          break;
        }

        v12 = v32;
        if (v18 < v33 >> 14)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return result;
        }

        if (v16 < v18)
        {
          goto LABEL_54;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
        }

        v23 = v12[2];
        v22 = v12[3];
        if (v23 >= v22 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v12);
        }

        v12[2] = v23 + 1;
        v24 = &v12[4 * v23];
        v24[4] = v33;
        v24[5] = v17;
        v24[6] = v9;
        v24[7] = v8;
        v17 = String.index(after:)();
        a1 = v29;
      }

      while (v12[2] != v29);
LABEL_39:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_44:
        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v12);
        }

        v12[2] = v28 + 1;
        v26 = &v12[4 * v28];
        v26[4] = v17;
        v26[5] = v30;
        goto LABEL_47;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      goto LABEL_44;
    }
  }

  if ((a5 & 0x2000000000000000) == 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v25 = 7;
  if (((a5 >> 60) & ((a4 & 0x800000000000000) == 0)) != 0)
  {
    v25 = 11;
  }

  if (v13 || (a2 & 1) == 0)
  {
    v10 = v25 | (v13 << 16);
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v11 = v12[2];
    a6 = v12[3];
    v6 = v11 + 1;
    if (v11 < a6 >> 1)
    {
LABEL_37:
      v12[2] = v6;
      v26 = &v12[4 * v11];
      v26[4] = 15;
      v26[5] = v10;
LABEL_47:
      v26[6] = v9;
      v26[7] = v8;
      return v12;
    }

LABEL_50:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a6 > 1), v6, 1, v12);
    goto LABEL_37;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
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

uint64_t specialized Properties.subscript.setter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (a1)
  {
    if (String.count.getter() <= 0)
    {

      v3 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v3 = RIOPxrTfTokenCreateWithCString();
    }

    Relationship = RIOPxrUsdPrimCreateCreateRelationship();
    v5 = *(a1 + 16);
    if (v5)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v6 = 32;
      do
      {
        v7 = *(a1 + v6);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {
  }
}

uint64_t type metadata completion function for InteractionSpecificationsUSDStageErrors.InteractionType(uint64_t a1)
{
  result = type metadata accessor for __RKEntityTriggerSpecification();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for __RKEntityActionSpecification();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for InteractionSpecificationsUSDStageErrors(uint64_t a1)
{
  type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String)(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, target: UUID));
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType));
    }
  }
}

void type metadata accessor for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String))
  {
    type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (path: SceneDescriptionFoundations.Path, interactionType: InteractionSpecificationsUSDStageErrors.InteractionType, valueName: String));
    }
  }
}

uint64_t outlined init with copy of InteractionSpecificationsUSDStageErrors(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionSpecificationsUSDStageErrors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InteractionSpecificationsUSDStageErrors.InteractionType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InteractionSpecificationsUSDStageErrors.InteractionType(uint64_t a1)
{
  v2 = type metadata accessor for InteractionSpecificationsUSDStageErrors.InteractionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}