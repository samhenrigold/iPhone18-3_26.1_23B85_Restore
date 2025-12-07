uint64_t partial apply for specialized closure #1 in MeshBuffer.init<A>(_:)()
{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &type metadata for MeshJointInfluence);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &type metadata for FloatVector3Packed);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E63B0]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E6448]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E72F0]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E7290]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E7230]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E7668]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E75F8]);
}

{
  return specialized closure #1 in MeshBuffer.init<A>(_:)(&v1, MEMORY[0x1E69E7508]);
}

uint64_t objectdestroy_413Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t objectdestroy_474Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_337Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t type metadata instantiation function for IndexingBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for IndexingBuffer.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ConversionBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ConversionBuffer.ConvertingIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FloatVector3Packed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FloatVector3Packed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void *static RealityFusionSession.createRealityFusionSession(arSession:)(void *a1)
{
  swift_beginAccess();
  v2 = static RealityFusionSession.sharedSession;
  if (!static RealityFusionSession.sharedSession)
  {
    specialized static __ServiceLocator.shared.getter();
    type metadata accessor for RealityFusionSession();
    swift_allocObject();
    if (!a1)
    {
      return specialized RealityFusionSession.init(_:)();
    }

    v8 = a1;

    v2 = specialized RealityFusionSession.init(_:)();

    RealityFusionSession.configure(with:)(v8);

    return v2;
  }

  result = swift_beginAccess();
  v4 = v2[3];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    v2[3] = v6;

    RealityFusionSession.sharedCount.didset();
    if (a1)
    {
      v7 = a1;
      RealityFusionSession.configure(with:)(v7);
    }

    return v2;
  }

  __break(1u);
  return result;
}

double static RealityFusionSession.sharedSession.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static RealityFusionSession.sharedSession.setter(void *a1)
{
  swift_beginAccess();
  static RealityFusionSession.sharedSession = a1;
}

uint64_t key path setter for static RealityFusionSession.sharedSession : RealityFusionSession.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static RealityFusionSession.sharedSession = v1;
}

void key path setter for RealityFusionSession.serviceManager : RealityFusionSession(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *RealityFusionSession.serviceManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void RealityFusionSession.serviceManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t RealityFusionSession.sharedCount.didset()
{
  result = swift_beginAccess();
  if (!*(v0 + 24))
  {
    swift_beginAccess();
    v2 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v2[2])
      {
        v3 = RFServiceManagerGetAnchorManagementService();
        if (v3)
        {
          v4 = v3;
          specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  return result;
}

uint64_t RealityFusionSession.sharedCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  if (!a1)
  {
    swift_beginAccess();
    v4 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v4[2])
      {
        v5 = RFServiceManagerGetAnchorManagementService();
        if (v5)
        {
          v6 = v5;
          specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  return result;
}

uint64_t (*RealityFusionSession.sharedCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  return RealityFusionSession.sharedCount.modify;
}

void RealityFusionSession.sharedCount.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && !*(v3[9] + 24))
  {
    swift_beginAccess();
    v4 = static RealityFusionSession.sharedSession;
    if (static RealityFusionSession.sharedSession)
    {
      swift_beginAccess();
      if (v4[2])
      {
        v5 = RFServiceManagerGetAnchorManagementService();
        if (v5)
        {
          v6 = v5;
          specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          RFAnchorManagementServiceCleanupWithServiceLocator();
        }
      }
    }

    RFServiceManagerCleanUp();
    static RealityFusionSession.sharedSession = 0;
  }

  free(v3);
}

uint64_t RealityFusionSession.__allocating_init(_:)()
{
  swift_allocObject();
  v0 = specialized RealityFusionSession.init(_:)();

  return v0;
}

uint64_t RealityFusionSession.init(_:)(__n128 a1)
{
  v1 = specialized RealityFusionSession.init(_:)();

  return v1;
}

Swift::Void __swiftcall RealityFusionSession.configure(with:)(ARSession with)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = RFServiceManagerGetARKitDataProvider();
  if (v5)
  {
    v6 = v5;
    v7 = RFARKitDataProviderGetARSession();
    type metadata accessor for ARSession();
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      RFARKitDataProviderSetARSession();
      goto LABEL_7;
    }
  }

  v6 = RFARKitDataProviderCreate();
  RFServiceManagerSetARKitDataProvider();
LABEL_7:

  v9 = RFServiceManagerGetAnchorManagementService();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2].super.isa = with.super.isa;
    v26 = partial apply for closure #1 in RealityFusionSession.configure(with:);
    v27 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v25 = &block_descriptor_12_0;
    v12 = _Block_copy(&aBlock);
    v13 = with.super.isa;

    RFAnchorManagementSetOnCustomAnchorCreateCallback();
    _Block_release(v12);
  }

  v14 = RFServiceManagerGetEnvironmentProbePlacementService();
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2].super.isa = with.super.isa;
    v26 = partial apply for closure #2 in RealityFusionSession.configure(with:);
    v27 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ();
    v25 = &block_descriptor_22;
    v17 = _Block_copy(&aBlock);
    v18 = with.super.isa;

    RFEnvironmentProbePlacementServiceSetOnProbeDataCreatedCallback();
    _Block_release(v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v26 = partial apply for closure #3 in RealityFusionSession.configure(with:);
    v27 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ();
    v25 = &block_descriptor_6_0;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    RFEnvironmentProbePlacementServiceSetOnProbeDataRemovedCallback();

    _Block_release(v20);
    v4 = v15;
  }
}

uint64_t RealityFusionSession.__allocating_init(_:arSession:)(uint64_t a1, void *a2)
{
  type metadata accessor for RealityFusionSession();
  swift_allocObject();
  v3 = specialized RealityFusionSession.init(_:)();

  RealityFusionSession.configure(with:)(a2);

  return v3;
}

uint64_t static RealityFusionSession.destroyRealityFusionSession()()
{
  result = swift_beginAccess();
  v1 = static RealityFusionSession.sharedSession;
  if (static RealityFusionSession.sharedSession)
  {
    result = swift_beginAccess();
    v2 = v1[3];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v1[3] = v4;
      if (!v4)
      {
        swift_beginAccess();
        if (v1[2])
        {

          v5 = RFServiceManagerGetAnchorManagementService();
          if (v5)
          {
            v6 = v5;
            specialized static __ServiceLocator.shared.getter();
            swift_beginAccess();
            RFAnchorManagementServiceCleanupWithServiceLocator();
          }
        }

        else
        {
        }

        RFServiceManagerCleanUp();
        static RealityFusionSession.sharedSession = 0;
      }
    }
  }

  return result;
}

uint64_t RealityFusionSession.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t closure #1 in RealityFusionSession.configure(with:)(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  RFAnchorPtrGetTransform();
  v21 = v11;
  *v22 = v10;
  v19 = v13;
  v20 = v12;
  UUID.init()();
  (*(v4 + 16))(v6, v9, v3);
  v14 = objc_allocWithZone(MEMORY[0x1E6986418]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithIdentifier:isa transform:{v22[0], *&v21, *&v20, *&v19}];

  v17 = *(v4 + 8);
  v17(v6, v3);
  RFAnchorPtrSetIdentifier();
  [a2 addAnchor_];

  return (v17)(v9, v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned RFEnvProbeData) -> ()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v9 = *a2;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = *(a1 + 32);

  v7(&v9);
}

uint64_t closure #2 in RealityFusionSession.configure(with:)(_OWORD *a1, void *a2, SEL *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  UUID.init(uuid:)();
  UUID.uuid.getter();
  UUID.init(uuid:)();
  v13 = a1[5];
  v23 = a1[4];
  v24 = v13;
  v14 = a1[3];
  v21 = a1[2];
  v22 = v14;
  v20 = a1[1];
  v15 = objc_allocWithZone(MEMORY[0x1E6986448]);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithIdentifier:isa transform:*&v20 extent:{*&v21, *&v22, *&v23, *&v24}];

  v18 = *(v7 + 8);
  v18(v9, v6);
  [a2 *a3];

  return (v18)(v12, v6);
}

uint64_t __AnyARKitObject.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a2 - 8) + 32);

  return v6(boxed_opaque_existential_1, a1, a2);
}

void RealityFusionSession.configure(with:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v2);
  type metadata accessor for ARSession();
  swift_dynamicCast();
  isa = v3.super.isa;
  RealityFusionSession.configure(with:)(v3);
}

uint64_t specialized RealityFusionSession.init(_:)()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = RFServiceManagerCreate();
  swift_beginAccess();
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = RFMeshReconstructionServiceCreate();
    RFServiceManagerSetMeshReconstructionService();
    v5 = RFAnchorManagementServiceCreate();
    RFServiceManagerSetAnchorManagementService();
    v6 = RFLoggingServiceCreate();
    RFServiceManagerSetLoggingService();
    v7 = RFEnvironmentProbePlacementServiceCreate();
    RFServiceManagerSetEnvironmentProbePlacementService();
    v8 = RFAtmospherePlacementServiceCreate();
    RFServiceManagerSetAtmospherePlacementService();
    v9 = RFAnchorDataProviderCreate();
    RFServiceManagerSetAnchorDataProvider();
  }

  swift_beginAccess();
  *(v0 + 24) = 1;
  swift_beginAccess();
  static RealityFusionSession.sharedSession = v0;

  return v0;
}

double block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t type metadata accessor for ARSession()
{
  result = lazy cache variable for type metadata for ARSession;
  if (!lazy cache variable for type metadata for ARSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ARSession);
  }

  return result;
}

void Array<A>.hasLookAtInteractions.getter(uint64_t a1)
{
  v179 = type metadata accessor for __RKEntityActionSpecification(0);
  v2 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v4 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v127 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v127 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v151 = &v127 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v157 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v160 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v161 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v148 = &v127 - v31;
  v147 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v32 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  if (!v34)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_132;
  }

  v168 = v10;
  v127 = 0;
  v182 = MEMORY[0x1E69E7CC0];
  v132 = v34;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
  v35 = 0;
  v36 = v182;
  v142 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v141 = *(v32 + 72);
  v177 = xmmword_1C1887600;
  while (1)
  {
    v154 = v36;
    v155 = v35;
    v37 = v150;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v142 + v141 * v35, v150, type metadata accessor for __RKEntityInteractionSpecification);
    v38 = *(v147 + 20);
    v39 = v148;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v37 + v38, v148, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v39, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v46 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v177;
    v42 = v47;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v37 + v38, v47 + v46, type metadata accessor for __RKEntityActionSpecification);
LABEL_126:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v37, type metadata accessor for __RKEntityInteractionSpecification);
    v36 = v154;
    v182 = v154;
    v126 = v154[2];
    v125 = v154[3];
    if (v126 >= v125 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1);
      v36 = v182;
    }

    v35 = v155 + 1;
    v36[2] = v126 + 1;
    v36[v126 + 4] = v42;
    if (v35 == v132)
    {
      goto LABEL_132;
    }
  }

  v40 = *(v39 + 8);
  v136 = *(v40 + 16);
  if (!v136)
  {

    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_126;
  }

  v41 = 0;
  v176 = *(v2 + 80);
  v178 = (v176 + 32) & ~v176;
  v139 = v40 + v178;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = v128;
  v44 = v149;
  v45 = v161;
  v170 = v13;
  v131 = v40;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      goto LABEL_140;
    }

    v163 = v42;
    v48 = *(v2 + 72);
    v153 = v41;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v139 + v48 * v41, v45, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v45, v44, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v44, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v52 = v178;
    v51 = swift_allocObject();
    *(v51 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v45, v51 + v52, type metadata accessor for __RKEntityActionSpecification);
LABEL_113:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v45, type metadata accessor for __RKEntityActionSpecification);
    v117 = *(v51 + 16);
    v118 = v163[2];
    v119 = v118 + v117;
    if (__OFADD__(v118, v117))
    {
      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v163;
    if (!isUniquelyReferenced_nonNull_native || v119 > v163[3] >> 1)
    {
      if (v118 <= v119)
      {
        v122 = v118 + v117;
      }

      else
      {
        v122 = v118;
      }

      v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v122, 1, v163);
    }

    v44 = v149;
    v45 = v161;
    if (*(v51 + 16))
    {
      if ((v121[3] >> 1) - v121[2] < v117)
      {
        goto LABEL_152;
      }

      v42 = v121;
      swift_arrayInitWithCopy();

      v13 = v170;
      if (v117)
      {
        v123 = v42[2];
        v90 = __OFADD__(v123, v117);
        v124 = v123 + v117;
        if (v90)
        {
          goto LABEL_156;
        }

        v42[2] = v124;
      }
    }

    else
    {
      v42 = v121;

      v13 = v170;
      if (v117)
      {
        goto LABEL_147;
      }
    }

    v41 = v153 + 1;
    v40 = v131;
    if (v153 + 1 == v136)
    {

      v37 = v150;
      goto LABEL_126;
    }
  }

  v49 = *(v44 + 8);
  v135 = *(v49 + 16);
  if (!v135)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_112:

    goto LABEL_113;
  }

  v50 = 0;
  v138 = v49 + v178;
  v51 = MEMORY[0x1E69E7CC0];
  v130 = v49;
  while (1)
  {
    if (v50 >= *(v49 + 16))
    {
      goto LABEL_141;
    }

    v162 = v51;
    v152 = v50;
    v53 = v160;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v138 + v50 * v48, v160, type metadata accessor for __RKEntityActionSpecification);
    v54 = v145;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v53, v145, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v54, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v59 = v178;
      v57 = swift_allocObject();
      *(v57 + 16) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v53, v57 + v59, type metadata accessor for __RKEntityActionSpecification);
      goto LABEL_99;
    }

    v55 = *(v54 + 8);
    v137 = *(v55 + 16);
    if (v137)
    {
      break;
    }

    v57 = MEMORY[0x1E69E7CC0];
LABEL_98:

LABEL_99:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v53, type metadata accessor for __RKEntityActionSpecification);
    v109 = *(v57 + 16);
    v110 = v162[2];
    v111 = v110 + v109;
    if (__OFADD__(v110, v109))
    {
      goto LABEL_148;
    }

    v112 = swift_isUniquelyReferenced_nonNull_native();
    v113 = v162;
    if (!v112 || v111 > v162[3] >> 1)
    {
      if (v110 <= v111)
      {
        v114 = v110 + v109;
      }

      else
      {
        v114 = v110;
      }

      v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112, v114, 1, v162);
    }

    v45 = v161;
    if (*(v57 + 16))
    {
      if ((v113[3] >> 1) - v113[2] < v109)
      {
        goto LABEL_153;
      }

      v51 = v113;
      swift_arrayInitWithCopy();

      if (v109)
      {
        v115 = *(v51 + 16);
        v90 = __OFADD__(v115, v109);
        v116 = v115 + v109;
        if (v90)
        {
          goto LABEL_157;
        }

        *(v51 + 16) = v116;
      }
    }

    else
    {
      v51 = v113;

      if (v109)
      {
        goto LABEL_149;
      }
    }

    v50 = v152 + 1;
    v49 = v130;
    if (v152 + 1 == v135)
    {
      goto LABEL_112;
    }
  }

  v56 = 0;
  v140 = v55 + v178;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = v157;
  v129 = v2;
  v172 = v7;
  v173 = v4;
  v133 = v55;
  while (1)
  {
    if (v56 >= *(v55 + 16))
    {
      goto LABEL_139;
    }

    v164 = v57;
    v156 = v56;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v140 + v56 * v48, v58, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v58, v43, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v43, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v64 = v178;
      v62 = swift_allocObject();
      *(v62 + 1) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v58, v62 + v64, type metadata accessor for __RKEntityActionSpecification);
      goto LABEL_84;
    }

    v60 = *(v43 + 8);
    v143 = *(v60 + 16);
    if (v143)
    {
      break;
    }

    v62 = MEMORY[0x1E69E7CC0];

LABEL_83:
    v58 = v157;
LABEL_84:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v58, type metadata accessor for __RKEntityActionSpecification);
    v101 = v62[2];
    v102 = v164[2];
    v103 = v102 + v101;
    if (__OFADD__(v102, v101))
    {
      goto LABEL_144;
    }

    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v164;
    if (!v104 || v103 > v164[3] >> 1)
    {
      if (v102 <= v103)
      {
        v106 = v102 + v101;
      }

      else
      {
        v106 = v102;
      }

      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v104, v106, 1, v164);
    }

    if (v62[2])
    {
      if ((v105[3] >> 1) - v105[2] < v101)
      {
        goto LABEL_151;
      }

      v57 = v105;
      swift_arrayInitWithCopy();

      v58 = v157;
      if (v101)
      {
        v107 = *(v57 + 16);
        v90 = __OFADD__(v107, v101);
        v108 = v107 + v101;
        if (v90)
        {
          goto LABEL_155;
        }

        *(v57 + 16) = v108;
      }
    }

    else
    {
      v57 = v105;

      v58 = v157;
      if (v101)
      {
        goto LABEL_145;
      }
    }

    v56 = v156 + 1;
    v53 = v160;
    v55 = v133;
    if (v156 + 1 == v137)
    {
      goto LABEL_98;
    }
  }

  v61 = 0;
  v144 = v60 + v178;
  v62 = MEMORY[0x1E69E7CC0];
  v63 = v158;
  v134 = v60;
  while (1)
  {
    if (v61 >= *(v60 + 16))
    {
      goto LABEL_138;
    }

    v166 = v62;
    v159 = v61;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v144 + v61 * v48, v63, type metadata accessor for __RKEntityActionSpecification);
    v66 = v151;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v63, v151, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v66, type metadata accessor for __RKEntityActionSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
      v92 = v178;
      v68 = swift_allocObject();
      *(v68 + 16) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v63, v68 + v92, type metadata accessor for __RKEntityActionSpecification);
      v93 = v63;
      goto LABEL_69;
    }

    v67 = *(v66 + 8);
    v68 = MEMORY[0x1E69E7CC0];
    v181 = MEMORY[0x1E69E7CC0];
    v167 = *(v67 + 16);
    if (v167)
    {
      break;
    }

LABEL_68:
    v93 = v158;
LABEL_69:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v93, type metadata accessor for __RKEntityActionSpecification);
    v94 = *(v68 + 16);
    v95 = v166[2];
    v96 = v95 + v94;
    if (__OFADD__(v95, v94))
    {
      goto LABEL_142;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v62 = v166;
    if (v97 && v96 <= v166[3] >> 1)
    {
      if (*(v68 + 16))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v95 <= v96)
      {
        v98 = v95 + v94;
      }

      else
      {
        v98 = v95;
      }

      v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97, v98, 1, v166);
      if (*(v68 + 16))
      {
LABEL_78:
        if ((v62[3] >> 1) - v62[2] < v94)
        {
          goto LABEL_150;
        }

        swift_arrayInitWithCopy();

        v63 = v158;
        v60 = v134;
        v65 = v159;
        if (v94)
        {
          v99 = v62[2];
          v90 = __OFADD__(v99, v94);
          v100 = v99 + v94;
          if (v90)
          {
            goto LABEL_154;
          }

          v62[2] = v100;
        }

        goto LABEL_29;
      }
    }

    v63 = v158;
    v60 = v134;
    v65 = v159;
    if (v94)
    {
      goto LABEL_143;
    }

LABEL_29:
    v61 = v65 + 1;
    if (v61 == v143)
    {

      v43 = v128;
      goto LABEL_83;
    }
  }

  v69 = 0;
  v169 = v67 + v178;
  v165 = v67;
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      return;
    }

    v171 = v69;
    v73 = v170;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v169 + v69 * v48, v170, type metadata accessor for __RKEntityActionSpecification);
    v74 = v168;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v73, v168, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v74, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v70 = v178;
    v71 = swift_allocObject();
    *(v71 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v73, v71 + v70, type metadata accessor for __RKEntityActionSpecification);
    v72 = v73;
LABEL_35:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v72, type metadata accessor for __RKEntityActionSpecification);
    v69 = v171 + 1;
    specialized Array.append<A>(contentsOf:)(v71);
    v67 = v165;
    if (v69 == v167)
    {

      v68 = v181;
      goto LABEL_68;
    }
  }

  v75 = *(v74 + 8);
  v71 = MEMORY[0x1E69E7CC0];
  v180 = MEMORY[0x1E69E7CC0];
  v76 = *(v75 + 16);
  if (!v76)
  {

LABEL_64:
    v72 = v170;
    goto LABEL_35;
  }

  v77 = 0;
  v146 = v75;
  v78 = v75 + v178;
  v174 = v75 + v178;
  v175 = v76;
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v78 + v77 * v48, v7, type metadata accessor for __RKEntityActionSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v7, v4, type metadata accessor for __RKEntityActionSpecification);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v4, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v79 = v178;
    v80 = swift_allocObject();
    *(v80 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v7, v80 + v79, type metadata accessor for __RKEntityActionSpecification);
