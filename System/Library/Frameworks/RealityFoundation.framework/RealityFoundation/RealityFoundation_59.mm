unint64_t lazy protocol witness table accessor for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass()
{
  result = lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass;
  if (!lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKMaterialParameterBlock.TransparentPass, &type metadata for __RKMaterialParameterBlock.TransparentPass, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKMaterialParameterBlock.TransparentPass and conformance __RKMaterialParameterBlock.TransparentPass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass()
{
  result = lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass;
  if (!lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKMaterialParameterBlock.OpaquePass, &type metadata for __RKMaterialParameterBlock.OpaquePass, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKMaterialParameterBlock.OpaquePass and conformance __RKMaterialParameterBlock.OpaquePass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for __RKMaterialParameterBlock.Parameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xED && *(a1 + 65))
  {
    return (*a1 + 237);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x13)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKMaterialParameterBlock.Parameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 237;
    if (a3 >= 0xED)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xED)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for __RKMaterialParameterBlock.Parameter(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x13)
  {
    *result = a2 - 19;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 19;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t outlined destroy of (__RKMaterialParameterBlock.Parameter, __RKMaterialParameterBlock.Parameter)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKMaterialParameterBlockV0D0O_AEtMd, &_s10RealityKit26__RKMaterialParameterBlockV0D0O_AEtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for MTLSamplerDescriptor()
{
  result = lazy cache variable for type metadata for MTLSamplerDescriptor;
  if (!lazy cache variable for type metadata for MTLSamplerDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MTLSamplerDescriptor);
  }

  return result;
}

uint64_t partial apply for closure #2 in __RKMaterialParameterBlock.setTextureParameter(texture:key:)(_BYTE *a1)
{
  result = *(v1 + 16);
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 16);
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 < 0)
      {
        break;
      }

      *a1++ = v6;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

  return result;
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO3AndVy_AJGTt1B5@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v5;
  v6 = a1[7];
  *(v4 + 7) = a1[6];
  *(v4 + 8) = v6;
  v7 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v7;
  v8 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v8;
  v9 = swift_allocObject();
  v10 = a1[5];
  *(v9 + 5) = a1[4];
  *(v9 + 6) = v10;
  v11 = a1[7];
  *(v9 + 7) = a1[6];
  *(v9 + 8) = v11;
  v12 = a1[1];
  *(v9 + 1) = *a1;
  *(v9 + 2) = v12;
  v13 = a1[3];
  *(v9 + 3) = a1[2];
  *(v9 + 4) = v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
  v24 = &protocol witness table for QueryPredicates.And<A>;
  v14 = swift_allocObject();
  *&v22 = v14;
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v16 = a1[7];
  v14[7] = a1[6];
  v14[8] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v18 = a1[3];
  v14[3] = a1[2];
  v14[4] = v18;
  outlined init with copy of __REAssetService(&v22, v25);
  v19 = swift_allocObject();
  outlined init with take of BindableDataInternal(v25, v19 + 16);
  outlined init with take of BindableDataInternal(&v22, v25);
  v20 = swift_allocObject();
  outlined init with take of BindableDataInternal(v25, v20 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a2[3] = v19;
  a2[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
  a2[5] = v9;
  a2[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a2[7] = v20;
  outlined init with copy of [String : String](a1, &v22, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
  return outlined init with copy of [String : String](a1, &v22, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO3AndVy_0A3Kit6EntityCGMR);
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO2OrVy_AJGTt1B5@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  v5 = a1[5];
  *(v4 + 5) = a1[4];
  *(v4 + 6) = v5;
  v6 = a1[7];
  *(v4 + 7) = a1[6];
  *(v4 + 8) = v6;
  v7 = a1[1];
  *(v4 + 1) = *a1;
  *(v4 + 2) = v7;
  v8 = a1[3];
  *(v4 + 3) = a1[2];
  *(v4 + 4) = v8;
  v9 = swift_allocObject();
  v10 = a1[5];
  *(v9 + 5) = a1[4];
  *(v9 + 6) = v10;
  v11 = a1[7];
  *(v9 + 7) = a1[6];
  *(v9 + 8) = v11;
  v12 = a1[1];
  *(v9 + 1) = *a1;
  *(v9 + 2) = v12;
  v13 = a1[3];
  *(v9 + 3) = a1[2];
  *(v9 + 4) = v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
  v24 = &protocol witness table for QueryPredicates.Or<A>;
  v14 = swift_allocObject();
  *&v22 = v14;
  v15 = a1[5];
  v14[5] = a1[4];
  v14[6] = v15;
  v16 = a1[7];
  v14[7] = a1[6];
  v14[8] = v16;
  v17 = a1[1];
  v14[1] = *a1;
  v14[2] = v17;
  v18 = a1[3];
  v14[3] = a1[2];
  v14[4] = v18;
  outlined init with copy of __REAssetService(&v22, v25);
  v19 = swift_allocObject();
  outlined init with take of BindableDataInternal(v25, v19 + 16);
  outlined init with take of BindableDataInternal(&v22, v25);
  v20 = swift_allocObject();
  outlined init with take of BindableDataInternal(v25, v20 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a2[3] = v19;
  a2[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:);
  a2[5] = v9;
  a2[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a2[7] = v20;
  outlined init with copy of [String : String](a1, &v22, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
  return outlined init with copy of [String : String](a1, &v22, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO2OrVy_0A3Kit6EntityCGMR);
}

double _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v16 = &type metadata for QueryPredicates.IsChild;
  v17 = &protocol witness table for QueryPredicates.IsChild;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15 = a3;
  outlined init with copy of __REAssetService(&v14, v13);
  v10 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v10 + 16);
  outlined init with take of BindableDataInternal(&v14, v13);
  v11 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v11 + 16);
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a4[1] = v8;
  a4[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a4[3] = v10;
  a4[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a4[5] = v9;
  a4[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a4[7] = v11;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

  return result;
}

double _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t *a1)@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  v16 = &type metadata for QueryPredicates.IsDescendant;
  v17 = &protocol witness table for QueryPredicates.IsDescendant;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15 = a3;
  outlined init with copy of __REAssetService(&v14, v13);
  v10 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v10 + 16);
  outlined init with take of BindableDataInternal(&v14, v13);
  v11 = swift_allocObject();
  outlined init with take of BindableDataInternal(v13, v11 + 16);
  *a4 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a4[1] = v8;
  a4[2] = implicit closure #6 in implicit closure #5 in QueryPredicate.init<A>(_:)partial apply;
  a4[3] = v10;
  a4[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a4[5] = v9;
  a4[6] = implicit closure #8 in implicit closure #7 in QueryPredicate.init<A>(_:)partial apply;
  a4[7] = v11;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

  return result;
}

uint64_t _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO11CanInteractVy_AJGTt1g5@<X0>(uint64_t a1@<X0>, BOOL (**a2)(uint64_t *a1)@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15QueryPredicatesO11CanInteractVy_0A3Kit6EntityCGMd, &_s17RealityFoundation15QueryPredicatesO11CanInteractVy_0A3Kit6EntityCGMR);
  v12 = &protocol witness table for QueryPredicates.CanInteract<A>;
  *&v10 = a1;
  outlined init with copy of __REAssetService(&v10, v9);
  v6 = swift_allocObject();
  outlined init with take of BindableDataInternal(v9, v6 + 16);
  outlined init with take of BindableDataInternal(&v10, v9);
  v7 = swift_allocObject();
  outlined init with take of BindableDataInternal(v9, v7 + 16);
  *a2 = partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:);
  a2[1] = v4;
  a2[2] = _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufcs13OpaquePointerVSgycAA0C14Internalizable_pcfu3_AJycfu4_TA_0;
  a2[3] = v6;
  a2[4] = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  a2[5] = v5;
  a2[6] = _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufcSay0A3Kit6EntityCGSgAH5SceneCcAA0C14Internalizable_pcfu5_AlNcfu6_TA_0;
  a2[7] = v7;
  return swift_retain_n();
}

BOOL specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (a2)
  {

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      if (*(v7 + 24))
      {
        Entity.__interactionIdentifier.getter(v5);

        swift_unknownObjectRelease();
        v8 = type metadata accessor for UUID();
        v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
        outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return v9;
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t static QueryPredicate.has<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for Entity();
  QueryPredicates.Has.init()(v6, a1, a2);
  v7 = type metadata accessor for QueryPredicates.Has(0, v6, a1, a2);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Has<A, B>, v7);
  return QueryPredicateProtocol.eraseToQueryPredicate()(v7, WitnessTable, a3);
}

uint64_t QueryPredicates.Has.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 80, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
  type metadata accessor for SceneManager();
  swift_dynamicCast();
  result = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
  if (result || (static Component.registerComponent()(a2, a3), (result = SceneManager.componentTypeToComponentClass(_:)(a2, a3)) != 0))
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static QueryPredicate.hasAll<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  static QueryPredicate.has<A>(_:)(a4, a6, v12);
  static QueryPredicate.has<A>(_:)(a5, a7, v13);
  return a8(v12);
}

uint64_t static QueryPredicate.hasAll<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a12)(uint64_t *))
{
  a11(v14, a1, a2, a3, a5, a6, a8, a9);
  static QueryPredicate.has<A>(_:)(a7, a10, v15);
  return a12(v14);
}

uint64_t static QueryPredicate.hasAll<A, B, C, D>(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a15)(uint64_t *))
{
  a14(v16, a1, a2, a3, a4, a6, a7, a8, a10, a11, a12);
  static QueryPredicate.has<A>(_:)(a9, a13, v17);
  return a15(v16);
}

void QueryPredicates.Has.performNativeEntityQuery(for:)(uint64_t a1, uint64_t a2)
{
  ComponentsOfClass = RESceneGetComponentsOfClass();
  v27 = MEMORY[0x1E69E7CC0];
  if (v3 < 0)
  {
    goto LABEL_39;
  }

  v4 = v3;
  if (v3)
  {
    v5 = ComponentsOfClass;
    do
    {
      Entity = REComponentGetEntity();
      if ((REIsEntityHidden() & 1) == 0)
      {
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v6 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            return;
          }

          if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v8 & 1) == 0))
          {
            swift_endAccess();
            v9 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = static SceneManager.customComponentTypeObjectIdToHandles;
            static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
            static SceneManager.customComponentTypeObjectIdToHandles = v26;
          }

          swift_endAccess();
          if (!REEntityGetCustomComponent())
          {
            goto LABEL_36;
          }

          Object = RECustomComponentGetObject();
          if (!Object)
          {
            goto LABEL_36;
          }

          v12 = *Object;
          if (*(Object + 8) || !v12)
          {
          }

          else
          {
            v13 = *v12;
            v14 = String.init(utf8String:)();
            if (v15)
            {
              v16 = v14;
            }

            else
            {
              v16 = 0;
            }

            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = 0xE000000000000000;
            }

            v12 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v13 == 42, v16, v17);

            type metadata accessor for IntrospectionDataCleanupHelper();
            *(swift_allocObject() + 16) = v12;
          }

          if (!v12)
          {
            goto LABEL_40;
          }

          v18 = String.init(utf8String:)();
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v18 = 0;
            v20 = 0xE000000000000000;
          }

          v21 = MEMORY[0x1C68F3280](v18, v20);

          v22 = NSClassFromString(v21);

          if (v22 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v23 = swift_dynamicCastMetatype()) != 0))
          {
            v24 = (*(v23 + 232))();
            v25 = *(v24 + 16);

            MEMORY[0x1C68F9740](v25, 0);
            *(v24 + 16) = Entity;
            MEMORY[0x1C68F9740](Entity, v24);
          }

          else
          {
LABEL_36:
            v6 = makeEntity(for:)(Entity);
          }
        }

        MEMORY[0x1C68F3650](v6);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.Has<A, B>@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized QueryPredicates.Has.evaluate(value:)(*a1, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

BOOL QueryPredicates.CanInteract.evaluate(value:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (a2)
  {

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      if (*(v7 + 24) == 1)
      {
        Entity.__interactionIdentifier.getter(v5);

        swift_unknownObjectRelease();
        v8 = type metadata accessor for UUID();
        v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
        outlined destroy of BodyTrackingComponent?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return v9;
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

BOOL protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.CanInteract<A>@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.CanInteract.evaluate(value:)(*a1, *v2);
  *a2 = result;
  return result;
}

double static QueryPredicate.isChild(of:)@<D0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5(0, 0, a1, a2);
}

double static QueryPredicate.isChild(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO7IsChildVTt1g5(a1, a2, 0, a3);
}

double static QueryPredicate.isDescendant(of:)@<D0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5(0, 0, a1, a2);
}

double static QueryPredicate.isDescendant(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO12IsDescendantVTt1g5(a1, a2, 0, a3);
}

uint64_t static QueryPredicate.canInteract(on:)@<X0>(BOOL (**a1)(uint64_t *a1)@<X8>)
{

  return _s17RealityFoundation14QueryPredicateVyACyxGqd__c5ValueQyd__RszAA0cD8ProtocolRd__lufC0A3Kit6EntityC_AA0C10PredicatesO11CanInteractVy_AJGTt1g5(v2, a1);
}

uint64_t type metadata instantiation function for QueryPredicates.Has(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.Has<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.Has<A, B>);
  *(a1 + 8) = result;
  return result;
}

uint64_t QueryPredicates.IsDescendant.evaluate(value:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  if (a2)
  {

    a4 = a2(v10);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
  }

  else
  {
    if (!a4)
    {
LABEL_50:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  v11 = specialized HasHierarchy.parent.getter();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for AnchoringComponent(0);
    v38 = v9;
    while (1)
    {
      while (1)
      {

        if (REEntityGetComponent())
        {
          AnchoringComponent.init(from:)(v9);
          v14 = 0;
        }

        else
        {
          v14 = 1;
        }

        v15 = *(v13 - 8);
        (*(v15 + 56))(v9, v14, 1, v13);

        if ((*(v15 + 48))(v9, 1, v13) != 1)
        {

          outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
          return 0;
        }

        outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit18AnchoringComponentVSgMd, &_s10RealityKit18AnchoringComponentVSgMR);
        if (*(v12 + 16) == *(a4 + 16))
        {

          return 1;
        }

        Parent = REEntityGetParent();
        if (!Parent)
        {

          goto LABEL_46;
        }

        v17 = Parent;
        if (!REEntityGetSwiftObject())
        {
          break;
        }

        type metadata accessor for Entity();
        v12 = swift_dynamicCastClassUnconditional();
      }

      if (REEntityIsBeingDestroyed())
      {
        break;
      }

      if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v18 & 1) == 0))
      {
        swift_endAccess();
        v19 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = static SceneManager.customComponentTypeObjectIdToHandles;
        static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
        v9 = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
        static SceneManager.customComponentTypeObjectIdToHandles = v39;
      }

      swift_endAccess();
      if (!REEntityGetCustomComponent())
      {
        goto LABEL_40;
      }

      Object = RECustomComponentGetObject();
      if (!Object)
      {
        goto LABEL_40;
      }

      v22 = *Object;
      if (*(Object + 8) || !v22)
      {
      }

      else
      {
        v23 = *v22;
        v24 = String.init(utf8String:)();
        if (v25)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0xE000000000000000;
        }

        v22 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v23 == 42, v26, v27);

        type metadata accessor for IntrospectionDataCleanupHelper();
        *(swift_allocObject() + 16) = v22;
      }

      if (!v22)
      {
        goto LABEL_49;
      }

      v28 = String.init(utf8String:)();
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0xE000000000000000;
      }

      v31 = MEMORY[0x1C68F3280](v28, v30);

      v32 = NSClassFromString(v31);

      if (v32 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v33 = swift_dynamicCastMetatype()) != 0))
      {
        v34 = (*(v33 + 232))();
        v35 = *(v34 + 16);

        MEMORY[0x1C68F9740](v35, 0);
        *(v34 + 16) = v17;
        MEMORY[0x1C68F9740](v17, v34);
      }

      else
      {
LABEL_40:
        v34 = makeEntity(for:)(v17);
      }

      v12 = v34;
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_46:

  return 0;
}