LABEL_41:
    ++v77;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v7, type metadata accessor for __RKEntityActionSpecification);
    specialized Array.append<A>(contentsOf:)(v80);
    if (v77 == v76)
    {

      v71 = v180;
      v2 = v129;
      goto LABEL_64;
    }
  }

  v81 = *(v4 + 1);
  v82 = *(v81 + 16);

  if (!v82)
  {
    v80 = MEMORY[0x1E69E7CC0];
LABEL_61:
    swift_bridgeObjectRelease_n();
    v7 = v172;
    v4 = v173;
    v78 = v174;
    v76 = v175;
    goto LABEL_41;
  }

  v83 = v81 + v178;
  v80 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    __RKEntityActionSpecification.flattened.getter();
    v84 = v36[2];
    v85 = *(v80 + 16);
    v86 = v85 + v84;
    if (__OFADD__(v85, v84))
    {
      break;
    }

    v87 = v36;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if (v36 && v86 <= *(v80 + 24) >> 1)
    {
      if (v87[2])
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v85 <= v86)
      {
        v88 = v85 + v84;
      }

      else
      {
        v88 = v85;
      }

      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36, v88, 1, v80);
      v80 = v36;
      if (v87[2])
      {
LABEL_56:
        if ((*(v80 + 24) >> 1) - *(v80 + 16) < v84)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v84)
        {
          v89 = *(v80 + 16);
          v90 = __OFADD__(v89, v84);
          v91 = v89 + v84;
          if (v90)
          {
            goto LABEL_136;
          }

          *(v80 + 16) = v91;
        }

        goto LABEL_46;
      }
    }

    if (v84)
    {
      goto LABEL_134;
    }

LABEL_46:
    v83 += v48;
    if (!--v82)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_132:
  specialized Sequence.filter(_:)(v36);
}

void Array<A>.hasProximityTriggers.getter(uint64_t a1)
{
  v179 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v2 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v4 = v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v128 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v128 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v128 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v151 = (v128 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v158 = v128 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v129 = v128 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v157 = v128 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v146 = v128 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v160 = v128 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v150 = v128 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v161 = v128 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v148 = v128 - v31;
  v32 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v149 = v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  if (!v35)
  {
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_132;
  }

  v168 = v10;
  v128[1] = 0;
  v182 = MEMORY[0x1E69E7CC0];
  v133 = v35;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
  v36 = 0;
  v37 = v182;
  v143 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v142 = *(v33 + 72);
  v177 = xmmword_1C1887600;
  v38 = v149;
  while (1)
  {
    v154 = v37;
    v155 = v36;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v143 + v142 * v36, v38, type metadata accessor for __RKEntityInteractionSpecification);
    v39 = v148;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v38, v148, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v39, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v46 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v177;
    v42 = v47;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v38, v47 + v46, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_126:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v38, type metadata accessor for __RKEntityInteractionSpecification);
    v37 = v154;
    v182 = v154;
    v127 = v154[2];
    v126 = v154[3];
    if (v127 >= v126 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1);
      v38 = v149;
      v37 = v182;
    }

    v36 = v155 + 1;
    v37[2] = v127 + 1;
    v37[v127 + 4] = v42;
    if (v36 == v133)
    {
      goto LABEL_132;
    }
  }

  v40 = *v39;
  v137 = *(*v39 + 16);
  if (!v137)
  {

    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_126;
  }

  v41 = 0;
  v176 = *(v2 + 80);
  v178 = (v176 + 32) & ~v176;
  v140 = v40 + v178;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = v129;
  v44 = v150;
  v45 = v161;
  v170 = v13;
  v132 = v40;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      goto LABEL_140;
    }

    v163 = v42;
    v49 = *(v2 + 72);
    v153 = v41;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v140 + v49 * v41, v45, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v45, v44, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v44, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v53 = v178;
    v52 = swift_allocObject();
    *(v52 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v45, v52 + v53, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_113:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v45, type metadata accessor for __RKEntityTriggerSpecification);
    v118 = *(v52 + 16);
    v119 = v163[2];
    v120 = v119 + v118;
    if (__OFADD__(v119, v118))
    {
      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v163;
    if (!isUniquelyReferenced_nonNull_native || v120 > v163[3] >> 1)
    {
      if (v119 <= v120)
      {
        v123 = v119 + v118;
      }

      else
      {
        v123 = v119;
      }

      v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v123, 1, v163);
    }

    v44 = v150;
    v45 = v161;
    if (*(v52 + 16))
    {
      if ((v122[3] >> 1) - v122[2] < v118)
      {
        goto LABEL_152;
      }

      v42 = v122;
      swift_arrayInitWithCopy();

      v13 = v170;
      v40 = v132;
      v48 = v153;
      if (v118)
      {
        v124 = v42[2];
        v91 = __OFADD__(v124, v118);
        v125 = v124 + v118;
        if (v91)
        {
          goto LABEL_156;
        }

        v42[2] = v125;
      }
    }

    else
    {
      v42 = v122;

      v13 = v170;
      v40 = v132;
      v48 = v153;
      if (v118)
      {
        goto LABEL_147;
      }
    }

    v41 = v48 + 1;
    v38 = v149;
    if (v41 == v137)
    {

      goto LABEL_126;
    }
  }

  v50 = *v44;
  v136 = *(*v44 + 16);
  if (!v136)
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_112:

    goto LABEL_113;
  }

  v51 = 0;
  v139 = v50 + v178;
  v52 = MEMORY[0x1E69E7CC0];
  v131 = v50;
  while (1)
  {
    if (v51 >= *(v50 + 16))
    {
      goto LABEL_141;
    }

    v162 = v52;
    v152 = v51;
    v54 = v160;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v139 + v51 * v49, v160, type metadata accessor for __RKEntityTriggerSpecification);
    v55 = v146;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v54, v146, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v55, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v60 = v178;
      v58 = swift_allocObject();
      *(v58 + 16) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v54, v58 + v60, type metadata accessor for __RKEntityTriggerSpecification);
      goto LABEL_99;
    }

    v56 = *v55;
    v138 = *(*v55 + 16);
    if (v138)
    {
      break;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_98:

LABEL_99:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v54, type metadata accessor for __RKEntityTriggerSpecification);
    v110 = *(v58 + 16);
    v111 = v162[2];
    v112 = v111 + v110;
    if (__OFADD__(v111, v110))
    {
      goto LABEL_148;
    }

    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v162;
    if (!v113 || v112 > v162[3] >> 1)
    {
      if (v111 <= v112)
      {
        v115 = v111 + v110;
      }

      else
      {
        v115 = v111;
      }

      v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v113, v115, 1, v162);
    }

    v45 = v161;
    if (*(v58 + 16))
    {
      if ((v114[3] >> 1) - v114[2] < v110)
      {
        goto LABEL_153;
      }

      v52 = v114;
      swift_arrayInitWithCopy();

      if (v110)
      {
        v116 = *(v52 + 16);
        v91 = __OFADD__(v116, v110);
        v117 = v116 + v110;
        if (v91)
        {
          goto LABEL_157;
        }

        *(v52 + 16) = v117;
      }
    }

    else
    {
      v52 = v114;

      if (v110)
      {
        goto LABEL_149;
      }
    }

    v51 = v152 + 1;
    v50 = v131;
    if (v152 + 1 == v136)
    {
      goto LABEL_112;
    }
  }

  v57 = 0;
  v141 = v56 + v178;
  v58 = MEMORY[0x1E69E7CC0];
  v59 = v157;
  v130 = v2;
  v172 = v7;
  v173 = v4;
  v134 = v56;
  while (1)
  {
    if (v57 >= *(v56 + 16))
    {
      goto LABEL_139;
    }

    v164 = v58;
    v156 = v57;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v141 + v57 * v49, v59, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v59, v43, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v43, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v65 = v178;
      v63 = swift_allocObject();
      *(v63 + 1) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v59, v63 + v65, type metadata accessor for __RKEntityTriggerSpecification);
      goto LABEL_84;
    }

    v61 = *v43;
    v144 = *(*v43 + 16);
    if (v144)
    {
      break;
    }

    v63 = MEMORY[0x1E69E7CC0];

LABEL_83:
    v59 = v157;
LABEL_84:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v59, type metadata accessor for __RKEntityTriggerSpecification);
    v102 = v63[2];
    v103 = v164[2];
    v104 = v103 + v102;
    if (__OFADD__(v103, v102))
    {
      goto LABEL_144;
    }

    v105 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v164;
    if (!v105 || v104 > v164[3] >> 1)
    {
      if (v103 <= v104)
      {
        v107 = v103 + v102;
      }

      else
      {
        v107 = v103;
      }

      v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105, v107, 1, v164);
    }

    if (v63[2])
    {
      if ((v106[3] >> 1) - v106[2] < v102)
      {
        goto LABEL_151;
      }

      v58 = v106;
      swift_arrayInitWithCopy();

      v59 = v157;
      if (v102)
      {
        v108 = *(v58 + 16);
        v91 = __OFADD__(v108, v102);
        v109 = v108 + v102;
        if (v91)
        {
          goto LABEL_155;
        }

        *(v58 + 16) = v109;
      }
    }

    else
    {
      v58 = v106;

      v59 = v157;
      if (v102)
      {
        goto LABEL_145;
      }
    }

    v57 = v156 + 1;
    v54 = v160;
    v56 = v134;
    if (v156 + 1 == v138)
    {
      goto LABEL_98;
    }
  }

  v62 = 0;
  v145 = v61 + v178;
  v63 = MEMORY[0x1E69E7CC0];
  v64 = v158;
  v135 = v61;
  while (1)
  {
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_138;
    }

    v166 = v63;
    v159 = v62;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v145 + v62 * v49, v64, type metadata accessor for __RKEntityTriggerSpecification);
    v67 = v151;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v64, v151, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v67, type metadata accessor for __RKEntityTriggerSpecification);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
      v93 = v178;
      v69 = swift_allocObject();
      *(v69 + 16) = v177;
      _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v64, v69 + v93, type metadata accessor for __RKEntityTriggerSpecification);
      v94 = v64;
      goto LABEL_69;
    }

    v68 = *v67;
    v69 = MEMORY[0x1E69E7CC0];
    v181 = MEMORY[0x1E69E7CC0];
    v167 = *(v68 + 16);
    if (v167)
    {
      break;
    }

LABEL_68:
    v94 = v158;
LABEL_69:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v94, type metadata accessor for __RKEntityTriggerSpecification);
    v95 = *(v69 + 16);
    v96 = v166[2];
    v97 = v96 + v95;
    if (__OFADD__(v96, v95))
    {
      goto LABEL_142;
    }

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v166;
    if (v98 && v97 <= v166[3] >> 1)
    {
      if (*(v69 + 16))
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v96 <= v97)
      {
        v99 = v96 + v95;
      }

      else
      {
        v99 = v96;
      }

      v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v98, v99, 1, v166);
      if (*(v69 + 16))
      {
LABEL_78:
        if ((v63[3] >> 1) - v63[2] < v95)
        {
          goto LABEL_150;
        }

        swift_arrayInitWithCopy();

        v64 = v158;
        v61 = v135;
        v66 = v159;
        if (v95)
        {
          v100 = v63[2];
          v91 = __OFADD__(v100, v95);
          v101 = v100 + v95;
          if (v91)
          {
            goto LABEL_154;
          }

          v63[2] = v101;
        }

        goto LABEL_29;
      }
    }

    v64 = v158;
    v61 = v135;
    v66 = v159;
    if (v95)
    {
      goto LABEL_143;
    }

LABEL_29:
    v62 = v66 + 1;
    if (v62 == v144)
    {

      v43 = v129;
      goto LABEL_83;
    }
  }

  v70 = 0;
  v169 = v68 + v178;
  v165 = v68;
  while (1)
  {
    if (v70 >= *(v68 + 16))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      return;
    }

    v171 = v70;
    v74 = v170;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v169 + v70 * v49, v170, type metadata accessor for __RKEntityTriggerSpecification);
    v75 = v168;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v74, v168, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v75, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v71 = v178;
    v72 = swift_allocObject();
    *(v72 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v74, v72 + v71, type metadata accessor for __RKEntityTriggerSpecification);
    v73 = v74;
LABEL_35:
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v73, type metadata accessor for __RKEntityTriggerSpecification);
    v70 = v171 + 1;
    specialized Array.append<A>(contentsOf:)(v72);
    v68 = v165;
    if (v70 == v167)
    {

      v69 = v181;
      goto LABEL_68;
    }
  }

  v76 = *v75;
  v72 = MEMORY[0x1E69E7CC0];
  v180 = MEMORY[0x1E69E7CC0];
  v77 = *(v76 + 16);
  if (!v77)
  {

LABEL_64:
    v73 = v170;
    goto LABEL_35;
  }

  v78 = 0;
  v147 = v76;
  v79 = v76 + v178;
  v174 = v76 + v178;
  v175 = v77;
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v79 + v78 * v49, v7, type metadata accessor for __RKEntityTriggerSpecification);
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v7, v4, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      break;
    }

    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v4, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v80 = v178;
    v81 = swift_allocObject();
    *(v81 + 16) = v177;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v7, v81 + v80, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_41:
    ++v78;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v7, type metadata accessor for __RKEntityTriggerSpecification);
    specialized Array.append<A>(contentsOf:)(v81);
    if (v78 == v77)
    {

      v72 = v180;
      v2 = v130;
      goto LABEL_64;
    }
  }

  v82 = *v4;
  v83 = *(*v4 + 16);

  if (!v83)
  {
    v81 = MEMORY[0x1E69E7CC0];
LABEL_61:
    swift_bridgeObjectRelease_n();
    v7 = v172;
    v4 = v173;
    v79 = v174;
    v77 = v175;
    goto LABEL_41;
  }

  v84 = v82 + v178;
  v81 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    __RKEntityTriggerSpecification.flattened.getter();
    v85 = v37[2];
    v86 = *(v81 + 16);
    v87 = v86 + v85;
    if (__OFADD__(v86, v85))
    {
      break;
    }

    v88 = v37;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    if (v37 && v87 <= *(v81 + 24) >> 1)
    {
      if (v88[2])
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v86 <= v87)
      {
        v89 = v86 + v85;
      }

      else
      {
        v89 = v86;
      }

      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v37, v89, 1, v81);
      v81 = v37;
      if (v88[2])
      {
LABEL_56:
        if ((*(v81 + 24) >> 1) - *(v81 + 16) < v85)
        {
          goto LABEL_135;
        }

        swift_arrayInitWithCopy();

        if (v85)
        {
          v90 = *(v81 + 16);
          v91 = __OFADD__(v90, v85);
          v92 = v90 + v85;
          if (v91)
          {
            goto LABEL_136;
          }

          *(v81 + 16) = v92;
        }

        goto LABEL_46;
      }
    }

    if (v85)
    {
      goto LABEL_134;
    }

LABEL_46:
    v84 += v49;
    if (!--v83)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_132:
  specialized Sequence.filter(_:)(v37);
}

void __RKEntityActionSpecification.flattened.getter()
{
  v1 = v0;
  v2 = type metadata accessor for __RKEntityActionSpecification(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v27 - v7, type metadata accessor for __RKEntityActionSpecification);
  v27[1] = v2;
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityActionSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C1887600;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v26 + v25, type metadata accessor for __RKEntityActionSpecification);
    return;
  }

  v9 = *(v8 + 1);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_20:

    return;
  }

  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27[0] = *(v8 + 1);
  v12 = v9 + v11;
  v13 = *(v3 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v12, v5, type metadata accessor for __RKEntityActionSpecification);
    __RKEntityActionSpecification.flattened.getter();
    v16 = v15;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v5, type metadata accessor for __RKEntityActionSpecification);
    v17 = *(v16 + 16);
    v18 = v14[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v14[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v14);
      if (*(v16 + 16))
      {
LABEL_15:
        if ((v14[3] >> 1) - v14[2] < v17)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = v14[2];
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_24;
          }

          v14[2] = v24;
        }

        goto LABEL_5;
      }
    }

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_5:
    v12 += v13;
    if (!--v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void __RKEntityTriggerSpecification.flattened.getter()
{
  v1 = v0;
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - v7;
  _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v27 - v7, type metadata accessor for __RKEntityTriggerSpecification);
  v27[1] = v2;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v8, type metadata accessor for __RKEntityTriggerSpecification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR);
    v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C1887600;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v1, v26 + v25, type metadata accessor for __RKEntityTriggerSpecification);
    return;
  }

  v9 = *v8;
  v10 = *(*v8 + 16);
  if (!v10)
  {
LABEL_20:

    return;
  }

  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v27[0] = *v8;
  v12 = v9 + v11;
  v13 = *(v3 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v12, v5, type metadata accessor for __RKEntityTriggerSpecification);
    __RKEntityTriggerSpecification.flattened.getter();
    v16 = v15;
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v5, type metadata accessor for __RKEntityTriggerSpecification);
    v17 = *(v16 + 16);
    v18 = v14[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v14[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v14);
      if (*(v16 + 16))
      {
LABEL_15:
        if ((v14[3] >> 1) - v14[2] < v17)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v22 = v14[2];
          v23 = __OFADD__(v22, v17);
          v24 = v22 + v17;
          if (v23)
          {
            goto LABEL_24;
          }

          v14[2] = v24;
        }

        goto LABEL_5;
      }
    }

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_5:
    v12 += v13;
    if (!--v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void specialized Sequence.filter(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v36 - v6;
  v7 = type metadata accessor for __RKEntityActionSpecification(0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v36 - v13;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v18 = (v17 + 56);
  v19 = a1 + 32;
  v45 = v17 + 48;
  v46 = v17;
  v40 = MEMORY[0x1E69E7CC0];
  v43 = v20;
  v44 = a1;
  while (1)
  {
    if (!v15)
    {
      goto LABEL_5;
    }

    v21 = *(v15 + 16);
    if (v14 != v21)
    {
      break;
    }

    (*v18)(v4, 1, 1, v7, v12);
    outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
LABEL_5:
    v22 = *(a1 + 16);
    v23 = v48;
    if (v16 == v22)
    {
LABEL_24:

      (*v18)(v23, 1, 1, v7);
LABEL_25:

      outlined destroy of BodyTrackingComponent?(v23, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
      return;
    }

    if (v16 >= v22)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    while (1)
    {
      v15 = *(v19 + 8 * v16);

      if (v15)
      {
        break;
      }

LABEL_10:
      ++v16;
      v24 = *(a1 + 16);
      if (v16 == v24)
      {
        goto LABEL_24;
      }

      if (v16 >= v24)
      {
        goto LABEL_27;
      }
    }

    if (!*(v15 + 16))
    {
      (*v18)(v4, 1, 1, v7);
      outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
      goto LABEL_10;
    }

    v14 = 0;
    ++v16;
LABEL_16:
    v25 = v46;
    v39 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v38 = *(v46 + 72);
    v26 = v23;
    v27 = v14;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v15 + v39 + v38 * v14, v4, type metadata accessor for __RKEntityActionSpecification);
    (*(v25 + 56))(v4, 0, 1, v7);
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v4, v26, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
    if ((*(v25 + 48))(v26, 1, v7) == 1)
    {

      v23 = v26;
      goto LABEL_25;
    }

    v47 = v27 + 1;
    v28 = v41;
    _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v26, v41, type metadata accessor for __RKEntityActionSpecification);
    v29 = v42;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v28, v42, type metadata accessor for __RKEntityActionSpecification);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v29, type metadata accessor for __RKEntityActionSpecification);
    if (EnumCaseMultiPayload == 17)
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v28, v37, type metadata accessor for __RKEntityActionSpecification);
      v31 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v31;
      a1 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
        v31 = v49;
      }

      v7 = v43;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v40 = v34 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v35 = v40;
        v31 = v49;
      }

      *(v31 + 16) = v35;
      v40 = v31;
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v37, v31 + v39 + v34 * v38, type metadata accessor for __RKEntityActionSpecification);
      v14 = v47;
    }

    else
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v28, type metadata accessor for __RKEntityActionSpecification);
      v7 = v43;
      a1 = v44;
      v14 = v47;
    }
  }

  v23 = v48;
  if (v14 < v21)
  {
    goto LABEL_16;
  }

LABEL_28:
  __break(1u);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v36 - v6;
  v7 = type metadata accessor for __RKEntityTriggerSpecification(0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = 0;
  v15 = (v14 + 56);
  v16 = a1 + 32;
  v44 = v14 + 48;
  v45 = v14;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = &v36 - v17;
  v48 = v18;
  v42 = v11;
  v43 = a1;
LABEL_4:
  v20 = *(a1 + 16);
  if (v13 == v20)
  {
LABEL_23:

    (*v15)(v47, 1, 1, v48);
LABEL_24:

    outlined destroy of BodyTrackingComponent?(v47, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    return;
  }

  if (v13 >= v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  while (1)
  {
    v21 = *(v16 + 8 * v13);

    if (v21)
    {
      break;
    }

LABEL_9:
    ++v13;
    v23 = *(a1 + 16);
    if (v13 == v23)
    {
      goto LABEL_23;
    }

    if (v13 >= v23)
    {
      goto LABEL_26;
    }
  }

  v19 = *(v21 + 16);
  v22 = v48;
  if (!v19)
  {
    (*v15)(v4, 1, 1, v48);
    outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    goto LABEL_9;
  }

  v24 = 0;
  ++v13;
  while (v24 < v19)
  {
    v25 = v45;
    v39 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v38 = *(v45 + 72);
    v26 = v22;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v21 + v39 + v38 * v24, v4, type metadata accessor for __RKEntityTriggerSpecification);
    (*(v25 + 56))(v4, 0, 1, v26);
    v27 = v47;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v4, v47, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
    if ((*(v25 + 48))(v27, 1, v26) == 1)
    {

      goto LABEL_24;
    }

    v46 = v24 + 1;
    v28 = v41;
    _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v47, v41, type metadata accessor for __RKEntityTriggerSpecification);
    v29 = v42;
    _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(v28, v42, type metadata accessor for __RKEntityTriggerSpecification);
    if (swift_getEnumCaseMultiPayload())
    {
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v29, type metadata accessor for __RKEntityTriggerSpecification);
      _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(v28, type metadata accessor for __RKEntityTriggerSpecification);
    }

    else
    {
      v30 = type metadata accessor for UUID();
      (*(*(v30 - 8) + 8))(v29, v30);
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v28, v37, type metadata accessor for __RKEntityTriggerSpecification);
      v31 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
        v31 = v49;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v40 = v34 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v35 = v40;
        v31 = v49;
      }

      *(v31 + 16) = v35;
      v40 = v31;
      _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v37, v31 + v39 + v34 * v38, type metadata accessor for __RKEntityTriggerSpecification);
    }

    v22 = v48;
    v24 = v46;
    a1 = v43;
    v19 = *(v21 + 16);
    if (v46 == v19)
    {
      (*v15)(v4, 1, 1, v48);
      outlined destroy of BodyTrackingComponent?(v4, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
      goto LABEL_4;
    }
  }

LABEL_27:
  __break(1u);
}

BOOL Scene.hasLookAtOrProximityInteractions.getter()
{
  v82 = type metadata accessor for Data.Deallocator();
  v1 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v69 - v5;
  v83 = 91;
  v84 = 0xE100000000000000;
  v85 = 0;
  v86 = 0xE000000000000000;
  v87 = v0;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v85, v86);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = v83;
  v8 = v84;
  v10 = Scene.__interactionService.getter();
  type metadata accessor for __RKEntityInteractionManager();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
LABEL_32:
    swift_unknownObjectRelease();
    v83 = v9;
    v84 = v8;
    v38 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v38, &v83);

    return 0;
  }

  v12 = v11;
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration)
  {
    v83 = v9;
    v84 = v8;
    v40 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v40, &v83);

    swift_unknownObjectRelease();
    return 0;
  }

  v78 = v1;
  v73 = v9;
  v74 = v10;
  v75 = v8;
  v76 = v3;
  closure #1 in __RKEntityInteractionManager.entitiesWithInteractionSpecifications()(v12, *(static __RKEntityInteractionsComponent.registration + 3));
  v8 = v13;
  v87 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    goto LABEL_75;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v15 = MEMORY[0x1E69E7CC0];
  v9 = &static ComponentInfo.Platform.macOS;
  v80 = v8;
  if (!v14)
  {
    v81 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_38;
  }

  v79 = v6;
  v6 = 0;
  v81 = 0;
  v16 = v8 & 0xC000000000000001;
  v17 = v8 & 0xFFFFFFFFFFFFFF8;
  LODWORD(v72) = *MEMORY[0x1E6969010];
  v71 = (v78 + 13);
  v70 = (v78 + 1);
  do
  {
    if (v16)
    {
      MEMORY[0x1C68F41F0](v6, v8);
      v18 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v6 >= *(v17 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      v14 = __CocoaSet.count.getter();
      goto LABEL_5;
    }

    v18 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_31;
    }

LABEL_12:
    if (v9[226] && REEntityGetCustomComponent() && (Object = RECustomComponentGetObject()) != 0)
    {
      v20 = *(Object + 16);
      if (v20)
      {
      }

      else
      {
        v23 = *Object;
        if (*Object)
        {
          v24 = strlen(*Object);
          v25 = v79;
          (*v71)(v79, v72, v82);
          v26 = Data.Deallocator._deallocator.getter();
          v77 = v27;
          if (v24)
          {
            v69 = v26;
            type metadata accessor for __DataStorage();
            swift_allocObject();

            v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
            v29 = __DataStorage._capacity.modify();
            *v30 |= 0x8000000000000000;
            v31.n128_f64[0] = v29(&v83, 0);
            v32 = specialized Data._Representation.init(_:count:)(v28, v24, v31);
            v34 = v33;

            v35 = v79;
          }

          else
          {
            v36 = Data.Deallocator._deallocator.getter();
            v36(v23, 0);

            v32 = 0;
            v34 = 0xC000000000000000;
            v35 = v25;
          }

          (*v70)(v35, v82);
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
          lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
          v77 = v34;
          v37 = v81;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (v37)
          {

            outlined consume of Data._Representation(v32, v77);

            v81 = 0;
            v20 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v81 = 0;

            outlined consume of Data._Representation(v32, v77);
            v20 = v83;
          }

          v8 = v80;
          v9 = &static ComponentInfo.Platform.macOS;
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
          v9 = &static ComponentInfo.Platform.macOS;
        }
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    Array<A>.hasLookAtInteractions.getter(v20);
    v22 = v21;

    if (v22)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v6;
  }

  while (v18 != v14);
  v39 = v87;
  v15 = MEMORY[0x1E69E7CC0];
  if (v87 < 0)
  {
LABEL_76:
    v42 = __CocoaSet.count.getter();
    goto LABEL_40;
  }

LABEL_38:
  if ((v39 & 0x4000000000000000) != 0)
  {
    goto LABEL_76;
  }

  v42 = *(v39 + 16);
LABEL_40:

  v87 = v15;
  if (!v14)
  {
    goto LABEL_68;
  }

  v70 = v42;
  v43 = 0;
  v6 = (v8 & 0xC000000000000001);
  v44 = v8 & 0xFFFFFFFFFFFFFF8;
  LODWORD(v77) = *MEMORY[0x1E6969010];
  v72 = (v78 + 13);
  ++v78;
  v79 = v8 & 0xC000000000000001;
  while (2)
  {
    if (v6)
    {
      MEMORY[0x1C68F41F0](v43, v8);
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      goto LABEL_47;
    }

    if (v43 >= *(v44 + 16))
    {
      goto LABEL_74;
    }

    v45 = v43 + 1;
    if (!__OFADD__(v43, 1))
    {
LABEL_47:
      if (v9[226] && REEntityGetCustomComponent() && (v46 = RECustomComponentGetObject()) != 0)
      {
        v47 = *(v46 + 16);
        if (v47)
        {
        }

        else
        {
          v50 = *v46;
          if (*v46)
          {
            v51 = strlen(*v46);
            v52 = v76;
            (*v72)(v76, v77, v82);
            v53 = Data.Deallocator._deallocator.getter();
            if (v51)
            {
              v71 = v53;
              type metadata accessor for __DataStorage();
              swift_allocObject();

              v54 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
              v55 = __DataStorage._capacity.modify();
              *v56 |= 0x8000000000000000;
              v57.n128_f64[0] = v55(&v83, 0);
              v51 = specialized Data._Representation.init(_:count:)(v54, v51, v57);
              v59 = v58;
            }

            else
            {
              v60 = Data.Deallocator._deallocator.getter();
              v60(v50, 0);

              v59 = 0xC000000000000000;
            }

            (*v78)(v52, v82);
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
            lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
            v61 = v81;
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            if (v61)
            {

              outlined consume of Data._Representation(v51, v59);

              v81 = 0;
              v47 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v81 = 0;

              outlined consume of Data._Representation(v51, v59);
              v47 = v83;
            }

            v6 = v79;
            v8 = v80;
            v9 = &static ComponentInfo.Platform.macOS;
          }

          else
          {
            v47 = MEMORY[0x1E69E7CC0];
            v9 = &static ComponentInfo.Platform.macOS;
          }
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
      }

      Array<A>.hasProximityTriggers.getter(v47);
      v49 = v48;

      if (v49)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v43;
      if (v45 == v14)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:
  v15 = v87;
  v42 = v70;
LABEL_68:
  v62 = v75;
  v63 = v73;
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    v64 = __CocoaSet.count.getter();
  }

  else
  {
    v64 = *(v15 + 16);
  }

  MEMORY[0x1EEE9AC00](v65);
  v66 = v80;
  *(&v69 - 2) = v80;
  *(&v69 - 8) = v42 != 0;
  *(&v69 - 7) = v67;
  v83 = v63;
  v84 = v62;
  static os_log_type_t.info.getter();
  v68 = specialized InteractionsLogger.log(_:_:)();
  MEMORY[0x1EEE9AC00](v68);
  *(&v69 - 2) = v66;
  v83 = v63;
  v84 = v62;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();

  swift_unknownObjectRelease();
  return (v42 | v64) != 0;
}

uint64_t implicit closure #4 in Scene.hasLookAtOrProximityInteractions.getter(unint64_t a1, char a2, char a3)
{
  _StringGuts.grow(_:)(91);
  MEMORY[0x1C68F3410](0x2064656B63656843, 0xE800000000000000);
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](0xD000000000000035, 0x80000001C18E87D0);
  if (a2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v7, v8);

  MEMORY[0x1C68F3410](0xD000000000000018, 0x80000001C18E8810);
  if (a3)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (a3)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1C68F3410](v9, v10);

  return 0;
}

char *implicit closure #5 in Scene.hasLookAtOrProximityInteractions.getter(unint64_t a1)
{
  v40 = type metadata accessor for Data.Deallocator();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0x203A7363657053;
  v46 = 0xE700000000000000;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v44 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v39 = v4;
      v6 = v44;
      v42 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v8 = a1;
      v9 = 0;
      v38 = *MEMORY[0x1E6969010];
      v36 = (v2 + 8);
      v37 = (v2 + 104);
      v41 = a1;
      v10 = v5;
      while (1)
      {
        if (v42)
        {
          MEMORY[0x1C68F41F0](v9, v8);
        }

        else
        {
        }

        if (!static __RKEntityInteractionsComponent.registration)
        {
          goto LABEL_19;
        }

        if (!REEntityGetCustomComponent())
        {
          goto LABEL_19;
        }

        Object = RECustomComponentGetObject();
        if (!Object)
        {
          goto LABEL_19;
        }

        v12 = *(Object + 16);
        if (!v12)
        {
          break;
        }

LABEL_20:
        v25 = type metadata accessor for __RKEntityInteractionSpecification(0);
        v26 = MEMORY[0x1C68F36A0](v12, v25);
        v28 = v27;

        v44 = v6;
        v30 = *(v6 + 16);
        v29 = *(v6 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v6 = v44;
        }

        ++v9;
        *(v6 + 16) = v30 + 1;
        v31 = v6 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v8 = v41;
        if (v10 == v9)
        {
          goto LABEL_23;
        }
      }

      v13 = *Object;
      if (*Object)
      {
        v14 = strlen(*Object);
        v15 = v39;
        (*v37)(v39, v38, v40);
        v16 = Data.Deallocator._deallocator.getter();
        if (v14)
        {
          v35 = v16;
          type metadata accessor for __DataStorage();
          swift_allocObject();

          v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
          v18 = __DataStorage._capacity.modify();
          *v19 |= 0x8000000000000000;
          v20.n128_f64[0] = v18(v43, 0);
          v21 = specialized Data._Representation.init(_:count:)(v17, v14, v20);
          v23 = v22;
        }

        else
        {
          v24 = Data.Deallocator._deallocator.getter();
          v24(v13, 0);

          v21 = 0;
          v23 = 0xC000000000000000;
        }

        (*v36)(v15, v40);
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit34__RKEntityInteractionSpecificationVGMd, &_sSay10RealityKit34__RKEntityInteractionSpecificationVGMR);
        lazy protocol witness table accessor for type [__RKEntityInteractionSpecification] and conformance <A> [A]();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        outlined consume of Data._Representation(v21, v23);
        v12 = v43[0];
        goto LABEL_20;
      }

LABEL_19:
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v43[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    MEMORY[0x1C68F3410](v32, v34);

    return v45;
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2, __n128 a3)
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

  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v4 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v5 = MEMORY[0x1C68F2040]();
  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = &v4[v6];
  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = specialized Data.InlineData.init(_:)(v4, v8);

  return v9;
}

uint64_t _s10RealityKit34__RKEntityInteractionSpecificationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s10RealityKit30__RKEntityTriggerSpecificationOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void specialized StereoPairImageMetadata.init(imageSource:atIndex:)(CGImageSource *a1, size_t a2)
{
  v3 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  _StringGuts.grow(_:)(44);

  v9 = 0xD000000000000029;
  v10 = 0x80000001C18E3BC0;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v5);

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v6 = v9;
  v7 = v10;
  lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
  swift_allocError();
  *v8 = v6;
  v8[1] = v7;
  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for StereoPairImageMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 292))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StereoPairImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 292) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 292) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *specialized static ResourceUsageHelper.memoryUsage(in:)(char a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 93;
  v3 = task_info(*MEMORY[0x1E69E9A60], 0x16u, v16, &v15);
  if (!v3)
  {
    return (v17 / qword_1C18B5A08[a1]);
  }

  result = mach_error_string(v3);
  if (result)
  {
    static String.Encoding.ascii.getter();
    v5 = String.init(cString:encoding:)();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x206E776F6E6B6E55;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xED0000726F727245;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32[0] = v13;
      *v12 = 136446210;
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v32);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1C1358000, v10, v11, "Error with task_info(): %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1C6902A30](v13, -1, -1);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharedCacheStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ShaderCacheLoader.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ShaderCacheLoader.__deallocating_deinit()
{
  ShaderCacheLoader.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:)(__n128 *a1, uint64_t a2)
{
  v3 = a1->n128_u8[0];
  v4 = a1->n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v6 = a1[2].n128_u64[1];
  v7 = *(a2 + 56);
  v14 = a1[1];

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 56) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    *(a2 + 56) = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
    *(a2 + 56) = v7;
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[48 * v11];
  v12[2].n128_u8[0] = v3;
  v12[2].n128_u64[1] = v4;
  result = v14;
  v12[3] = v14;
  v12[4].n128_u64[0] = v5;
  v12[4].n128_u64[1] = v8;
  return result;
}

uint64_t ShaderCache.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ShaderCache.__deallocating_deinit()
{
  ShaderCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t Entity.playAudio(configuration:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v8 = a1[2];
  v11[0] = *a1;
  v11[1] = v7;
  v11[2] = v8;
  type metadata accessor for AudioGeneratorController();
  swift_allocObject();

  v9 = AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(a2, a3, v11, v3);
  if (!v4)
  {
    AudioGeneratorController.play()();
  }

  return v9;
}

uint64_t Entity.prepareAudio(configuration:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;
  type metadata accessor for AudioGeneratorController();
  swift_allocObject();

  return AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(a2, a3, v9, v3);
}

uint64_t specialized Material.parameters.setter(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);

  if (v4 == v7)
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 16))(&v46, v26, v27);
    v28 = v46;
    LOBYTE(v27) = BYTE8(v46);
    v29 = v47;

    v2[1] = v28;
    *(v2 + 16) = v27;
    *(v2 + 3) = v29;
  }

  else
  {
    v31 = v2;
    MaterialParameters.allKeys.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = (v8 + 40);
      v12 = v2;
      while (1)
      {
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = a1[3];
        v16 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v15);

        Material.subscript.getter(v44, v13, v14, v15, v16);
        if (v45 == 255)
        {
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v33 = 0u;
          v50 = v45;
          v42 = &type metadata for CustomMaterial;
          v43 = &protocol witness table for CustomMaterial;
          v41[0] = swift_allocObject();
          outlined init with copy of CustomMaterial(v12, v41[0] + 16);
          v23 = 19;
          v32 = 0u;
          v34 = 0u;
          v35 = 0u;
        }

        else
        {
          v36 = v44[0];
          v37 = v44[1];
          v38 = v44[2];
          v39 = v44[3];
          v40 = v45;
          MaterialParameters.Value.init(_:)(&v36, &v46);
          v17 = v46;
          v18 = v47;
          v19 = v50;
          v34 = v49;
          v35 = v48;
          v42 = &type metadata for CustomMaterial;
          v43 = &protocol witness table for CustomMaterial;
          v41[0] = swift_allocObject();
          outlined init with copy of CustomMaterial(v12, v41[0] + 16);
          switch(v19)
          {
            case 0:
              HIDWORD(v21) = -1;
              *&v21 = v18;
              WORD4(v21) = WORD4(v18);
              v22 = vmovn_s64(vshlq_u64(vdupq_n_s64(*(&v18 + 1)), xmmword_1C18A9580));
              v22.i8[1] = v22.i8[4];
              WORD5(v21) = v22.i16[0];
              v32 = v21;
              v33 = v17;
              v23 = 1;
              break;
            case 1:
              v23 = 0;
              *&v20 = v17;
              v33 = v20;
              break;
            case 2:
              LODWORD(v20) = v17;
              v33 = v20;
              v23 = 2;
              break;
            case 3:
              *&v20 = v17;
              v33 = v20;
              v23 = 3;
              break;
            case 4:
              v33 = v17;
              v23 = 4;
              break;
            case 5:
              v33 = v17;
              v23 = 5;
              break;
            case 6:
              *&v20 = v17;
              v33 = v20;
              v23 = 6;
              break;
            case 7:
              v33 = v17;
              v23 = 7;
              break;
            case 8:
              v33 = v17;
              v32 = v18;
              v23 = 8;
              break;
            case 9:
              v33 = v17;
              v32 = v18;
              v23 = 9;
              break;
            case 10:
              LODWORD(v20) = v17 & 1;
              v33 = v20;
              v23 = 10;
              break;
            case 11:
              LODWORD(v20) = v17;
              v33 = v20;
              v23 = 11;
              break;
            case 12:
              *&v20 = v17;
              v33 = v20;
              v23 = 12;
              break;
            case 13:
              v33 = v17;
              v23 = 13;
              break;
            case 14:
              v33 = v17;
              v23 = 14;
              break;
            case 15:
              LODWORD(v20) = v17;
              v33 = v20;
              v23 = 15;
              break;
            case 16:
              *&v20 = v17;
              v33 = v20;
              v23 = 16;
              break;
            case 17:
              v33 = v17;
              v23 = 17;
              break;
            case 18:
              v33 = v17;
              v23 = 18;
              break;
            default:
              v23 = 19;
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              break;
          }

          v12 = v31;
        }

        v24 = v42;
        v25 = v43;
        __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
        v36 = v33;
        v37 = v32;
        v38 = v35;
        v39 = v34;
        v40 = v23;
        Material.subscript.setter(&v36, v13, v14, v24, v25);
        specialized Material.parameters.setter(v41);
        if (!v10)
        {
          break;
        }

        --v10;
        v11 += 2;
      }
    }
  }

  return outlined destroy of MaterialParameters(a1);
}