uint64_t QueryPredicates.IsDescendant.makeInternal()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    aBlock[4] = partial apply for acquireEntity #1 () in QueryPredicates.IsDescendant.makeInternal();
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
    aBlock[3] = &block_descriptor_53;
    v6 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

    IsDescendantCallbackEntityPredicate = REQueryCreateIsDescendantCallbackEntityPredicate();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);
    _Block_release(v6);
    return IsDescendantCallbackEntityPredicate;
  }

  else if (a3)
  {
    return REQueryCreateIsDescendantEntityPredicate();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.IsDescendant@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.IsDescendant.evaluate(value:)(*a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t QueryPredicates.IsChild.evaluate(value:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = specialized HasHierarchy.parent.getter();
  if (a2)
  {

    a4 = a2(v8);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2, a3);
    if (v7)
    {
LABEL_3:
      v9 = *(v7 + 16);

      v10 = *(a4 + 16);

      return v9 == v10;
    }

    goto LABEL_6;
  }

  if (a4)
  {

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:

    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t QueryPredicates.IsChild.makeInternal()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    aBlock[4] = partial apply for acquireEntity #1 () in QueryPredicates.IsChild.makeInternal();
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
    aBlock[3] = &block_descriptor_105;
    v6 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);

    IsChildCallbackEntityPredicate = REQueryCreateIsChildCallbackEntityPredicate();
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a1, a2);
    _Block_release(v6);
    return IsChildCallbackEntityPredicate;
  }

  else if (a3)
  {
    return REQueryCreateIsChildEntityPredicate();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for QueryEvaluable.evaluate(value:) in conformance QueryPredicates.IsChild@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = QueryPredicates.IsChild.evaluate(value:)(*a1, *v2, *(v2 + 8), *(v2 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t specialized implicit closure #4 in implicit closure #3 in QueryPredicate.init<A>(_:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = a3[1];
  v19[0] = *a3;
  v19[1] = v5;
  v6 = a3[3];
  v19[2] = a3[2];
  v19[3] = v6;
  v7 = a3[5];
  v20 = a3[4];
  v21 = v7;
  v8 = a3[7];
  v22 = a3[6];
  v23 = v8;
  ObjectType = swift_getObjectType();
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  v11 = a3[3];
  v27 = a3[2];
  v28 = v11;
  v12 = *(a2 + 8);
  outlined init with copy of [String : String](v19, v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  outlined init with copy of [String : String](&v20, v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v13 = type metadata accessor for Entity();
  v12(&v25, v13, ObjectType, a2);
  v24[0] = v25;
  v24[1] = v26;
  v24[2] = v27;
  v24[3] = v28;
  outlined destroy of BodyTrackingComponent?(v24, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v12(&v15, v13, ObjectType, a2);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  return outlined destroy of BodyTrackingComponent?(&v25, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMd, &_s17RealityFoundation14QueryPredicateVy0A3Kit6EntityCGMR);
}

BOOL specialized QueryPredicates.Has.evaluate(value:)(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(*a1 + 96))(&v15, v9);
  Entity.ComponentSet.subscript.getter(a3, a4, v11);

  v12 = (*(a3[-1].Description + 6))(v11, 1, a3) != 1;
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in QueryPredicate.init<A>(_:)(uint64_t *a1)
{
  return QueryPredicates.IsDescendant.evaluate(value:)(*a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  return QueryPredicates.IsChild.evaluate(value:)(*a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  v2 = *a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 80);
  v7 = *a1;
  if (v3(&v7))
  {
    v5 = 1;
  }

  else
  {
    v7 = v2;
    v5 = v4(&v7);
  }

  return v5 & 1;
}

{
  v2 = *a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 80);
  v7 = *a1;
  if (v3(&v7))
  {
    v7 = v2;
    v5 = v4(&v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t objectdestroy_17Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_45Tm_0()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 128))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t get_enum_tag_for_layout_string_10RealityKit6EntityCIego_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata instantiation function for QueryPredicates.CanInteract(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for QueryPredicates.CanInteract<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for QueryPredicates.CanInteract<A>);
  *(a1 + 8) = result;
  return result;
}

double block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for acquireEntity #1 () in QueryPredicates.IsDescendant.makeInternal()()
{
  v1 = *((*(v0 + 16))() + 16);

  return v1;
}

uint64_t AttachedTransformComponent.init(source:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[5] = 0u;
  outlined assign with take of GeometricPin?(a1, (a3 + 5));

  return outlined init with take of GeometricPin(a2, a3);
}

uint64_t outlined assign with take of GeometricPin?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static AttachedTransformComponent.__fromCore(_:)@<X0>(uint64_t a2@<X8>)
{
  TargetEntity = REAttachedTransformComponentGetTargetEntity();
  if (TargetEntity)
  {
    v4 = TargetEntity;
    type metadata accessor for Entity();
    if (REEntityGetSwiftObject())
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
        __break(1u);
        goto LABEL_34;
      }

      v6 = static Entity.entityInfoType(_:)(v4);
      if (v6)
      {
        v7 = (*(v6 + 232))();
        v8 = *(v7 + 16);

        MEMORY[0x1C68F9740](v8, 0);
        *(v7 + 16) = v4;
        MEMORY[0x1C68F9740](v4, v7);
      }

      else
      {
        makeEntity(for:)(v4);
      }
    }
  }

  if (REAttachedTransformComponentGetTargetPinName())
  {
    v9 = String.init(cString:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  REAttachedTransformComponentGetTargetPinUserOffset();
  v31 = v12;
  v33 = v13;
  if (REAttachedTransformComponentGetTargetPinSkeletalJointName())
  {
    v14 = String.init(cString:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  swift_weakInit();
  v46 = v31;
  v47 = v33;
  swift_weakAssign();
  v42 = v9;
  v43 = v11;
  v44 = v14;
  v45 = v16;
  if (!REAttachedTransformComponentHasSourcePin())
  {

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
LABEL_30:
    outlined init with copy of GeometricPin?(&v36, v35);
    outlined init with copy of GeometricPin(v41, a2);
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    v30 = (a2 + 80);
    v30[2] = 0u;
    v30[3] = 0u;
    v30[4] = 0u;
    outlined assign with take of GeometricPin?(v35, v30);
    outlined destroy of GeometricPin?(&v36);
    return outlined destroy of GeometricPin(v41);
  }

  SourceEntity = REAttachedTransformComponentGetSourceEntity();
  if (!SourceEntity)
  {
LABEL_23:
    if (REAttachedTransformComponentGetSourcePinName())
    {
      v22 = String.init(cString:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    if (REAttachedTransformComponentGetSourcePinSkeletalJointName())
    {
      v25 = String.init(cString:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
    }

    REAttachedTransformComponentGetSourcePinUserOffset();
    v32 = v29;
    v34 = v28;

    swift_weakInit();
    v39 = v34;
    v40 = v32;
    swift_weakAssign();

    *(&v36 + 1) = v22;
    *&v37 = v24;
    *(&v37 + 1) = v25;
    *&v38 = v27;
    goto LABEL_30;
  }

  v18 = SourceEntity;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    swift_dynamicCastClassUnconditional();
    goto LABEL_23;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v19 = static Entity.entityInfoType(_:)(v18);
    if (v19)
    {
      v20 = (*(v19 + 232))();
      v21 = *(v20 + 16);

      MEMORY[0x1C68F9740](v21, 0);
      *(v20 + 16) = v18;
      MEMORY[0x1C68F9740](v18, v20);
    }

    else
    {
      makeEntity(for:)(v18);
    }

    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
  return result;
}

void AttachedTransformComponent.__toCore(_:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  REAttachedTransformComponentDetach();
  outlined init with copy of GeometricPin(v1, &v25);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v25);
  v21 = Strong;
  if (!Strong)
  {
    v9 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &dword_1C1358000, v10, "Target entity not set", 21, 2, MEMORY[0x1E69E7CC0]);

    return;
  }

  v7 = v1[4];
  if (v7)
  {
    v25 = v1[3];
    v26 = v7;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.cString(using:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v8 = 0;
  }

  v11 = v1[1];
  v12 = v1[2];
  v19 = v1;
  v20 = v11;
  v25 = v11;
  v26 = v12;

  static String.Encoding.utf8.getter();
  v13 = lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.cString(using:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  if (!v14)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v8;
  REAttachedTransformComponentSetTargetPinWithName();

  v25 = v20;
  v26 = v12;
  static String.Encoding.utf8.getter();
  v20 = v13;
  v16 = StringProtocol.cString(using:)();
  v15(v5, v2);

  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  REAttachedTransformComponentAttach();

  outlined init with copy of GeometricPin?((v19 + 10), &v22);
  if (!v24)
  {

    outlined destroy of GeometricPin?(&v22);
    return;
  }

  outlined init with take of GeometricPin(&v22, &v25);
  if (!swift_weakLoadStrong())
  {

    outlined destroy of GeometricPin(&v25);
    return;
  }

  if (v29)
  {
    v22 = v28;
    v23 = v29;

    static String.Encoding.utf8.getter();
    StringProtocol.cString(using:)();
    v15(v5, v2);
  }

  v22 = v26;
  v23 = v27;

  static String.Encoding.utf8.getter();
  v17 = StringProtocol.cString(using:)();
  v15(v5, v2);

  if (!v17)
  {
    goto LABEL_19;
  }

  if (swift_weakLoadStrong())
  {

    REAttachedTransformComponentSetSourcePinWithName();

    outlined destroy of GeometricPin(&v25);

    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation12GeometricPinVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AttachedTransformComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachedTransformComponent(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t one-time initialization function for realityFileWritingQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static Entity.realityFileWritingQueue = result;
  return result;
}

uint64_t closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v35 = a3;
  v36 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for realityFileWritingQueue != -1)
  {
    swift_once();
  }

  v37 = static Entity.realityFileWritingQueue;
  outlined init with copy of __REAssetBundle(a2, v46);
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v12);
  v16 = *(v9 + 16);
  v34 = v11;
  v16(v11, v36, v8);
  v17 = *(v13 + 80);
  v36 = v8;
  v18 = (v17 + 80) & ~v17;
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v9 + 80) + v19 + 123) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = v46[1];
  *(v21 + 1) = v46[0];
  *(v21 + 2) = v22;
  v23 = v46[3];
  *(v21 + 3) = v46[2];
  *(v21 + 4) = v23;
  (*(v13 + 32))(&v21[v18], v15, v12);
  v24 = &v21[v19];
  v25 = a4[5];
  *(v24 + 4) = a4[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = a4[6];
  *(v24 + 107) = *(a4 + 107);
  v26 = a4[1];
  *v24 = *a4;
  *(v24 + 1) = v26;
  v27 = a4[3];
  *(v24 + 2) = a4[2];
  *(v24 + 3) = v27;
  (*(v9 + 32))(&v21[v20], v34, v36);
  aBlock[4] = partial apply for closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_54;
  v28 = _Block_copy(aBlock);
  outlined init with copy of __REAssetBundle.ExportOptions(a4, v44);
  v29 = v38;
  static DispatchQoS.unspecified.getter();
  v44[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v30 = v41;
  v31 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1C68F3CA0](0, v29, v30, v28);
  _Block_release(v28);
  (*(v42 + 8))(v30, v31);
  (*(v39 + 8))(v29, v40);
}

uint64_t closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[5];
  v7[4] = a3[4];
  v7[5] = v3;
  v8[0] = a3[6];
  *(v8 + 11) = *(a3 + 107);
  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  v5 = a3[3];
  v7[2] = a3[2];
  v7[3] = v5;
  __REAssetBundle.writeWithCPlusPlus(to:with:)(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Entity.write(to:)(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  type metadata accessor for MainActor();
  v2[52] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[53] = v4;
  v2[54] = v3;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:), v4, v3);
}

uint64_t Entity.write(to:)()
{
  *(v0 + 456) = 0;
  *(v0 + 139) = 1;
  if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI != -1)
  {
    swift_once();
  }

  v1 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
  *(v0 + 464) = 0;
  v2 = *(v0 + 456);
  v3 = *(v0 + 139);
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 50) = 0;
  *(v0 + 51) = v3;
  *(v0 + 56) = xmmword_1C18B7B50;
  *(v0 + 72) = 0;
  *(v0 + 84) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 97) = 1;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 138) = 3;
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = Entity.write(to:);
  v5 = *(v0 + 400);

  return Entity.write(to:options:)(v5, (v0 + 16));
}

{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 176) = *(v2 + 48);
    *(v2 + 192) = v5;
    *(v2 + 144) = v3;
    *(v2 + 160) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 112);
    *(v2 + 251) = *(v2 + 123);
    *(v2 + 224) = v7;
    *(v2 + 240) = v8;
    *(v2 + 208) = v6;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 144);
    v9 = *(v2 + 424);
    v10 = *(v2 + 432);
    v11 = Entity.write(to:);
  }

  else
  {
    *(v2 + 304) = *(v2 + 48);
    *(v2 + 320) = v5;
    *(v2 + 272) = v3;
    *(v2 + 288) = v4;
    v12 = *(v2 + 80);
    v13 = *(v2 + 96);
    v14 = *(v2 + 112);
    *(v2 + 379) = *(v2 + 123);
    *(v2 + 352) = v13;
    *(v2 + 368) = v14;
    *(v2 + 336) = v12;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 272);
    v9 = *(v2 + 424);
    v10 = *(v2 + 432);
    v11 = Entity.write(to:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.write(to:options:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 360) = a1;
  *(v3 + 368) = v2;
  v4 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v4;
  *(v3 + 112) = a2[6];
  *(v3 + 123) = *(a2 + 107);
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v6;
  *(v3 + 376) = type metadata accessor for MainActor();
  *(v3 + 384) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 392) = v8;
  *(v3 + 400) = v7;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v8, v7);
}

uint64_t Entity.write(to:options:)()
{
  v1 = v0[46];
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v2 + 120, (v0 + 26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1898160;
  *(inited + 32) = v1;
  v0[44] = MEMORY[0x1E69E7CC8];
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 26;
  *(v4 + 24) = v0 + 44;

  v5 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static __REAssetBundle.__init(elements:assetService:), v4, inited);

  v6 = v0[44];
  outlined init with copy of __REAssetService((v0 + 26), (v0 + 36));
  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v5, v0 + 36, v6, 0, v0 + 18);
  v0[51] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[52] = v8;
  v0[53] = v7;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = Entity.write(to:options:);
  }

  else
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = Entity.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v1, v2);
}

{

  outlined destroy of __REAssetBundle(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v1, v2);
}

{

  outlined destroy of __REAssetBundle(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 552);
  type metadata accessor for Entity.WriteHelper();
  *(v0 + 528) = v1;
  static Entity.WriteHelper.makeExportOptions(options:)((v0 + 528), v0 + 16);
  v2 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v2;
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 251) = *(v0 + 123);
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  v5 = swift_task_alloc();
  *(v0 + 584) = v5;
  *v5 = v0;
  v5[1] = Entity.write(to:options:);
  v6 = *(v0 + 536);

  return Entity.write(to:options:)(v6, (v0 + 144));
}