{
  v2 = v1;
  v4 = *v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 8))(v5, v6);

  if (v4 == v7)
  {
    v37 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v37);
    (*(v38 + 16))(&v53, v37, v38);
    v39 = v53;
    v40 = BYTE8(v53);
    v41 = v54;

    v2[1] = v39;
    *(v2 + 16) = v40;
    *(v2 + 3) = v41;
  }

  else
  {
    MaterialParameters.allKeys.getter();
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v9 - 1;
      for (i = (v8 + 40); ; i += 2)
      {
        v12 = *(i - 1);
        v13 = *i;
        v14 = a1[3];
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v14);

        Material.subscript.getter(v60, v12, v13, v14, v15);
        if (v61 == 255)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v44 = 0u;
          v66 = -1;
          v30 = *(v2 + 5);
          v57 = *(v2 + 4);
          v58 = v30;
          v59[0] = *(v2 + 6);
          *(v59 + 9) = *(v2 + 105);
          v31 = *(v2 + 1);
          v53 = *v2;
          v54 = v31;
          v32 = *(v2 + 3);
          v55 = *(v2 + 2);
          v56 = v32;
          v51 = &type metadata for ShaderGraphMaterial;
          v52 = &protocol witness table for ShaderGraphMaterial;
          v33 = swift_allocObject();
          v50[0] = v33;
          v34 = *(v2 + 5);
          v33[5] = *(v2 + 4);
          v33[6] = v34;
          v33[7] = *(v2 + 6);
          *(v33 + 121) = *(v2 + 105);
          v35 = *(v2 + 1);
          v33[1] = *v2;
          v33[2] = v35;
          v36 = *(v2 + 3);
          v33[3] = *(v2 + 2);
          v33[4] = v36;
          v29 = 19;
          v43 = 0u;
          v45 = 0u;
          v46 = 0u;
        }

        else
        {
          v53 = v60[0];
          v54 = v60[1];
          v55 = v60[2];
          v56 = v60[3];
          LOBYTE(v57) = v61;
          MaterialParameters.Value.init(_:)(&v53, &v62);
          v16 = v62;
          v17 = v63;
          v18 = v66;
          v45 = v65;
          v46 = v64;
          v19 = *(v2 + 5);
          v57 = *(v2 + 4);
          v58 = v19;
          v59[0] = *(v2 + 6);
          *(v59 + 9) = *(v2 + 105);
          v20 = *(v2 + 1);
          v53 = *v2;
          v54 = v20;
          v21 = *(v2 + 3);
          v55 = *(v2 + 2);
          v56 = v21;
          v51 = &type metadata for ShaderGraphMaterial;
          v52 = &protocol witness table for ShaderGraphMaterial;
          v22 = swift_allocObject();
          v50[0] = v22;
          v23 = *(v2 + 5);
          v22[5] = *(v2 + 4);
          v22[6] = v23;
          v22[7] = *(v2 + 6);
          *(v22 + 121) = *(v2 + 105);
          v24 = *(v2 + 1);
          v22[1] = *v2;
          v22[2] = v24;
          v25 = *(v2 + 2);
          v26 = *(v2 + 3);
          v22[3] = v25;
          v22[4] = v26;
          switch(v18)
          {
            case 0:
              HIDWORD(v27) = -1;
              *&v27 = v17;
              WORD4(v27) = WORD4(v17);
              v28 = vmovn_s64(vshlq_u64(vdupq_n_s64(*(&v17 + 1)), xmmword_1C18A9580));
              v28.i8[1] = v28.i8[4];
              WORD5(v27) = v28.i16[0];
              v43 = v27;
              v44 = v16;
              v29 = 1;
              break;
            case 1:
              v29 = 0;
              *&v25 = v16;
              v44 = v25;
              break;
            case 2:
              LODWORD(v25) = v16;
              v44 = v25;
              v29 = 2;
              break;
            case 3:
              *&v25 = v16;
              v44 = v25;
              v29 = 3;
              break;
            case 4:
              v44 = v16;
              v29 = 4;
              break;
            case 5:
              v44 = v16;
              v29 = 5;
              break;
            case 6:
              *&v25 = v16;
              v44 = v25;
              v29 = 6;
              break;
            case 7:
              v44 = v16;
              v29 = 7;
              break;
            case 8:
              v44 = v16;
              v43 = v17;
              v29 = 8;
              break;
            case 9:
              v44 = v16;
              v43 = v17;
              v29 = 9;
              break;
            case 10:
              LODWORD(v25) = v16 & 1;
              v44 = v25;
              v29 = 10;
              break;
            case 11:
              LODWORD(v25) = v16;
              v44 = v25;
              v29 = 11;
              break;
            case 12:
              *&v25 = v16;
              v44 = v25;
              v29 = 12;
              break;
            case 13:
              v44 = v16;
              v29 = 13;
              break;
            case 14:
              v44 = v16;
              v29 = 14;
              break;
            case 15:
              LODWORD(v25) = v16;
              v44 = v25;
              v29 = 15;
              break;
            case 16:
              *&v25 = v16;
              v44 = v25;
              v29 = 16;
              break;
            case 17:
              v44 = v16;
              v29 = 17;
              break;
            case 18:
              v44 = v16;
              v29 = 18;
              break;
            default:
              v29 = 19;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              break;
          }
        }

        __swift_mutable_project_boxed_opaque_existential_1(v50, &type metadata for ShaderGraphMaterial);
        v48[0] = v44;
        v48[1] = v43;
        v48[2] = v46;
        v48[3] = v45;
        v49 = v29;
        outlined init with copy of ShaderGraphMaterial(&v53, v47);
        Material.subscript.setter(v48, v12, v13, &type metadata for ShaderGraphMaterial, &protocol witness table for ShaderGraphMaterial);
        specialized Material.parameters.setter(v50);
        if (!v10)
        {
          break;
        }

        --v10;
      }
    }
  }

  return outlined destroy of MaterialParameters(a1);
}

uint64_t CustomMaterial.customParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CustomMaterial;
  a1[4] = &protocol witness table for CustomMaterial;
  v3 = swift_allocObject();
  *a1 = v3;

  return outlined init with copy of CustomMaterial(v1, v3 + 16);
}

uint64_t key path setter for CustomMaterial.customParameters : CustomMaterial(uint64_t a1)
{
  outlined init with copy of UniformParameters(a1, v3);
  outlined init with copy of MaterialParameters(v3, v2);
  specialized Material.parameters.setter(v2);
  return outlined destroy of UniformParameters(v3);
}

uint64_t CustomMaterial.customParameters.setter(uint64_t a1)
{
  outlined init with copy of MaterialParameters(a1, v3);
  specialized Material.parameters.setter(v3);
  return outlined destroy of UniformParameters(a1);
}

void (*CustomMaterial.customParameters.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[15] = v1;
  v3[3] = &type metadata for CustomMaterial;
  v3[4] = &protocol witness table for CustomMaterial;
  v5 = swift_allocObject();
  *v4 = v5;
  outlined init with copy of CustomMaterial(v1, v5 + 16);
  return CustomMaterial.customParameters.modify;
}

void CustomMaterial.customParameters.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of UniformParameters(*a1, (v2 + 5));
    outlined init with copy of MaterialParameters((v2 + 5), (v2 + 10));
    specialized Material.parameters.setter(v2 + 10);
    outlined destroy of UniformParameters((v2 + 5));
  }

  else
  {
    outlined init with copy of MaterialParameters(*a1, (v2 + 5));
    specialized Material.parameters.setter(v2 + 5);
  }

  outlined destroy of UniformParameters(v2);

  free(v2);
}

uint64_t CustomMaterial.getCustomParameter(name:)@<X0>(uint64_t a1@<X8>)
{
  strcpy(v7, "customParams.");
  HIWORD(v7[0]) = -4864;
  MEMORY[0x1C68F3410]();
  v9[3] = &type metadata for CustomMaterial;
  v9[4] = &protocol witness table for CustomMaterial;
  v9[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v1, v9[0] + 16);
  __swift_project_boxed_opaque_existential_1(v9, &type metadata for CustomMaterial);
  Material.subscript.getter(v7, *&v7[0], *(&v7[0] + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial);

  v3 = v8;
  if (v8 == 255)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = v3;
  }

  else
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v5[2] = v7[2];
    v5[3] = v7[3];
    v6 = v8;
    MaterialParameters.Value.init(_:)(v5, a1);
  }

  return outlined destroy of MaterialParameters(v9);
}

uint64_t CustomMaterial.setCustomParameter(name:value:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[3];
  v29 = a3[2];
  v30 = v4;
  v31 = *(a3 + 64);
  v5 = a3[1];
  v27 = *a3;
  v28 = v5;
  strcpy(&v22, "customParams.");
  HIWORD(v22) = -4864;
  MEMORY[0x1C68F3410](a1, a2);
  v6 = v22;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v7 = v31;
  if (v31 == 255)
  {
    *(&v18 + 1) = &type metadata for CustomMaterial;
    *&v19 = &protocol witness table for CustomMaterial;
    *&v17 = swift_allocObject();
    outlined init with copy of CustomMaterial(v3, v17 + 16);
    __swift_mutable_project_boxed_opaque_existential_1(&v17, &type metadata for CustomMaterial);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v26 = 19;
    Material.subscript.setter(&v22, v6, *(&v6 + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial);
    return specialized Material.parameters.setter(&v17);
  }

  swift_beginAccess();
  String.utf8CString.getter();
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v22 = v27;
  v23 = v28;
  outlined init with copy of MaterialParameters.Value(&v22, &v17);
  ParameterType = REMaterialAssetGetParameterType();

  if (!ParameterType)
  {
    v13 = 1;
LABEL_8:
    lazy protocol witness table accessor for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();

    return outlined destroy of MaterialParameters.Value?(&v27);
  }

  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v7;
  if (ParameterType != MaterialParameters.Value.getMaterialParameterType()())
  {
    v13 = 0;
    goto LABEL_8;
  }

  v17 = v32;
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v16[3] = &type metadata for CustomMaterial;
  v16[4] = &protocol witness table for CustomMaterial;
  v16[0] = swift_allocObject();
  outlined init with copy of CustomMaterial(v3, v16[0] + 16);
  v21 = v7;
  __RKMaterialParameterBlock.Parameter.init(_:)(&v17, v15, v9, v10, v11);
  __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for CustomMaterial);
  outlined init with copy of [String : String](&v27, &v17, &_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  Material.subscript.setter(v15, v6, *(&v6 + 1), &type metadata for CustomMaterial, &protocol witness table for CustomMaterial);
  specialized Material.parameters.setter(v16);
  return outlined destroy of MaterialParameters.Value?(&v27);
}

void *closure #1 in DirectParameterBuffer.applyToComponent(directParameterComponent:stageFlags:index:)(void *result, __n128 a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v6)
    {
      __src = a4;
      v20 = a5;
      v21 = BYTE2(a5);
      v22 = BYTE3(a5);
      v23 = BYTE4(a5);
      v24 = BYTE5(a5);
      return memcpy(result, &__src, BYTE6(a5));
    }

    goto LABEL_11;
  }

  if (v6 != 2)
  {
    return result;
  }

  v7 = result;
  v8 = *(a4 + 16);
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
    return MEMORY[0x1C68F2040]();
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  if (__OFSUB__(v8, v11))
  {
    goto LABEL_23;
  }

  v12 = (v8 - v11 + v10);
  result = MEMORY[0x1C68F2040]();
  if (!v12)
  {
    return result;
  }

  v14 = *(a4 + 16);
  v13 = *(a4 + 24);
  v15 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    goto LABEL_25;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    if (a4 <= a4 >> 32)
    {
      v7 = result;
      v16 = __DataStorage._bytes.getter();
      if (v16)
      {
        v17 = v16;
        v18 = __DataStorage._offset.getter();
        if (!__OFSUB__(a4, v18))
        {
          v12 = (a4 - v18 + v17);
          result = MEMORY[0x1C68F2040]();
          if (!v12)
          {
            return result;
          }

          v15 = (HIDWORD(a4) - a4);
          if (!__OFSUB__(HIDWORD(a4), a4))
          {
            if ((v15 & 0x80000000) == 0)
            {
              goto LABEL_17;
            }

LABEL_27:
            __break(1u);
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      return MEMORY[0x1C68F2040]();
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_17:

  return memmove(v7, v12, v15);
}

Swift::Void __swiftcall DirectUniformsState.convertToSharedWithSize(size:)(Swift::Int size)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v6 = v1 + 3;
  v5 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v7 >> 60) & 3;
  if (((v7 >> 60) & 3) <= 1)
  {
    if (!v9)
    {
      v10 = v2 >> 62;
      if ((v2 >> 62) <= 1)
      {
        if (!v10)
        {
          if (BYTE6(v2) < size)
          {
            goto LABEL_26;
          }

LABEL_21:
          outlined copy of Data._Representation(*v1, v1[1]);
          v24 = v4;
LABEL_27:
          v34 = v24;
          outlined consume of Data._Representation(v3, v2);

          return;
        }

        if (!__OFSUB__(HIDWORD(v3), v3))
        {
          if (HIDWORD(v3) - v3 < size)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        return;
      }

      if (v10 == 2)
      {
        v21 = *(v3 + 16);
        v20 = *(v3 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          __break(1u);
          goto LABEL_31;
        }

        if (v23 >= size)
        {
          goto LABEL_21;
        }
      }

      else if (size <= 0)
      {
        goto LABEL_21;
      }

LABEL_26:
      v26 = v1[5];
      v33 = v26;
      v27 = v1[3];
      v28 = v1[4];
      outlined copy of Data._Representation(*v1, v1[1]);
      v29 = v4;
      outlined consume of DirectUniformsState(v3, v2, v4, v27, v28, v26);
      v30 = specialized Data.init(count:)(size);
      v32 = v31;
      v24 = REDirectParameterResourcesCreate();
      outlined consume of DirectUniformsState(v3, v2, v4, v27, v28, v33);
      *v1 = v30;
      v1[1] = v32;
      v1[2] = v24;
      v1[4] = 0;
      v1[5] = 0;
      *v6 = 0;
      outlined copy of Data._Representation(v30, v32);
      v3 = v30;
      v2 = v32;
      goto LABEL_27;
    }

    outlined consume of DirectUniformsState(*v1, v1[1], v1[2], v5, v7, v8);
    v14 = size;
LABEL_17:
    v16 = specialized Data.init(count:)(v14);
    v18 = v17;
    v19 = REDirectParameterResourcesCreate();
    *v1 = v16;
    v1[1] = v18;
    v1[2] = v19;
    v1[4] = 0;
    v1[5] = 0;
    *v6 = 0;
    return;
  }

  if (v9 == 2 && v7 == 0x2000000000000000 && (v2 | v3 | v4 | v5 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, v5, 0x2000000000000000uLL, v8);
    v14 = size;
    goto LABEL_17;
  }
}

Swift::Void __swiftcall DirectUniformsState.convertToUniqueWithGeomSize(size:)(Swift::Int size)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = (v5 >> 60) & 3;
  if (!v6)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v14 = v4;
    outlined consume of DirectUniformsState(v2, v3, v4, v11, v5, v12);
    v15 = specialized Data.init(count:)(size);
    v17 = v16;
    v18 = REDirectParameterResourcesCreate();
    *v1 = v15;
    *(v1 + 8) = v17;
    *(v1 + 16) = v18;
    *(v1 + 24) = v2;
    *(v1 + 32) = v3 | 0x1000000000000000;
    *(v1 + 40) = v4;
    return;
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return;
    }

    v9 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (!v10)
      {
        if (BYTE6(v3) < size)
        {
          goto LABEL_24;
        }

LABEL_19:
        outlined copy of Data._Representation(*v1, *(v1 + 8));
        v38 = v4;
        outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
        v30 = v8;
        outlined consume of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);

LABEL_25:
        outlined consume of Data._Representation(v2, v3);

        return;
      }

      if (!__OFSUB__(HIDWORD(v2), v2))
      {
        if (HIDWORD(v2) - v2 < size)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
      return;
    }

    if (v10 == 2)
    {
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v29 >= size)
      {
        goto LABEL_19;
      }
    }

    else if (size <= 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v32 = v4;
    outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
    v33 = v8;
    outlined consume of DirectUniformsState(v2, v3, v4, v7, v5, v8);
    v34 = specialized Data.init(count:)(size);
    v36 = v35;
    v37 = REDirectParameterResourcesCreate();
    outlined consume of Data._Representation(v2, v3);

    *v1 = v34;
    *(v1 + 8) = v36;
    *(v1 + 16) = v37;
    *(v1 + 24) = v7;
    *(v1 + 32) = v9 | 0x1000000000000000;
    *(v1 + 40) = v8;
    outlined copy of Data._Representation(v34, v36);
    v38 = v37;
    v2 = v34;
    v3 = v36;
    goto LABEL_25;
  }

  if (v5 == 0x2000000000000000 && (v3 | v2 | v4 | v7 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, *(v1 + 24), 0x2000000000000000uLL, *(v1 + 40));
    v21 = specialized Data.init(count:)(size);
    v23 = v22;
    v24 = REDirectParameterResourcesCreate();
    v25 = REDirectParameterResourcesCreate();
    *v1 = v21;
    *(v1 + 8) = v23;
    *(v1 + 16) = v24;
    *(v1 + 24) = xmmword_1C18B5C90;
    *(v1 + 40) = v25;
  }
}

Swift::Void __swiftcall DirectUniformsState.convertToUniqueWithSurfSize(size:)(Swift::Int size)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = (v5 >> 60) & 3;
  if (!v6)
  {
    v11 = *(v1 + 24);
    v12 = *(v1 + 40);
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v14 = v4;
    outlined consume of DirectUniformsState(v3, v2, v4, v11, v5, v12);
    v15 = specialized Data.init(count:)(size);
    v17 = v16;
    v18 = REDirectParameterResourcesCreate();
    v19 = v17 | 0x1000000000000000;
    *v1 = v3;
    *(v1 + 8) = v2;
    *(v1 + 16) = v4;
    *(v1 + 24) = v15;
LABEL_15:
    *(v1 + 32) = v19;
    *(v1 + 40) = v18;
    return;
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 40);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return;
    }

    v9 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v10 = v5 >> 62;
    if ((v5 >> 62) <= 1)
    {
      if (!v10)
      {
        if (BYTE6(v5) < size)
        {
          goto LABEL_25;
        }

LABEL_20:
        outlined copy of Data._Representation(*v1, *(v1 + 8));
        v30 = v4;
        outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
        v38 = v8;
        outlined consume of Data._Representation(v3, v2);

LABEL_26:
        outlined consume of Data._Representation(v7, v9);

        return;
      }

      if (!__OFSUB__(HIDWORD(v7), v7))
      {
        if (HIDWORD(v7) - v7 < size)
        {
          goto LABEL_25;
        }

        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      return;
    }

    if (v10 == 2)
    {
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v29 >= size)
      {
        goto LABEL_20;
      }
    }

    else if (size <= 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    outlined copy of Data._Representation(*v1, *(v1 + 8));
    v32 = v4;
    outlined copy of Data._Representation(v7, v5 & 0xCFFFFFFFFFFFFFFFLL);
    v33 = v8;
    outlined consume of DirectUniformsState(v3, v2, v4, v7, v5, v8);
    v34 = specialized Data.init(count:)(size);
    v36 = v35;
    v37 = REDirectParameterResourcesCreate();
    outlined consume of Data._Representation(v7, v9);

    *v1 = v3;
    *(v1 + 8) = v2;
    *(v1 + 16) = v4;
    *(v1 + 24) = v34;
    *(v1 + 32) = v36 | 0x1000000000000000;
    *(v1 + 40) = v37;
    outlined copy of Data._Representation(v34, v36);
    v38 = v37;
    v7 = v34;
    v9 = v36;
    goto LABEL_26;
  }

  if (v5 == 0x2000000000000000 && (v2 | v3 | v4 | v7 | v8) == 0)
  {
    outlined consume of DirectUniformsState(0, 0, 0, *(v1 + 24), 0x2000000000000000uLL, *(v1 + 40));
    v22 = REDirectParameterResourcesCreate();
    v23 = specialized Data.init(count:)(size);
    v25 = v24;
    v18 = REDirectParameterResourcesCreate();
    v19 = v25 | 0x1000000000000000;
    *v1 = xmmword_1C18A2C50;
    *(v1 + 16) = v22;
    *(v1 + 24) = v23;
    goto LABEL_15;
  }
}

uint64_t CustomMaterial.ResourceStorage.subscript.getter()
{
  dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v0 & 1) != 0 || (TextureAssetAtOffset = REDirectParameterResourcesGetTextureAssetAtOffset()) == 0)
  {
    v4 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 120, v6);
    v3 = closure #1 in static TextureResource.builtinTexture(named:)(v6, 0x6B6361626C6C6166, 0xEE0065746968772ELL);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v2 = TextureAssetAtOffset;
    type metadata accessor for TextureResource();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  return v3;
}

uint64_t CustomMaterial.ResourceStorage.subscript.setter(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static CustomMaterial.supportsMutableUniformsResources)
  {
    dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v8)
    {
      Logger.init()();

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 136315138;
        v22 = v9;
        v23 = v12;
        v13 = AnyKeyPath.debugDescription.getter();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

        *(v11 + 4) = v15;
        v16 = v22;
        _os_log_impl(&dword_1C1358000, v22, v10, "Attempted to assign texture to invalid key path %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1C6902A30](v12, -1, -1);
        MEMORY[0x1C6902A30](v11, -1, -1);
      }

      else
      {
      }

      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      REDirectParameterResourcesSetTextureAssetAtOffset();
    }
  }

  else
  {
    Logger.init()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C1358000, v17, v18, "CustomMaterial: Resource storage in withMutableUniforms is not supported on this device. Requires Tier 2 Argument Buffer support.", v19, 2u);
      MEMORY[0x1C6902A30](v19, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v7, v1);
  }
}

uint64_t (*CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter();
  return CustomMaterial.ResourceStorage.subscript.modify;
}

uint64_t CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, char a2)
{
  v3 = *a1;

  if ((a2 & 1) == 0)
  {
    return CustomMaterial.ResourceStorage.subscript.setter(v3);
  }

  CustomMaterial.ResourceStorage.subscript.setter(v4);
}

uint64_t (*CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter(a2);
  return CustomMaterial.ResourceStorage.subscript.modify;
}

{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = CustomMaterial.ResourceStorage.subscript.getter(a2);
  return CustomMaterial.ResourceStorage.subscript.modify;
}

uint64_t CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, uint64_t a2)
{
  return CustomMaterial.ResourceStorage.subscript.modify(a1, a2, CustomMaterial.ResourceStorage.subscript.setter);
}

{
  return CustomMaterial.ResourceStorage.subscript.modify(a1, a2, CustomMaterial.ResourceStorage.subscript.setter);
}

void CustomMaterial.ResourceStorage.subscript.getter(uint64_t a1)
{
  dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v1 & 1) == 0)
  {
    v2 = REDirectParameterResourcesGetBufferAtOffset();
    if (v2)
    {
      v3 = v2;
      type metadata accessor for LowLevelBuffer();
      swift_allocObject();
      LowLevelBuffer.init(coreBuffer:)(v3);
    }
  }
}

void CustomMaterial.ResourceStorage.subscript.setter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static CustomMaterial.supportsMutableUniformsResources)
  {
    dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v9)
    {
      Logger.init()();

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v23 = v10;
        v24 = v13;
        v14 = AnyKeyPath.debugDescription.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v24);

        *(v12 + 4) = v16;
        v17 = v23;
        _os_log_impl(&dword_1C1358000, v23, v11, "Attempted to assign buffer to invalid key path %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1C6902A30](v13, -1, -1);
        MEMORY[0x1C6902A30](v12, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (a1)
      {
        v21 = *(a1 + 16);
      }

      else
      {
        v21 = 0;
      }

      REDirectParameterResourcesSetBufferAtOffset();
    }
  }

  else
  {
    Logger.init()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C1358000, v18, v19, "CustomMaterial: Resource storage in withMutableUniforms is not supported on this device. Requires Tier 2 Argument Buffer support.", v20, 2u);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t CustomMaterial.ResourceStorage.subscript.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {

    a3(v4, v5);
  }

  else
  {

    return (a3)(v4, v5);
  }
}

void CustomMaterial.withMutableUniforms<A>(ofType:stage:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a5 - 8) + 64);
  if (*a2 == 1)
  {
    DirectUniformsState.convertToUniqueWithSurfSize(size:)(v9);
    MEMORY[0x1EEE9AC00](v10);
    v13 = a5;
    v14 = a1;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    v19 = partial apply for closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:);
    v20 = v12;
    specialized DirectUniformsState.withUniqueSurfaceBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withUniqueSurfaceBytes<A>(_:), v17);
  }

  else
  {
    DirectUniformsState.convertToUniqueWithGeomSize(size:)(v9);
    MEMORY[0x1EEE9AC00](v11);
    v13 = a5;
    v14 = a1;
    v15 = a3;
    v16 = a4;
    v18 = a5;
    v19 = partial apply for closure #2 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:);
    v20 = v12;
    specialized DirectUniformsState.withUniqueGeometryBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withUniqueSurfaceBytes<A>(_:), v17);
  }
}

void CustomMaterial.withMutableUniforms<A>(ofType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DirectUniformsState.convertToSharedWithSize(size:)(*(*(a4 - 8) + 64));
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v10 = a4;
  v11 = partial apply for closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:_:);
  v12 = v8;
  specialized DirectUniformsState.withSharedBytes(byteSize:_:)(partial apply for closure #1 in DirectUniformsState.withSharedBytes<A>(_:), v9);
}

uint64_t closure #1 in CustomMaterial.withMutableUniforms<A>(ofType:stage:_:)(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t (*a5)(uint64_t, id *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *(*(a7 - 8) + 72);
    if (v10)
    {
      if (a2 - a1 != 0x8000000000000000 || v10 != -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_5:
  v11 = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v11)
  {
    return a5(v11, a3);
  }

LABEL_9:

  _StringGuts.grow(_:)(49);

  v13 = _typeName(_:qualified:)();
  MEMORY[0x1C68F3410](v13);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t (*static CustomMaterial.supportsMutableUniformsResources.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for supportsMutableUniformsResources != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKEntityInteractionsComponent.registration.modify;
}

uint64_t one-time initialization function for supportsMutableUniformsResources(uint64_t a1, BOOL *a2)
{
  v3 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  result = outlined init with copy of [String : String](v3 + 40, &v9, &_s10RealityKit15__RenderService_pSgMd, &_s10RealityKit15__RenderService_pSgMR);
  if (v10)
  {
    outlined init with take of ForceEffectBase(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v8 = [v7 argumentBuffersSupport];
    result = swift_unknownObjectRelease();
    *a2 = v8 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static CustomMaterial.supportsMutableUniformsResources.getter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t static CustomMaterial.supportsMutableUniformsResources.setter(char a1, void *a2, _BYTE *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static CustomMaterial._proto_withMutableUniformsResourcesSupported.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for _proto_withMutableUniformsResourcesSupported != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static __RKSimulationSceneCoordinator.shared.modify;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.CustomParameterError, &type metadata for CustomMaterial.CustomParameterError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError;
  if (!lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.CustomParameterError, &type metadata for CustomMaterial.CustomParameterError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.CustomParameterError and conformance CustomMaterial.CustomParameterError);
  }

  return result;
}

uint64_t outlined destroy of MaterialParameters.Value?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18MaterialParametersV5ValueOSgMd, &_s17RealityFoundation18MaterialParametersV5ValueOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (v9)
    {
      outlined copy of Data._Representation(v8, v7);
      outlined consume of Data._Representation(v8, v7);
      *&v27 = v8;
      *(&v27 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C18A2C50;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v27, a2, a3, a4);
      v10 = v27;
      v11 = *(&v27 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v8, v7);
      *&v27 = v8;
      WORD4(v27) = v7;
      BYTE10(v27) = BYTE2(v7);
      BYTE11(v27) = BYTE3(v7);
      BYTE12(v27) = BYTE4(v7);
      BYTE13(v27) = BYTE5(v7);
      BYTE14(v27) = BYTE6(v7);
      a2(&v27, &v27 + BYTE6(v7), a4);
      v10 = v27;
      v11 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
    }

    *a1 = v10;
    a1[1] = v11;
    return;
  }

  if (v9 != 2)
  {
    *(&v27 + 7) = 0;
    *&v27 = 0;
    a2(&v27, &v27, a4);
    return;
  }

  outlined consume of Data._Representation(v8, v7);
  *&v27 = v8;
  *(&v27 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v13 = *(&v27 + 1);
  v14 = *(v27 + 16);
  v15 = *(v27 + 24);
  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  v19 = v14 - v18;
  if (__OFSUB__(v14, v18))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v20 = __OFSUB__(v15, v14);
  v21 = v15 - v14;
  if (v20)
  {
    goto LABEL_17;
  }

  v22 = MEMORY[0x1C68F2040]();
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  a2(v17 + v19, v17 + v19 + v23, a4);
  *a1 = v27;
  a1[1] = v13 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  Data.InlineSlice.ensureUniqueReference()();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = a2;

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = v7 - v11;
  if (__OFSUB__(v7, v11))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v8 - v7;
  v14 = MEMORY[0x1C68F2040]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16(v10 + v12, v10 + v12 + v15, a4);
}

unint64_t lazy protocol witness table accessor for type CustomShaderStage and conformance CustomShaderStage()
{
  result = lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage;
  if (!lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomShaderStage, &type metadata for CustomShaderStage, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomShaderStage and conformance CustomShaderStage);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation19DirectUniformsStateO(uint64_t a1)
{
  if (((*(a1 + 32) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 32) >> 60) & 3;
  }
}

uint64_t getEnumTagSinglePayload for DirectUniformsState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 48))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 32) >> 60) & 3 | (*(a1 + 8) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DirectUniformsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 2) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
      *(result + 40) = 0;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DirectUniformsState(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[4] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[4] = v2;
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_1C18A9570;
  }

  return result;
}

void **assignWithTake for CustomMaterial.ResourceStorage(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void specialized DirectUniformsState.withSharedBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = v2[1];
    v6 = v2[2];
    v8 = *v2;
    v9 = v2[3];
    v10 = v2[5];
    outlined copy of Data._Representation(*v2, v7);
    v11 = v6;
    outlined consume of DirectUniformsState(v8, v7, v6, v9, v3, v10);
    v25 = v8;
    v26 = v7;
    v27 = v11;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = REDirectParameterResourcesCopy();

      v27 = v12;
      v11 = v12;
    }

    v13 = *v2;
    v14 = v2[1];
    v15 = v2[2];
    v16 = v2[3];
    v17 = v2[4];
    v18 = v2[5];
    v24 = v11;
    v19 = v11;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v25, a1, a2, &v24);
    outlined consume of DirectUniformsState(v13, v14, v15, v16, v17, v18);

    v20 = v25;
    v21 = v26;
    v22 = v27;
    *v2 = v25;
    v2[1] = v21;
    v2[2] = v22;
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 0;
    outlined copy of Data._Representation(v20, v21);
    v23 = v22;
    outlined consume of Data._Representation(v20, v21);
  }
}

void specialized DirectUniformsState.withUniqueGeometryBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) == 0x1000000000000000)
  {
    v5 = v2[5];
    v7 = v2[2];
    v6 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    outlined copy of Data._Representation(*v2, v8);
    v10 = v7;
    outlined copy of Data._Representation(v6, v3 & 0xCFFFFFFFFFFFFFFFLL);
    v11 = v5;
    v24 = v6;
    v25 = v5;
    outlined consume of DirectUniformsState(v9, v8, v7, v6, v3, v5);
    v28 = v9;
    v29 = v8;
    v30 = v10;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v12 = REDirectParameterResourcesCopy();

      v30 = v12;
      v10 = v12;
    }

    v13 = *v2;
    v14 = v2[1];
    v16 = v2[2];
    v15 = v2[3];
    v17 = v2[4];
    v18 = v2[5];
    v27 = v10;
    v19 = v10;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v28, a1, a2, &v27);
    outlined consume of DirectUniformsState(v13, v14, v16, v15, v17, v18);

    v20 = v28;
    v21 = v29;
    v22 = v30;
    *v2 = v28;
    v2[1] = v21;
    v2[2] = v22;
    v2[3] = v24;
    v2[4] = v3;
    v2[5] = v25;
    outlined copy of Data._Representation(v20, v21);
    v26 = v22;
    outlined consume of Data._Representation(v20, v21);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void specialized DirectUniformsState.withUniqueSurfaceBytes(byteSize:_:)(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2[4];
  if ((v3 & 0x3000000000000000) == 0x1000000000000000)
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    outlined copy of Data._Representation(*v2, v6);
    v10 = v9;
    outlined copy of Data._Representation(v8, v3 & 0xCFFFFFFFFFFFFFFFLL);
    v11 = v7;
    v27 = v6;
    v28 = v5;
    v26 = v9;
    outlined consume of DirectUniformsState(v5, v6, v9, v8, v3, v7);
    v31 = v8;
    v32 = v3 & 0xCFFFFFFFFFFFFFFFLL;
    v33 = v11;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = xmmword_1C18A9570;
    v12 = a2;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v13 = REDirectParameterResourcesCopy();

      v33 = v13;
      v11 = v13;
    }

    v14 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v16 = v2[3];
    v18 = v2[4];
    v19 = v2[5];
    v30 = v11;
    v20 = v11;
    specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v31, a1, v12, &v30);
    outlined consume of DirectUniformsState(v14, v15, v17, v16, v18, v19);

    v21 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v32 | 0x1000000000000000;
    *v2 = v28;
    v2[1] = v27;
    v2[2] = v26;
    v2[3] = v21;
    v2[4] = v24;
    v2[5] = v23;
    outlined copy of Data._Representation(v21, v22);
    v29 = v23;
    outlined consume of Data._Representation(v21, v22);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void partial apply for closure #1 in DirectUniformsState.withSharedBytes<A>(_:)(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = *(v3 + 24);
  v9 = *a3;
  v7 = v9;
  v6(a1, a2, &v9);
  v8 = v9;
}

uint64_t __RKLightTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKLightTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

void TextComponent.size.setter(double a1, double a2)
{
  if (a1 > 2048.0)
  {
    a1 = 2048.0;
  }

  if (a2 > 2048.0)
  {
    a2 = 2048.0;
  }

  *v2 = a1;
  v2[1] = a2;
}

int8x16_t (*TextComponent.size.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return TextComponent.size.modify;
}

int8x16_t TextComponent.size.modify(uint64_t a1)
{
  v1 = vdupq_n_s64(0x40A0000000000000uLL);
  result = vbslq_s8(vcgtq_f64(*a1, v1), v1, *a1);
  **(a1 + 16) = result;
  return result;
}

uint64_t TextComponent.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextComponent(0) + 20);

  return outlined init with copy of AttributedString?(v3, a1);
}

uint64_t type metadata accessor for TextComponent(uint64_t a1)
{
  result = type metadata singleton initialization cache for TextComponent;
  if (!type metadata singleton initialization cache for TextComponent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TextComponent.text.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TextComponent(0) + 20);

  return outlined assign with take of AttributedString?(a1, v3);
}

uint64_t outlined assign with take of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *TextComponent.backgroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextComponent(0) + 24));
  v2 = v1;
  return v1;
}

void TextComponent.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TextComponent(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t TextComponent.cornerRadius.setter(float a1)
{
  result = type metadata accessor for TextComponent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TextComponent.coreEdgeInsets.setter(float a1, float a2, float a3, float a4)
{
  result = type metadata accessor for TextComponent(0);
  v10 = (v4 + *(result + 32));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t TextComponent.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for TextComponent(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for AttributedString();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[6]] = 0;
  *&a1[v2[7]] = 0;
  v6 = &a1[v2[8]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t static TextComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextComponent(0);
  v8 = (v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  *v11 = 0.0;
  v11[1] = 0.0;
  v13 = v8[7];
  v14 = *(v4 + 56);
  v14(v11 + v13, 1, 1, v3, v9);
  v30 = v8[8];
  *(v11 + v30) = 0.0;
  v31 = v8[9];
  *(v11 + v31) = 0;
  v15 = v11 + v8[10];
  *v15 = 0;
  *(v15 + 1) = 0;
  RETextComponentGetSize();
  if (v16 > 2048.0)
  {
    v16 = 2048.0;
  }

  if (v17 > 2048.0)
  {
    v17 = 2048.0;
  }

  *v11 = v16;
  v11[1] = v17;
  v18 = RETextComponentGetAttributedString();
  AttributedString.init(_:)();
  outlined destroy of BodyTrackingComponent?(v11 + v13, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  (*(v4 + 16))(v11 + v13, v6, v3);
  (v14)(v11 + v13, 0, 1, v3);
  v19 = RETextComponentGetBackgroundColor();
  *(v11 + v30) = v19;
  RETextComponentGetCornerRadius();
  *(v11 + v31) = v20;
  v21 = MEMORY[0x1C68FF080](v12);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  (*(v4 + 8))(v6, v3);
  *v15 = v21;
  *(v15 + 1) = v23;
  *(v15 + 2) = v25;
  *(v15 + 3) = v27;
  outlined init with copy of TextComponent(v11, v32);
  return outlined destroy of TextComponent(v11);
}

uint64_t outlined init with copy of TextComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TextComponent(uint64_t a1)
{
  v2 = type metadata accessor for TextComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextComponent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &aBlock - v8;
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  RETextComponentSetSize();
  outlined init with copy of AttributedString?(v2 + *(v4 + 20), v9);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v15(v9, 1, v10) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  type metadata accessor for NSAttributedString();
  v16 = NSAttributedString.init(_:)();
  MEMORY[0x1C68FF0A0](v14, v16);
  v17 = *(v2 + *(v4 + 24));
  if (v17)
  {
    GenericGray = *(v2 + *(v4 + 24));
  }

  else
  {
    GenericGray = CGColorCreateGenericGray(1.0, 0.0);
    v17 = 0;
  }

  v19 = v17;
  MEMORY[0x1C68FF0B0](v14, GenericGray);

  RETextComponentSetCornerRadius();
  RETextComponentSetEdgeInsets();
  outlined init with copy of TextComponent(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19TextComponentRender_pMd, &_s17RealityFoundation19TextComponentRender_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&aBlock, v27);
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    swift_getDynamicType();
    v25 = (*(v27[4] + 8))();
    v26 = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v24 = thunk for @escaping @callee_guaranteed (@guaranteed CGContextRef, @guaranteed CFAttributedStringRef, @unowned CGRect, @guaranteed CGColorRef, @unowned CGSize) -> ();
    *(&v24 + 1) = &block_descriptor_23;
    v21 = _Block_copy(&aBlock);

    RETextComponentSetRenderBlock();
    _Block_release(v21);

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {

    v25 = 0;
    aBlock = 0u;
    v24 = 0u;
    return outlined destroy of BodyTrackingComponent?(&aBlock, &_s17RealityFoundation19TextComponentRender_pSgMd, &_s17RealityFoundation19TextComponentRender_pSgMR);
  }
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CGContextRef, @guaranteed CFAttributedStringRef, @unowned CGRect, @guaranteed CGColorRef, @unowned CGSize) -> ()(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v22 = a2;
  v20 = a3;
  v21 = a4;
  v19(v22, v20, v21, a5, a6, a7, a8, a9, a10);
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void type metadata completion function for TextComponent(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for CGColorRef?, type metadata accessor for CGColorRef);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RETextEdgeInsets(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for AttributedString?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Void __swiftcall AudioGeneratorController.play()()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v2 = specialized HasHierarchy.parent.getter(), , v2))
  {

    if (!*(v0 + 72))
    {
LABEL_4:
      v3 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v4 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v3, &dword_1C1358000, v4, "Invalid playback token in the AudioPlaybackController", 53, 2, MEMORY[0x1E69E7CC0]);

      return;
    }
  }

  else
  {
    v5 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v6 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v5, &dword_1C1358000, v6, "Warning: Entity has no parent. Playback will only start when the entity is in a scene and active.", 97, 2, MEMORY[0x1E69E7CC0]);

    if (!*(v1 + 72))
    {
      goto LABEL_4;
    }
  }

  REAudioPlayerComponentPlayToken();
  RENetworkMarkComponentDirty();
}

double AudioGeneratorController.configuration.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[7];
  v2 = v1[8];
  *a1 = v1[6];
  a1[1] = v3;
  a1[2] = v2;

  return result;
}

uint64_t AudioGeneratorController.init(generatorRenderHandler:configuration:entity:)(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 1);
  v11 = *(a3 + 2);
  swift_weakInit();
  *(v5 + 64) = v11;
  *(v5 + 72) = 0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = v8;
  *(v5 + 52) = v9;
  *(v5 + 56) = v10;
  swift_beginAccess();
  swift_weakAssign();

  REAudioPlayerComponentGetComponentType();
  *(v5 + 24) = REEntityGetOrAddComponentByClass();
  RERetain();
  v15[0] = v8;
  v15[1] = v9;
  v16 = v10;
  v17 = v11;
  type metadata accessor for AudioGeneratorResource();
  swift_allocObject();

  v12 = v18;
  v13 = AudioGeneratorResource.init(configuration:renderHandler:)(v15, a1, a2);
  if (v12)
  {

    swift_weakDestroy();

    type metadata accessor for AudioGeneratorController();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 80) = v13;
    *(v5 + 72) = REAudioPlayerComponentPrepareAsset();
    RENetworkMarkComponentDirty();
  }

  return v5;
}

void *AudioGeneratorController.deinit()
{
  MEMORY[0x1C68F7360](*(v0 + 24), *(v0 + 72));
  MEMORY[0x1C68F7170](*(v0 + 24), *(v0 + 72));
  RENetworkMarkComponentDirty();
  RERelease();
  swift_weakDestroy();

  return v0;
}

uint64_t AudioGeneratorController.__deallocating_deinit()
{
  MEMORY[0x1C68F7360](*(v0 + 24), *(v0 + 72));
  MEMORY[0x1C68F7170](*(v0 + 24), *(v0 + 72));
  RENetworkMarkComponentDirty();
  RERelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t key path setter for AudioGeneratorController.gain : AudioGeneratorController(double *a1, uint64_t *a2)
{
  v2 = *a1;
  REAudioPlayerComponentGetDecibelGainForToken();
  v4 = v3;
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v2 != v4)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t AudioGeneratorController.gain.setter(double a1)
{
  REAudioPlayerComponentGetDecibelGainForToken();
  v3 = v2;
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v3 != a1)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t (*AudioGeneratorController.gain.modify(uint64_t a1))(double *a1)
{
  v3 = *(v1 + 24);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  REAudioPlayerComponentGetDecibelGainForToken();
  *a1 = v4;
  return AudioGeneratorController.gain.modify;
}

uint64_t AudioGeneratorController.gain.modify(double *a1)
{
  v1 = *a1;
  REAudioPlayerComponentGetDecibelGainForToken();
  v3 = v2;
  result = REAudioPlayerComponentSetDecibelGainForToken();
  if (v1 != v3)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

Swift::Void __swiftcall AudioGeneratorController.stop()()
{
  MEMORY[0x1C68F7360](*(v0 + 24), *(v0 + 72));

  RENetworkMarkComponentDirty();
}

uint64_t AudioEvents.PlaybackCompleted.playbackController.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SynchronizationEvents.OwnershipRequest.accept.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ManipulationEvents.WillBegin.shouldReject.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ManipulationEvents.WillBegin.init(entity:inputDevices:pivotPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = a5;
  *(a3 + 24) = a6;
  *(a3 + 28) = a7;
  *(a3 + 32) = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  *(a3 + 40) = 0;
  return result;
}

uint64_t ManipulationEvents.DidUpdateTransform.init(entity:inputDevices:pivotPoint:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 20) = a5;
  *(a3 + 24) = a6;
  *(a3 + 28) = a7;
  return result;
}

__n128 ManipulationEvents.DidReachMovementThreshold.inputDevice.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 16);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

__n128 ManipulationEvents.DidReachMovementThreshold.init(entity:inputDevice:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2->n128_u16[0];
  v4 = a2[3].n128_u8[0];
  a3->n128_u64[0] = a1;
  a3[1].n128_u16[0] = v3;
  result = a2[1];
  v6 = a2[2];
  a3[2] = result;
  a3[3] = v6;
  a3[4].n128_u8[0] = v4;
  return result;
}