{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 160);
  v5 = *(v2 + 192);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 176);
    *(v2 + 320) = v5;
    *(v2 + 272) = v3;
    *(v2 + 288) = v4;
    v6 = *(v2 + 208);
    v7 = *(v2 + 224);
    v8 = *(v2 + 240);
    *(v2 + 379) = *(v2 + 251);
    *(v2 + 352) = v7;
    *(v2 + 368) = v8;
    *(v2 + 336) = v6;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 272);
    v9 = *(v2 + 576);
    v10 = *(v2 + 568);
    v11 = Entity.write(to:options:);
  }

  else
  {
    *(v2 + 432) = *(v2 + 176);
    *(v2 + 448) = v5;
    *(v2 + 400) = v3;
    *(v2 + 416) = v4;
    v12 = *(v2 + 208);
    v13 = *(v2 + 224);
    v14 = *(v2 + 240);
    *(v2 + 507) = *(v2 + 251);
    *(v2 + 480) = v13;
    *(v2 + 496) = v14;
    *(v2 + 464) = v12;
    outlined destroy of __REAssetBundle.ExportOptions(v2 + 400);
    v9 = *(v2 + 576);
    v10 = *(v2 + 568);
    v11 = Entity.write(to:options:);
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Entity.write(to:options:)(__n128 a1)
{
  v2 = v1[45];
  v3 = static MainActor.shared.getter();
  v1[54] = v3;
  v4 = swift_task_alloc();
  v1[55] = v4;
  v4[2] = v1 + 18;
  v4[3] = v2;
  v4[4] = v1 + 2;
  v5 = swift_task_alloc();
  v1[56] = v5;
  *v5 = v1;
  v5[1] = Entity.write(to:options:);
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v3, v6, 0xD000000000000016, 0x80000001C18EABE0, partial apply for closure #1 in static Entity.WriteHelper.write(bundle:to:with:), v4, v7);
}

void Entity.WriteOptions.init(arrayLiteral:)(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

    *a2 = v5;
    return;
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_14:
        v12 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v12 < v7)
        {
          goto LABEL_22;
        }

        memcpy(&v5[v12 + 32], (v6 + 32), v7);

        if (v7)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v4;
    if (!--v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

Swift::Int Entity.WriteOptions.TextureFileSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

double static Entity.WriteOptions.preferredTextureFileSize(_:)@<D0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE12WriteOptionsV6OptionOGMR);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C1887600;
  *(v4 + 32) = v3;
  *a2 = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  MEMORY[0x1C68F4C10](0);
  return MEMORY[0x1C68F4C10](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.WriteOptions.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](0);
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t static Entity.WriteOptions.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Entity.WriteOptions.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1C68F4C10](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1C68F4C10](0);
      result = MEMORY[0x1C68F4C10](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int Entity.WriteOptions.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1C68F4C10](0);
      MEMORY[0x1C68F4C10](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entity.WriteOptions()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1C68F4C10](0);
      MEMORY[0x1C68F4C10](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t Entity.write(to:options:)(uint64_t a1, void *a2)
{
  v3[68] = v2;
  v3[67] = a1;
  v3[69] = *a2;
  type metadata accessor for MainActor();
  v3[70] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[71] = v5;
  v3[72] = v4;

  return MEMORY[0x1EEE6DFA0](Entity.write(to:options:), v5, v4);
}

double static Entity.WriteHelper.makeExportOptions(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v36 = 0;
  v35 = 1;
  if (one-time initialization token for defaultRealityFileVersionForWritePublicAPI != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v3 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
  v34 = 0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    v6 = 3;
    v7 = static __REAssetBundle.defaultRealityFileVersionForWritePublicAPI;
    while (1)
    {
      v9 = *v5++;
      v8 = v9;
      if (v6 != 3 && v6 != v8)
      {
        break;
      }

      if (v7 <= 14)
      {
        v3 = 15;
        v7 = 15;
      }

      v6 = v8;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    lazy protocol witness table accessor for type Entity.WriteError and conformance Entity.WriteError();
    swift_allocError();
    *v10 = 0xD000000000000045;
    v10[1] = 0x80000001C18F0470;
    swift_willThrow();
    v16[0] = 1;
    v17 = 1;
    v18 = v36;
    v19 = 0;
    v20 = 1;
    v21 = 0;
    v22 = v35;
    v23 = xmmword_1C18B7B50;
    v24 = 0;
    v26 = 0;
    v25 = 0;
    v27 = v3;
    v28 = v34;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 1;
    v33 = v6;
    outlined destroy of __REAssetBundle.ExportOptions(v16);
  }

  else
  {
    LOBYTE(v8) = 3;
LABEL_12:
    v12 = v36;
    v13 = v35;
    v14 = v34;
    *a2 = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v12;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 34) = 0;
    *(a2 + 35) = v13;
    *(a2 + 40) = xmmword_1C18B7B50;
    *(a2 + 56) = 0;
    *(a2 + 68) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = v3;
    *(a2 + 80) = v14;
    *(a2 + 81) = 1;
    result = 0.0;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 1;
    *(a2 + 122) = v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.WriteOptions.TextureFileSize, &type metadata for Entity.WriteOptions.TextureFileSize, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions.TextureFileSize and conformance Entity.WriteOptions.TextureFileSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions and conformance Entity.WriteOptions()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.WriteOptions, &type metadata for Entity.WriteOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions and conformance Entity.WriteOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option()
{
  result = lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option;
  if (!lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.WriteOptions.Option, &type metadata for Entity.WriteOptions.Option, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteOptions.Option and conformance Entity.WriteOptions.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.WriteError and conformance Entity.WriteError()
{
  result = lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError;
  if (!lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Entity.WriteError, &type metadata for Entity.WriteError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.WriteError and conformance Entity.WriteError);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #1 in static Entity.WriteHelper.write(bundle:to:with:)(v0 + 16, v0 + v2, (v0 + v3));
}

double block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __SceneImportOperation.__ImportedScene.sceneIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t __SceneImportOperation.__ImportedScene.sceneName.getter()
{
  v1 = *(v0 + *(type metadata accessor for __SceneImportOperation.__ImportedScene(0) + 20));

  return v1;
}

double __SceneImportOperation.__ImportedScene.sceneAsset.getter()
{
  type metadata accessor for __SceneImportOperation.__ImportedScene(0);

  return result;
}

int *__SceneImportOperation.__ImportedScene.init(sceneIdentifier:sceneName:sceneAsset:sceneActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t __SceneImportOperation.__url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = RESceneImportOperationCopySourceURL();
  if (v2)
  {
    v3 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t __SceneImportOperation.__importedScenes.getter()
{
  v26 = type metadata accessor for __SceneImportOperation.ImportedScene(0);
  v0 = *(v26 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for __SceneImportOperation.__ImportedScene(0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __SceneImportOperation.importedScenes.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v27;
    v9 = v6 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v10 = *(v0 + 72);
    v22 = v6;
    v23 = v10;
    do
    {
      outlined init with copy of __SceneImportOperation.ImportedScene(v9, v2, type metadata accessor for __SceneImportOperation.ImportedScene);
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 16))(v5, v2, v11);
      v12 = &v2[v26[5]];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *&v2[v26[6]];
      v16 = v2[v26[7]];

      outlined destroy of __SceneImportOperation.ImportedScene(v2, type metadata accessor for __SceneImportOperation.ImportedScene);
      v17 = v25;
      v18 = &v5[*(v25 + 20)];
      *v18 = v13;
      *(v18 + 1) = v14;
      *&v5[*(v17 + 24)] = v15;
      v5[*(v17 + 28)] = v16;
      v27 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v8 = v27;
      }

      *(v8 + 16) = v20 + 1;
      outlined init with take of __SceneImportOperation.__ImportedScene(v5, v8 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for __SceneImportOperation.__ImportedScene);
      v9 += v23;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t __SceneImportOperation.importedScenes.getter()
{
  v0 = type metadata accessor for __SceneImportOperation.ImportedScene(0);
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  result = RESceneImportOperationGetSceneCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v10 = 0;
    v26 = (v3 + 16);
    v27 = (v3 + 32);
    v25 = (v3 + 8);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = RESceneImportOperationCopySceneIdentifierAtIndex();
      if (!result)
      {
        break;
      }

      v12 = result;
      v13 = v30;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v27)(v7, v13, v31);
      result = RESceneImportOperationCopySceneNameAtIndex();
      if (!result)
      {
        goto LABEL_17;
      }

      v14 = result;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      result = RESceneImportOperationGetSceneAssetAtIndex();
      if (!result)
      {
        goto LABEL_18;
      }

      v18 = result;
      RERetain();
      type metadata accessor for __REAsset();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      LOBYTE(v18) = RESceneImportOperationIsSceneActiveAtIndex();
      (*v26)(v2, v7, v31);
      v20 = v29;
      v21 = &v2[*(v29 + 20)];
      *v21 = v15;
      v21[1] = v17;
      *&v2[*(v20 + 24)] = v19;
      v2[*(v20 + 28)] = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      }

      v23 = v11[2];
      v22 = v11[3];
      if (v23 >= v22 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v11);
      }

      ++v10;
      (*v25)(v7, v31);
      v11[2] = v23 + 1;
      outlined init with take of __SceneImportOperation.__ImportedScene(v2, v11 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for __SceneImportOperation.ImportedScene);
      if (v9 == v10)
      {
        return v11;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t __SceneImportOperation.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t __SceneImportOperation.init(core:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  ServiceLocator = RESceneImportOperationGetServiceLocator();
  SwiftObject = REServiceLocatorGetSwiftObject();
  if (SwiftObject)
  {
    v4 = SwiftObject;

LABEL_5:
    v9[4] = partial apply for closure #1 in __SceneImportOperation.init(core:);
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @guaranteed USKNode, @guaranteed USKScene, @unowned OpaquePointer, @in_guaranteed UUID, @guaranteed [String : String], @guaranteed [String : UUID], @guaranteed String) -> (@owned Error?);
    v9[3] = &block_descriptor_55;
    v8 = _Block_copy(v9);

    RESceneImportOperationSetSceneCreateCompletionHandler();
    _Block_release(v8);

    return v1;
  }

  result = MEMORY[0x1C68FE240](ServiceLocator);
  if (result)
  {
    v6 = result;
    type metadata accessor for __Engine();
    swift_allocObject();
    v7 = __Engine.init(coreEngine:)(v6);
    type metadata accessor for __ServiceLocator();
    swift_allocObject();
    v4 = specialized __ServiceLocator.init(engine:)(v7);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __SceneImportOperation.init(core:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a8;
  v65 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - v16;
  v77 = MEMORY[0x1E69E6B70];
  v75 = a4;
  outlined init with copy of Any(&v75, &v73);
  swift_dynamicCast();
  v18 = v70;
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v19 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  v66 = a6;
  v64 = a2;
  if (v19)
  {
    v20 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    v20 = Scene.init(coreScene:)(v18);
  }

  v21 = v20;
  v68 = a7;
  v22 = RESceneImportGetUSDActionAssets();
  v67 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v25(v17, a5, v23);
  v26 = *(v24 + 56);
  v26(v17, 0, 1, v23);
  Scene.__sceneIdentifier.setter(v17);
  v69 = v21;
  result = RESceneGetEntitiesArray();
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = result;
    v31 = v28;
    v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v28, 0);
    result = memcpy(v29 + 4, v30, 8 * v31);
  }

  if (v29[2])
  {
    v32 = v29[4];

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v33 = swift_dynamicCastClassUnconditional();
      goto LABEL_9;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v32);
      if (v35)
      {
        v36 = (*(v35 + 232))(v35);
        v37 = *(v36 + 16);

        v38 = v37;
        v34 = v36;
        MEMORY[0x1C68F9740](v38, 0);
        *(v36 + 16) = v32;
        MEMORY[0x1C68F9740](v32, v36);

LABEL_13:
        v25(v17, a5, v23);
        v26(v17, 0, 1, v23);
        Entity.__interactionIdentifier.setter(v17);
        type metadata accessor for __SceneImportOperation();
        v72 = MEMORY[0x1E69E7CC0];
        v40 = v64;
        v39 = v65;
        v41 = v66;
        static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v64, v65, v69, v66, v68, v67, &v72, v63, a9, a10);
        v42 = v72;
        v43 = *(v72 + 16);

        if (!v43)
        {

          return 0;
        }

        v63 = v34;

        v44 = v40;
        v45 = v39;

        v46 = [v44 path];
        v47 = [v46 stringValue];

        if (v47)
        {
          v65 = v45;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v75 = v48;
          v76 = v50;
          v73 = 91;
          v74 = 0xE100000000000000;
          v70 = 0;
          v71 = 0xE000000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v75 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v76 = v51;
          v73 = 93;
          v74 = 0xE100000000000000;
          v70 = 0;
          v71 = 0xE000000000000000;
          v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v54 = v53;

          if (v41[2])
          {
            v55 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
            v57 = v56;

            if (v57)
            {
              v58 = (v41[7] + 16 * v55);
              v59 = *v58;
              v60 = v58[1];

              specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v59, v60, v69, v41);
              v62 = v61;

              if (v62)
              {
                Entity.__interactions.setter(v42);
              }

              else
              {
              }

              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_27:

        return 0;
      }

      v33 = makeEntity(for:)(v32);
LABEL_9:
      v34 = v33;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation.__allocating_init(url:serviceLocator:)@<X0>(uint64_t a1@<X0>, NSURL *a3@<X8>)
{
  URL._bridgeToObjectiveC()(a3);
  v5 = v4;
  swift_beginAccess();
  v6 = RESceneImportOperationCreateWithURL();

  v7 = swift_allocObject();
  __SceneImportOperation.init(core:)(v6);

  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t __SceneImportOperation.__allocating_init(bundle:resourceName:serviceLocator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = MEMORY[0x1C68F3280](a2, a3);

  v8 = RESceneImportOperationCreateWithBundleResource();

  if (v8)
  {
    v9 = swift_allocObject();
    __SceneImportOperation.init(core:)(v8);
  }

  else
  {

    return 0;
  }

  return v9;
}

double __SceneImportOperation.setIsolateFromEngine(_:)(char a1)
{
  RESceneImportOperationSetIsolateFromEngine();

  return result;
}

double __SceneImportOperation.setCompressTextures(_:)(char a1)
{
  RESceneImportOperationSetCompressTextures();

  return result;
}

double __SceneImportOperation.setMergeIntoSingleEntity(_:)(char a1)
{
  RESceneImportOperationSetMergeIntoSingleEntity();

  return result;
}

double __SceneImportOperation.setPlayDefaultAnimationsImmediately(_:)(char a1)
{
  RESceneImportOperationSetPlayDefaultAnimationsImmediately();

  return result;
}

double __SceneImportOperation.setGenerateDecimatedMesh(_:)(char a1)
{
  RESceneImportOperationSetGenerateDecimatedMesh();

  return result;
}

double __SceneImportOperation.setReorderVertexCaching(_:)(char a1)
{
  RESceneImportOperationSetVertexCacheOptimize();

  return result;
}

double __SceneImportOperation.setEnableAnimationInterpolation(_:)(char a1)
{
  RESceneImportOperationSetEnableAnimationInterpolation();

  return result;
}

double __SceneImportOperation.setRootSceneAssetPath(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + 16);
  v6 = String.utf8CString.getter();
  a3(v5, v6 + 32);

  return result;
}

double __SceneImportOperation.setApplyUnitConversionScale(_:)(char a1)
{
  RESceneImportOperationSetUnitType();

  return result;
}

double __SceneImportOperation.setRetainSubdivisionSurfaceInfo(_:)(char a1)
{
  RESceneImportOperationSetRetainSubdivisionSurfaceInfo();

  return result;
}

uint64_t __SceneImportOperation.run()(uint64_t (*a1)(void, void *))
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  result = a1(*(v1 + 16), v5);
  if ((result & 1) == 0)
  {
    v3 = v5[0];
    if (v5[0])
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v4 = v3;
    }

    else
    {
      lazy protocol witness table accessor for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError();
      swift_allocError();
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v175 = a8;
  v176 = a7;
  v174 = a10;
  v173 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v149 - v17;
  v167 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v169 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v165 = v149 - v21;
  v185[0] = a1;
  v185[1] = a2;
  v185[2] = a3;
  v185[3] = a4;
  v185[4] = a5;
  v185[5] = a6;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v22 = a1;
  v23 = a2;
  v172 = a3;
  swift_retain_n();
  v24 = v22;
  v178 = v23;
  v25 = MEMORY[0x1C68F3280](0xD00000000000001ALL, 0x80000001C18F0530);
  v26 = &property descriptor for UnlitMaterial.readsDepth;
  v27 = [v24 property_];

  v177 = a6;
  v171 = v24;
  v168 = v18;
  if (!v27)
  {
    goto LABEL_17;
  }

  v28 = [(CGImage *)v27 stringValue];
  if (!v28)
  {
LABEL_16:

LABEL_17:
    v170 = 0;
    v57 = v172;
    goto LABEL_18;
  }

  v29 = v28;
  v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32 = [v24 path];
  v33 = [v32 stringValue];

  if (!v33)
  {

    goto LABEL_16;
  }

  v170 = v31;
  v163 = a5;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v181 = v34;
  v182 = v36;
  v179 = 91;
  v180 = 0xE100000000000000;
  v183 = 0;
  v184 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v164 = a4;
  v181 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v182 = v37;
  v179 = 93;
  v180 = 0xE100000000000000;
  v183 = 0;
  v184 = 0xE000000000000000;
  a4 = v164;
  v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v40 = v39;

  if (!a4[2])
  {

    v170 = 0;
    v57 = v172;
    a5 = v163;
LABEL_51:
    v24 = v171;
    v26 = &property descriptor for UnlitMaterial.readsDepth;
    goto LABEL_18;
  }

  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v40);
  v43 = v42;

  a5 = v163;
  if ((v43 & 1) == 0)
  {

    v170 = 0;
    v57 = v172;
    goto LABEL_51;
  }

  v44 = (a4[7] + 16 * v41);
  v45 = *v44;
  v46 = v44[1];

  specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v45, v46, v172, a4);
  v48 = v47;

  v24 = v171;
  v26 = &property descriptor for UnlitMaterial.readsDepth;
  if (!v48)
  {

    v170 = 0;
    v57 = v172;
    goto LABEL_18;
  }

  v49 = v162;
  if (v162 == 0x656E616C70 && v170 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v50 = MEMORY[0x1C68F3280](0xD000000000000024, 0x80000001C18F05A0);
    v51 = [v24 property_];

    if (v51)
    {
      v52 = [v51 stringValue];
      if (v52)
      {
        v53 = v52;
        v162 = v48;

        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        if (v54 == 0x746E6F7A69726F68 && v56 == 0xEA00000000006C61)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v57 = v172;
        v26 = &property descriptor for UnlitMaterial.readsDepth;
        REAnchoringComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        REAnchoringComponentSetDescriptorType();
        REAnchoringComponentSetDescriptorAlignment();
        REAnchoringComponentSetDescriptorClassification();
        REAnchoringComponentSetDescriptorBounds();

        a5 = v163;
        goto LABEL_100;
      }
    }
  }

  if (v49 == 0x6567616D69 && v170 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v93 = MEMORY[0x1C68F3280](0xD000000000000029, 0x80000001C18F0550);
    v94 = [v24 property_];

    if (v94)
    {
      v95 = v94;
      v96 = [v94 targetObject];
      if (!v96)
      {
LABEL_94:

        goto LABEL_95;
      }

      v97 = v96;
      objc_opt_self();
      v98 = swift_dynamicCastObjCClass();
      if (v98)
      {
        v99 = v98;
        v161 = v95;
        v100 = [v98 typeName];
        v101 = [v100 stringValue];

        if (v101)
        {
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          if (v102 == 0xD00000000000001ALL && 0x80000001C18F0580 == v104)
          {

            v57 = v172;
            v26 = &property descriptor for UnlitMaterial.readsDepth;
          }

          else
          {
            v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v57 = v172;
            v26 = &property descriptor for UnlitMaterial.readsDepth;
            if ((v105 & 1) == 0)
            {
              v95 = v97;
              v97 = v161;
              a5 = v163;
LABEL_92:
              v49 = v162;
              goto LABEL_93;
            }
          }

          v160 = v97;
          v106 = MEMORY[0x1C68F3280](0x6567616D69, 0xE500000000000000);
          v107 = [v99 v26[409]];

          a5 = v163;
          if (v107)
          {
            v108 = [v107 resourcePath];
            v109 = v107;
            v110 = v161;
            v159 = v108;
            if (v108)
            {
              v158 = v109;
              v111 = MEMORY[0x1C68F3280](0x6C61636973796870, 0xED00006874646957);
              v112 = [v99 v26[409]];

              if (v112)
              {

                v170 = v112;
                [v112 floatValue];
                if (v113 >= 0.0)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = 0.0;
                }

                v115 = [objc_opt_self() resourceWithResourcePath_];
                v116 = v160;
                if (v115)
                {
                  v157 = v115;
                  v117 = [v115 dataNoCopy];
                  if (v117)
                  {
                    v118 = v117;
                    v155 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v156 = v119;

                    v120 = specialized static CGImageRef.image(with:)(v155, v156);
                    if (v120)
                    {
                      v154 = v120;
                      v162 = v48;
                      v121 = v174;
                      swift_beginAccess();
                      outlined init with copy of __REAssetService(v121 + 120, &v181);
                      if (one-time initialization token for instances != -1)
                      {
                        swift_once();
                      }

                      v122 = v114 / 100.0;
                      v153 = specialized AssetServiceScopedRegistry.instance(for:)(&v181);
                      __swift_destroy_boxed_opaque_existential_1(&v181);
                      v181 = 979661685;
                      v182 = 0xE400000000000000;
                      MEMORY[0x1C68F3410](v175, v173);
                      v124 = v181;
                      v123 = v182;
                      v125 = [v159 path];
                      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v128 = v127;

                      v129._countAndFlagsBits = 47;
                      v129._object = 0xE100000000000000;
                      v130 = 0xE000000000000000;
                      if (String.hasSuffix(_:)(v129))
                      {
                        v131 = v126;
                        v132 = 0;
                      }

                      else
                      {
                        v139._countAndFlagsBits = 47;
                        v139._object = 0xE100000000000000;
                        v131 = v126;
                        v140 = String.hasPrefix(_:)(v139);
                        if (v140)
                        {
                          v132 = 0;
                        }

                        else
                        {
                          v132 = 47;
                        }

                        if (!v140)
                        {
                          v130 = 0xE100000000000000;
                        }
                      }

                      v181 = v124;
                      v182 = v123;

                      MEMORY[0x1C68F3410](v132, v130);

                      v151 = v123;

                      v152 = v131;
                      MEMORY[0x1C68F3410](v131, v128);

                      v149[1] = v124;
                      v142 = v181;
                      v141 = v182;
                      v143 = objc_allocWithZone(MEMORY[0x1E69864C0]);
                      v144 = [v143 initWithCGImage:v154 orientation:1 physicalWidth:v122];
                      v145 = MEMORY[0x1C68F3280](v142, v141);
                      [v144 setName_];

                      v146 = v153;
                      swift_beginAccess();
                      v147 = v144;
                      v150 = v147;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v183 = *(v146 + 24);
                      *(v146 + 24) = 0x8000000000000000;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v147, v142, v141, isUniquelyReferenced_nonNull_native);

                      *(v146 + 24) = v183;
                      swift_endAccess();
                      REAnchoringComponentGetComponentType();
                      REEntityGetOrAddComponentByClass();
                      REAnchoringComponentSetDescriptorType();
                      String.utf8CString.getter();

                      REAnchoringComponentSetDescriptorResourceGroup();

                      String.utf8CString.getter();

                      REAnchoringComponentSetDescriptorResourceName();

                      outlined consume of Data._Representation(v155, v156);

                      v27 = v154;
                      a4 = v164;
                      a5 = v163;
                      v26 = &property descriptor for UnlitMaterial.readsDepth;
                      goto LABEL_100;
                    }

                    outlined consume of Data._Representation(v155, v156);
LABEL_105:
                    v170 = 0;
                    goto LABEL_18;
                  }
                }

                else
                {
                }

LABEL_104:

                goto LABEL_105;
              }

              v110 = v160;
              v134 = v158;
              v133 = v159;
            }

            else
            {
              v133 = v109;
              v134 = v160;
            }

            v95 = v134;
            v97 = v133;
          }

          else
          {
            v95 = v161;
            v97 = v160;
          }

          goto LABEL_92;
        }

        v95 = v97;
        v97 = v161;
        v26 = &property descriptor for UnlitMaterial.readsDepth;
      }

LABEL_93:

      v95 = v97;
      goto LABEL_94;
    }
  }

LABEL_95:
  if (v49 == 1701011814 && v170 == 0xE400000000000000)
  {

    v57 = v172;
  }

  else
  {
    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v172;
    if ((v135 & 1) == 0)
    {

      goto LABEL_104;
    }
  }

  REAnchoringComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REAnchoringComponentSetDescriptorType();

LABEL_100:

  v136 = v24;
  v137 = specialized static __SceneImportOperation.searchForGravity(in:)(v136);
  v170 = v136;
  if (v137)
  {
    v138 = v137;
    specialized static __SceneImportOperation.importGravity(decodeContext:gravityNode:)(v136, v57, a4, v137);
  }

  else
  {
  }

LABEL_18:
  v58 = MEMORY[0x1C68F3280](0x7372656767697274, 0xE800000000000000);
  v59 = [v24 v26[409]];

  if (!v59)
  {
LABEL_28:

    goto LABEL_29;
  }

  v60 = [v59 objectPathArray];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
  v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v61 >> 62)
  {
    v62 = __CocoaSet.count.getter();
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v172;
  if (v62 < 1 || (v63 = MEMORY[0x1C68F3280](0x736E6F69746361, 0xE700000000000000), v64 = [v24 v26[409]], v63, !v64))
  {

    goto LABEL_28;
  }

  v65 = [v64 objectPathArray];
  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v66 >> 62)
  {
    v67 = __CocoaSet.count.getter();
  }

  else
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v67 < 1)
  {

    goto LABEL_28;
  }

  v68 = v24;
  v69 = a5;
  v70 = v68;
  v71 = a4;
  v72 = v178;

  v73 = v168;
  __RKEntityInteractionSpecification.init(decodeContext:)(v185, v168);
  v164 = v71;
  (*(v169 + 56))(v73, 0, 1, v167);
  v88 = v165;
  outlined init with take of __SceneImportOperation.__ImportedScene(v73, v165, type metadata accessor for __RKEntityInteractionSpecification);
  outlined init with copy of __SceneImportOperation.ImportedScene(v88, v166, type metadata accessor for __RKEntityInteractionSpecification);
  v89 = *v176;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  if ((v90 & 1) == 0)
  {
    v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
  }

  v92 = v89[2];
  v91 = v89[3];
  if (v92 >= v91 >> 1)
  {
    v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v89);
  }

  a5 = v69;

  a4 = v164;

  outlined destroy of __SceneImportOperation.ImportedScene(v165, type metadata accessor for __RKEntityInteractionSpecification);
  v89[2] = v92 + 1;
  outlined init with take of __SceneImportOperation.__ImportedScene(v166, v89 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v92, type metadata accessor for __RKEntityInteractionSpecification);
  *v176 = v89;
  v24 = v171;
LABEL_29:
  v74 = [v24 childIterator];
  v75 = [v74 nextObject];
  if (v75)
  {
    v76 = v75;
    while (1)
    {
      objc_opt_self();
      v77 = swift_dynamicCastObjCClass();
      if (!v77)
      {

        v178 = v171;
        goto LABEL_46;
      }

      v78 = v77;
      v79 = MEMORY[0x1C68F3280](1684957547, 0xE400000000000000);
      v80 = [v78 metadataWithKey_];

      if (!v80)
      {
        goto LABEL_41;
      }

      v81 = [v80 stringValue];

      if (!v81)
      {
        goto LABEL_41;
      }

      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      if (v82 != 0x62694C656E656373 || v84 != 0xEC00000079726172)
      {
        break;
      }

      v57 = v172;
LABEL_32:
      v76 = [v74 nextObject];
      if (!v76)
      {
        v76 = v171;
        goto LABEL_46;
      }
    }

    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v172;
    if ((v86 & 1) == 0)
    {
LABEL_41:
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v78, v178, v57, a4, a5, v177, v176, v175, v173, v174);
    }

    goto LABEL_32;
  }

  v76 = v24;
LABEL_46:

  swift_unknownObjectRelease();
}

uint64_t __SceneImportOperation.getSceneResource()()
{
  result = RESceneImportOperationGetSceneAsset();
  if (result)
  {
    v1 = result;
    RERetain();
    type metadata accessor for __SceneResource();
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:fileName:error:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, id a7, uint64_t a8)
{
  v57 = a8;
  v58 = a7;
  v60 = a6;
  v61 = a5;
  v56 = a2;
  v55 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(v12, a4, v13);
  v16 = *(v14 + 56);
  v16(v12, 0, 1, v13);
  Scene.__sceneIdentifier.setter(v12);
  v59 = a3;
  result = RESceneGetEntitiesArray();
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = result;
    v21 = v18;
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v18, 0);
    result = memcpy(v19 + 4, v20, 8 * v21);
  }

  if (v19[2])
  {
    v22 = v19[4];

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v23 = swift_dynamicCastClassUnconditional();
      goto LABEL_6;
    }

    result = REEntityIsBeingDestroyed();
    if ((result & 1) == 0)
    {
      specialized static Entity.entityInfoType(_:)(v22);
      if (v25)
      {
        v24 = (*(v25 + 232))();
        v26 = *(v24 + 16);

        MEMORY[0x1C68F9740](v26, 0);
        *(v24 + 16) = v22;
        MEMORY[0x1C68F9740](v22, v24);

LABEL_10:
        v15(v12, a4, v13);
        v16(v12, 0, 1, v13);
        v54 = v24;
        Entity.__interactionIdentifier.setter(v12);
        type metadata accessor for __SceneImportOperation();
        outlined init with copy of Any(v55, v71);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
        swift_dynamicCast();
        v27 = v70;
        outlined init with copy of Any(v56, v69);
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
        swift_dynamicCast();
        v28 = v68[1];
        v29 = MEMORY[0x1E69E7CC0];
        v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        specialized static __ServiceLocator.shared.getter();
        v68[0] = v29;

        static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v27, v28, v59, v61, v60, v30, v68, v58, v57, v56);
        v31 = v68[0];
        v32 = *(v68[0] + 16);

        v33 = v27;
        v34 = v28;
        if (!v32)
        {

LABEL_25:

          return 1;
        }

        v35 = [v33 path];
        v36 = [v35 stringValue];

        if (!v36)
        {

          goto LABEL_25;
        }

        v58 = v34;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v66 = v37;
        v67 = v39;
        v64 = 91;
        v65 = 0xE100000000000000;
        v62 = 0;
        v63 = 0xE000000000000000;
        lazy protocol witness table accessor for type String and conformance String();
        v66 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v67 = v40;
        v64 = 93;
        v65 = 0xE100000000000000;
        v62 = 0;
        v63 = 0xE000000000000000;
        v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v43 = v42;

        v44 = v61;
        if (!v61[2])
        {

LABEL_24:

          v34 = v58;
          goto LABEL_25;
        }

        v45 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v43);
        v47 = v46;

        v48 = v59;
        if (v47)
        {
          v49 = (v44[7] + 16 * v45);
          v50 = *v49;
          v51 = v49[1];

          specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v50, v51, v48, v44);
          v53 = v52;

          if (v53)
          {
            Entity.__interactions.setter(v31);

LABEL_23:

            goto LABEL_24;
          }
        }

        else
        {
        }

        goto LABEL_23;
      }

      v23 = makeEntity(for:)(v22);
LABEL_6:
      v24 = v23;
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:fileName:)(const void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v62 = a8;
  v63 = a7;
  v64 = a6;
  v65 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v58 - v14;
  outlined init with copy of Any(a1, v77);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
  swift_dynamicCast();
  v61 = v76;
  outlined init with copy of Any(a2, v75);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  swift_dynamicCast();
  v60 = v74[1];
  v16 = specialized static __ServiceLocator.shared.getter();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v59 = a4;
  v19(v15, a4, v17);
  v20 = *(v18 + 56);
  v20(v15, 0, 1, v17);
  v67 = v16;

  Scene.__sceneIdentifier.setter(v15);
  v66 = a3;
  EntitiesArray = RESceneGetEntitiesArray();
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    a1 = EntitiesArray;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v22;
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v22, 0);
    memcpy(v23 + 4, a1, 8 * v25);
    if (v23[2])
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  a1 = v23[4];

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v26 = swift_dynamicCastClassUnconditional();
    goto LABEL_5;
  }

LABEL_8:
  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(a1);
    if (v29)
    {
      v27 = (*(v29 + 232))();
      v30 = *(v27 + 16);

      MEMORY[0x1C68F9740](v30, 0);
      *(v27 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v27);

LABEL_11:
      v19(v15, v59, v17);
      v20(v15, 0, 1, v17);
      Entity.__interactionIdentifier.setter(v15);
      type metadata accessor for __SceneImportOperation();
      v74[0] = v24;
      v31 = v61;
      v32 = v60;
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v61, v60, v66, v65, v64, v63, v74, v62, a9, v67);
      v33 = v74[0];
      v34 = *(v74[0] + 16);

      if (!v34)
      {

LABEL_26:

        return 0;
      }

      v35 = v31;
      v36 = v32;
      v37 = v35;
      v38 = v36;
      v39 = [v37 path];
      v40 = [v39 stringValue];

      if (!v40)
      {

LABEL_24:

        goto LABEL_25;
      }

      v62 = v27;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v72 = v41;
      v73 = v43;
      v70 = 91;
      v71 = 0xE100000000000000;
      v68 = 0;
      v69 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v72 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v73 = v44;
      v70 = 93;
      v71 = 0xE100000000000000;
      v68 = 0;
      v69 = 0xE000000000000000;
      v45 = v65;
      v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v48 = v47;

      if (!v45[2])
      {

LABEL_25:

        goto LABEL_26;
      }

      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v48);
      v51 = v50;

      v52 = v66;
      if (v51)
      {
        v53 = (v45[7] + 16 * v49);
        v54 = *v53;
        v55 = v53[1];

        specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v54, v55, v52, v45);
        v57 = v56;

        if (v57)
        {
          Entity.__interactions.setter(v33);

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
      }

      goto LABEL_23;
    }

    v26 = makeEntity(for:)(a1);