uint64_t ManipulationEvents.WillRelease.init(entity:inputDevices:wasCancelled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ManipulationEvents.DidHandOff.init(entity:oldInputDevices:newInputDevices:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

RealityFoundation::VideoPlayerEvents::ContentTypeDidChange::ContentType_optional __swiftcall VideoPlayerEvents.ContentTypeDidChange.ContentType.init(rawValue:)(RealityFoundation::VideoPlayerEvents::ContentTypeDidChange::ContentType_optional rawValue)
{
  if (rawValue.value == RealityFoundation_VideoPlayerEvents_ContentTypeDidChange_ContentType_mono)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == RealityFoundation_VideoPlayerEvents_ContentTypeDidChange_ContentType_invalid)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance VideoPlayerEvents.ContentTypeDidChange.ContentType@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a10, ValueMetadata *a11, uint64_t a12)
{
  if (a11 == &type metadata for SynchronizationEvents.OwnershipRequest)
  {
    Scene.eventService.getter(v31);
    v20 = v32;
    v21 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    type metadata accessor for REOwnershipRequestEvent(0);
    EventService.publisher<A>(for:on:)(v22, a1, v20, v22, v21);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = &type metadata for SynchronizationEvents.OwnershipRequest;
    v24[3] = a12;
    v24[4] = v23;
    v24[5] = a7;
    v24[6] = a10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipRequestEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    v28 = Publisher<>.sink(receiveValue:)();

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    if (a11 == &type metadata for SceneEvents.Update || a11 == &type metadata for SceneEvents.Render)
    {
      Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(a11, a1, a2, a3, 0, a11, v31, a12);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      v16[2] = a11;
      v16[3] = a12;
      v16[4] = v15;
      v16[5] = a7;
      v16[6] = a10;
      v18 = type metadata accessor for Scene.Publisher(0, a11, a12, v17);

      swift_getWitnessTable(protocol conformance descriptor for Scene.Publisher<A>, v18);
      v28 = Publisher<>.sink(receiveValue:)();
    }

    else
    {
      Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(a11, a1, a2, a3, a4, a11, v31, a12);
      v25 = swift_allocObject();
      v25[2] = a11;
      v25[3] = a12;
      v25[4] = a7;
      v25[5] = a10;
      v27 = type metadata accessor for Scene.Publisher(0, a11, a12, v26);

      swift_getWitnessTable(protocol conformance descriptor for Scene.Publisher<A>, v27);
      v28 = Publisher<>.sink(receiveValue:)();
    }
  }

  result = type metadata accessor for AnyCancellable();
  v30 = MEMORY[0x1E695BF08];
  a8[3] = result;
  a8[4] = v30;
  *a8 = v28;
  return result;
}

uint64_t outlined init with copy of SynchronizationPeerID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v11;
  v12 = v11[1];
  v29 = v11[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    if (!*(v15 + 224))
    {
    }

    v28 = v8;
    v26 = a4;
    v27 = a3;
    v16 = *(v15 + 232);
    ObjectType = swift_getObjectType();
    v30[0] = v12;
    v18 = *(v16 + 32);
    swift_unknownObjectRetain();
    v18(&v31, v30, ObjectType, v16);
    if (!v32)
    {

      swift_unknownObjectRelease();
      return outlined destroy of BodyTrackingComponent?(&v31, &_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
    }

    outlined init with take of ForceEffectBase(&v31, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MutableBoxCySbGMd, &_s17RealityFoundation10MutableBoxCySbGMR);
    result = swift_allocObject();
    *(result + 16) = 0;
    if (v13)
    {
      v19 = result;
      v20 = REEntityGetSwiftObject();
      v21 = v28;
      if (v20)
      {
        type metadata accessor for Entity();
        v22 = swift_dynamicCastClassUnconditional();
        goto LABEL_7;
      }

      result = REEntityIsBeingDestroyed();
      if ((result & 1) == 0)
      {
        specialized static Entity.entityInfoType(_:)(v13);
        if (v24)
        {
          v23 = (*(v24 + 232))();
          v25 = *(v23 + 16);

          v21 = v28;
          MEMORY[0x1C68F9740](v25, 0);
          *(v23 + 16) = v13;
          MEMORY[0x1C68F9740](v13, v23);

LABEL_13:
          outlined init with copy of __REAssetService(v35, &v31 + 8);
          *&v31 = v23;
          v33 = partial apply for closure #1 in closure #1 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:);
          v34 = v19;
          outlined init with copy of SynchronizationEvents.OwnershipRequest(&v31, v30);

          swift_dynamicCast();
          v27(v10);
          result = (*(v21 + 8))(v10, a5);
          if (v29)
          {
            *v29 = *(v19 + 16);

            swift_unknownObjectRelease();

            outlined destroy of SynchronizationEvents.OwnershipRequest(&v31);
            return __swift_destroy_boxed_opaque_existential_1(v35);
          }

LABEL_19:
          __break(1u);
          return result;
        }

        v22 = makeEntity(for:)(v13);
LABEL_7:
        v23 = v22;
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(a1);
    }
  }

  return result;
}

void *Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v464 = a6;
  v407 = a4;
  v405 = a3;
  v462 = a2;
  v465 = a7;
  v466 = a1;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmn3DidO0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmn3DidO0VGMR);
  v414 = *(v415 - 8);
  MEMORY[0x1EEE9AC00](v415);
  v413 = &v353 - v9;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmN9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0E10Foundation0lK6EventsO0lmN9DidChangeVGMR);
  v411 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412);
  v410 = &v353 - v10;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMR);
  v408 = *(v409 - 8);
  MEMORY[0x1EEE9AC00](v409);
  v406 = &v353 - v11;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVG0E10Foundation0lK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVG0E10Foundation0lK6EventsO0lM9DidChangeVGMR);
  v403 = *(v404 - 8);
  MEMORY[0x1EEE9AC00](v404);
  v402 = &v353 - v12;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVG0E10Foundation05VideoK6EventsO0lM9DidChangeVGMR);
  v400 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401);
  v399 = &v353 - v13;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v397 = *(v398 - 8);
  MEMORY[0x1EEE9AC00](v398);
  v396 = &v353 - v14;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v394 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v393 = &v353 - v15;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v391 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v390 = &v353 - v16;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v388 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v387 = &v353 - v17;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVG0E10Foundation15ComponentEventsO0kL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVG0E10Foundation15ComponentEventsO0kL0VGMR);
  v385 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v384 = &v353 - v18;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGAF11AudioEventsO17PlaybackCompletedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGAF11AudioEventsO17PlaybackCompletedVGMR);
  v379 = *(v380 - 8);
  MEMORY[0x1EEE9AC00](v380);
  v378 = &v353 - v19;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v382 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v381 = &v353 - v20;
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v375 = &v353 - v21;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGAF21SynchronizationEventsO09OwnershipK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGAF21SynchronizationEventsO09OwnershipK0VGMR);
  v373 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v372 = &v353 - v22;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVG0E10Foundation06MotionK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVG0E10Foundation06MotionK6EventsO0lM0VGMR);
  v370 = *(v371 - 8);
  MEMORY[0x1EEE9AC00](v371);
  v369 = &v353 - v23;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMR);
  v367 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368);
  v366 = &v353 - v24;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVG0E10Foundation0K16SimulationEventsO0lM0VGMR);
  v364 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v363 = &v353 - v25;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGAF15CollisionEventsO5EndedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGAF15CollisionEventsO5EndedVGMR);
  v361 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v360 = &v353 - v26;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGAF15CollisionEventsO7UpdatedVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGAF15CollisionEventsO7UpdatedVGMR);
  v358 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v357 = &v353 - v27;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGAF15CollisionEventsO5BeganVGMR);
  v355 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v354 = &v353 - v28;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGAF15AnimationEventsO0E10FoundationE08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGAF15AnimationEventsO0E10FoundationE08PlaybackL0VGMR);
  v417 = *(v418 - 8);
  MEMORY[0x1EEE9AC00](v418);
  v416 = &v353 - v29;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v420 = *(v421 - 8);
  MEMORY[0x1EEE9AC00](v421);
  v419 = &v353 - v30;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v423 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v422 = &v353 - v31;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v426 = *(v427 - 8);
  MEMORY[0x1EEE9AC00](v427);
  v425 = &v353 - v32;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAF15AnimationEventsO0E10FoundationE0klmN0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAF15AnimationEventsO0E10FoundationE0klmN0VGMR);
  v429 = *(v430 - 8);
  MEMORY[0x1EEE9AC00](v430);
  v428 = &v353 - v33;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v432 = *(v433 - 8);
  MEMORY[0x1EEE9AC00](v433);
  v431 = &v353 - v34;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v435 = *(v436 - 8);
  MEMORY[0x1EEE9AC00](v436);
  v434 = &v353 - v35;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v438 = *(v439 - 8);
  MEMORY[0x1EEE9AC00](v439);
  v437 = &v353 - v36;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v441 = *(v442 - 8);
  MEMORY[0x1EEE9AC00](v442);
  v440 = &v353 - v37;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGAF0G6EventsO0E10FoundationE0lmK0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGAF0G6EventsO0E10FoundationE0lmK0VGMR);
  v444 = *(v445 - 8);
  MEMORY[0x1EEE9AC00](v445);
  v443 = &v353 - v38;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVG0E10Foundation0oK6EventsO0lmnO0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVG0E10Foundation0oK6EventsO0lmnO0VGMR);
  v447 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v446 = &v353 - v39;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVG0E10Foundation06AnchorK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVG0E10Foundation06AnchorK6EventsO0lM0VGMR);
  v450 = *(v451 - 8);
  MEMORY[0x1EEE9AC00](v451);
  v449 = &v353 - v40;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVG0E10Foundation0mK6EventsO0lM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVG0E10Foundation0mK6EventsO0lM0VGMR);
  v453 = *(v454 - 8);
  MEMORY[0x1EEE9AC00](v454);
  v452 = &v353 - v41;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGAF0G6EventsO0klM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGAF0G6EventsO0klM0VGMR);
  v456 = *(v457 - 8);
  MEMORY[0x1EEE9AC00](v457);
  v455 = &v353 - v42;
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGAF0G6EventsO0L0VGMR);
  v459 = *(v460 - 8);
  MEMORY[0x1EEE9AC00](v460);
  v44 = &v353 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v353 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF0G6EventsO0L0VGMR);
  v461 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v353 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v353 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF06EnginelM0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGAF06EnginelM0VGMR);
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v353 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v353 - v59;
  if (a5)
  {
    v458 = *(a5 + 16);
  }

  else
  {
    v458 = 0;
  }

  v463 = a8;
  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v473);
    v61 = v475;
    if (v475)
    {
      v62 = v476;
      __swift_project_boxed_opaque_existential_1(&v473, v475);
      type metadata accessor for REEngineDoUpdateEvent(0);
      EventService.publisher<A>(for:on:)(v63, v462, v61, v63, v62);
      v64 = *(&v468 + 1);
      v61 = v468;
      v65 = v469;
      __swift_destroy_boxed_opaque_existential_1(&v473);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v473, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v64 = 0;
      v65 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v65)
    {
      *&v473 = v61;
      *(&v473 + 1) = v64;
      v474 = v65;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      Publisher.compactMap<A>(_:)();

      v71 = *(v55 + 32);
      v71(v60, v57, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH06EnginemN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH06EnginemN0VGGMR);
      v72 = swift_allocObject();
      v71(&v72[*(*v72 + *MEMORY[0x1E695BEE8] + 16)], v60, v54);
    }

    else
    {

      v72 = 0;
    }

    *&v473 = v72;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA17EngineUpdateEventVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA17EngineUpdateEventVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v473);
    v66 = v475;
    if (v475)
    {
      v67 = v476;
      __swift_project_boxed_opaque_existential_1(&v473, v475);
      type metadata accessor for REEngineDoUpdateEvent(0);
      EventService.publisher<A>(for:on:)(v68, v462, v66, v68, v67);
      v70 = *(&v468 + 1);
      v69 = v468;
      v66 = v469;
      __swift_destroy_boxed_opaque_existential_1(&v473);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v473, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v69 = 0;
      v70 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v66)
    {
      *&v473 = v69;
      *(&v473 + 1) = v70;
      v474 = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoUpdateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoUpdateEventVGMR);
      Publisher.compactMap<A>(_:)();

      v80 = *(v461 + 32);
      v80(v53, v50, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoUpdateEventVGAH0I6EventsO0M0VGGMR);
      v66 = swift_allocObject();
      v80(v66 + *(*v66 + *MEMORY[0x1E695BEE8] + 16), v53, v48);
    }

    else
    {
    }

    *&v473 = v66;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.engineEventService.getter(&v473);
    v75 = v475;
    if (v475)
    {
      v76 = v476;
      __swift_project_boxed_opaque_existential_1(&v473, v475);
      type metadata accessor for REEngineDoRenderEvent(0);
      EventService.publisher<A>(for:on:)(v77, v462, v75, v77, v76);
      v79 = *(&v468 + 1);
      v78 = v468;
      v75 = v469;
      __swift_destroy_boxed_opaque_existential_1(&v473);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v473, &_s17RealityFoundation12EventService_pSgMd, &_s17RealityFoundation12EventService_pSgMR);
      v78 = 0;
      v79 = 0;
    }

    swift_allocObject();
    swift_weakInit();
    if (v75)
    {
      *&v473 = v78;
      *(&v473 + 1) = v79;
      v474 = v75;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
      lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEngineDoRenderEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So21REEngineDoRenderEventVGMR);
      Publisher.compactMap<A>(_:)();

      v88 = *(v459 + 32);
      v89 = v460;
      v88(v47, v44, v460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So21REEngineDoRenderEventVGAH0I6EventsO0M0VGGMR);
      v75 = swift_allocObject();
      v88(v75 + *(*v75 + *MEMORY[0x1E695BEE8] + 16), v47, v89);
    }

    else
    {
    }

    *&v473 = v75;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v81 = v475;
    v82 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneAnchoredStateChangedEvent(0);
    EventService.publisher<A>(for:on:)(v83, v462, v81, v83, v82);
    v84 = v468;
    v85 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v84;
    v474 = v85;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneAnchoredStateChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneAnchoredStateChangedEventVGMR);
    v86 = v455;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneAnchoredStateChangedEventVGAH0I6EventsO0lmN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneAnchoredStateChangedEventVGAH0I6EventsO0lmN0VGGMR);
    v87 = swift_allocObject();
    (*(v456 + 32))(&v87[*(*v87 + *MEMORY[0x1E695BEE8] + 16)], v86, v457);
    *&v473 = v87;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO20AnchoredStateChangedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO20AnchoredStateChangedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v92 = v475;
    v93 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnchorStateDidAnchorEvent(0);
    EventService.publisher<A>(for:on:)(v94, v462, v92, v94, v93);
    v95 = v468;
    v96 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v95;
    v474 = v96;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateDidAnchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REAnchorStateDidAnchorEventVGMR);
    v97 = v452;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REAnchorStateDidAnchorEventVG0G10Foundation0nL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REAnchorStateDidAnchorEventVG0G10Foundation0nL6EventsO0mN0VGGMR);
    v98 = swift_allocObject();
    (*(v453 + 32))(&v98[*(*v98 + *MEMORY[0x1E695BEE8] + 16)], v97, v454);
    *&v473 = v98;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO03DidF0VGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO03DidF0VGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v99 = v475;
    v100 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnchorStateWillUnanchorEvent(0);
    EventService.publisher<A>(for:on:)(v101, v462, v99, v101, v100);
    v102 = v468;
    v103 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v102;
    v474 = v103;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateWillUnanchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REAnchorStateWillUnanchorEventVGMR);
    v104 = v449;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REAnchorStateWillUnanchorEventVG0G10Foundation06AnchorL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REAnchorStateWillUnanchorEventVG0G10Foundation06AnchorL6EventsO0mN0VGGMR);
    v105 = swift_allocObject();
    (*(v450 + 32))(&v105[*(*v105 + *MEMORY[0x1E695BEE8] + 16)], v104, v451);
    *&v473 = v105;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO12WillUnanchorVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO12WillUnanchorVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v106 = v475;
    v107 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnchorStateDidFailToAnchorEvent(0);
    EventService.publisher<A>(for:on:)(v108, v462, v106, v108, v107);
    v109 = v468;
    v110 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v109;
    v474 = v110;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnchorStateDidFailToAnchorEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So33REAnchorStateDidFailToAnchorEventVGMR);
    v111 = v446;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So33REAnchorStateDidFailToAnchorEventVG0G10Foundation0pL6EventsO0mnoP0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So33REAnchorStateDidFailToAnchorEventVG0G10Foundation0pL6EventsO0mnoP0VGGMR);
    v112 = swift_allocObject();
    (*(v447 + 32))(&v112[*(*v112 + *MEMORY[0x1E695BEE8] + 16)], v111, v448);
    *&v473 = v112;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO09DidFailToF0VGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17AnchorStateEventsO09DidFailToF0VGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v113 = v475;
    v114 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneEntityDidAddEvent(0);
    EventService.publisher<A>(for:on:)(v115, v462, v113, v115, v114);
    v116 = v468;
    v117 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v116;
    v474 = v117;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidAddEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24RESceneEntityDidAddEventVGMR);
    v118 = v443;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24RESceneEntityDidAddEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24RESceneEntityDidAddEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v119 = swift_allocObject();
    (*(v444 + 32))(&v119[*(*v119 + *MEMORY[0x1E695BEE8] + 16)], v118, v445);
    *&v473 = v119;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE12DidAddEntityVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE12DidAddEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v120 = v475;
    v121 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneEntityDidActivateEvent(0);
    EventService.publisher<A>(for:on:)(v122, v462, v120, v122, v121);
    v123 = v468;
    v124 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v123;
    v474 = v124;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidActivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidActivateEventVGMR);
    v125 = v440;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidActivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidActivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v126 = swift_allocObject();
    (*(v441 + 32))(&v126[*(*v126 + *MEMORY[0x1E695BEE8] + 16)], v125, v442);
    *&v473 = v126;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidActivateEntityVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidActivateEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v127 = v475;
    v128 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneEntityWillDeactivateEvent(0);
    EventService.publisher<A>(for:on:)(v129, v462, v127, v129, v128);
    v130 = v468;
    v131 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v130;
    v474 = v131;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityWillDeactivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32RESceneEntityWillDeactivateEventVGMR);
    v132 = v437;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneEntityWillDeactivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32RESceneEntityWillDeactivateEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v133 = swift_allocObject();
    (*(v438 + 32))(&v133[*(*v133 + *MEMORY[0x1E695BEE8] + 16)], v132, v439);
    *&v473 = v133;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE20WillDeactivateEntityVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE20WillDeactivateEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v134 = v475;
    v135 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneEntityWillRemoveEvent(0);
    EventService.publisher<A>(for:on:)(v136, v462, v134, v136, v135);
    v137 = v468;
    v138 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v137;
    v474 = v138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityWillRemoveEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28RESceneEntityWillRemoveEventVGMR);
    v139 = v434;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28RESceneEntityWillRemoveEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28RESceneEntityWillRemoveEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v140 = swift_allocObject();
    (*(v435 + 32))(&v140[*(*v140 + *MEMORY[0x1E695BEE8] + 16)], v139, v436);
    *&v473 = v140;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE16WillRemoveEntityVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE16WillRemoveEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v141 = v475;
    v142 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RESceneEntityDidReparentEvent(0);
    EventService.publisher<A>(for:on:)(v143, v462, v141, v143, v142);
    v144 = v468;
    v145 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v144;
    v474 = v145;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RESceneEntityDidReparentEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29RESceneEntityDidReparentEventVGMR);
    v146 = v431;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidReparentEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29RESceneEntityDidReparentEventVGAH0I6EventsO0G10FoundationE0mnL0VGGMR);
    v147 = swift_allocObject();
    (*(v432 + 32))(&v147[*(*v147 + *MEMORY[0x1E695BEE8] + 16)], v146, v433);
    *&v473 = v147;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidReparentEntityVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO0A10FoundationE17DidReparentEntityVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v148 = v475;
    v149 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnimationSkeletalPoseUpdateCompleteEvent(0);
    EventService.publisher<A>(for:on:)(v150, v462, v148, v150, v149);
    v151 = v468;
    v152 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v151;
    v474 = v152;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationSkeletalPoseUpdateCompleteEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So42REAnimationSkeletalPoseUpdateCompleteEventVGMR);
    v153 = v428;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAH15AnimationEventsO0G10FoundationE0lmnO0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So42REAnimationSkeletalPoseUpdateCompleteEventVGAH15AnimationEventsO0G10FoundationE0lmnO0VGGMR);
    v154 = swift_allocObject();
    (*(v429 + 32))(&v154[*(*v154 + *MEMORY[0x1E695BEE8] + 16)], v153, v430);
    *&v473 = v154;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE26SkeletalPoseUpdateCompleteVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE26SkeletalPoseUpdateCompleteVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v155 = v475;
    v156 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v157, v462, v155, v157, v156);
    v158 = v468;
    v159 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v158;
    v474 = v159;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v160 = v425;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v161 = swift_allocObject();
    (*(v426 + 32))(&v161[*(*v161 + *MEMORY[0x1E695BEE8] + 16)], v160, v427);
    *&v473 = v161;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v162 = v475;
    v163 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnimationHasLoopedEvent(0);
    EventService.publisher<A>(for:on:)(v164, v462, v162, v164, v163);
    v165 = v468;
    v166 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v165;
    v474 = v166;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasLoopedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REAnimationHasLoopedEventVGMR);
    v167 = v422;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REAnimationHasLoopedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REAnimationHasLoopedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v168 = swift_allocObject();
    (*(v423 + 32))(&v168[*(*v168 + *MEMORY[0x1E695BEE8] + 16)], v167, v424);
    *&v473 = v168;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO14PlaybackLoopedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO14PlaybackLoopedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v169 = v475;
    v170 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v171, v462, v169, v171, v170);
    v172 = v468;
    v173 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v172;
    v474 = v173;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    v174 = v419;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v175 = swift_allocObject();
    (*(v420 + 32))(&v175[*(*v175 + *MEMORY[0x1E695BEE8] + 16)], v174, v421);
    *&v473 = v175;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v176 = v475;
    v177 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAnimationHasStartedEvent(0);
    EventService.publisher<A>(for:on:)(v178, v462, v176, v178, v177);
    v179 = v468;
    v180 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v179;
    v474 = v180;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasStartedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REAnimationHasStartedEventVGMR);
    v181 = v416;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REAnimationHasStartedEventVGAH15AnimationEventsO0G10FoundationE08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REAnimationHasStartedEventVGAH15AnimationEventsO0G10FoundationE08PlaybackM0VGGMR);
    v182 = swift_allocObject();
    (*(v417 + 32))(&v182[*(*v182 + *MEMORY[0x1E695BEE8] + 16)], v181, v418);
    *&v473 = v182;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE15PlaybackStartedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO0A10FoundationE15PlaybackStartedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v183 = v475;
    v184 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RECollisionDidStartEventEx(0);
    EventService.publisher<A>(for:on:)(v185, v462, v183, v185, v184);
    v186 = v468;
    v187 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v186;
    v474 = v187;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStartEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26RECollisionDidStartEventExVGMR);
    v188 = v354;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26RECollisionDidStartEventExVGAH15CollisionEventsO5BeganVGGMR);
    v189 = swift_allocObject();
    (*(v355 + 32))(&v189[*(*v189 + *MEMORY[0x1E695BEE8] + 16)], v188, v356);
    *&v473 = v189;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5BeganVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v190 = v475;
    v191 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RECollisionDidUpdateEventEx(0);
    EventService.publisher<A>(for:on:)(v192, v462, v190, v192, v191);
    v193 = v468;
    v194 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v193;
    v474 = v194;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidUpdateEventEx> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27RECollisionDidUpdateEventExVGMR);
    v195 = v357;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27RECollisionDidUpdateEventExVGAH15CollisionEventsO7UpdatedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27RECollisionDidUpdateEventExVGAH15CollisionEventsO7UpdatedVGGMR);
    v196 = swift_allocObject();
    (*(v358 + 32))(&v196[*(*v196 + *MEMORY[0x1E695BEE8] + 16)], v195, v359);
    *&v473 = v196;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO7UpdatedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO7UpdatedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v197 = v475;
    v198 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for RECollisionDidStopEvent(0);
    EventService.publisher<A>(for:on:)(v199, v462, v197, v199, v198);
    v200 = v468;
    v201 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v200;
    v474 = v201;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<RECollisionDidStopEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23RECollisionDidStopEventVGMR);
    v202 = v360;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23RECollisionDidStopEventVGAH15CollisionEventsO5EndedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23RECollisionDidStopEventVGAH15CollisionEventsO5EndedVGGMR);
    v203 = swift_allocObject();
    (*(v361 + 32))(&v203[*(*v203 + *MEMORY[0x1E695BEE8] + 16)], v202, v362);
    *&v473 = v203;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5EndedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA15CollisionEventsO5EndedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v204 = v475;
    v205 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REEntityPhysicsWillSimulateEvent(0);
    EventService.publisher<A>(for:on:)(v206, v462, v204, v206, v205);
    v207 = v468;
    v208 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v207;
    v474 = v208;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEntityPhysicsWillSimulateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So32REEntityPhysicsWillSimulateEventVGMR);
    v209 = v363;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32REEntityPhysicsWillSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So32REEntityPhysicsWillSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMR);
    v210 = swift_allocObject();
    (*(v364 + 32))(&v210[*(*v210 + *MEMORY[0x1E695BEE8] + 16)], v209, v365);
    *&v473 = v210;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO12WillSimulateVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO12WillSimulateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v211 = v475;
    v212 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REEntityPhysicsDidSimulateEvent(0);
    EventService.publisher<A>(for:on:)(v213, v462, v211, v213, v212);
    v214 = v468;
    v215 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v214;
    v474 = v215;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REEntityPhysicsDidSimulateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So31REEntityPhysicsDidSimulateEventVGMR);
    v216 = v366;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So31REEntityPhysicsDidSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So31REEntityPhysicsDidSimulateEventVG0G10Foundation0L16SimulationEventsO0mN0VGGMR);
    v217 = swift_allocObject();
    (*(v367 + 32))(&v217[*(*v217 + *MEMORY[0x1E695BEE8] + 16)], v216, v368);
    *&v473 = v217;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO11DidSimulateVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation23PhysicsSimulationEventsO11DidSimulateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v218 = v475;
    v219 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REMotionStateDidChangeEvent(0);
    EventService.publisher<A>(for:on:)(v220, v462, v218, v220, v219);
    v221 = v468;
    v222 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v221;
    v474 = v222;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REMotionStateDidChangeEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REMotionStateDidChangeEventVGMR);
    v223 = v369;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REMotionStateDidChangeEventVG0G10Foundation06MotionL6EventsO0mN0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REMotionStateDidChangeEventVG0G10Foundation06MotionL6EventsO0mN0VGGMR);
    v224 = swift_allocObject();
    (*(v370 + 32))(&v224[*(*v224 + *MEMORY[0x1E695BEE8] + 16)], v223, v371);
    *&v473 = v224;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17MotionStateEventsO9DidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17MotionStateEventsO9DidChangeVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v225 = v475;
    v226 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REOwnershipRequestEvent(0);
    EventService.publisher<A>(for:on:)(v227, v462, v225, v227, v226);
    v228 = v468;
    v229 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v230 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v231 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v230, &dword_1C1358000, v231, "[Ownership] Received ownership request event", 44, 2, MEMORY[0x1E69E7CC0]);

    swift_allocObject();
    swift_weakInit();
    v473 = v228;
    v474 = v229;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipRequestEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipRequestEventVGMR);
    v232 = v372;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipRequestEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipRequestEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v233 = swift_allocObject();
    (*(v373 + 32))(&v233[*(*v233 + *MEMORY[0x1E695BEE8] + 16)], v232, v374);
    *&v473 = v233;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipRequestVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipRequestVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v234 = v475;
    v235 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REOwnershipResponseEvent(0);
    EventService.publisher<A>(for:on:)(v236, v462, v234, v236, v235);
    v237 = v468;
    v238 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v239 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v240 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v239, &dword_1C1358000, v240, "[Ownership] Received ownership response event", 45, 2, MEMORY[0x1E69E7CC0]);

    swift_allocObject();
    swift_weakInit();
    v473 = v237;
    v474 = v238;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipResponseEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So24REOwnershipResponseEventVGMR);
    v241 = v375;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So24REOwnershipResponseEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v242 = swift_allocObject();
    (*(v376 + 32))(&v242[*(*v242 + *MEMORY[0x1E695BEE8] + 16)], v241, v377);
    *&v473 = v242;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO17OwnershipResponseVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v243 = v475;
    v244 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REOwnershipChangedEvent(0);
    EventService.publisher<A>(for:on:)(v245, v462, v243, v245, v244);
    v246 = v468;
    v247 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v248 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v249 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v248, &dword_1C1358000, v249, "[Ownership] Received ownership changed event", 44, 2, MEMORY[0x1E69E7CC0]);

    swift_allocObject();
    swift_weakInit();
    v473 = v246;
    v474 = v247;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REOwnershipChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So23REOwnershipChangedEventVGMR);
    v250 = v381;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipChangedEventVGAH21SynchronizationEventsO09OwnershipL0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So23REOwnershipChangedEventVGAH21SynchronizationEventsO09OwnershipL0VGGMR);
    v251 = swift_allocObject();
    (*(v382 + 32))(&v251[*(*v251 + *MEMORY[0x1E695BEE8] + 16)], v250, v383);
    *&v473 = v251;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipChangedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA21SynchronizationEventsO16OwnershipChangedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v252 = v475;
    v253 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REAudioPlayerDidCompleteEvent(0);
    EventService.publisher<A>(for:on:)(v254, v462, v252, v254, v253);
    v255 = v468;
    v256 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v255;
    v474 = v256;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAudioPlayerDidCompleteEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAudioPlayerDidCompleteEventVGMR);
    v257 = v378;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAudioPlayerDidCompleteEventVGAH11AudioEventsO17PlaybackCompletedVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAudioPlayerDidCompleteEventVGAH11AudioEventsO17PlaybackCompletedVGGMR);
    v258 = swift_allocObject();
    (*(v379 + 32))(&v258[*(*v258 + *MEMORY[0x1E695BEE8] + 16)], v257, v380);
    *&v473 = v258;
    v73 = &_s10RealityKit5SceneC9PublisherVy_AA11AudioEventsO17PlaybackCompletedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_AA11AudioEventsO17PlaybackCompletedVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v259 = v475;
    v260 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REComponentDidAddEvent(0);
    (*(v260 + 8))(&v468, v261, v462, v405, v407, v261, v259, v260);
    v262 = v468;
    v263 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v262;
    v474 = v263;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidAddEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So22REComponentDidAddEventVGMR);
    v264 = v384;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So22REComponentDidAddEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So22REComponentDidAddEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v265 = swift_allocObject();
    (*(v385 + 32))(&v265[*(*v265 + *MEMORY[0x1E695BEE8] + 16)], v264, v386);
    *&v473 = v265;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO6DidAddVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO6DidAddVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v266 = v475;
    v267 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REComponentDidActivateEvent(0);
    (*(v267 + 8))(&v468, v268, v462, v405, v407, v268, v266, v267);
    v269 = v468;
    v270 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v269;
    v474 = v270;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidActivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So27REComponentDidActivateEventVGMR);
    v271 = v387;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REComponentDidActivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So27REComponentDidActivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v272 = swift_allocObject();
    (*(v388 + 32))(&v272[*(*v272 + *MEMORY[0x1E695BEE8] + 16)], v271, v389);
    *&v473 = v272;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO11DidActivateVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO11DidActivateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v273 = v475;
    v274 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REComponentWillDeactivateEvent(0);
    (*(v274 + 8))(&v468, v275, v462, v405, v407, v275, v273, v274);
    v276 = v468;
    v277 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v276;
    v474 = v277;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentWillDeactivateEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So30REComponentWillDeactivateEventVGMR);
    v278 = v390;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REComponentWillDeactivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So30REComponentWillDeactivateEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v279 = swift_allocObject();
    (*(v391 + 32))(&v279[*(*v279 + *MEMORY[0x1E695BEE8] + 16)], v278, v392);
    *&v473 = v279;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO14WillDeactivateVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO14WillDeactivateVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v280 = v475;
    v281 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REComponentWillRemoveEvent(0);
    (*(v281 + 8))(&v468, v282, v462, v405, v407, v282, v280, v281);
    v283 = v468;
    v284 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v283;
    v474 = v284;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentWillRemoveEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So26REComponentWillRemoveEventVGMR);
    v285 = v393;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REComponentWillRemoveEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So26REComponentWillRemoveEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v286 = swift_allocObject();
    (*(v394 + 32))(&v286[*(*v286 + *MEMORY[0x1E695BEE8] + 16)], v285, v395);
    *&v473 = v286;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO10WillRemoveVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO10WillRemoveVGMR;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v287 = v475;
    v288 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REComponentDidChangeEvent(0);
    (*(v288 + 8))(&v468, v289, v462, v405, v407, v289, v287, v288);
    v290 = v468;
    v291 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    *(swift_allocObject() + 16) = v458;
    v473 = v290;
    v474 = v291;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REComponentDidChangeEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So25REComponentDidChangeEventVGMR);
    v292 = v396;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REComponentDidChangeEventVG0G10Foundation15ComponentEventsO0lM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So25REComponentDidChangeEventVG0G10Foundation15ComponentEventsO0lM0VGGMR);
    v293 = swift_allocObject();
    (*(v397 + 32))(&v293[*(*v293 + *MEMORY[0x1E695BEE8] + 16)], v292, v398);
    *&v473 = v293;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO9DidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation15ComponentEventsO9DidChangeVGMR;
    goto LABEL_30;
  }

  if (swift_conformsToProtocol2() && v466)
  {
    Scene.eventService.getter(&v473);
    v294 = v475;
    v295 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AccessibilityActivateEvent_pMd, &_s17RealityFoundation26AccessibilityActivateEvent_pMR);
    v470 = 0;
    v468 = 0u;
    v469 = 0u;
    EventService.publisher<A>(for:on:)(v296, &v468, v294, v296, v295);
    outlined destroy of BodyTrackingComponent?(&v468, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v467 = v471;
    v297 = v472;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v467;
    v474 = v297;
    v298 = swift_allocObject();
    v300 = v463;
    v299 = v464;
    *(v298 + 16) = v464;
    *(v298 + 24) = v300;
    v301 = partial apply for closure #33 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
LABEL_103:
    result = Scene.Publisher.init<A>(corePublisher:transform:)(&v473, v301, v298, v299, v296, &v468);
    *v465 = v468;
    return result;
  }

  if (swift_conformsToProtocol2() && v466)
  {
    Scene.eventService.getter(&v473);
    v302 = v475;
    v303 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityIncrementEvent_pMd, &_s17RealityFoundation27AccessibilityIncrementEvent_pMR);
    v470 = 0;
    v468 = 0u;
    v469 = 0u;
    EventService.publisher<A>(for:on:)(v296, &v468, v302, v296, v303);
    outlined destroy of BodyTrackingComponent?(&v468, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v467 = v471;
    v304 = v472;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v467;
    v474 = v304;
    v298 = swift_allocObject();
    v305 = v463;
    v299 = v464;
    *(v298 + 16) = v464;
    *(v298 + 24) = v305;
    v301 = partial apply for closure #34 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v466)
  {
    Scene.eventService.getter(&v473);
    v306 = v475;
    v307 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AccessibilityDecrementEvent_pMd, &_s17RealityFoundation27AccessibilityDecrementEvent_pMR);
    v470 = 0;
    v468 = 0u;
    v469 = 0u;
    EventService.publisher<A>(for:on:)(v296, &v468, v306, v296, v307);
    outlined destroy of BodyTrackingComponent?(&v468, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v467 = v471;
    v308 = v472;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v467;
    v474 = v308;
    v298 = swift_allocObject();
    v309 = v463;
    v299 = v464;
    *(v298 + 16) = v464;
    *(v298 + 24) = v309;
    v301 = partial apply for closure #35 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v466)
  {
    Scene.eventService.getter(&v473);
    v310 = v475;
    v311 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30AccessibilityCustomActionEvent_pMd, &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR);
    v470 = 0;
    v468 = 0u;
    v469 = 0u;
    EventService.publisher<A>(for:on:)(v296, &v468, v310, v296, v311);
    outlined destroy of BodyTrackingComponent?(&v468, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v467 = v471;
    v312 = v472;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v467;
    v474 = v312;
    v298 = swift_allocObject();
    v313 = v463;
    v299 = v464;
    *(v298 + 16) = v464;
    *(v298 + 24) = v313;
    v301 = partial apply for closure #36 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_conformsToProtocol2() && v466)
  {
    Scene.eventService.getter(&v473);
    v314 = v475;
    v315 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd, &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR);
    v470 = 0;
    v468 = 0u;
    v469 = 0u;
    EventService.publisher<A>(for:on:)(v296, &v468, v314, v296, v315);
    outlined destroy of BodyTrackingComponent?(&v468, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v467 = v471;
    v316 = v472;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v467;
    v474 = v316;
    v298 = swift_allocObject();
    v317 = v463;
    v299 = v464;
    *(v298 + 16) = v464;
    *(v298 + 24) = v317;
    v301 = partial apply for closure #37 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
    goto LABEL_103;
  }

  if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v318 = v475;
    v319 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REVideoPlayerContentTypeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v320, v462, v318, v320, v319);
    v321 = v468;
    v322 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v321;
    v474 = v322;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerContentTypeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerContentTypeChangedEventVGMR);
    v323 = v399;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerContentTypeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerContentTypeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMR);
    v324 = swift_allocObject();
    (*(v400 + 32))(&v324[*(*v324 + *MEMORY[0x1E695BEE8] + 16)], v323, v401);
    *&v473 = v324;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ContentTypeDidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ContentTypeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v325 = v475;
    v326 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REVideoPlayerVideoSizeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v327, v462, v325, v327, v326);
    v328 = v468;
    v329 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v328;
    v474 = v329;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoSizeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So34REVideoPlayerVideoSizeChangedEventVGMR);
    v330 = v402;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So34REVideoPlayerVideoSizeChangedEventVG0G10Foundation0mL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So34REVideoPlayerVideoSizeChangedEventVG0G10Foundation0mL6EventsO0mN9DidChangeVGGMR);
    v331 = swift_allocObject();
    (*(v403 + 32))(&v331[*(*v331 + *MEMORY[0x1E695BEE8] + 16)], v330, v404);
    *&v473 = v331;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F13SizeDidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F13SizeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v332 = v475;
    v333 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REVideoPlayerViewingModeChangedEvent(0);
    EventService.publisher<A>(for:on:)(v334, v462, v332, v334, v333);
    v335 = v468;
    v336 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v335;
    v474 = v336;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerViewingModeChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So36REVideoPlayerViewingModeChangedEventVGMR);
    v337 = v406;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerViewingModeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So36REVideoPlayerViewingModeChangedEventVG0G10Foundation05VideoL6EventsO0mN9DidChangeVGGMR);
    v338 = swift_allocObject();
    (*(v408 + 32))(&v338[*(*v338 + *MEMORY[0x1E695BEE8] + 16)], v337, v409);
    *&v473 = v338;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ViewingModeDidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO20ViewingModeDidChangeVGMR;
  }

  else if (swift_dynamicCastMetatype())
  {
    Scene.eventService.getter(&v473);
    v339 = v475;
    v340 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
    EventService.publisher<A>(for:on:)(v341, v462, v339, v341, v340);
    v342 = v468;
    v343 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v342;
    v474 = v343;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    v344 = v410;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mnO9DidChangeVGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mnO9DidChangeVGGMR);
    v345 = swift_allocObject();
    (*(v411 + 32))(&v345[*(*v345 + *MEMORY[0x1E695BEE8] + 16)], v344, v412);
    *&v473 = v345;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F25ReceiverEndpointDidChangeVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F25ReceiverEndpointDidChangeVGMR;
  }

  else
  {
    if (!swift_dynamicCastMetatype())
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    Scene.eventService.getter(&v473);
    v346 = v475;
    v347 = v476;
    __swift_project_boxed_opaque_existential_1(&v473, v475);
    type metadata accessor for REVideoPlayerVideoReceiverEndpointChangedEvent(0);
    EventService.publisher<A>(for:on:)(v348, v462, v346, v348, v347);
    v349 = v468;
    v350 = v469;
    __swift_destroy_boxed_opaque_existential_1(&v473);
    v473 = v349;
    v474 = v350;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    lazy protocol witness table accessor for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REVideoPlayerVideoReceiverEndpointChangedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So46REVideoPlayerVideoReceiverEndpointChangedEventVGMR);
    v351 = v413;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mno3DidP0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So46REVideoPlayerVideoReceiverEndpointChangedEventVG0G10Foundation0mL6EventsO0mno3DidP0VGGMR);
    v352 = swift_allocObject();
    (*(v414 + 32))(&v352[*(*v352 + *MEMORY[0x1E695BEE8] + 16)], v351, v415);
    *&v473 = v352;
    v73 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F26ReceiverEndpointDidChangedVGMd;
    v74 = &_s10RealityKit5SceneC9PublisherVy_0A10Foundation17VideoPlayerEventsO0F26ReceiverEndpointDidChangedVGMR;
  }

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(v73, v74);
  type metadata accessor for Scene.Publisher(0, v464, v463, v90);
  return swift_dynamicCast();
}

uint64_t closure #1 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(int *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (result)
  {
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  *(a3 + 4) = v6 == 0;
  return result;
}

uint64_t Scene.Publisher.init<A>(corePublisher:transform:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21 = a2;
  v22 = a6;
  v7 = type metadata accessor for Scene.CorePublisher(255, a5, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for Scene.CorePublisher<A>, v7, v21);
  v8 = type metadata accessor for Publishers.CompactMap();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = *(a1 + 2);
  if (v18)
  {
    v23 = *a1;
    v24 = v18;
    Publisher.compactMap<A>(_:)();

    (*(v9 + 32))(v17, v14, v8);
    (*(v9 + 16))(v11, v17, v8);
    swift_getWitnessTable(MEMORY[0x1E695BC80], v8);
    v19 = AnyPublisher.init<A>(_:)();

    result = (*(v9 + 8))(v17, v8);
  }

  else
  {

    v19 = 0;
  }

  *v22 = v19;
  return result;
}

uint64_t closure #2 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(float *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = v4;
  if (!result)
  {
    v6 = 0.0;
  }

  *a3 = result;
  *(a3 + 8) = v6;
  return result;
}

uint64_t closure #3 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t closure #4 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = REEntityIsNonHiddenAndInHierarchy();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v7 = swift_dynamicCastClassUnconditional();
    goto LABEL_4;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v9)
    {
      v8 = (*(v9 + 232))();
      v10 = *(v8 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v8 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v8);

LABEL_8:
      result = swift_conformsToProtocol2();
      if (result)
      {
        *a3 = v5;
        a3[1] = v8;
        a3[2] = result;
        return result;
      }

      if (one-time initialization token for ecsCoreLogger == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    v7 = makeEntity(for:)(v4);
LABEL_4:
    v8 = v7;
    goto LABEL_8;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_11:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, ecsCoreLogger);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    REEntityGetName();
    v16 = String.init(cString:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    LocalId = REEntityGetLocalId();

    *(v14 + 14) = LocalId;

    _os_log_impl(&dword_1C1358000, v12, v13, "AnchoredStateChanged event was not delivered because '%s' (%llx) does not conform to HasAnchoring", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1C6902A30](v15, -1, -1);
    MEMORY[0x1C6902A30](v14, -1, -1);
  }

  else
  {
  }

LABEL_14:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t closure #5 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    v7 = 0;
LABEL_13:
    *a3 = result;
    *(a3 + 8) = v7;
    return result;
  }

  if (!REEntityGetSwiftObject())
  {
    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
      goto LABEL_15;
    }

    specialized static Entity.entityInfoType(_:)(v4);
    if (v8)
    {
      v9 = (*(v8 + 232))();
      v10 = *(v9 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v9 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v9);

      result = v9;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = makeEntity(for:)(v4);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
  if (!v5)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  if (v5 == 1)
  {
    v7 = 1;
    goto LABEL_13;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #6 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    v7 = 0;
LABEL_13:
    *a3 = result;
    *(a3 + 8) = v7;
    return result;
  }

  if (!REEntityGetSwiftObject())
  {
    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
      goto LABEL_15;
    }

    specialized static Entity.entityInfoType(_:)(v4);
    if (v8)
    {
      v9 = (*(v8 + 232))();
      v10 = *(v9 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v9 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v9);

      result = v9;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = makeEntity(for:)(v4);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
  if (!v5)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  if (v5 == 1)
  {
    v7 = 1;
    goto LABEL_13;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #7 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    LOBYTE(v7) = 0;
LABEL_10:
    *a3 = result;
    *(a3 + 8) = v7;
    return result;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
    if (v5 >= 4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v8)
    {
      v9 = (*(v8 + 232))();
      v10 = *(v9 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v9 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v9);

      result = v9;
      if (v5 < 4)
      {
LABEL_9:
        v7 = 0x2010003u >> (8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      result = makeEntity(for:)(v4);
      if (v5 < 4)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #8 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (!REEntityIsNonHiddenAndInHierarchy())
  {
    result = 0;
    goto LABEL_5;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_5:
    *a3 = result;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v6)
    {
      v7 = (*(v6 + 232))();
      v8 = *(v7 + 16);

      MEMORY[0x1C68F9740](v8, 0);
      *(v7 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v7);

      result = v7;
    }

    else
    {
      result = makeEntity(for:)(v4);
    }

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t closure #12 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = REEntityIsNonHiddenAndInHierarchy();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v7 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        goto LABEL_22;
      }

      specialized static Entity.entityInfoType(_:)(v5);
      if (v9)
      {
        v8 = (*(v9 + 232))();
        v10 = *(v8 + 16);

        MEMORY[0x1C68F9740](v10, 0);
        *(v8 + 16) = v5;
        MEMORY[0x1C68F9740](v5, v8);

LABEL_10:
        if (REIsEntityHidden())
        {

LABEL_12:
          *a3 = 0;
          a3[1] = 0;
          return result;
        }

        goto LABEL_13;
      }

      v7 = makeEntity(for:)(v5);
    }

    v8 = v7;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_13:
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_19:
    *a3 = result;
    a3[1] = v8;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v11)
    {
      v12 = (*(v11 + 232))();
      v13 = *(v12 + 16);

      MEMORY[0x1C68F9740](v13, 0);
      *(v12 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v12);

      result = v12;
    }

    else
    {
      result = makeEntity(for:)(v4);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t closure #14 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t result@<X0>, uint64_t *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v5 = *(result + 8);
    result = REEntityIsNonHiddenAndInHierarchy();
    if (!result)
    {
      v8 = 0;
LABEL_11:
      *a3 = v8;
      return result;
    }

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v6 = swift_dynamicCastClassUnconditional();
      goto LABEL_5;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v3);
      if (v9)
      {
        v7 = (*(v9 + 232))();
        v10 = *(v7 + 16);

        MEMORY[0x1C68F9740](v10, 0);
        *(v7 + 16) = v3;
        MEMORY[0x1C68F9740](v3, v7);

        goto LABEL_10;
      }

      v6 = makeEntity(for:)(v3);
LABEL_5:
      v7 = v6;
LABEL_10:
      type metadata accessor for AnimationPlaybackController();
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      swift_weakInit();
      *(v8 + 16) = v5;
      swift_weakAssign();
      *(v8 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v7 + 16));
      *(v8 + 24) = Hasher._finalize()();

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #17 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v4 = *(result + 8);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v5 = swift_dynamicCastClassUnconditional();
      goto LABEL_4;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v2);
      if (v7)
      {
        v6 = (*(v7 + 232))();
        v8 = *(v6 + 16);

        MEMORY[0x1C68F9740](v8, 0);
        *(v6 + 16) = v2;
        MEMORY[0x1C68F9740](v2, v6);

        goto LABEL_8;
      }

      v5 = makeEntity(for:)(v2);
LABEL_4:
      v6 = v5;
LABEL_8:
      type metadata accessor for AnimationPlaybackController();
      v9 = swift_allocObject();
      *(v9 + 40) = 0;
      swift_weakInit();
      *(v9 + 16) = v4;
      swift_weakAssign();
      *(v9 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v6 + 16));
      *(v9 + 24) = Hasher._finalize()();

      *a2 = v9;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #18 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!*a1)
  {
    goto LABEL_42;
  }

  v3 = a1[1];
  v4 = a1[2];
  UserData = RECollisionObjectGetUserData();
  if (UserData < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = UserData;
  if (!UserData)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v3)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v7 = RECollisionObjectGetUserData();
  if (v7 < 0)
  {
    goto LABEL_38;
  }

  v8 = v7;
  if (!v7)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v9 = swift_dynamicCastClassUnconditional();