LABEL_5:
    v27 = v26;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t __SceneImportOperation_addCustomUSDDataToScene(uskNode:uskScene:scene:sceneIdentifier:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:fileName:serviceLocator:)(const void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = a8;
  v63 = a7;
  v64 = a6;
  v65 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  outlined init with copy of Any(a1, v75);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKNode, 0x1E69DED60);
  swift_dynamicCast();
  v60 = v74;
  outlined init with copy of Any(a2, v73);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKScene, 0x1E69DED78);
  swift_dynamicCast();
  v59 = v72[1];
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v58 = a4;
  v19(v16, a4, v17);
  v20 = *(v18 + 56);
  v20(v16, 0, 1, v17);
  Scene.__sceneIdentifier.setter(v16);
  v62 = a3;
  EntitiesArray = RESceneGetEntitiesArray();
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    a1 = EntitiesArray;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = v22;
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v22, 0);
    memcpy(v23 + 4, a1, 8 * v25);
    if (v23[2])
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  a1 = v23[4];

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v26 = swift_dynamicCastClassUnconditional();
    goto LABEL_5;
  }

LABEL_8:
  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    specialized static Entity.entityInfoType(_:)(a1);
    if (v29)
    {
      v30 = (*(v29 + 232))();
      v31 = *(v30 + 16);

      v32 = v31;
      v27 = v30;
      MEMORY[0x1C68F9740](v32, 0);
      *(v30 + 16) = a1;
      MEMORY[0x1C68F9740](a1, v30);

LABEL_11:
      v19(v16, v58, v17);
      v20(v16, 0, 1, v17);
      Entity.__interactionIdentifier.setter(v16);
      type metadata accessor for __SceneImportOperation();
      v72[0] = v24;
      v33 = v60;
      v34 = v59;
      v35 = v62;
      static __SceneImportOperation.addCustomUSDDataToEntity(uskNode:uskScene:scene:usdNodeToEntityMapping:scenePathToUUIDMapping:actionAssets:interactions:fileName:serviceLocator:)(v60, v59, v62, v65, v64, v63, v72, v61, a9, a10);
      v36 = v72[0];
      v37 = *(v72[0] + 16);

      if (!v37)
      {

        return 0;
      }

      v61 = v27;

      v38 = v33;
      v39 = v34;
      v40 = [v38 path];
      v41 = [v40 stringValue];

      if (!v41)
      {

LABEL_24:
        return 0;
      }

      v60 = v39;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v70 = v42;
      v71 = v44;
      v68 = 91;
      v69 = 0xE100000000000000;
      v66 = 0;
      v67 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v70 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v71 = v45;
      v68 = 93;
      v69 = 0xE100000000000000;
      v66 = 0;
      v67 = 0xE000000000000000;
      v46 = v65;
      v47 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v49 = v48;

      if (v46[2])
      {
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v49);
        v52 = v51;

        if (v52)
        {
          v53 = (v46[7] + 16 * v50);
          v54 = *v53;
          v55 = v53[1];

          specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v54, v55, v35, v46);
          v57 = v56;

          if (v57)
          {
            Entity.__interactions.setter(v36);

LABEL_23:

            v39 = v60;
            goto LABEL_24;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_23;
    }

    v26 = makeEntity(for:)(a1);
LABEL_5:
    v27 = v26;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError()
{
  result = lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError;
  if (!lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __SceneImportOperation.InternalError, &unk_1F41244F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError;
  if (!lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __SceneImportOperation.InternalError, &unk_1F41244F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __SceneImportOperation.InternalError and conformance __SceneImportOperation.InternalError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityInteractionSpecification?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34__RKEntityInteractionSpecificationVSgMd, &_s10RealityKit34__RKEntityInteractionSpecificationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of __SceneImportOperation.__ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of __SceneImportOperation.ImportedScene(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __SceneImportOperation.ImportedScene(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *specialized static __SceneImportOperation.searchForGravity(in:)(void *a1)
{
  v1 = [a1 childIterator];
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = MEMORY[0x1C68F3280](0xD000000000000027, 0x80000001C18F05D0);
        v7 = [v5 property_];

        if (v7)
        {
          break;
        }
      }

      v3 = [v1 nextObject];
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    [v7 float3Value];
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_7:
    swift_unknownObjectRelease();
    return 0;
  }

  return v5;
}

double specialized static __SceneImportOperation.importGravity(decodeContext:gravityNode:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (!static __RKScenePhysics.registration)
  {
    return result;
  }

  v9 = MEMORY[0x1C68F3280](0xD000000000000027, 0x80000001C18F05D0);
  v10 = [a4 property_];

  if (!v10)
  {
    return result;
  }

  [v10 float3Value];
  v26 = v11;

  v12 = [a1 path];
  v13 = [v12 stringValue];

  if (!v13)
  {
    return result;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v16 = v15;

  if (!*(a3 + 16))
  {

    goto LABEL_11;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_11:

    return result;
  }

  v20 = (*(a3 + 56) + 16 * v17);
  v21 = *v20;
  v22 = v20[1];

  specialized USDDecodableContext.entityFromEntityStringPath(entityStringPath:)(v21, v22, a2, a3);
  v24 = v23;

  if (v24)
  {
    REEntityGetOrAddComponentByClass();
    Object = RECustomComponentGetObject();
    if (Object)
    {
      *Object = v26;
    }
  }

  return result;
}

double block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Int PhysicsBodyMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PhysicsBodyMode and conformance PhysicsBodyMode()
{
  result = lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode;
  if (!lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsBodyMode, &type metadata for PhysicsBodyMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsBodyMode and conformance PhysicsBodyMode);
  }

  return result;
}

float static PhysicsMassProperties.default.getter@<S0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  result = *&static PhysicsMassProperties.default;
  v2 = xmmword_1EBEB20F0;
  v3 = *&qword_1EBEB2100;
  v4 = xmmword_1EBEB2110;
  *a1 = static PhysicsMassProperties.default;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return result;
}

__n128 PhysicsMassProperties.init()@<Q0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = static simd_quatf.identity;
  *a1 = 1065353216;
  *(a1 + 16) = xmmword_1C18C7150;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = result;
  return result;
}

uint64_t PhysicsMassProperties.init(mass:inertia:centerOfMass:)@<X0>(__n128 *a1@<X8>, float a2@<S0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  if (one-time initialization token for identity != -1)
  {
    v5 = a1;
    v6 = a2;
    v9 = a4;
    v10 = a5;
    v8 = a3;
    result = swift_once();
    a3 = v8;
    a4 = v9;
    a5 = v10;
    a2 = v6;
    a1 = v5;
  }

  a1->n128_f32[0] = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  return result;
}

__n128 PhysicsMassProperties.init(shape:density:)@<Q0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, void)@<X1>, uint64_t a3@<X8>)
{
  a2(v9, *(a1 + 16));
  v7 = v9[1];
  v8 = v9[0];
  v6 = v9[2];
  v4 = v10;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  *a3 = v4;
  result = v7;
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  *(a3 + 48) = v7;
  return result;
}

uint64_t specialized static PhysicsMassProperties.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v2.i32[3] = a1->i32[0];
  v3.i32[3] = a2->i32[0];
  if ((vminv_u16(vmovn_s32(vceqq_f32(v2, v3))) & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2[2];
  v7 = a1[2];
  v7.i32[3] = a1[3];
  v6.i32[3] = a2[3];
  if (vminv_u16(vmovn_s32(vceqq_f32(v7, v6))))
  {
    v8 = vmovn_s32(vceqq_f32(a1[3], a2[3]));
    if (v8.i8[2] & 1) != 0 && (v8.i8[4])
    {
      v5 = v8.i8[6];
    }
  }

  return v5 & 1;
}

uint64_t __RKEntityForceAction.__allocating_init(targetEntity:force:velocity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 1;
  *(v14 + 144) = 0;
  *(v14 + 152) = 0;
  *(v14 + 160) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0;
  swift_beginAccess();
  *(v14 + 112) = a2;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4 & 1;
  swift_beginAccess();
  *(v14 + 144) = a5;
  *(v14 + 152) = a6;
  *(v14 + 160) = a7 & 1;
  return __RKEntityAction.init(targetEntity:)(a1);
}

void __RKEntityForceAction.force.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3 & 1;
}

void __RKEntityForceAction.velocity.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  *(v3 + 160) = a3 & 1;
}

uint64_t __RKEntityForceAction.init(targetEntity:force:velocity:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 1;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0;
  swift_beginAccess();
  *(v7 + 112) = a2;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4 & 1;
  swift_beginAccess();
  *(v7 + 144) = a5;
  *(v7 + 152) = a6;
  *(v7 + 160) = a7 & 1;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityForceAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v22 = 91;
  v23 = 0xE100000000000000;
  if (v3)
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    v24[6] = v3;

    _print_unlocked<A, B>(_:_:)();
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1C68F3410](v4, v5);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v6 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v6);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v7 = v22;
  v8 = v23;
  v9 = *(v1 + 16);
  if (!v9)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_14:
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

LABEL_15:

      return 0;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v10 = *(v1 + 96);
  v11 = *(v1 + 104);
  *(v1 + 96) = 1;
  *(v1 + 104) = 1;
  v22 = v10;
  LOBYTE(v23) = v11;
  __RKEntityAction.state.didset(&v22);
  swift_retain_n();
  SceneNullable = REEntityGetSceneNullable();
  if (!SceneNullable)
  {
    goto LABEL_19;
  }

  v13 = SceneNullable;
  v14 = RESceneGetSwiftObject();
  type metadata accessor for Scene();
  if (v14)
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    swift_allocObject();
    Scene.init(coreScene:)(v13);
  }

  v16 = Scene.physicsOrigin.getter();

  if (!v16)
  {
LABEL_19:
    specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v9);
  }

  RERigidBodyComponentGetComponentType();
  if (REEntityGetComponentByClass() && RERigidBodyComponentGetRigidBody())
  {
    RERigidBodyWakeUp();
    if (!Entity.rcSceneEntity.getter())
    {

      goto LABEL_15;
    }

    REEntityCalculateWorldOrientation();
    swift_beginAccess();
    if (*(v2 + 160))
    {
      swift_beginAccess();
      if (*(v2 + 128))
      {
LABEL_29:
        RENetworkMarkComponentDirty();

        goto LABEL_30;
      }
    }

    else
    {
      RERigidBodyGetMassFrame();
    }

    RERigidBodyApplyLinearImpulse();
    goto LABEL_29;
  }

LABEL_30:
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *(v2 + 32);
  v19 = *(v2 + 40);
  *(v2 + 32) = partial apply for closure #1 in __RKEntityForceAction.perform(with:);
  *(v2 + 40) = v17;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v18, v19);

  memset(v24, 0, 40);
  v20 = swift_allocObject();
  swift_weakInit();
  _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(v24, partial apply for closure #2 in __RKEntityForceAction.perform(with:), v20, &v22);

  outlined destroy of BodyTrackingComponent?(v24, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v22, v2 + 168);
  swift_endAccess();
  v22 = v7;
  v23 = v8;
  v21 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v21, &v22);

  return 1;
}

uint64_t closure #1 in __RKEntityForceAction.perform(with:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v2 + 168, &v4);
    if (*(&v5 + 1))
    {
      outlined init with copy of __REAssetService(&v4, v3);
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v4, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v4, v2 + 168);
    swift_endAccess();
  }

  return result;
}

uint64_t closure #2 in __RKEntityForceAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
    *(v3 + 96) = 2;
    *(v3 + 104) = 1;
    v6 = v4;
    v7 = v5;

    __RKEntityAction.state.didset(&v6);
  }

  return result;
}

uint64_t __RKEntityForceAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  swift_beginAccess();
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v11 = *(v1 + 160);
  v7 = type metadata accessor for __RKEntityForceAction();
  v8 = swift_allocObject();
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 1;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 1;
  *(v8 + 168) = 0u;
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0;
  swift_beginAccess();
  *(v8 + 112) = v2;
  *(v8 + 120) = v3;
  *(v8 + 128) = v4;
  swift_beginAccess();
  *(v8 + 144) = v6;
  *(v8 + 152) = v5;
  *(v8 + 160) = v11;

  result = __RKEntityAction.init(targetEntity:)(v9);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t __RKEntityForceAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    swift_beginAccess();
    v13 = *(v1 + 112);
    v14 = *(v1 + 120);
    v15 = *(v1 + 128);
    swift_beginAccess();
    v16 = *(v1 + 144);
    v17 = *(v1 + 152);
    v20 = *(v1 + 160);
    type metadata accessor for __RKEntityForceAction();
    v18 = swift_allocObject();
    *(v18 + 112) = 0;
    *(v18 + 120) = 0;
    *(v18 + 128) = 1;
    *(v18 + 144) = 0;
    *(v18 + 152) = 0;
    *(v18 + 160) = 1;
    *(v18 + 168) = 0u;
    *(v18 + 184) = 0u;
    *(v18 + 200) = 0;
    swift_beginAccess();
    *(v18 + 112) = v13;
    *(v18 + 120) = v14;
    *(v18 + 128) = v15;
    swift_beginAccess();
    *(v18 + 144) = v16;
    *(v18 + 152) = v17;
    *(v18 + 160) = v20;

    return __RKEntityAction.init(targetEntity:)(v19);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v1 + 112);
    v5 = *(v1 + 120);
    v6 = *(v1 + 128);
    swift_beginAccess();
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = *(v1 + 160);
    type metadata accessor for __RKEntityForceAction();
    v10 = swift_allocObject();
    *(v10 + 112) = 0;
    *(v10 + 120) = 0;
    *(v10 + 128) = 1;
    *(v10 + 144) = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 1;
    *(v10 + 168) = 0u;
    *(v10 + 184) = 0u;
    *(v10 + 200) = 0;
    swift_beginAccess();
    *(v10 + 112) = v4;
    *(v10 + 120) = v5;
    *(v10 + 128) = v6;
    swift_beginAccess();
    *(v10 + 144) = v7;
    *(v10 + 152) = v8;
    *(v10 + 160) = v9;

    return __RKEntityAction.init(targetEntity:)(v11);
  }
}

uint64_t __RKEntityForceAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityForceAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));
  outlined destroy of BodyTrackingComponent?(v0 + 168, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(char a1)
{
  if (specialized HasHierarchy.parent.getter())
  {

    return specialized HasHierarchy.setParent(_:preservingWorldTransform:)(0, a1 & 1);
  }

  else
  {
    result = REEntityGetSceneNullable();
    if (result)
    {
      v3 = result;
      v4 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v4)
      {
        swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        Scene.init(coreScene:)(v3);
      }

      swift_conformsToProtocol2();
      RESceneRemoveEntity();
    }
  }

  return result;
}

void static ReferenceComponent.loadReference(at:)(uint64_t a1)
{
  if (REEntityGetComponent())
  {
    ReferenceComponent.init(from:)(v28);
    v3 = v30;
    if (v31)
    {
      v4 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v5 = static OS_os_log.default.getter();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v28[0] = v34;
        *v6 = 136315138;
        REEntityGetName();
        v7 = String.init(cString:)();
        v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v28);

        *(v6 + 4) = v9;
        _os_log_impl(&dword_1C1358000, v5, v4, "ReferenceComponent for %s is already loaded", v6, 0xCu);
        v10 = v34;
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1C6902A30](v10, -1, -1);
        MEMORY[0x1C6902A30](v6, -1, -1);
      }

      goto LABEL_12;
    }

    v18 = v28[1];
    v19 = v28[0];
    v20 = v29;
    v21 = v32;
    specialized static ReferenceComponent.findBundle(bundlePath:)(v29);
    if (v1)
    {
      v24 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v25 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v24, &dword_1C1358000, v25, "Failed to load Reference from component", 39, 2, MEMORY[0x1E69E7CC0]);

      swift_willThrow();

LABEL_12:

      return;
    }

    v23 = v22;
    type metadata accessor for Entity();
    v34 = v18;
    v26 = static Entity.load(named:in:)(v19, v18, v23);

    v28[0] = a1;

    Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v26, 0);

    v27 = 2;
    v33[0] = v19;
    v33[1] = v34;
    if (v21)
    {
      v27 = 258;
    }

    v33[2] = v20;
    v33[3] = v3;
    v33[4] = v27;
    v33[5] = v26;

    _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(v33, 0, a1);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v12 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      REEntityGetName();
      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C1358000, v12, v11, "No ReferenceComponent found for %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1C6902A30](v14, -1, -1);
      MEMORY[0x1C6902A30](v13, -1, -1);
    }
  }
}

uint64_t static ReferenceComponent.loadReference(at:)(uint64_t a1)
{
  v1[14] = a1;
  type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return MEMORY[0x1EEE6DFA0](static ReferenceComponent.loadReference(at:), v3, v2);
}

{
  v4 = *v2;
  v5 = *(*v2 + 184);
  *(*v2 + 200) = v1;

  if (v1)
  {
    v6 = v4[16];
    v7 = v4[17];
    v8 = static ReferenceComponent.loadReference(at:);
  }

  else
  {
    v4[26] = a1;
    v6 = v4[16];
    v7 = v4[17];
    v8 = static ReferenceComponent.loadReference(at:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t static ReferenceComponent.loadReference(at:)()
{
  v38 = v0;
  if (!REEntityGetComponent())
  {

    v16 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v17 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136315138;
      REEntityGetName();
      v20 = String.init(cString:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v32);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1C1358000, v17, v16, "No ReferenceComponent found for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1C6902A30](v19, -1, -1);
      MEMORY[0x1C6902A30](v18, -1, -1);
    }

    goto LABEL_14;
  }

  ReferenceComponent.init(from:)(v32);
  v2 = v32[0];
  v1 = v32[1];
  *(v0 + 144) = v32[0];
  *(v0 + 152) = v1;
  v4 = v33;
  v3 = v34;
  *(v0 + 160) = v33;
  *(v0 + 168) = v3;
  v5 = v35;
  v6 = v36;
  *(v0 + 217) = v36;
  *(v0 + 176) = v37;
  *(v0 + 216) = v6;
  if (v5)
  {

    v7 = static os_log_type_t.default.getter();
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter();
    v9 = os_log_type_enabled(v8, v7);
    if (v5 == 1)
    {
      if (v9)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v32[0] = v11;
        *v10 = 136315138;
        REEntityGetName();
        v12 = String.init(cString:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v32);

        *(v10 + 4) = v14;
        v15 = "ReferenceComponent for %s is currently loading";
LABEL_12:
        _os_log_impl(&dword_1C1358000, v8, v7, v15, v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x1C6902A30](v11, -1, -1);
        MEMORY[0x1C6902A30](v10, -1, -1);
      }
    }

    else if (v9)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136315138;
      REEntityGetName();
      v24 = String.init(cString:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v32);

      *(v10 + 4) = v26;
      v15 = "ReferenceComponent for %s is already loaded";
      goto LABEL_12;
    }

LABEL_14:
    v27 = *(v0 + 8);

    return v27();
  }

  specialized static ReferenceComponent.findBundle(bundlePath:)(v4);
  *(v0 + 184) = v23;
  v29 = v23;

  type metadata accessor for Entity();
  v30 = v29;
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *v31 = v0;
  v31[1] = static ReferenceComponent.loadReference(at:);

  return specialized Entity.init(named:in:)(v2, v1, v29);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 112);

  Entity.ChildCollection.doAppend(_:preservingWorldTransform:)(v1, 0);

  v8 = *(v0 + 216) == 0;
  v9 = 2;
  *(v0 + 64) = v6;
  if (!v8)
  {
    v9 = 258;
  }

  *(v0 + 72) = v5;
  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v9;
  *(v0 + 104) = v1;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5((v0 + 64), 0, v7);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 184);

  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 112);
  v7 = *(v0 + 217) == 0;
  v8 = 256;
  *(v0 + 16) = *(v0 + 144);
  if (v7)
  {
    v8 = 0;
  }

  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 48) = v8;
  *(v0 + 56) = v2;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5((v0 + 16), 0, v6);

  v9 = static os_log_type_t.error.getter();
  type metadata accessor for OS_os_log();
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v9, &dword_1C1358000, v10, "Failed to load Reference from component", 39, 2, MEMORY[0x1E69E7CC0]);

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance ReferenceComponent.BundlePathError()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

Swift::Int ReferenceComponent.LoadingPolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

Swift::Int ReferenceComponent.ReferenceState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t ReferenceComponent.init(named:at:loadingPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *(a6 + 40) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 33) = v6;
  *(a6 + 32) = 0;
  return result;
}

void ReferenceComponent.init(named:in:loadingPolicy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a1;
  v31 = a2;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v28) = *a4;
  v29 = a3;
  v14 = [a3 bundlePath];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v15;
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 resourcePath];

  if (v17)
  {

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v34 = v18;
    v35 = v20;
    v32 = 0;
    v33 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v23 = v22;

    v36 = v21;
    v37 = v23;
    CharacterSet.init(charactersIn:)();
    v24 = StringProtocol.trimmingCharacters(in:)();
    v26 = v25;

    (*(v10 + 8))(v13, v9);

    v27 = v31;
    *a5 = v30;
    *(a5 + 8) = v27;
    *(a5 + 16) = v24;
    *(a5 + 24) = v26;
    *(a5 + 32) = 0;
    *(a5 + 33) = BYTE4(v28);
    *(a5 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t ReferenceComponent.init(named:loadingPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *(a4 + 40) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  *(a4 + 33) = v4;
  *(a4 + 32) = 0;
  return result;
}

uint64_t ReferenceComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = *(v1 + 32);
  v16[2] = *(v1 + 33);
  v16[3] = v10;
  v11 = v1[5];
  v17 = v6;
  v18 = v7;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.cString(using:)();
  v13 = *(v3 + 8);
  result = v13(v5, v2);
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  REReferenceComponentSetEntityName();

  v17 = v9;
  v18 = v8;
  static String.Encoding.utf8.getter();
  v15 = StringProtocol.cString(using:)();
  result = v13(v5, v2);
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  REReferenceComponentSetBundlePath();

  REReferenceComponentSetLoadingPolicy();
  REReferenceComponentSetLoadingState();
  if (v11)
  {
    REReferenceComponentSetSubscene();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t ReferenceComponent.init(from:)@<X0>(uint64_t a2@<X8>)
{
  if (REReferenceComponentGetReferenceSourceType())
  {
    goto LABEL_18;
  }

  if (!REReferenceComponentGetEntityName())
  {
    goto LABEL_16;
  }

  v3 = String.init(cString:)();
  v5 = v4;
  if (!REReferenceComponentGetBundlePath())
  {
LABEL_17:
    __break(1u);
LABEL_18:
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18F0790);
    type metadata accessor for REReferenceSourceType(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = String.init(cString:)();
  v8 = v7;
  LoadingPolicy = REReferenceComponentGetLoadingPolicy();
  LoadingState = REReferenceComponentGetLoadingState();
  result = REReferenceComponentGetSubscene();
  if (!result)
  {
    goto LABEL_11;
  }

  v12 = result;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    result = swift_dynamicCastClassUnconditional();
    goto LABEL_11;
  }

  if (REEntityIsBeingDestroyed())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = static Entity.entityInfoType(_:)(v12);
  if (v13)
  {
    v14 = (*(v13 + 232))();
    v15 = *(v14 + 16);

    MEMORY[0x1C68F9740](v15, 0);
    *(v14 + 16) = v12;
    MEMORY[0x1C68F9740](v12, v14);

    result = v14;
  }

  else
  {
    result = makeEntity(for:)(v12);
  }

LABEL_11:
  if (LoadingState >= 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = LoadingState;
  }

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v16;
  *(a2 + 33) = LoadingPolicy == 1;
  *(a2 + 40) = result;
  return result;
}

Swift::String __swiftcall String.sanitizedBundlePath()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  static CharacterSet.whitespacesAndNewlines.getter();
  static CharacterSet.illegalCharacters.getter();
  CharacterSet.formUnion(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  static CharacterSet.controlCharacters.getter();
  CharacterSet.formUnion(_:)();
  v11(v7, v4);
  v25 = v3;
  v26 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  v25 = StringProtocol.components(separatedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 resourcePath];

  if (v16)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v25 = v19;
    v26 = v21;

    MEMORY[0x1C68F3410](47, 0xE100000000000000);

    MEMORY[0x1C68F3410](v12, v14);

    v22 = v25;
    v23 = v26;
    v11(v10, v4);
    v17 = v22;
    v18 = v23;
  }

  else
  {
    __break(1u);
  }

  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void static ReferenceComponent.releaseReference(at:)(uint64_t a1)
{
  if (!REEntityGetComponent())
  {
    v8 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v9 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      REEntityGetName();
      v12 = String.init(cString:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1C1358000, v9, v8, "No ReferenceComponent found for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1C6902A30](v11, -1, -1);
      MEMORY[0x1C6902A30](v10, -1, -1);
    }

    goto LABEL_9;
  }

  ReferenceComponent.init(from:)(&v16);
  v2 = v17;
  v3 = v19;
  if (!v21)
  {
    v15 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_1C1358000, v9, "ReferenceComponent was not loaded", 33, 2, MEMORY[0x1E69E7CC0]);

LABEL_9:

    return;
  }

  v4 = v16;
  v5 = v18;
  v6 = BYTE1(v20);
  specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

  v7 = 256;
  if (!v6)
  {
    v7 = 0;
  }

  v16 = v4;
  v17 = v2;
  v18 = v5;
  v19 = v3;
  v20 = v7;
  v21 = 0;

  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation0kD0V_TtB5(&v16, 0, a1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

void specialized static ReferenceComponent.findBundle(bundlePath:)(uint64_t a1)
{
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    v26 = [objc_opt_self() mainBundle];
    return;
  }

  v37 = v4;
  v38 = v3;
  String.sanitizedBundlePath()();
  URL.init(fileURLWithPath:)();
  URL.standardizedFileURL.getter();
  v39 = *(v8 + 8);
  v40 = v7;
  v39(v10, v7);
  URL.path.getter();
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 resourcePath];

  if (v18)
  {

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    LOBYTE(v19) = String.hasPrefix(_:)(v22);

    if (v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      v24 = *MEMORY[0x1E695DBC8];
      *(inited + 32) = *MEMORY[0x1E695DBC8];
      v25 = v24;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of NSURLResourceKey(inited + 32);
      URL.resourceValues(forKeys:)();
      if (v1)
      {

LABEL_18:
        v32 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        URL._bridgeToObjectiveC()(v33);
        v35 = v34;
        [v32 initWithURL_];

        v39(v14, v40);
        return;
      }

      v29 = URLResourceValues.allValues.getter();
      (*(v37 + 8))(v6, v38);
      if (!v29)
      {
        goto LABEL_18;
      }

      if (!*(v29 + 16) || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(), (v31 & 1) == 0))
      {

        goto LABEL_18;
      }

      outlined init with copy of Any(*(v29 + 56) + 32 * v30, v41);

      if ((swift_dynamicCast() & 1) == 0 || (v41[87] & 1) == 0)
      {
        goto LABEL_18;
      }

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    lazy protocol witness table accessor for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError();
    swift_allocError();
    *v28 = v27;
    swift_willThrow();
    v39(v14, v40);
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceComponent.LoadingPolicy, &type metadata for ReferenceComponent.LoadingPolicy, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.LoadingPolicy and conformance ReferenceComponent.LoadingPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceComponent.ReferenceState, &type metadata for ReferenceComponent.ReferenceState, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.ReferenceState and conformance ReferenceComponent.ReferenceState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError()
{
  result = lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceComponent.BundlePathError, &unk_1F4124990, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError;
  if (!lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ReferenceComponent.BundlePathError, &unk_1F4124990, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceComponent.BundlePathError and conformance ReferenceComponent.BundlePathError);
  }

  return result;
}

float32x4_t orthonormalFrame(forward:up:)@<Q0>(float32x4_t *a1@<X8>, float32x4_t a2@<Q0>, int32x4_t a3@<Q1>)
{
  v3 = vmulq_f32(a2, a2);
  v3.f32[0] = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  v7 = vdupq_lane_s32(*v3.f32, 0);
  v4 = vdivq_f32(a2, v7);
  v7.f32[0] = a2.f32[2] / v3.f32[0];
  v5 = v4;
  v5.f32[2] = a2.f32[2] / v3.f32[0];
  v6 = v5;
  v6.i32[3] = 0;
  *(v7.i64 + 4) = v4.i64[0];
  v10 = vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v10, vnegq_f32(v6)), a3, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v9 = vmulq_f32(v8, v8);
  v10.f32[0] = sqrtf(v9.f32[1] + (v9.f32[2] + v9.f32[0]));
  if (v10.f32[0] >= 0.01)
  {
    v12 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  }

  else
  {
    v11 = vmlaq_f32(vmulq_f32(v5, xmmword_1C18D4F50), *&zmmword_1C1887630[32], v7);
    v12 = vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL);
    v10 = vmulq_f32(v11, v11);
    v10.f32[0] = sqrtf(v10.f32[1] + (v10.f32[2] + v10.f32[0]));
  }

  if (v10.f32[0] < 0.01)
  {
    v13 = vmlaq_f32(vmulq_f32(v5, xmmword_1C18D4F60), *zmmword_1C1887630, v7);
    v12 = vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL);
    v10 = vmulq_f32(v13, v13);
    v10.f32[0] = sqrtf(v10.f32[1] + (v10.f32[2] + v10.f32[0]));
  }

  *v12.f32 = vdiv_f32(*v12.f32, vdup_lane_s32(*v10.f32, 0));
  v14 = v12;
  *&v14.i32[2] = v12.f32[2] / v10.f32[0];
  *v12.f32 = vsub_f32(0, *v12.f32);
  v15 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(v14)), v5, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v12.f32[2] = 0.0 - (v12.f32[2] / v10.f32[0]);
  result = vmulq_n_f32(v6, v3.f32[0]);
  *a1 = vmulq_n_f32(v12, v3.f32[0]);
  a1[1] = vmulq_n_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v3.f32[0]);
  a1[2] = result;
  return result;
}

void MeshResource.ShapeExtrusionOptions.ExtrusionMethod.extractSweepCurve()()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    orthonormalFrame(forward:up:)(&v28, *&zmmword_1C1887630[32], *&zmmword_1C1887630[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v20 = swift_allocObject();
    v21 = v28;
    v22 = v29;
    v21.i32[3] = 0;
    v23 = *&zmmword_1C1887630[48];
    v24 = *&zmmword_1C1887630[48];
    *(&v24 + 2) = *&v1 * -0.5;
    v25 = v30;
    v22.i32[3] = 0;
    HIDWORD(v25) = 0;
    v20[1] = xmmword_1C1897FC0;
    v20[2] = v21;
    *(&v23 + 2) = *&v1 * 0.5;
    v20[3] = v22;
    v20[4] = v25;
    v20[5] = v24;
    v20[6] = v21;
    v20[7] = v22;
    v20[8] = v25;
    v20[9] = v23;
    return;
  }

  if (*(v0 + 8) != 1)
  {

    return;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[1].i64[0], 0, MEMORY[0x1E69E7CC0]);
  v3 = v1[1].i64[0];
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v26 = *&zmmword_1C1887630[32];
  v5 = *&zmmword_1C1887630[16];
  for (i = v1 + 3; ; ++i)
  {
    v7 = i[-1];
    v27 = v7;
    if (!v4)
    {
      if (v3 == 1)
      {
        goto LABEL_16;
      }

      v8 = vsubq_f32(*i, v7);
      goto LABEL_11;
    }

    if (v3 - 1 == v4)
    {
      if (v3 - 2 >= v1[1].i64[0])
      {
        goto LABEL_24;
      }

      v8 = vsubq_f32(v7, v1[v3]);
LABEL_11:
      v9 = v8.f32[2];
      v10 = vmul_f32(*v8.f32, *v8.f32);
      v10.f32[0] = sqrtf(vmuls_lane_f32(v8.f32[2], v8, 2) + vaddv_f32(v10));
      if (fabsf(v10.f32[0]) > 0.00001)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if ((v4 - 1) >= v1[1].i64[0])
    {
      break;
    }

    v11 = i[-2];
    v12 = vextq_s8(v7, v7, 8uLL).u64[0];
    *v8.f32 = vmul_f32(vadd_f32(vsub_f32(*v7.i8, *v11.i8), vsub_f32(*i->f32, *v7.i8)), 0x3F0000003F000000);
    v9 = vaddv_f32(vsub_f32(vzip1_s32(v12, *&vextq_s8(*i, *i, 8uLL)), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v12))) * 0.5;
    v10 = vmul_f32(*v8.f32, *v8.f32);
    v10.f32[0] = sqrtf((v9 * v9) + vaddv_f32(v10));
    if (fabsf(v10.f32[0]) > 0.00001)
    {
LABEL_15:
      v8.i64[1] = COERCE_UNSIGNED_INT(v9 / v10.f32[0]);
      *v8.f32 = vdiv_f32(*v8.f32, vdup_lane_s32(v10, 0));
      v26 = v8;
    }

LABEL_16:
    orthonormalFrame(forward:up:)(&v28, v26, v5);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v2);
    }

    ++v4;
    v15 = v28;
    v5 = v29;
    v16 = v30;
    v15.i32[3] = 0;
    v17 = v29;
    v17.i32[3] = 0;
    HIDWORD(v16) = 0;
    v18 = v27;
    v18.i32[3] = 1.0;
    *(v2 + 2) = v14 + 1;
    v19 = &v2[64 * v14];
    *(v19 + 2) = v15;
    *(v19 + 3) = v17;
    *(v19 + 4) = v16;
    *(v19 + 5) = v18;
    if (v3 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

char *specialized CurveExtruder.init(shape:accumulatedOutlineIndexCount:)(char *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_29;
  }

  v3 = *(result + 2);
  if (v3 != *(a2 + 32 + 4 * v2 - 4))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = a2 + 32;
  v35 = *(a2 + 16);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v3, 0, MEMORY[0x1E69E7CC0]);
  v5 = v34;
  v4 = v35;
  v6 = a2;
  v7 = result;
  v8 = 0;
  v9 = 0;
  while (2)
  {
    if (v9 >= *(v6 + 16))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v10 = *(v5 + 4 * v9);
    v11 = v10 - v8;
    if (v10 <= v8)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = 0;
    ++v9;
    do
    {
      v13 = v8 + v12;
      if (v8 + v12 >= v10)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v14 = (v12 + 1) % v11;
      v15 = v14 + v8;
      if (__CFADD__(v14, v8))
      {
        goto LABEL_24;
      }

      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      v18 = v16 >> 1;
      v19 = v17 + 1;
      if (v16 >> 1 <= v17)
      {
        v28 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
        v9 = v28;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
        v16 = *(result + 3);
        v18 = v16 >> 1;
      }

      *(v7 + 16) = v19;
      *(v7 + 4 * v17 + 32) = v13;
      v20 = v17 + 2;
      if (v18 < (v17 + 2))
      {
        v31 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 2, 1, v7);
        v9 = v31;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 16) = v20;
      *(v7 + 4 * v19 + 32) = v15;
      v21 = __CFADD__(v15, v3);
      v22 = v15 + v3;
      if (v21)
      {
        goto LABEL_25;
      }

      v23 = *(v7 + 24);
      v24 = v17 + 3;
      if ((v17 + 3) > (v23 >> 1))
      {
        v32 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 3, 1, v7);
        v9 = v32;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 16) = v24;
      *(v7 + 4 * v20 + 32) = v22;
      v21 = __CFADD__(v13, v3);
      v25 = v13 + v3;
      if (v21)
      {
        goto LABEL_26;
      }

      v26 = *(v7 + 24);
      v27 = v17 + 4;
      if ((v17 + 4) > (v26 >> 1))
      {
        v29 = v17 + 4;
        v30 = v9;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v29, 1, v7);
        v9 = v30;
        v5 = v34;
        v4 = v35;
        v6 = a2;
        v7 = result;
      }

      *(v7 + 16) = v27;
      *(v7 + 4 * v24 + 32) = v25;
      ++v12;
    }

    while (v11 != v12);
    v8 = v10;
    if (v9 != v4)
    {
      continue;
    }

    return v33;
  }
}

uint64_t specialized CurveExtruder.populate(indexBuffer:curveLength:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = *(a5 + 16);
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 * v6 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 < 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (a3 != 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v6)
      {
        v9 = v7 * v6;
        if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
        {
          goto LABEL_22;
        }

        v10 = *(a4 + 16);
        v11 = v7 * v10;
        if ((v7 * v10) >> 64 != (v7 * v10) >> 63)
        {
          goto LABEL_23;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        v12 = HIDWORD(v11);
        if (HIDWORD(v11))
        {
          goto LABEL_25;
        }

        while (1)
        {
          v13 = v9 + v12;
          if (__OFADD__(v9, v12))
          {
            break;
          }

          v14 = *(a5 + 32 + 4 * v12);
          v15 = __CFADD__(v14, v11);
          v16 = v14 + v11;
          if (v15)
          {
            goto LABEL_20;
          }

          ++v12;
          *(result + 4 * v13) = v16;
          if (v6 == v12)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
        break;
      }

LABEL_7:
      v7 = v8;
      if (v8 == v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

char *extrude(text:textOptions:shapeOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v188 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  v186[0] = *a2;
  v186[1] = v3;
  v187 = *(a2 + 32);
  outlined init with copy of MeshResource.ShapeExtrusionOptions(a3, &v181);
  v183 = v183 * 0.013889;
  __dst[0].a = v181;
  LOBYTE(__dst[0].b) = v182;
  v4 = outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&v181, v182);
  LODWORD(v4) = 1013157433;
  MeshResource.ShapeExtrusionOptions.ExtrusionMethod.scaled(by:)(matrix, v4);
  outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&__dst[0].a, LOBYTE(__dst[0].b));
  a = matrix[0].a;
  b_low = LOBYTE(matrix[0].b);
  outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(*&v181, v182);
  v181 = a;
  v182 = b_low;
  v7 = AttributedString.createTextFrame(containerRect:)(v186);
  v8 = CTFrameGetPath(v7);
  BoundingBox = CGPathGetBoundingBox(v8);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;

  v11 = CTFrameGetLines(v7);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized _arrayForceCast<A, B>(_:)(v12);

  v14 = v13;
  v159 = v13 >> 62;
  if (v13 >> 62)
  {
    v17 = v13;
    v18 = __CocoaSet.count.getter();
    if (v18 < 0)
    {
      __break(1u);
    }

    v15 = v18;
    v144 = v17;
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v144 = v14;
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for CGPoint(0);
  v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v16 + 16) = v15;
  bzero((v16 + 32), 16 * v15);
LABEL_8:
  v160 = v16;
  v189.location = 0;
  v189.length = v15;
  v157 = v16 + 32;
  CTFrameGetLineOrigins(v7, v189, (v16 + 32));
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_AETt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 12.0, 0);
  if (!UIFontForLanguage)
  {
    goto LABEL_141;
  }

  v20 = *MEMORY[0x1E6965658];
  v145 = *MEMORY[0x1E69659D8];
  v21 = CTFrameGetFrameAttributes(v7);
  key = v20;
  if (v21)
  {
    v22 = v21;
    Value = CFDictionaryGetValue(v21, v20);

    if (Value)
    {

      UIFontForLanguage = Value;
    }
  }

  v25 = y;

  v26 = 0;
  v158 = v7;
  if (v159)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (v26 == *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_119:

LABEL_121:

    v136 = v19[2];
    if (v136)
    {
      v137 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation23ExtrudedGlyphDescriptorV_Tt1g5(v19[2], 0);
      v138 = specialized Sequence._copySequenceContents(initializing:)(matrix, v137 + 32, v136, v19);

      outlined consume of [String : AnimationResource].Iterator._Variant();
      if (v138 != v136)
      {
        goto LABEL_140;
      }
    }

    else
    {

      v137 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of MeshResource.ShapeExtrusionOptions(&v181);
    return v137;
  }

  while (1)
  {
    if ((v144 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1C68F41F0](v26, v144);
    }

    else
    {
      if (v26 >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v27 = *(v144 + 32 + 8 * v26);
    }

    v28 = v27;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_132;
    }

    v29 = *(v160 + 2);
    if (v26 == v29)
    {

      goto LABEL_121;
    }

    if (v26 >= v29)
    {
      goto LABEL_134;
    }

    v169 = v26 + 1;
    v30 = (v157 + 16 * v26);
    v31 = *v30;
    v32 = v30[1];
    v171 = v27;
    v33 = CTLineGetGlyphRuns(v27);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v34 >> 62))
    {
      v35 = v34 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CTRunRef(0);
      if (swift_dynamicCastMetatype() || (v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {

        goto LABEL_25;
      }

      v39 = v34;
      v40 = 0;
      while (v40 < v38)
      {
        swift_unknownObjectRetain();
        if (!swift_dynamicCastUnknownClass())
        {

          swift_unknownObjectRelease();
          v34 = v35 | 1;
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        ++v40;
        v38 = *(v35 + 16);
        if (v40 == v38)
        {
          v34 = v39;

          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
    }

    type metadata accessor for CTRunRef(0);

    v41 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v34 = v41;
LABEL_25:
    if (v34 >> 62)
    {
      break;
    }

    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v171;
    if (v36)
    {
      goto LABEL_39;
    }

LABEL_27:

    v26 = v169;
    if (!v159)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (v26 == __CocoaSet.count.getter())
    {
      goto LABEL_119;
    }
  }

  v36 = __CocoaSet.count.getter();
  v37 = v171;
  if (!v36)
  {
    goto LABEL_27;
  }

LABEL_39:
  v42 = 0;
  v142 = v36;
  v143 = v34 & 0xC000000000000001;
  v140 = v34 + 32;
  v141 = v34 & 0xFFFFFFFFFFFFFF8;
  v43 = v31;
  v44 = v32;
  v24 = x;
  v45 = v24 + v43;
  v46 = v25 + v44;
  v162 = v34;
  while (1)
  {
    if (v143)
    {
      v47 = MEMORY[0x1C68F41F0](v42, v34);
    }

    else
    {
      if (v42 >= *(v141 + 16))
      {
        goto LABEL_139;
      }

      v47 = *(v140 + 8 * v42);
    }

    run = v47;
    v48 = __OFADD__(v42, 1);
    v49 = v42 + 1;
    if (v48)
    {
      goto LABEL_137;
    }

    v50 = CTRunGetAttributes(v47);
    v51 = UIFontForLanguage;
    theDict = v50;
    v52 = CFDictionaryGetValue(theDict, key);
    font = v51;
    if (v52)
    {
      v53 = v52;

      font = v53;
    }

    v150 = v51;
    v54 = CFDictionaryGetValue(theDict, v145);

    if (v54)
    {
      v172 = v54;
      v55 = v54;
    }

    else
    {
      v172 = 0;
    }

    GlyphCount = CTRunGetGlyphCount(run);
    if (GlyphCount < 0)
    {
      goto LABEL_138;
    }

    v57 = GlyphCount;
    if (GlyphCount)
    {
      v58 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v58 + 16) = v57;
      bzero((v58 + 32), 2 * v57);
      type metadata accessor for CGPoint(0);
      v59 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v59 + 16) = v57;
      bzero((v59 + 32), 16 * v57);
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
      v59 = MEMORY[0x1E69E7CC0];
    }

    v147 = v49;
    v190.location = 0;
    v190.length = v57;
    v166 = v58 + 32;
    CTRunGetGlyphs(run, v190, (v58 + 32));
    v170 = v59;
    v191.location = 0;
    v191.length = v57;
    v165 = v59 + 32;
    CTRunGetPositions(run, v191, (v59 + 32));
    v164 = *(v58 + 16);
    if (v164)
    {
      break;
    }

LABEL_40:

    v42 = v147;
    v37 = v171;
    if (v147 == v142)
    {
      goto LABEL_27;
    }
  }

  v60 = 0;
  v61 = v59;
  v163 = v58;
  while (2)
  {
    if (v60 >= *(v58 + 16))
    {
      goto LABEL_129;
    }

    v69 = *(v61 + 16);
    if (v60 == v69)
    {
      goto LABEL_40;
    }

    if (v60 >= v69)
    {
      goto LABEL_130;
    }

    v70 = *(v166 + 2 * v60);
    v71 = (v165 + 16 * v60);
    v72 = *v71;
    v73 = v71[1];
    v74 = CTFontCopyFullName(font);
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;

    Size = CTFontGetSize(font);
    v79 = CTFontCopyNameForGlyph(font, v70);
    if (!v79)
    {
      goto LABEL_68;
    }

    v80 = v79;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_68;
    }

    matrix[0].b = 0.0;
    matrix[0].a = 0.0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    b = matrix[0].b;
    if (!*&matrix[0].b)
    {
LABEL_68:
      v82 = 0.0;
      b = 0.0;
      goto LABEL_69;
    }

    v82 = matrix[0].a;
LABEL_69:
    SymbolicTraits = CTFontGetSymbolicTraits(font);
    *&v179.a = v75;
    v179.b = v77;
    v179.c = Size;
    *&v179.d = v172;
    v179.tx = v82;
    v179.ty = b;
    LOWORD(v180) = v70;
    HIDWORD(v180) = SymbolicTraits;
    v184 = v179;
    v185 = v180;
    v84 = v72;
    v85 = v73;
    *&v86 = (v45 + v84) * 0.013889;
    *(&v86 + 1) = (v46 + v85) * 0.013889;
    v173 = v86;
    v87 = v19;
    v88 = v19[2];
    v89 = v172;
    if (v88)
    {
      specialized __RawDictionaryStorage.find<A>(_:)(&v184.a);
      if (v90)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = v19;
        v93 = specialized __RawDictionaryStorage.find<A>(_:)(&v184.a);
        v94 = v19[2];
        v95 = (v92 & 1) == 0;
        v96 = v94 + v95;
        if (__OFADD__(v94, v95))
        {
          goto LABEL_136;
        }

        v97 = v92;
        if (v19[3] >= v96)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v92 & 1) == 0)
            {
              goto LABEL_118;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            if ((v97 & 1) == 0)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, isUniquelyReferenced_nonNull_native);
          v98 = specialized __RawDictionaryStorage.find<A>(_:)(&v184.a);
          if ((v97 & 1) != (v99 & 1))
          {
            break;
          }

          v93 = v98;
          if ((v97 & 1) == 0)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

        v125 = *(__src[0] + 56) + 72 * v93;
        v126 = *(v125 + 8);
        if (v126 == 0.0)
        {
          goto LABEL_118;
        }

        v152 = *v125;
        v155 = *(v125 + 24);
        v156 = *(v125 + 16);
        v127 = *(v125 + 32);
        v128 = *(v125 + 40);
        v129 = *(v125 + 56);
        v154 = *(v125 + 48);
        v130 = *(v125 + 64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
        }

        v132 = *(v130 + 2);
        v131 = *(v130 + 3);
        v153 = v129;
        if (v132 >= v131 >> 1)
        {
          v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, v130);
        }

        *(v130 + 2) = v132 + 1;
        *&v130[8 * v132 + 32] = v173;
        v168 = __src[0];
        v133 = (*(__src[0] + 56) + 72 * v93);
        *v133 = v152;
        v133[1] = v126;
        v133[2] = v156;
        v133[3] = v155;
        v133[4] = v127;
        v133[5] = v128;
        v134 = v128;
        v133[6] = v154;
        v133[7] = v153;
        *(v133 + 8) = v130;
        matrix[0].a = v152;
        matrix[0].b = v126;
        matrix[0].c = v156;
        matrix[0].d = v155;
        matrix[0].tx = v127;
        matrix[0].ty = v128;
        matrix[1].a = v154;
        matrix[1].b = v153;
        *&matrix[1].c = v130;
        outlined init with copy of ExtrudedGlyphDescriptor(matrix, __dst);
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v179);
        matrix[0].a = v152;
        matrix[0].b = v126;
        matrix[0].c = v156;
        matrix[0].d = v155;
        matrix[0].tx = v127;
        v19 = v168;
        matrix[0].ty = v134;
        matrix[1].a = v154;
        matrix[1].b = v153;
        *&matrix[1].c = v130;
        outlined destroy of BodyTrackingComponent?(matrix, &_s17RealityFoundation23ExtrudedGlyphDescriptorVSgMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorVSgMR);
        v7 = v158;
        v34 = v162;
        v58 = v163;
        v61 = v170;
        goto LABEL_59;
      }
    }

    CGAffineTransformMakeScale(__dst, 0.013888889, 0.013888889);
    matrix[0] = __dst[0];
    PathForGlyph = CTFontCreatePathForGlyph(font, v70, matrix);
    if (!PathForGlyph)
    {
      v103 = MEMORY[0x1E69E7CC0];
      if (!v172)
      {
        goto LABEL_98;
      }

LABEL_79:
      v104 = *(v103 + 16);
      if (!v104)
      {

        v106 = MEMORY[0x1E69E7CC0];
        goto LABEL_100;
      }

      v167 = v19;
      v175 = MEMORY[0x1E69E7CC0];
      v105 = v89;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v104, 0);
      v106 = v175;
      v107 = v104 - 1;
      for (i = 32; ; i += 520)
      {
        memcpy(matrix, (v103 + i), 0x208uLL);
        memcpy(__dst, (v103 + i), 0x208uLL);
        if (*&__dst[0].b)
        {
          break;
        }

        outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
        outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
        if (*&__dst[2].c)
        {
          goto LABEL_83;
        }

LABEL_84:
        if (*&__dst[4].d)
        {
          MeshDescriptor.setColor(_:)(v105);
        }

        if (*&__dst[6].tx)
        {
          MeshDescriptor.setColor(_:)(v105);
        }

        if (*&__dst[8].ty)
        {
          MeshDescriptor.setColor(_:)(v105);
        }

        outlined destroy of ExtrudedShapeDescriptor(matrix);
        memcpy(__src, __dst, sizeof(__src));
        v110 = *(v175 + 16);
        v109 = *(v175 + 24);
        if (v110 >= v109 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1);
        }

        *(v175 + 16) = v110 + 1;
        memcpy((v175 + 520 * v110 + 32), __src, 0x208uLL);
        if (!v107)
        {

          v7 = v158;
          v87 = v167;
          goto LABEL_100;
        }

        --v107;
      }

      outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
      outlined init with copy of ExtrudedShapeDescriptor(matrix, __src);
      MeshDescriptor.setColor(_:)(v105);
      if (!*&__dst[2].c)
      {
        goto LABEL_84;
      }