LABEL_9:
    v10 = v9;
    goto LABEL_13;
  }

  if (REEntityIsBeingDestroyed())
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  specialized static Entity.entityInfoType(_:)(v6);
  if (!v11)
  {
    v9 = makeEntity(for:)(v6);
    goto LABEL_9;
  }

  v10 = (*(v11 + 232))();
  v12 = *(v10 + 16);

  MEMORY[0x1C68F9740](v12, 0);
  *(v10 + 16) = v6;
  MEMORY[0x1C68F9740](v6, v10);

LABEL_13:
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v13 = swift_dynamicCastClassUnconditional();
    goto LABEL_15;
  }

  if (REEntityIsBeingDestroyed())
  {
    goto LABEL_41;
  }

  specialized static Entity.entityInfoType(_:)(v8);
  if (v15)
  {
    v14 = (*(v15 + 232))();
    v16 = *(v14 + 16);

    MEMORY[0x1C68F9740](v16, 0);
    *(v14 + 16) = v8;
    MEMORY[0x1C68F9740](v8, v14);

    goto LABEL_19;
  }

  v13 = makeEntity(for:)(v8);
LABEL_15:
  v14 = v13;
LABEL_19:
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_25;
  }

  v18 = SceneNullable;
  v19 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v19)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v18);
  }

  v20 = Scene.physicsOrigin.getter();

  if (v20)
  {

    v37 = *&zmmword_1C1887630[48];
    v41 = *&zmmword_1C1887630[32];
    v39 = *&zmmword_1C1887630[16];
    v43 = *zmmword_1C1887630;
  }

  else
  {
LABEL_25:
    v21 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v10);
    *v22.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v21, 0);
    v41 = v23;
    v43 = v22;
    v37 = v25;
    v39 = v24;
  }

  if (!REEntityGetComponent())
  {

    goto LABEL_30;
  }

  CollisionComponent.init(_:)(&v44);

  v26 = v45;

  if ((v26 & 4) == 0)
  {
LABEL_30:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v27 = REContactSetNeedsSwap();
  v28 = specialized static Scene.copyContacts(from:swapContacts:sceneFromPhysics:)(v4, v27, v43, v39, v41, v37);
LABEL_31:
  REContactSetGetAveragePosition();
  *&v30 = simd_float4x4.transform(position:)(v29, v43, v39, v41, v37);
  v38 = v30;
  REContactSetGetTotalImpulse();
  v42 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v31.f32[0]), v39, *v31.f32, 1), v41, v31, 2);
  v32 = vmulq_f32(v42, v42);
  v32.f32[0] = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
  if (v32.f32[0] <= 0.00000011921)
  {
    v32.f32[0] = 0.00000011921;
  }

  v40 = *v32.f32;
  v33 = vmulq_f32(v43, v43);
  v34 = sqrtf(v33.f32[2] + vaddv_f32(*v33.f32));
  REContactSetGetMaxPenetrationDepth();
  *&v35 = vdiv_f32(*v42.f32, vdup_lane_s32(v40, 0));
  *(&v35 + 2) = v42.f32[2] / *v40.i32;
  HIDWORD(v35) = 0;
  *a2 = v10;
  *(a2 + 8) = v14;
  *(a2 + 16) = v38;
  *(a2 + 32) = v40.i32[0];
  *(a2 + 48) = v35;
  *(a2 + 64) = v34 * v36;
  *(a2 + 72) = v28;
}

uint64_t closure #20 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (!result)
  {
    goto LABEL_27;
  }

  v5 = a1[1];
  result = RECollisionObjectGetUserData();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5)
  {
    result = RECollisionObjectGetUserData();
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = result;
      if (result)
      {
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v8 = swift_dynamicCastClassUnconditional();
          goto LABEL_9;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          specialized static Entity.entityInfoType(_:)(v6);
          if (v10)
          {
            v9 = (*(v10 + 232))();
            v11 = *(v9 + 16);

            MEMORY[0x1C68F9740](v11, 0);
            *(v9 + 16) = v6;
            MEMORY[0x1C68F9740](v6, v9);

            goto LABEL_13;
          }

          v8 = makeEntity(for:)(v6);
LABEL_9:
          v9 = v8;
LABEL_13:
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            result = swift_dynamicCastClassUnconditional();
LABEL_20:
            *a2 = v9;
            a2[1] = result;
            return result;
          }

          result = REEntityIsBeingDestroyed();
          if ((result & 1) == 0)
          {
            specialized static Entity.entityInfoType(_:)(v7);
            if (v12)
            {
              v13 = (*(v12 + 232))();
              v14 = *(v13 + 16);

              MEMORY[0x1C68F9740](v14, 0);
              *(v13 + 16) = v7;
              MEMORY[0x1C68F9740](v7, v13);

              result = v13;
            }

            else
            {
              result = makeEntity(for:)(v7);
            }

            goto LABEL_20;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

void closure #21 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!v4)
  {
    type metadata accessor for Entity();
    v7 = swift_allocObject();
    v6 = Entity.init()(v7);
    v8 = 0;
LABEL_10:
    *a2 = v3;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    return;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v5 = swift_dynamicCastClassUnconditional();
    goto LABEL_4;
  }

  if ((REEntityIsBeingDestroyed() & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v9)
    {
      v6 = (*(v9 + 232))();
      v10 = *(v6 + 16);

      MEMORY[0x1C68F9740](v10, 0);
      *(v6 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v6);

      goto LABEL_9;
    }

    v5 = makeEntity(for:)(v4);
LABEL_4:
    v6 = v5;
LABEL_9:

    v8 = v6;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t closure #23 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  result = RERigidBodyGetEntity();
  if (result)
  {
    v6 = result;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      result = swift_dynamicCastClassUnconditional();
LABEL_9:
      *a2 = result;
      *(a2 + 8) = v5;
      return result;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v6);
      if (v7)
      {
        v8 = (*(v7 + 232))();
        v9 = *(v8 + 16);

        MEMORY[0x1C68F9740](v9, 0);
        *(v8 + 16) = v6;
        MEMORY[0x1C68F9740](v6, v8);

        result = v8;
      }

      else
      {
        result = makeEntity(for:)(v6);
      }

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t closure #24 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = result;
  swift_beginAccess();
  if (!*(v7 + 224))
  {

LABEL_8:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = *(v7 + 232);
  ObjectType = swift_getObjectType();
  v16 = v5;
  v10 = *(v8 + 32);
  swift_unknownObjectRetain();
  v10(&v17, &v16, ObjectType, v8);
  if (!v18)
  {
LABEL_17:
    outlined destroy of BodyTrackingComponent?(&v17, &_s10RealityKit21SynchronizationPeerID_pSgMd, &_s10RealityKit21SynchronizationPeerID_pSgMR);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  outlined init with take of ForceEffectBase(&v17, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation10MutableBoxCySbGMd, &_s17RealityFoundation10MutableBoxCySbGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (!v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  if (!REEntityGetSwiftObject())
  {
    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v4);
      if (v14)
      {
        v13 = (*(v14 + 232))();
        v15 = *(v13 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v13 + 16) = v4;
        MEMORY[0x1C68F9740](v4, v13);

        swift_unknownObjectRelease();
      }

      else
      {
        v13 = makeEntity(for:)(v4);

        swift_unknownObjectRelease();
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Entity();
  v13 = swift_dynamicCastClassUnconditional();
LABEL_13:
  result = outlined init with take of ForceEffectBase(v19, a3 + 8);
  *a3 = v13;
  *(a3 + 48) = partial apply for closure #1 in closure #24 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:);
  *(a3 + 56) = v12;
  return result;
}

uint64_t closure #25 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v8 = result;
  swift_beginAccess();
  if (!*(v8 + 224))
  {

LABEL_7:
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v9 = *(v8 + 232);
  ObjectType = swift_getObjectType();
  v19 = v5;
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v11(v20, &v19, ObjectType, v9);
  if (!v6)
  {
    v12 = "[Ownership] Received ownership response event: GRANTED";
LABEL_9:
    v13 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_1C1358000, v14, v12, 54, 2, MEMORY[0x1E69E7CC0], v19);

    if (v4)
    {
      goto LABEL_10;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 == 1)
  {
    v12 = "[Ownership] Received ownership response event: TIMEOUT";
    goto LABEL_9;
  }

  LOBYTE(v6) = 1;
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if (result)
    {
      __break(1u);
      return result;
    }

    specialized static Entity.entityInfoType(_:)(v4);
    if (v15)
    {
      v16 = (*(v15 + 232))();
      v17 = *(v16 + 16);

      MEMORY[0x1C68F9740](v17, 0);
      *(v16 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v16);

      swift_unknownObjectRelease();

LABEL_18:
      result = v16;
      goto LABEL_19;
    }

LABEL_17:
    v16 = makeEntity(for:)(v4);

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
LABEL_19:
  *a3 = result;
  v18 = v20[1];
  *(a3 + 8) = v20[0];
  *(a3 + 24) = v18;
  *(a3 + 40) = v21;
  *(a3 + 48) = v6;
  return result;
}

uint64_t closure #26 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_7;
  }

  v7 = result;
  swift_beginAccess();
  if (!*(v7 + 224))
  {

LABEL_7:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v8 = *(v7 + 232);
  ObjectType = swift_getObjectType();
  v15 = v5;
  v10 = *(v8 + 32);
  swift_unknownObjectRetain();
  result = v10(v16, &v15, ObjectType, v8);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (!REEntityGetSwiftObject())
  {
    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v4);
      if (v11)
      {
        v12 = (*(v11 + 232))(v11);
        v13 = *(v12 + 16);

        MEMORY[0x1C68F9740](v13, 0);
        *(v12 + 16) = v4;
        MEMORY[0x1C68F9740](v4, v12);

        swift_unknownObjectRelease();
      }

      else
      {
        v12 = makeEntity(for:)(v4);

        swift_unknownObjectRelease();
      }

      result = v12;
      goto LABEL_13;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Entity();
  result = swift_dynamicCastClassUnconditional();
LABEL_13:
  *a3 = result;
  v14 = v16[1];
  *(a3 + 8) = v16[0];
  *(a3 + 24) = v14;
  *(a3 + 40) = v17;
  return result;
}

void closure #27 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized static AudioPlaybackController.audioPlaybackControllerForToken(token:)(*a1);
  if (!v3)
  {
    v4 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v5 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v4, &dword_1C1358000, v5, "Couldn't retrieve AudioPlaybackController while attempting to publish PlaybackCompleted event", 93, 2, MEMORY[0x1E69E7CC0]);
  }

  *a2 = v3;
}

uint64_t closure #28 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = specialized static Scene.getPublicComponentType(_:)(a1[1]);
  if (!result || (v7 = result, v8 = v6, result = REEntityIsNonHiddenAndInHierarchy(), !result))
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    result = swift_dynamicCastClassUnconditional();
LABEL_10:
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
    return result;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(v4);
    if (v9)
    {
      v10 = (*(v9 + 232))();
      v11 = *(v10 + 16);

      MEMORY[0x1C68F9740](v11, 0);
      *(v10 + 16) = v4;
      MEMORY[0x1C68F9740](v4, v10);

      result = v10;
    }

    else
    {
      result = makeEntity(for:)(v4);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t closure #33 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  outlined init with copy of __REAssetService(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a5, v9 ^ 1u, 1, a2);
}

unsigned __int8 *closure #38 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<X0>(unsigned __int8 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = result[1];
  if (v2 > 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *result;
  if (v3 > 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4 | v2;
  return result;
}

__n128 closure #39 in Scene.publisher<A>(for:on:componentType:rootEntity:matching:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = 0;
  return result;
}

void Scene.Publisher.receive<A>(subscriber:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v5 = type metadata accessor for AnyPublisher();
    swift_getWitnessTable(MEMORY[0x1E695BED8], v5);
    Publisher.subscribe<A>(_:)();
  }
}

uint64_t Scene.CorePublisher.init(dispatcher:sourceObject:componentType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a3;
  a4[2] = result;
  *a4 = a2;
  return result;
}

uint64_t Scene.CorePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v13 = type metadata accessor for Scene.CorePublisher.Inner(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  v22[1] = *(v3 + 16);
  (*(v6 + 16))(v8, a1, a3, v15);
  (*(v6 + 32))(v17, v8, a3);
  v20 = type metadata accessor for REEventDispatcher(0, v10, v18, v19);

  swift_getWitnessTable(protocol conformance descriptor for REEventDispatcher<A>, v20);
  swift_getWitnessTable(protocol conformance descriptor for Scene.CorePublisher<A>.Inner<A1>, v13);
  Publisher.subscribe<A>(_:)();
  (*(v14 + 8))(v17, v13);
}

unint64_t lazy protocol witness table accessor for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response()
{
  result = lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response;
  if (!lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SynchronizationEvents.OwnershipResponse.Response, &type metadata for SynchronizationEvents.OwnershipResponse.Response, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SynchronizationEvents.OwnershipResponse.Response and conformance SynchronizationEvents.OwnershipResponse.Response);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType()
{
  result = lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType;
  if (!lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoPlayerEvents.ContentTypeDidChange.ContentType, &type metadata for VideoPlayerEvents.ContentTypeDidChange.ContentType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VideoPlayerEvents.ContentTypeDidChange.ContentType and conformance VideoPlayerEvents.ContentTypeDidChange.ContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnchorStateEvents.DidAnchor.Reason, &type metadata for AnchorStateEvents.DidAnchor.Reason, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.DidAnchor.Reason and conformance AnchorStateEvents.DidAnchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnchorStateEvents.WillUnanchor.Reason, &type metadata for AnchorStateEvents.WillUnanchor.Reason, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.WillUnanchor.Reason and conformance AnchorStateEvents.WillUnanchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason()
{
  result = lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason;
  if (!lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnchorStateEvents.DidFailToAnchor.Reason, &type metadata for AnchorStateEvents.DidFailToAnchor.Reason, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnchorStateEvents.DidFailToAnchor.Reason and conformance AnchorStateEvents.DidFailToAnchor.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State()
{
  result = lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State;
  if (!lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneEvents.TrackingStateUpdate.State, &type metadata for SceneEvents.TrackingStateUpdate.State, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneEvents.TrackingStateUpdate.State and conformance SceneEvents.TrackingStateUpdate.State);
  }

  return result;
}

__n128 __swift_memcpy68_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}