LABEL_83:
      MeshDescriptor.setColor(_:)(v105);
      goto LABEL_84;
    }

    v101 = PathForGlyph;
    v102 = extrude(path:options:)(PathForGlyph, &v181);
    if (v161)
    {

      v137 = v160;

      swift_bridgeObjectRelease_n();
      outlined destroy of ExtrudedGlyphDescriptor.Info(&v179);

      outlined destroy of MeshResource.ShapeExtrusionOptions(&v181);
      return v137;
    }

    v103 = v102;

    if (v172)
    {
      goto LABEL_79;
    }

LABEL_98:
    v106 = v103;
LABEL_100:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1C1887600;
    *(v111 + 32) = v173;
    outlined init with copy of ExtrudedGlyphDescriptor.Info(&v179, matrix);
    v112 = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v87;
    v113 = specialized __RawDictionaryStorage.find<A>(_:)(&v184.a);
    v115 = v87[2];
    v116 = (v114 & 1) == 0;
    v48 = __OFADD__(v115, v116);
    v117 = v115 + v116;
    if (v48)
    {
      goto LABEL_131;
    }

    v118 = v114;
    if (v87[3] >= v117)
    {
      if ((v112 & 1) == 0)
      {
        v135 = v113;
        specialized _NativeDictionary.copy()();
        v113 = v135;
      }

      goto LABEL_106;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v117, v112);
    v113 = specialized __RawDictionaryStorage.find<A>(_:)(&v184.a);
    if ((v118 & 1) == (v119 & 1))
    {
LABEL_106:
      __dst[0] = v179;
      __dst[1].a = v180;
      if (v118)
      {
        v19 = __src[0];
        v62 = *(__src[0] + 56) + 72 * v113;
        *&matrix[0].a = *v62;
        v64 = *(v62 + 32);
        v63 = *(v62 + 48);
        v65 = *(v62 + 16);
        matrix[1].c = *(v62 + 64);
        *&matrix[1].a = v63;
        *&matrix[0].c = v65;
        *&matrix[0].tx = v64;
        v66 = v180;
        v67 = *&v179.tx;
        v68 = *&v179.c;
        *v62 = *&v179.a;
        *(v62 + 16) = v68;
        *(v62 + 32) = v67;
        *(v62 + 48) = v66;
        *(v62 + 56) = v106;
        *(v62 + 64) = v111;
        outlined destroy of ExtrudedGlyphDescriptor(matrix);
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v179);
      }

      else
      {
        v19 = __src[0];
        *(__src[0] + 8 * (v113 >> 6) + 64) |= 1 << v113;
        v120 = v19[6] + 56 * v113;
        v121 = *&v184.c;
        *v120 = *&v184.a;
        *(v120 + 16) = v121;
        *(v120 + 32) = *&v184.tx;
        *(v120 + 48) = v185;
        v122 = v19[7] + 72 * v113;
        *v122 = __dst[0];
        *(v122 + 48) = __dst[1].a;
        *(v122 + 56) = v106;
        *(v122 + 64) = v111;
        v123 = v19[2];
        v48 = __OFADD__(v123, 1);
        v124 = v123 + 1;
        if (v48)
        {
          goto LABEL_135;
        }

        v19[2] = v124;
      }

      v34 = v162;
      v58 = v163;
      v61 = v170;
LABEL_59:
      if (++v60 == v164)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributedString.nsAttributedString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(v13 - v9, v1, v2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25AttributedStringConverter_pMd, &_s17RealityFoundation25AttributedStringConverter_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v13, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    swift_getDynamicType();
    v10 = (*(v15[4] + 8))();
    v11 = v10(v1);

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    outlined destroy of BodyTrackingComponent?(v13, &_s17RealityFoundation25AttributedStringConverter_pSgMd, &_s17RealityFoundation25AttributedStringConverter_pSgMR);
    type metadata accessor for NSAttributedString();
    (v8)(v5, v1, v2);
    return NSAttributedString.init(_:)();
  }
}

CTFrameRef AttributedString.createTextFrame(containerRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = AttributedString.nsAttributedString.getter();
    v2 = CTFramesetterCreateWithAttributedString(v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v4 = *MEMORY[0x1E69659E8];
    *(inited + 32) = *MEMORY[0x1E69659E8];
    v5 = *MEMORY[0x1E695E4C0];
    *(inited + 40) = *MEMORY[0x1E695E4C0];
    v6 = v5;
    v7 = v4;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMd, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
    lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27.width = 1.79769313e308;
    v25.location = 0;
    v25.length = 0;
    v27.height = 1.79769313e308;
    v9 = CTFramesetterSuggestFrameSizeWithConstraints(v2, v25, isa, v27, 0);
    width = v9.width;
    height = v9.height;

    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    width = *(a1 + 16);
    height = *(a1 + 24);
    v12 = *a1;
    v13 = *(a1 + 8);
    v7 = *MEMORY[0x1E69659E8];
    v6 = *MEMORY[0x1E695E4C0];
    v5 = *MEMORY[0x1E695E4C0];
    v4 = *MEMORY[0x1E69659E8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_So09CFBooleanE0aSgtGMR);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1C1887600;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  v15 = v7;
  v16 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(v14);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(v14 + 32, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMd, &_sSo11CFStringRefaSg_So09CFBooleanB0aSgtMR);
  v28.origin.x = v12;
  v28.origin.y = v13;
  v28.size.width = width;
  v28.size.height = height;
  v17 = CGPathCreateWithRect(v28, 0);
  v18 = AttributedString.nsAttributedString.getter();
  v19 = [v18 length];

  v20 = AttributedString.nsAttributedString.getter();
  v21 = CTFramesetterCreateWithAttributedString(v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12CFBooleanRefaSgMd, &_sSo12CFBooleanRefaSgMR);
  lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?();
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v26.location = 0;
  v26.length = v19;
  Frame = CTFramesetterCreateFrame(v21, v26, v17, v22);

  return Frame;
}

void ExtrudedGlyphDescriptor.Info.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v2);
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, protocol conformance descriptor for CGColorRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + 48));
  Hasher._combine(_:)(*(v1 + 52));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtrudedGlyphDescriptor.Info()
{
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtrudedGlyphDescriptor.Info()
{
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ExtrudedGlyphDescriptor.Info(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static ExtrudedGlyphDescriptor.Info.== infix(_:_:)(v5, v7);
}

void MeshResource.ShapeExtrusionOptions.ExtrusionMethod.scaled(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  if (!*(v2 + 8))
  {
    v7 = COERCE_UNSIGNED_INT(*&v4 * *&a2);
    goto LABEL_17;
  }

  if (v5 == 1)
  {
    v6 = *(v4 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
      goto LABEL_17;
    }

    v45 = MEMORY[0x1E69E7CC0];
    v42 = *&a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = v42;
    v9 = 0;
    v7 = v45;
    while (v9 < *(v4 + 16))
    {
      v10 = *(v4 + 32 + 16 * v9);
      v46 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        v40 = *(v4 + 32 + 16 * v9);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v10 = v40;
        v8 = v42;
        v7 = v46;
      }

      ++v9;
      *&v13 = vmulq_n_f32(v10, v8).u64[0];
      *(&v13 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v8, v10, 2));
      *(v7 + 16) = v12 + 1;
      *(v7 + 16 * v12 + 32) = v13;
      if (v6 == v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    LODWORD(v8) = vdupq_lane_s32(*&a2, 0).u32[0];
    if (one-time initialization token for identity == -1)
    {
      goto LABEL_12;
    }
  }

  v44 = v8;
  swift_once();
  v8 = v44;
LABEL_12:
  *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(0.0, *&zmmword_1C1887630[48], v8);
  v18 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v41 = v15;
    v43 = v14;
    v38 = v17;
    v39 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v38;
    v19 = v39;
    v22 = v41;
    v21 = v43;
    v23 = 0;
    v7 = v47;
    v24 = *(v47 + 16);
    v25 = v24 << 6;
    v26 = v4 + 48;
    do
    {
      v27 = *(v26 + v23 - 16);
      v28 = *(v26 + v23);
      v29 = *(v26 + v23 + 16);
      v30 = *(v26 + v23 + 32);
      v48 = v7;
      v31 = *(v7 + 24);
      v32 = v24 + 1;
      if (v24 >= v31 >> 1)
      {
        v36 = *(v26 + v23 + 16);
        v37 = *(v26 + v23 + 32);
        v34 = *(v26 + v23 - 16);
        v35 = *(v26 + v23);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v24 + 1, 1);
        v27 = v34;
        v28 = v35;
        v29 = v36;
        v30 = v37;
        v20 = v38;
        v19 = v39;
        v22 = v41;
        v21 = v43;
        v7 = v48;
      }

      *(v7 + 16) = v32;
      v33 = (v7 + v25 + v23);
      v33[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v27.f32[0]), v22, *v27.f32, 1), v19, v27, 2), v20, v27, 3);
      v33[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v28.f32[0]), v22, *v28.f32, 1), v19, v28, 2), v20, v28, 3);
      v33[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v29.f32[0]), v22, *v29.f32, 1), v19, v29, 2), v20, v29, 3);
      v33[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v30.f32[0]), v22, *v30.f32, 1), v19, v30, 2), v20, v30, 3);
      v23 += 64;
      v24 = v32;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *a1 = v7;
  *(a1 + 8) = v5;
}

uint64_t MeshDescriptor.setColor(_:)(void *a1)
{
  v2 = v1;
  v35._countAndFlagsBits = 0x6F43786574726576;
  v35._object = 0xEB00000000726F6CLL;
  v4 = specialized MeshBuffers.Identifier.BufferName.init(rawValue:)(v35) == 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1887600;
  v6 = a1;
  _ss5SIMD4V17RealityFoundationSBRzrlEyAByxGSo10CGColorRefacfCSf_Tt1g5Tf4g_n(v6);
  v18 = v7;

  *(v5 + 32) = v18;
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD4VySfG_AA05ArrayD0VyAJGTt1g5(v5, v34);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD4VySfGGMR);
  *(&v30[1] + 1) = v8;
  *&v30[2] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v30[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v34, v31, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  specialized Dictionary.subscript.setter(v30, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
  outlined destroy of BodyTrackingComponent?(v34, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGMR);
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6F43786574726576, 0xEB00000000726F6CLL, v4), (v11 & 1) != 0))
  {
    outlined init with copy of __REAssetService(*(v9 + 56) + 40 * v10, &v24);
    outlined init with take of ForceEffectBase(&v24, v31);
    v12 = *&v31[24];
    v13 = *&v31[32];
    __swift_project_boxed_opaque_existential_1(v31, *&v31[24]);
    v14 = *(v13 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    v14(v30, v15, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (*&v30[0])
    {
      LOBYTE(v30[5]) = 3;
      v26 = v30[2];
      v27 = v30[3];
      v28 = v30[4];
      v29 = 3;
      v24 = v30[0];
      v25 = v30[1];
      *v31 = *&v30[0];
      *&v31[24] = *(&v30[1] + 8);
      v32 = *(&v30[2] + 8);
      v33[0] = *(&v30[3] + 8);
      *(v33 + 9) = *(&v30[4] + 1);
      *&v31[8] = *(v30 + 8);
      v22 = v8;
      v23 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      v21[0] = swift_allocObject();

      outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      specialized Dictionary.subscript.setter(v21, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
      v16 = &v24;
      return outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    }
  }

  else
  {
    memset(v30, 0, 81);
  }

  v26 = v30[2];
  v27 = v30[3];
  v28 = v30[4];
  v29 = v30[5];
  v24 = v30[0];
  v25 = v30[1];
  if (*&v30[0])
  {
    *v31 = *&v30[0];
    *&v31[24] = *(&v30[1] + 8);
    v32 = *(&v30[2] + 8);
    v33[0] = *(&v30[3] + 8);
    *(v33 + 9) = *(&v30[4] + 1);
    *&v31[8] = *(v30 + 8);
    v22 = v8;
    v23 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
    v21[0] = swift_allocObject();
    outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);

    outlined init with copy of [String : String](&v24, v19, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
    _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
    specialized Dictionary.subscript.setter(v21, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
    outlined destroy of BodyTrackingComponent?(&v24, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
  }

  else
  {
    memset(v31, 0, sizeof(v31));
    specialized Dictionary.subscript.setter(v31, 0x6F43786574726576, 0xEB00000000726F6CLL, v4);
  }

  v19[2] = v30[2];
  v19[3] = v30[3];
  v19[4] = v30[4];
  v20 = v30[5];
  v19[0] = v30[0];
  v19[1] = v30[1];
  v16 = v19;
  return outlined destroy of BodyTrackingComponent?(v16, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMd, &_s17RealityFoundation10MeshBufferVys5SIMD4VySfGGSgMR);
}

BOOL specialized static ExtrudedGlyphDescriptor.Info.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 3))
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for CGColorRef(0);
    lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, protocol conformance descriptor for CGColorRef);
    v6 = v5;
    v7 = static _CFObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a1 + 5);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 4) != *(a2 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 48))
  {
    return *(a1 + 13) == *(a2 + 52);
  }

  return 0;
}

void specialized static ExtrudedGlyphDescriptor.compile(glyphs:)(uint64_t a1, __n128 a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_42;
  }

  v2 = 0;
  v45 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  v42 = *(a1 + 16);
  while (1)
  {
    v5 = (v45 + 72 * v2);
    v6 = v5[3];
    v7 = v5[7];
    v53 = v5[8];
    v54 = *(v53 + 16);
    if (v54)
    {
      break;
    }

    v30 = v5[7];

    v31 = v6;
LABEL_28:
    v32 = *(v30 + 16);
    v33 = *(v3 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v36 = *(v3 + 3) >> 1, v36 >= v34))
    {
      if (!*(v30 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v37, 1, v3);
      v36 = *(v3 + 3) >> 1;
      if (!*(v30 + 16))
      {
LABEL_3:

        if (v32)
        {
          goto LABEL_47;
        }

        goto LABEL_4;
      }
    }

    if (v36 - *(v3 + 2) < v32)
    {
      goto LABEL_50;
    }

    swift_arrayInitWithCopy();

    if (v32)
    {
      v38 = *(v3 + 2);
      v39 = __OFADD__(v38, v32);
      v40 = v38 + v32;
      if (v39)
      {
        goto LABEL_51;
      }

      *(v3 + 2) = v40;
    }

LABEL_4:
    ++v2;

    if (v2 == v42)
    {
      goto LABEL_43;
    }
  }

  v44 = v2;
  v8 = *(v3 + 2);
  v49 = *(v7 + 16);
  if (__OFADD__(v8, v49))
  {
    goto LABEL_48;
  }

  if ((v8 + v49) < v8)
  {
    goto LABEL_49;
  }

  v43 = v3;
  v9 = one-time initialization token for identity;
  v10 = v5[8];

  v11 = v6;

  swift_bridgeObjectRetain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v48 = v10 + 32;
  v12.n128_f64[0] = simd_matrix4x4(_PromotedConst_6);
  v15 = 0;
  v47 = v16;
  v46 = *(&v16 + 2) + 0.0;
  if (v8 <= 0x100000000)
  {
    v17 = 0x100000000;
  }

  else
  {
    v17 = v8;
  }

  v18 = v10;
  v19 = v8 + v49;
  v52 = v12;
  v50 = v14;
  v51 = v13;
  while (2)
  {
    if (v15 >= *(v18 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v8 == v19)
    {
LABEL_14:
      if (++v15 == v54)
      {

        v3 = v43;
        v2 = v44;
        v30 = v7;
        goto LABEL_28;
      }

      continue;
    }

    break;
  }

  if (v8 >= v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v20 = *(v48 + 8 * v15);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v19 = v8 + v49;
  v18 = v53;
  *&v21 = vadd_f32(*&v47, v20);
  *(&v21 + 1) = __PAIR64__(HIDWORD(v47), LODWORD(v46));
  v22 = v49;
  v23 = v8;
  a2 = v52;
  v25 = v50;
  v24 = v51;
  while (v17 != v23)
  {
    v27 = *(v4 + 2);
    v26 = *(v4 + 3);
    if (v27 >= v26 >> 1)
    {
      v41 = v21;
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v4);
      v21 = v41;
      v25 = v50;
      v24 = v51;
      a2 = v52;
      v4 = v29;
      v19 = v8 + v49;
      v18 = v53;
    }

    *(v4 + 2) = v27 + 1;
    v28 = &v4[80 * v27];
    *(v28 + 8) = v23;
    *(v28 + 3) = a2;
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
    *(v28 + 6) = v21;
    ++v23;
    if (!--v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
LABEL_43:
  specialized static ExtrudedShapeDescriptor.compile(shapes:instances:)(v3, v4, a2);
}

unint64_t lazy protocol witness table accessor for type CFStringRef? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo11CFStringRefaSgMd, &_sSo11CFStringRefaSgMR);
    v4[0] = lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info()
{
  result = lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info;
  if (!lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ExtrudedGlyphDescriptor.Info, &type metadata for ExtrudedGlyphDescriptor.Info, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ExtrudedGlyphDescriptor.Info and conformance ExtrudedGlyphDescriptor.Info);
  }

  return result;
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 7;
  for (i = 8; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 8 >= v6)
    {
      break;
    }

    if (v4 - 8 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 4 * i);
    v8 = *(v1 + 4 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    *(v1 + 4 * i) = v8;
    *(v1 + 4 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t extrude(path:options:)(const CGPath *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (fabsf(*(a2 + 56)) <= 0.000001)
  {
    v8 = 0;
  }

  else
  {
    v5 = a1;
    outlined init with copy of [String : String](a2 + 16, v56, &_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
    v6 = v57;
    if (!v57)
    {
      outlined destroy of BodyTrackingComponent?(v56, &_s17RealityFoundation15CGPathProviding_pSgMd, &_s17RealityFoundation15CGPathProviding_pSgMR);
      if (one-time initialization token for defaultChamferProfile != -1)
      {
        goto LABEL_42;
      }

      goto LABEL_6;
    }

    v7 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_7:
    a1 = v5;
  }

  v9 = spansFromCGPath(path:)(a1);
  correctCurveOrientation(curves:)(v9);
  v11 = v10;

  specialized classify<A>(subpaths:)(v11);
  v13 = v12;
  if (!v8)
  {
    v55 = 0;
    v56[0] = 0;

LABEL_35:
    MEMORY[0x1EEE9AC00](v39);
    v45[2] = v56;
    v45[3] = v4;
    v46 = v43;
    v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAF20PiecewiseBezierCurveAHLLVGG_AF08ExtrudedF10DescriptorVsAE_pTg5(partial apply for closure #2 in extrude(path:options:), v45, v13);

    goto LABEL_36;
  }

  v51 = v3;
  v52 = v11;
  v54 = v12;
  v55 = 0;
  v48 = *(v4 + 80) != 2;
  v56[0] = 0;
  v49 = v8;
  v50 = v4;
  v47 = *(v4 + 72);
  v53 = v8;
  v14 = spansFromCGPath(path:)(v53);
  v5 = *(v14 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    for (i = 0; v5 != i; i = (i + 1))
    {
      if (i >= *(v14 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
LABEL_6:
        v8 = defaultChamferProfile;
        goto LABEL_7;
      }

      v17 = *(v14 + 32 + 8 * i);
      v3 = *(v17 + 16);
      v4 = *(v15 + 2);
      v18 = v4 + v3;
      if (__OFADD__(v4, v3))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v15 + 3) >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 <= v18)
        {
          v20 = v4 + v3;
        }

        else
        {
          v20 = v4;
        }

        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v20, 1, v15);
        if (*(v17 + 16))
        {
LABEL_23:
          v21 = *(v15 + 2);
          if ((*(v15 + 3) >> 1) - v21 < v3)
          {
            goto LABEL_40;
          }

          memcpy(&v15[80 * v21 + 32], (v17 + 32), 80 * v3);

          if (v3)
          {
            v22 = *(v15 + 2);
            _VF = __OFADD__(v22, v3);
            v24 = v22 + v3;
            if (_VF)
            {
              goto LABEL_41;
            }

            *(v15 + 2) = v24;
          }

          continue;
        }
      }

      if (v3)
      {
        goto LABEL_39;
      }
    }
  }

  v25 = *(v15 + 2);
  if (!v25)
  {
    v38 = 0xD000000000000020;

    v28 = v53;

    v37 = "must span from (0, 0) to (1, 1)";
    goto LABEL_33;
  }

  v26 = (v15 + 40);
  v27 = vld1q_dup_f64(v26);
  v27.f64[0] = *(v15 + 4);
  v28 = v53;
  v13 = v54;
  if (sqrt(vaddvq_f64(vmulq_f64(v27, v27))) <= 0.000001)
  {
    v29 = &v15[80 * v25 + 32 + 16 * v15[80 * v25 + 16]];
    v30 = (v29 - 56);
    v31 = vld1q_dup_f64(v30);
    v31.f64[0] = *(v29 - 64);
    __asm { FMOV            V1.2D, #-1.0 }

    v36 = vaddq_f64(v31, _Q1);
    if (sqrt(vaddvq_f64(vmulq_f64(v36, v36))) <= 0.000001)
    {

      v55 = MEMORY[0x1E69E7CC0];
      v56[0] = MEMORY[0x1E69E7CC0];
      trace(path:points:tangents:uniformSegmentsPerSpan:)(v15, v56, &v55, v47, MEMORY[0x1E69E7CC0], v42);

      v4 = v50;
      v8 = v49;
      goto LABEL_35;
    }
  }

  v37 = " path cannot be a symbolic link";
  v38 = 0xD00000000000002FLL;
LABEL_33:
  v40 = v37 | 0x8000000000000000;
  lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
  swift_allocError();
  *v41 = v38;
  *(v41 + 8) = v40;
  *(v41 + 16) = 0;
  swift_willThrow();

LABEL_36:

  return v40;
}

char *ExtrudedShapeDescriptor.allDescriptors.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[26];
  v6 = v0[27];
  v7 = *(v0 + 17);
  v103 = *(v0 + 16);
  v104 = v7;
  v105 = *(v0 + 18);
  v66 = v0[39];
  v67 = v3;
  v106 = v0[38];
  v8 = *(v0 + 15);
  v101 = *(v0 + 14);
  v102 = v8;
  v65 = v0[40];
  v9 = v0[52];
  v112 = v0[51];
  v10 = *(v0 + 49);
  v110 = *(v0 + 47);
  v111 = v10;
  v11 = *(v0 + 45);
  v108 = *(v0 + 43);
  v109 = v11;
  v107 = *(v0 + 41);
  v12 = v0[53];
  v13 = *(v0 + 28);
  v113 = *(v0 + 27);
  v114 = v13;
  v14 = *(v0 + 29);
  v15 = *(v0 + 30);
  v16 = *(v0 + 31);
  v118 = v0[64];
  v116 = v15;
  v117 = v16;
  v115 = v14;
  if (v2)
  {
    v63 = v6;
    v64 = v9;
    v17 = v5;
    v69 = v1;
    v70 = v2;
    v18 = *(v0 + 3);
    v19 = *(v0 + 5);
    v74 = *(v0 + 4);
    v75 = v19;
    v76 = v0[12];
    v20 = *(v0 + 2);
    v71 = *(v0 + 1);
    v72 = v20;
    v73 = v18;
    outlined init with copy of MeshDescriptor(&v69, v68);
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[104 * v23];
    *(v24 + 4) = v1;
    *(v24 + 5) = v2;
    v25 = *(v0 + 4);
    *(v24 + 5) = *(v0 + 3);
    *(v24 + 6) = v25;
    *(v24 + 7) = *(v0 + 5);
    *(v24 + 16) = v0[12];
    v26 = *(v0 + 2);
    *(v24 + 3) = *(v0 + 1);
    *(v24 + 4) = v26;
    v27 = v17;
    v6 = v63;
    v9 = v64;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    v27 = v5;
  }

  v28 = *(v0 + 21);
  v97 = *(v0 + 19);
  v98 = v28;
  v99 = *(v0 + 23);
  v100 = v0[25];
  v29 = *(v0 + 17);
  v95 = *(v0 + 15);
  v96 = v29;
  v30 = v12;
  if (v4)
  {
    v69 = v67;
    v70 = v4;
    v31 = *(v0 + 19);
    v32 = *(v0 + 23);
    v74 = *(v0 + 21);
    v75 = v32;
    v76 = v0[25];
    v71 = *(v0 + 15);
    v72 = *(v0 + 17);
    v73 = v31;
    outlined init with copy of MeshDescriptor(&v69, v68);
    v33 = v65;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v35 = *(v21 + 2);
    v34 = *(v21 + 3);
    if (v35 >= v34 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v21);
    }

    *(v21 + 2) = v35 + 1;
    v36 = &v21[104 * v35];
    *(v36 + 4) = v67;
    *(v36 + 5) = v4;
    v37 = v96;
    *(v36 + 3) = v95;
    *(v36 + 4) = v37;
    v38 = v97;
    v39 = v98;
    v40 = v99;
    *(v36 + 16) = v100;
    *(v36 + 6) = v39;
    *(v36 + 7) = v40;
    *(v36 + 5) = v38;
  }

  else
  {
    v33 = v65;
  }

  v91 = v109;
  v92 = v110;
  v93 = v111;
  v94 = v112;
  v89 = v107;
  v90 = v108;
  if (v33)
  {
    v69 = v66;
    v70 = v33;
    v74 = v110;
    v75 = v111;
    v76 = v112;
    v71 = v107;
    v72 = v108;
    v73 = v109;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
    }

    *(v21 + 2) = v42 + 1;
    v43 = &v21[104 * v42];
    *(v43 + 4) = v66;
    *(v43 + 5) = v33;
    v44 = v90;
    *(v43 + 3) = v89;
    *(v43 + 4) = v44;
    v45 = v91;
    v46 = v92;
    v47 = v93;
    *(v43 + 16) = v94;
    *(v43 + 6) = v46;
    *(v43 + 7) = v47;
    *(v43 + 5) = v45;
  }

  v85 = v115;
  v86 = v116;
  v87 = v117;
  v88 = v118;
  v83 = v113;
  v84 = v114;
  if (v30)
  {
    v69 = v9;
    v70 = v30;
    v74 = v116;
    v75 = v117;
    v76 = v118;
    v71 = v113;
    v72 = v114;
    v73 = v115;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    if (v49 >= v48 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v49 + 1;
    v50 = &v21[104 * v49];
    *(v50 + 4) = v9;
    *(v50 + 5) = v30;
    v51 = v84;
    *(v50 + 3) = v83;
    *(v50 + 4) = v51;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    *(v50 + 16) = v88;
    *(v50 + 6) = v53;
    *(v50 + 7) = v54;
    *(v50 + 5) = v52;
  }

  v79 = v103;
  v80 = v104;
  v81 = v105;
  v82 = v106;
  v77 = v101;
  v78 = v102;
  if (v6)
  {
    v69 = v27;
    v70 = v6;
    v74 = v104;
    v75 = v105;
    v76 = v106;
    v71 = v101;
    v72 = v102;
    v73 = v103;
    outlined init with copy of MeshDescriptor(&v69, v68);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v56 = *(v21 + 2);
    v55 = *(v21 + 3);
    if (v56 >= v55 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v21);
    }

    *(v21 + 2) = v56 + 1;
    v57 = &v21[104 * v56];
    *(v57 + 4) = v27;
    *(v57 + 5) = v6;
    v58 = v78;
    *(v57 + 3) = v77;
    *(v57 + 4) = v58;
    v59 = v79;
    v60 = v80;
    v61 = v81;
    *(v57 + 16) = v82;
    *(v57 + 6) = v60;
    *(v57 + 7) = v61;
    *(v57 + 5) = v59;
  }

  return v21;
}

BOOL PathSpan.isZeroLength.getter()
{
  v1 = *(v0 + 16);
  v2 = vsubq_f64(*v0, v1);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (!*(v0 + 64))
  {
    return v3 <= 0.000001;
  }

  v4 = *(v0 + 32);
  if (*(v0 + 64) == 1)
  {
    if (v3 > 0.000001)
    {
      return 0;
    }

    v6 = vsubq_f64(v1, v4);
  }

  else
  {
    if (v3 > 0.000001)
    {
      return 0;
    }

    v7 = vsubq_f64(v1, v4);
    if (sqrt(vaddvq_f64(vmulq_f64(v7, v7))) > 0.000001)
    {
      return 0;
    }

    v6 = vsubq_f64(v4, *(v0 + 48));
  }

  return sqrt(vaddvq_f64(vmulq_f64(v6, v6))) <= 0.000001;
}

float64_t PathSpan.tangent(at:)(double a1)
{
  if (*(v1 + 64))
  {
    if (*(v1 + 64) == 1)
    {
      geom_quadratic_bezier_tangent_at_2d();
    }

    else
    {
      geom_cubic_bezier_tangent_at_2d();
    }
  }

  else
  {
    v2 = vsubq_f64(*(v1 + 16), *v1);
  }

  v3 = sqrt(vaddvq_f64(vmulq_f64(v2, v2)));
  if (fabs(v3) > 0.000001)
  {
    *&v2.f64[0] = *&vdivq_f64(v2, vdupq_lane_s64(*&v3, 0));
  }

  return v2.f64[0];
}

double specialized Polygon.signedArea()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 48);
  result = 0.0;
  do
  {
    _Q1 = vdupq_n_s64(v2[1]);
    if (*(v2 + 48))
    {
      _Q2 = vdupq_n_s64(v2[3]);
      if (*(v2 + 48) == 1)
      {
        _D4 = *(v2 - 2);
        _D6 = *v2;
        __asm { FMLA            D3, D4, V1.D[1] }

        v15 = result + _D3;
        __asm { FMLA            D1, D6, V2.D[1] }
      }

      else
      {
        v17 = (v2 + 5);
        _Q4 = vld1q_dup_f64(v17);
        _D5 = *(v2 - 2);
        _D7 = *v2;
        __asm { FMLA            D3, D5, V1.D[1] }

        v22 = result + _D3;
        _D3 = v2[2];
        __asm { FMLA            D5, D7, V2.D[1] }

        v15 = v22 + _D5;
        __asm { FMLA            D1, D3, V4.D[1] }
      }

      result = v15 + _D1;
    }

    else
    {
      _D2 = *(v2 - 2);
      __asm { FMLA            D3, D2, V1.D[1] }

      result = result + _D3;
    }

    v2 += 10;
    --v1;
  }

  while (v1);
  return result;
}

void specialized Polygon.testInside(point:)(uint64_t a1, float64x2_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a2;
  v4 = 0;
  v5 = a2.f64[1];
  for (i = a1 + 48; !*(i + 48); i += 80)
  {
    v13 = *(i - 16);
    v14 = *i;
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(v3, v13))).i32[1])
    {
      if (v14.f64[1] > v5)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v14, v13, v3) > 0.0)
      {
        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      if (v5 >= v14.f64[1])
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v13, v14, v3) > 0.0)
      {
        v12 = __OFADD__(v4++, 1);
        if (v12)
        {
          goto LABEL_77;
        }
      }
    }

LABEL_3:
    v3 = a2;
LABEL_4:
    if (!--v2)
    {
      return;
    }
  }

  v8 = *(i + 16);
  v7 = *(i + 24);
  if (*(i + 48) == 1)
  {
    v9 = *(i - 16);
    v10 = *i;
    v11 = *(i + 8);
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(v3, v9))).i32[1])
    {
      if (v10.f64[1] > v5)
      {
        goto LABEL_29;
      }

      v23 = *i;
      if (_simd_orient_pd2(v10, v9, v3) > 0.0)
      {
        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v5 >= v10.f64[1])
      {
        goto LABEL_29;
      }

      v23 = *i;
      if (_simd_orient_pd2(v9, v10, v3) > 0.0)
      {
        v12 = __OFADD__(v4++, 1);
        if (v12)
        {
          goto LABEL_75;
        }
      }
    }

    v10 = v23;
    v3 = a2;
LABEL_29:
    v19.f64[0] = v8;
    v19.f64[1] = v7;
    if (v11 <= v5)
    {
      if (v5 >= v7)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v10, v19, v3) > 0.0)
      {
        v12 = __OFADD__(v4++, 1);
        if (v12)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      if (v7 > v5)
      {
        goto LABEL_4;
      }

      if (_simd_orient_pd2(v19, v10, v3) > 0.0)
      {
        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_81;
        }
      }
    }

    goto LABEL_3;
  }

  v15 = *(i - 16);
  v16 = *i;
  v17 = *(i + 32);
  v18 = *(i + 8);
  v24 = v17;
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(v3, v15))).i32[1])
  {
    if (v16.f64[1] > v5)
    {
      goto LABEL_44;
    }

    v21 = *i;
    if (_simd_orient_pd2(v16, v15, v3) > 0.0)
    {
      v12 = __OFSUB__(v4--, 1);
      if (v12)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_43;
  }

  if (v5 >= v16.f64[1])
  {
    goto LABEL_44;
  }

  v21 = *i;
  if (_simd_orient_pd2(v15, v16, v3) <= 0.0 || (v12 = __OFADD__(v4, 1), ++v4, !v12))
  {
LABEL_43:
    v17 = v24;
    v3 = a2;
    v16 = v21;
LABEL_44:
    v20.f64[0] = v8;
    v20.f64[1] = v7;
    if (v18 <= v5)
    {
      if (v5 >= v7)
      {
        goto LABEL_61;
      }

      v22 = v20;
      if (_simd_orient_pd2(v16, v20, v3) > 0.0)
      {
        v12 = __OFADD__(v4++, 1);
        v17 = v24;
        if (v12)
        {
          goto LABEL_83;
        }

LABEL_58:
        v3 = a2;
LABEL_60:
        v20 = v22;
LABEL_61:
        if (v7 <= v5)
        {
          if (v5 >= v17.f64[1])
          {
            goto LABEL_4;
          }

          if (_simd_orient_pd2(v20, v17, v3) > 0.0)
          {
            v12 = __OFADD__(v4++, 1);
            if (v12)
            {
              __break(1u);
              return;
            }
          }
        }

        else
        {
          if (v17.f64[1] > v5)
          {
            goto LABEL_4;
          }

          if (_simd_orient_pd2(v17, v20, v3) > 0.0)
          {
            v12 = __OFSUB__(v4--, 1);
            if (v12)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_3;
      }
    }

    else
    {
      if (v7 > v5)
      {
        goto LABEL_61;
      }

      v22 = v20;
      if (_simd_orient_pd2(v20, v16, v3) > 0.0)
      {
        v12 = __OFSUB__(v4--, 1);
        v17 = v24;
        if (v12)
        {
          goto LABEL_82;
        }

        goto LABEL_58;
      }
    }

    v17 = v24;
    v3 = a2;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(uint64_t a1, uint64_t a2, char **a3)
{

  collection_u = geom_create_collection_u();
  triangulateByEarClipping(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)();
  v5 = collection_u;
  v21[0] = collection_u;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828, MEMORY[0x1E69A2808]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v23 != v22 || (v6 = *(a1 + 16)) == 0)
  {
    v17 = collection_u;
    v18 = geom_collection_size_u();
    if (v18)
    {
      v19 = v18;
      v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1gq5(v18, 0);
      v20 = specialized Sequence._copySequenceContents(initializing:)(v21, (v7 + 32), v19);

      if (v20 != v19)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_25:
      *a3 = v7;
      return;
    }

LABEL_24:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  if (v6 > 0x100000000)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v6 == 2)
  {

    goto LABEL_24;
  }

  if (v6 != 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    if ((v6 - 1) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 - 1;
    }

    v9 = v8 - 1;
    v10 = 2;
    while (v9)
    {
      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v13 = v11 >> 1;
      v14 = v12 + 1;
      if (v11 >> 1 <= v12)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
        v11 = *(v7 + 3);
        v13 = v11 >> 1;
      }

      *(v7 + 2) = v14;
      *&v7[4 * v12 + 32] = 0;
      v15 = v12 + 2;
      if (v13 < (v12 + 2))
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 2, 1, v7);
      }

      *(v7 + 2) = v15;
      *&v7[4 * v14 + 32] = v10 - 1;
      v16 = *(v7 + 3);
      if ((v12 + 3) > (v16 >> 1))
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v12 + 3, 1, v7);
      }

      *(v7 + 2) = v12 + 3;
      *&v7[4 * v15 + 32] = v10;
      --v9;
      if (v6 == ++v10)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
}

uint64_t spansFromCGPath(path:)(const CGPath *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMR);
  v3 = swift_allocObject();
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 32) = v5;
  v20[0] = 0;
  v20[1] = 0;
  v21 = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v20;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in spansFromCGPath(path:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_56;
  v8 = _Block_copy(aBlock);

  CGPathApplyWithBlock(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  isEscapingClosureAtFileLocation = *v4;
  v10 = *(*v4 + 16);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(*(isEscapingClosureAtFileLocation + 8 * v10 + 24) + 16))
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v12 = *(isEscapingClosureAtFileLocation + 16);
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
  isEscapingClosureAtFileLocation = result;
  v12 = *(result + 16);
  if (v12)
  {
LABEL_6:
    *(isEscapingClosureAtFileLocation + 16) = v12 - 1;
    *v4 = isEscapingClosureAtFileLocation;
    swift_endAccess();

    isEscapingClosureAtFileLocation = *v4;
    v10 = *(*v4 + 16);
    if (!v10)
    {

      return MEMORY[0x1E69E7CC0];
    }

LABEL_7:
    v18 = v5;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v13 = 32;
    v14 = v18;
    do
    {
      v15 = *(isEscapingClosureAtFileLocation + v13);
      v16 = *(v18 + 16);
      v17 = *(v18 + 24);

      if (v16 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
      }

      *(v18 + 16) = v16 + 1;
      *(v18 + 8 * v16 + 32) = v15;
      v13 += 8;
      --v10;
    }

    while (v10);

    return v14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void closure #1 in spansFromCGPath(path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if ((*(a2 + 16) & 1) == 0)
  {
    if (v6 < 2)
    {
      v9 = 1;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      v26 = *v7;
      v27 = v7[1];
      *&v29 = *a2;
      *(&v29 + 1) = v8;
      v30 = v26;
      v31 = v27;
      v13 = 1;
      v14 = 2;
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_8;
      }

      v10 = *v7;
      v11 = v7[1];
      v12 = v7[2];
      *&v29 = *a2;
      *(&v29 + 1) = v8;
      v30 = v10;
      v31 = v11;
      v32 = v12;
      v13 = 2;
      v14 = 3;
    }

    v33 = v13;
    closure #1 in closure #1 in spansFromCGPath(path:)(&v29, a3);
    goto LABEL_28;
  }

  if (v6 != 4)
  {
    v9 = 1;
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
  if (v6 == 4)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_13:
    swift_beginAccess();
    v15 = *(a3 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v15 + 8 * v16 + 24);
      v18 = *(v17 + 16);
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = *(v17 + 32);
      v20 = vsubq_f64(v19, *(v17 + 80 * v18 + 16 * *(v17 + 80 * v18 + 16) - 32));
      if (sqrt(vaddvq_f64(vmulq_f64(v20, v20))) > 0.000001)
      {
        v29 = *(v17 + 80 * v18 + 16 * *(v17 + 80 * v18 + 16) - 32);
        v30 = v19;
        v33 = 0;
        closure #1 in closure #1 in spansFromCGPath(path:)(&v29, a3);
      }

      swift_beginAccess();
      v3 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v3;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_18:
        v23 = v3[2];
        v22 = v3[3];
        if (v23 >= v22 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v3);
        }

        v3[2] = v23 + 1;
        v3[v23 + 4] = MEMORY[0x1E69E7CC0];
        *(a3 + 16) = v3;
        swift_endAccess();
LABEL_21:
        v14 = 1;
        if (!v9)
        {
LABEL_22:
          v24 = 0uLL;
LABEL_29:
          *a2 = v24;
          *(a2 + 16) = v14;
          return;
        }

LABEL_28:
        f64 = v7[v14].f64;
        LOBYTE(v14) = 0;
        v24 = *(f64 - 1);
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(a3 + 16) = v3;
    goto LABEL_18;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    v25 = *v7;
    *&v29 = *a2;
    *(&v29 + 1) = v8;
    v30 = v25;
    v33 = 0;
    closure #1 in closure #1 in spansFromCGPath(path:)(&v29, a3);
    v14 = 1;
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in spansFromCGPath(path:)(uint64_t a1, uint64_t a2)
{
  result = PathSpan.isZeroLength.getter();
  if (result)
  {
    return result;
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = v7[2];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  *(a2 + 16) = v7;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v8 > v7[2])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v7 + 3;
  v2 = v7[v8 + 3];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v7[v8 + 3] = v2;
  if ((v10 & 1) == 0)
  {
LABEL_13:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    v3[v8] = v2;
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v2);
    v3[v8] = v2;
  }

  *(v2 + 2) = v12 + 1;
  v13 = &v2[80 * v12];
  *(v13 + 2) = *a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v13[96] = *(a1 + 64);
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  *(v13 + 3) = v14;
  *(a2 + 16) = v7;
  return swift_endAccess();
}

void correctCurveOrientation(curves:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v68 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = 0;
    v5 = v68;
    v6 = a1 + 32;
    v7 = vdupq_n_s64(0x7FF0000000000000uLL);
    v8 = vdupq_n_s64(0xFFF0000000000000);
    do
    {
      v9 = *(v6 + 8 * v4);
      v10 = *(v9 + 16);
      v11 = v8;
      v12 = v7;
      if (v10)
      {
        v13 = (v9 + 96);
        v11 = v8;
        v12 = v7;
        do
        {
          v15 = v13[-4];
          v14 = v13[-3];
          if (LOBYTE(v13->f64[0]))
          {
            v16 = v13[-2];
            if (LOBYTE(v13->f64[0]) == 1)
            {
              v12 = vminnmq_f64(vminnmq_f64(v12, vminnmq_f64(v15, v14)), vminnmq_f64(v14, v16));
              v11 = vmaxnmq_f64(vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14)), vmaxnmq_f64(v14, v16));
            }

            else
            {
              v17 = v13[-1];
              v12 = vminnmq_f64(vminnmq_f64(vminnmq_f64(v12, vminnmq_f64(v15, v14)), vminnmq_f64(v14, v16)), vminnmq_f64(v16, v17));
              v11 = vmaxnmq_f64(vmaxnmq_f64(vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14)), vmaxnmq_f64(v14, v16)), vmaxnmq_f64(v16, v17));
            }
          }

          else
          {
            v12 = vminnmq_f64(v12, vminnmq_f64(v15, v14));
            v11 = vmaxnmq_f64(v11, vmaxnmq_f64(v15, v14));
          }

          v13 += 5;
          --v10;
        }

        while (v10);
      }

      v69 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v59 = v8;
        v61 = v7;
        v55 = v12;
        v57 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v12 = v55;
        v11 = v57;
        v8 = v59;
        v7 = v61;
        v5 = v69;
      }

      ++v4;
      *(v5 + 16) = v20;
      v21 = (v5 + 32 * v19);
      v21[2] = v12;
      v21[3] = v11;
    }

    while (v4 != v1);
    if (v1 == 1)
    {
      v22 = 0;
LABEL_25:

      if (v22 >= v1)
      {
        goto LABEL_60;
      }

      if (specialized Polygon.signedArea()(*(v6 + 8 * v22)) >= 0.0)
      {

        return;
      }

      v60 = a1 + 32;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v27 = 0;
      v28 = v2;
      v58 = v1;
      while (v27 != v1)
      {
        v62 = v28;
        v29 = *(v60 + 8 * v27);
        v30 = *(v29 + 16);
        if (v30)
        {
          v70 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
          v31 = v70;
          v32 = (v29 + 96);
          do
          {
            v33 = *(v32 - 4);
            v34 = *(v32 - 3);
            v35 = *v32;
            if (*v32)
            {
              v36 = *(v32 - 2);
              if (v35 == 1)
              {
                v37 = *(v32 - 2);
                v36 = *(v32 - 3);
                v34 = *(v32 - 4);
              }

              else
              {
                v37 = *(v32 - 1);
              }
            }

            else
            {
              v37 = *(v32 - 3);
              v36 = *(v32 - 4);
            }

            v39 = *(v70 + 16);
            v38 = *(v70 + 24);
            v40 = v39 + 1;
            if (v39 >= v38 >> 1)
            {
              v54 = v34;
              v56 = *(v32 - 4);
              v52 = v37;
              v53 = v36;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
              v37 = v52;
              v36 = v53;
              v34 = v54;
              v33 = v56;
            }

            v32 += 80;
            *(v70 + 16) = v40;
            v41 = v70 + 80 * v39;
            *(v41 + 32) = v37;
            *(v41 + 48) = v36;
            *(v41 + 64) = v34;
            *(v41 + 80) = v33;
            *(v41 + 96) = v35;
            --v30;
          }

          while (v30);
        }

        else
        {

          v31 = MEMORY[0x1E69E7CC0];
          v40 = *(MEMORY[0x1E69E7CC0] + 16);
        }

        if (v40 >= 2)
        {
          v44 = 0;
          v45 = v40 >> 1;
          v46 = v40 - 1;
          v47 = 80 * v40 - 48;
          v48 = 32;
          do
          {
            if (v44 != v46)
            {
              v51 = *(v31 + 2);
              if (v44 >= v51)
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v63 = *&v31[v48];
              v67 = v31[v48 + 64];
              v65 = *&v31[v48 + 32];
              v66 = *&v31[v48 + 48];
              v64 = *&v31[v48 + 16];
              if (v46 >= v51)
              {
                goto LABEL_56;
              }

              v71 = *&v31[v47];
              v75 = v31[v47 + 64];
              v73 = *&v31[v47 + 32];
              v74 = *&v31[v47 + 48];
              v72 = *&v31[v47 + 16];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
              }

              v49 = &v31[v48];
              *v49 = v71;
              v49[64] = v75;
              *(v49 + 2) = v73;
              *(v49 + 3) = v74;
              *(v49 + 1) = v72;
              v50 = &v31[v47];
              v50[64] = v67;
              *(v50 + 2) = v65;
              *(v50 + 3) = v66;
              *(v50 + 1) = v64;
              *v50 = v63;
            }

            ++v44;
            --v46;
            v47 -= 80;
            v48 += 80;
          }

          while (v45 != v44);
        }

        v1 = v58;
        v28 = v62;
        v43 = *(v62 + 16);
        v42 = *(v62 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v28 = v62;
        }

        ++v27;
        *(v28 + 16) = v43 + 1;
        *(v28 + 8 * v43 + 32) = v31;
        if (v27 == v58)
        {
          return;
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v1 > v20)
      {
LABEL_62:
        __break(1u);
        return;
      }

      v22 = 0;
      v23 = (v5 + 72);
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      v25 = 1;
      while (1)
      {
        if (!v24)
        {
          goto LABEL_57;
        }

        if (v22 > v19)
        {
          break;
        }

        v26 = *v23;
        v23 += 4;
        if (v26 < *(v5 + 40 + 32 * v22))
        {
          v22 = v25;
        }

        ++v25;
        --v24;
        if (v1 == v25)
        {
          goto LABEL_25;
        }
      }

LABEL_58:
      __break(1u);
    }

    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }
}

void specialized classify<A>(subpaths:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v1 = 0;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v2 = 0.000001;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *(v4 + 8 * v1);
      v47 = *(*&v8 + 16);
      if (v47)
      {
        v48 = *&v8 + 48;
        v49 = 0.0;
        do
        {
          v56 = *(v48 + 8);
          if (*(v48 + 48))
          {
            v57 = *(v48 + 24);
            if (*(v48 + 48) == 1)
            {
              _Q2 = vdupq_n_s64(v57);
              _D3 = *(v48 - 16);
              _D4 = vdupq_n_s64(v56).i64[1];
              _D5 = *v48;
              __asm { FMLA            D0, D3, V1.D[1] }

              v63 = v49 + _D0;
              __asm { FMLA            D1, D5, V2.D[1] }
            }

            else
            {
              v65 = (v48 + 40);
              _Q1 = vdupq_n_s64(v56);
              _Q2 = vdupq_n_s64(v57);
              _Q3 = vld1q_dup_f64(v65);
              _D4 = *(v48 - 16);
              _D6 = *v48;
              __asm { FMLA            D0, D4, V1.D[1] }

              _D4 = *(v48 + 16);
              __asm { FMLA            D5, D6, V2.D[1] }

              v63 = v49 + _D0 + _D5;
              __asm { FMLA            D1, D4, V3.D[1] }
            }

            v49 = v63 + _D1;
          }

          else
          {
            _Q1 = vdupq_n_s64(v56);
            _D2 = *(v48 - 16);
            __asm { FMLA            D0, D2, V1.D[1] }

            v49 = v49 + _D0;
          }

          v48 += 80;
          --v47;
        }

        while (v47);
        if (fabs(v49) > v2)
        {

          if (v49 <= 0.0)
          {
            v46 = v5;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v15 = v6;
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
            }

            v12 = *(v15 + 2);
            v74 = *(v15 + 3);
            v16 = *&v12 + 1;
            if (*&v12 >= v74 >> 1)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), *&v12 + 1, 1, v15);
            }

            v6 = v15;
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v15 = v5;
            }

            else
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
            }

            v12 = *(v15 + 2);
            v17 = *(v15 + 3);
            v16 = *&v12 + 1;
            if (*&v12 >= v17 >> 1)
            {
              goto LABEL_124;
            }

            v46 = v15;
          }

LABEL_125:
          *(v15 + 2) = v16;
          *&v15[8 * *&v12 + 32] = v8;
          v5 = v46;
        }
      }

      ++v1;
    }

    while (v1 != v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC0];
  }

  v76 = v5;
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = COERCE_DOUBLE(static Array._allocateBufferUninitialized(minimumCapacity:)());
    *(*&v8 + 16) = v7;
    bzero((*&v8 + 32), v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v76;
  v10 = *(v76 + 2);
  if (v10)
  {
    v11 = 0;
    v12 = *(v6 + 2);
    v13 = *&v8 + 32;
    v14 = v6 + 32;
    v78 = MEMORY[0x1E69E7CC0];
    v79 = v6;
    v82 = v12;
    v83 = v8;
    v75 = *(v76 + 2);
    v80 = v6 + 32;
    v81 = *&v8 + 32;
    while (v11 < *(v9 + 2))
    {
      v77 = v11;
      v4 = *&v76[8 * v11 + 32];

      if (v12 != 0.0)
      {

        v16 = 0;
        v3 = MEMORY[0x1E69E7CC0];
        v84 = v4;
        while (1)
        {
          v17 = *(*&v8 + 16);
          if (v16 >= v17)
          {
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16, 1, v15);
            v46 = v15;
            goto LABEL_125;
          }

          if (*(v13 + v16))
          {
            goto LABEL_13;
          }

          v17 = *(v6 + 2);
          if (v16 >= v17)
          {
            goto LABEL_121;
          }

          v18 = *&v14[8 * v16];
          v17 = *(v18 + 16);
          if (!v17)
          {
            goto LABEL_122;
          }

          v91 = *(v18 + 32);
          specialized Polygon.testInside(point:)(v4, v91);
          if ((v19 & 1) == 0)
          {
            goto LABEL_13;
          }

          v85 = v3;
          v6 = *(v3 + 2);
          if (!v6)
          {
            goto LABEL_94;
          }

          v20 = 0;
          v3 += 32;
          v2 = v91.f64[1];
          while (2)
          {
            v21 = *&v3[8 * v20];
            v4 = *(v21 + 16);
            if (!v4)
            {
              goto LABEL_22;
            }

            v22 = 0;
            v1 = v21 + 48;
            do
            {
              if (*(v1 + 48))
              {
                v12 = *(v1 + 16);
                v8 = *(v1 + 24);
                if (*(v1 + 48) == 1)
                {
                  v23 = *(v1 - 16);
                  v24 = *v1;
                  v25 = *(v1 + 8);
                  if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v91, v23))).i32[1])
                  {
                    if (v24.f64[1] <= v91.f64[1])
                    {
                      v89 = *v1;
                      if (_simd_orient_pd2(v24, v23, v91) > 0.0)
                      {
                        _VF = __OFSUB__(v22--, 1);
                        if (_VF)
                        {
                          goto LABEL_109;
                        }
                      }

                      goto LABEL_49;
                    }
                  }

                  else if (v91.f64[1] < v24.f64[1])
                  {
                    v89 = *v1;
                    if (_simd_orient_pd2(v23, v24, v91) > 0.0)
                    {
                      _VF = __OFADD__(v22++, 1);
                      if (_VF)
                      {
                        goto LABEL_110;
                      }
                    }

LABEL_49:
                    v24 = v89;
                  }

                  v33.f64[0] = v12;
                  v33.f64[1] = v8;
                  if (v25 <= v91.f64[1])
                  {
                    if (v91.f64[1] < v8 && _simd_orient_pd2(v24, v33, v91) > 0.0)
                    {
                      _VF = __OFADD__(v22++, 1);
                      if (_VF)
                      {
                        goto LABEL_114;
                      }
                    }
                  }

                  else if (v8 <= v91.f64[1] && _simd_orient_pd2(v33, v24, v91) > 0.0)
                  {
                    _VF = __OFSUB__(v22--, 1);
                    if (_VF)
                    {
                      goto LABEL_115;
                    }
                  }

                  goto LABEL_25;
                }

                v29 = *(v1 - 16);
                v30 = *v1;
                v31 = *(v1 + 32);
                v32 = *(v1 + 8);
                v90 = v31;
                if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v91, v29))).i32[1])
                {
                  if (v30.f64[1] <= v91.f64[1])
                  {
                    v87 = *v1;
                    if (_simd_orient_pd2(v30, v29, v91) > 0.0)
                    {
                      _VF = __OFSUB__(v22--, 1);
                      if (_VF)
                      {
                        goto LABEL_113;
                      }
                    }

                    goto LABEL_64;
                  }
                }

                else if (v91.f64[1] < v30.f64[1])
                {
                  v87 = *v1;
                  if (_simd_orient_pd2(v29, v30, v91) > 0.0)
                  {
                    _VF = __OFADD__(v22++, 1);
                    if (_VF)
                    {
                      __break(1u);
LABEL_109:
                      __break(1u);
LABEL_110:
                      __break(1u);
LABEL_111:
                      __break(1u);
LABEL_112:
                      __break(1u);
LABEL_113:
                      __break(1u);
LABEL_114:
                      __break(1u);
LABEL_115:
                      __break(1u);
LABEL_116:
                      __break(1u);
LABEL_117:
                      __break(1u);
LABEL_118:
                      __break(1u);
LABEL_119:
                      __break(1u);
                      goto LABEL_120;
                    }
                  }

LABEL_64:
                  v30 = v87;
                  v31 = v90;
                }

                v34.f64[0] = v12;
                v34.f64[1] = v8;
                if (v32 <= v91.f64[1])
                {
                  if (v91.f64[1] < v8)
                  {
                    v88 = v34;
                    if (_simd_orient_pd2(v30, v34, v91) <= 0.0)
                    {
                      goto LABEL_81;
                    }

                    _VF = __OFADD__(v22++, 1);
                    v31 = v90;
                    if (_VF)
                    {
                      goto LABEL_117;
                    }

LABEL_82:
                    v34 = v88;
                  }
                }

                else if (v8 <= v91.f64[1])
                {
                  v88 = v34;
                  if (_simd_orient_pd2(v34, v30, v91) > 0.0)
                  {
                    _VF = __OFSUB__(v22--, 1);
                    v31 = v90;
                    if (_VF)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_82;
                  }

LABEL_81:
                  v31 = v90;
                  goto LABEL_82;
                }

                if (v8 <= v91.f64[1])
                {
                  if (v91.f64[1] < v31.f64[1] && _simd_orient_pd2(v34, v31, v91) > 0.0)
                  {
                    _VF = __OFADD__(v22++, 1);
                    if (_VF)
                    {
                      goto LABEL_118;
                    }
                  }
                }

                else if (v31.f64[1] <= v91.f64[1] && _simd_orient_pd2(v31, v34, v91) > 0.0)
                {
                  _VF = __OFSUB__(v22--, 1);
                  if (_VF)
                  {
                    goto LABEL_119;
                  }
                }

                goto LABEL_25;
              }

              v27 = *(v1 - 16);
              v28 = *v1;
              if (vmovn_s64(vmvnq_s8(vcgeq_f64(*&v91, v27))).i32[1])
              {
                if (v28.f64[1] <= v91.f64[1] && _simd_orient_pd2(v28, v27, v91) > 0.0)
                {
                  _VF = __OFSUB__(v22--, 1);
                  if (_VF)
                  {
                    goto LABEL_112;
                  }
                }
              }

              else if (v91.f64[1] < v28.f64[1] && _simd_orient_pd2(v27, v28, v91) > 0.0)
              {
                _VF = __OFADD__(v22++, 1);
                if (_VF)
                {
                  goto LABEL_111;
                }
              }

LABEL_25:
              v1 += 80;
              --v4;
            }

            while (v4);
            if (v22)
            {
              v6 = v79;
              v14 = v80;
              v12 = v82;
              v8 = v83;
              v13 = v81;
              v4 = v84;
              v3 = v85;
              goto LABEL_13;
            }

LABEL_22:
            if (++v20 != v6)
            {
              continue;
            }

            break;
          }

LABEL_94:
          swift_bridgeObjectRetain_n();
          v35 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v6 + 1), 1, v85);
          }

          v12 = v82;
          v8 = v83;
          v13 = v81;
          v36 = v35;
          v37 = *(v35 + 2);
          v38 = v36;
          v39 = *(v36 + 3);
          v6 = (v37 + 1);
          if (v37 >= v39 >> 1)
          {
            v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v37 + 1, 1, v38);
          }

          v14 = v80;
          v4 = v84;
          *(v38 + 2) = v6;
          v40 = &v38[8 * v37];
          v3 = v38;
          *(v40 + 4) = v18;

          v17 = *(*&v83 + 16);
          if (v16 >= v17)
          {
            goto LABEL_123;
          }

          *(v81 + v16) = 1;
          v6 = v79;
LABEL_13:
          if (++v16 == *&v12)
          {

            v10 = v75;
            goto LABEL_102;
          }
        }
      }

      v3 = MEMORY[0x1E69E7CC0];
LABEL_102:

      v86 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
      }

      v41 = v77;
      v43 = v78[2];
      v42 = v78[3];
      if (v43 >= v42 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v78);
        v41 = v77;
        v78 = v45;
      }

      v1 = v41 + 1;

      v78[2] = v43 + 1;
      v44 = &v78[2 * v43];
      v44[4] = v4;
      v44[5] = v86;

      v11 = v1;
      v9 = v76;
      if (v1 == v10)
      {
        goto LABEL_107;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_107:
  }
}