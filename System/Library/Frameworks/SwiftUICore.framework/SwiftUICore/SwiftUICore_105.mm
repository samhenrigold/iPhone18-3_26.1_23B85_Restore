uint64_t instantiation function for generic protocol witness table for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for ResolvableCLKTextProvider(a1, a2, a3, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
}

{
  return instantiation function for generic protocol witness table for ResolvableCLKTextProvider(a1, a2, a3, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider, lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
}

void lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider()
{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider, &type metadata for ResolvableCLKTextProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider, &type metadata for ResolvableCLKTextProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider, &type metadata for ResolvableCLKTextProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider, &type metadata for ResolvableCLKTextProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableCLKTextProvider, &type metadata for ResolvableCLKTextProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider);
  }
}

uint64_t instantiation function for generic protocol witness table for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

double destroy for ResolvableCLKTextProvider(uint64_t a1)
{
  outlined consume of ResolvableCLKTextProvider.FontStorage(*(a1 + 16), *(a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of ResolvableCLKTextProvider.FontStorage(v2, v3);
}

uint64_t initializeWithCopy for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = v4;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v8 = *(v2 + 32);
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v8, v2);
  *(a1 + 32) = v8;
  *(a1 + 40) = v2;
  return a1;
}

uint64_t assignWithCopy for ResolvableCLKTextProvider(uint64_t a1, void **a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(v2 + 8);
  v7 = v2[2];
  v8 = *(v2 + 24);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v7, v8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v9, v10);
  v11 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v11, v2);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v2;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v12, v13);
  return a1;
}

uint64_t assignWithTake for ResolvableCLKTextProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v6, v7);
  v8 = *(a2 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v9, v10);
  return a1;
}

uint64_t assignWithCopy for ResolvableCLKTextProvider.FontStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResolvableCLKTextProvider.FontStorage(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

uint64_t assignWithTake for ResolvableCLKTextProvider.FontStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

void *specialized ResolvableCLKTextProvider.FontStorage.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5[6];
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t specialized ResolvableCLKTextProvider.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573614374786574 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953394534 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F466C6C616D73 && a2 == 0xE900000000000074)
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

void lazy protocol witness table accessor for type ResolvableAttributeConfiguration.Schedule and conformance ResolvableAttributeConfiguration.Schedule(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for EnvironmentPropertyKey<TextCaseKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>);
    }
  }
}

void type metadata accessor for AnySequence<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for (NSAttributedStringKey, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (NSAttributedStringKey, Any))
  {
    type metadata accessor for NSAttributedStringKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSAttributedStringKey, Any));
    }
  }
}

uint64_t static CallbacksGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X8>)
{
  v33 = a4;
  v34 = a3;
  v47 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v14 = &v32 - v13;
  v16 = type metadata accessor for CallbacksPhase(0, a5, a6, v15);
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = *a1;
  v20 = *(a2 + 64);
  v21 = *(a2 + 96);
  v43 = *(a2 + 80);
  v44 = v21;
  v22 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v22;
  v23 = *(a2 + 32);
  v41 = *(a2 + 48);
  *(&v21 + 1) = *(&v41 + 1);
  v42 = v20;
  v40[2] = v23;
  v24 = *(a2 + 120);
  *&v21 = *(a2 + 112);
  v32 = v21;
  v45 = v21;
  v46 = v24;
  v34(v40);
  LODWORD(a2) = *a7;
  (*(a6 + 24))(a5, a6);
  CallbacksPhase.init(modifier:phase:resetSeed:useGestureGraph:state:cancel:lastResetSeed:)(v19, a2, v32, (v24 >> 4) & 1, v14, 0, 0, 0, v18, a5, a6);
  v25 = swift_getAssociatedTypeWitness();
  v37 = type metadata accessor for GesturePhase(0, v25, v26, v27);
  v38 = v16;
  swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>, v16);
  v39 = v28;
  v29 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v36, v16, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  (*(v35 + 8))(v18, v16);
  *a7 = v40[0];
  AGGraphGetFlags();
  return AGGraphSetFlags();
}

uint64_t CallbacksPhase.init(modifier:phase:resetSeed:useGestureGraph:state:cancel:lastResetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  v16 = type metadata accessor for CallbacksPhase(0, a10, a11, a4);
  v17 = v16[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a9 + v17, a5, AssociatedTypeWitness);
  v20 = (a9 + v16[13]);
  *v20 = a6;
  v20[1] = a7;
  *(a9 + v16[14]) = a8;
  return result;
}

uint64_t CallbacksPhase.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for CallbacksGesture(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

void CallbacksPhase.resetPhase()(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - v8;
  v10 = v1 + *(a1 + 52);
  v11 = *v10;
  v21 = *(v10 + 8);
  if (v11)
  {
    v12 = v11(v1 + *(a1 + 48), v7.n128_f64[0]);
    if (v12)
    {
      v14 = v12;
      v15 = v13;
      v16 = swift_allocObject();
      v19 = v2;
      v17 = v16;
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in Transaction.addAnimationLogicalListener(allFinished:);
      *(v18 + 24) = v17;
      v22 = 17;

      static Update.enqueueAction(reason:_:)(&v22, thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v18);

      v2 = v19;
    }
  }

  (*(v4 + 24))(v5, v4, v7);
  (*(v6 + 40))(v2 + *(a1 + 48), v9, AssociatedTypeWitness);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v11, v21);
  *v10 = 0;
  *(v10 + 8) = 0;
}

void CallbacksPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72[3] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for CallbacksGesture(0, v7, v6, a4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = (&v62 - v9);
  v10 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for GesturePhase(255, AssociatedTypeWitness, v14, v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v62 - v23;
  swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>, a1, v22);
  if (ResettableGestureRule.resetIfNeeded()())
  {
    v67 = v7;
    v68 = v10;
    v66 = v6;
    v25 = *(TupleTypeMetadata2 + 48);
    Value = AGGraphGetValue();
    v28 = v27;
    v29 = *(v16 - 8);
    (*(v29 + 16))(v24, Value, v16);
    v24[v25] = v28 & 1;
    v69 = v4;
    v64 = *(v18 + 16);
    v64(v20, v24, TupleTypeMetadata2);
    v30 = v20[*(TupleTypeMetadata2 + 48)];
    v31 = *(v29 + 8);
    v65 = v29 + 8;
    v31(v20, v16);
    if (v30 == 1)
    {
      v62 = v31;
      v63 = v18;
      v33 = v69;
      v34 = v70;
      CallbacksPhase.modifier.getter(a1, v32, v70);
      v35 = v67;
      (*(v68 + 32))(v71, v34, v67);
      v36 = v66;
      v37 = (*(v66 + 32))(v24, v33 + *(a1 + 48), v35, v66);
      if (v37)
      {
        v39 = v37;
        v70 = v38;
        v40 = swift_allocObject();
        v41 = v69;
        v42 = v70;
        *(v40 + 16) = v39;
        *(v40 + 24) = v42;
        v72[0] = _sIg_Ieg_TRTA_0;
        v72[1] = v40;
        closure #1 in CallbacksPhase.updateValue()(v72, v41, v35, v36);
      }

      v43 = v64;
      v44 = (v64)(v20, v24, TupleTypeMetadata2);
      v70 = &v62;
      v45 = MEMORY[0x1EEE9AC00](v44);
      *(&v62 - 2) = a1;
      swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>, a1, v45);
      *(&v62 - 1) = v46;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, closure #1 in StatefulRule.value.setterpartial apply, (&v62 - 4), v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v47);
      v48 = v62;
      v62(v20, v16);
      v43(v20, v24, TupleTypeMetadata2);
      v49 = GesturePhase.isTerminal.getter(v16);
      (*(v63 + 8))(v24, TupleTypeMetadata2);
      v48(v20, v16);
      if (v49)
      {
        v50 = 0;
        v51 = 0;
        v52 = v68;
        v53 = v69;
        v54 = v71;
        v55 = v67;
      }

      else
      {
        v54 = v71;
        v55 = v67;
        v50 = implicit closure #1 in CallbacksPhase.updateValue()(v71, v67, v66);
        v51 = v56;
        v52 = v68;
        v53 = v69;
      }

      (*(v52 + 8))(v54, v55);
      v57 = (v53 + *(a1 + 52));
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v57, v57[1]);
      *v57 = v50;
      v57[1] = v51;
    }

    else if (AGGraphGetOutputValue())
    {
      (*(v18 + 8))(v24, TupleTypeMetadata2);
    }

    else
    {
      v58 = (v64)(v20, v24, TupleTypeMetadata2);
      v59 = MEMORY[0x1EEE9AC00](v58);
      *(&v62 - 2) = a1;
      swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>, a1, v59);
      *(&v62 - 1) = v60;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, partial apply for closure #1 in StatefulRule.value.setter, (&v62 - 4), v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v61);
      (*(v18 + 8))(v24, TupleTypeMetadata2);
      v31(v20, v16);
    }
  }
}

uint64_t closure #1 in CallbacksPhase.updateValue()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CallbacksPhase(0, a3, a4, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8 - 8];
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  (*(v7 + 16))(v9, a2, v6);
  if (v9[12] != 1)
  {
    v18[0] = 17;

    static Update.enqueueAction(reason:_:)(v18, partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v12);
LABEL_6:

    return (*(v7 + 8))(v9, v6);
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for GestureGraph();
  v13 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_6;
  }

  v14 = *(v13 + 200);
  ObjectType = swift_getObjectType();
  (*(v14 + 8))(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v12, ObjectType, v14);

  swift_unknownObjectRelease();
  return (*(v7 + 8))(v9, v6);
}

uint64_t (*implicit closure #1 in CallbacksPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in CallbacksPhase.updateValue();
}

void static CallbacksPhase.willRemove(attribute:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AGGraphGetAttributeInfo();
  v7 = type metadata accessor for CallbacksPhase(0, a3, a4, v6);
  CallbacksPhase.resetPhase()(v7);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CallbacksPhase<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v4, v5);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

uint64_t FullGestureCallbacks.StateType.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X3>)
{
  *a3 = 0;
  v6 = *(type metadata accessor for FullGestureCallbacks.StateType(0, a1, a2, a4) + 36);
  v9 = type metadata accessor for GesturePhase(0, a1, v7, v8);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a3[v6], 1, 1, v9);
}

double key path getter for FullGestureCallbacks.possible : <A>FullGestureCallbacks<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
}

void key path setter for FullGestureCallbacks.possible : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A?) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  v11 = a2[1];
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10, v11);
  *a2 = v9;
  a2[1] = v8;
}

uint64_t FullGestureCallbacks.possible.getter()
{
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v0, v0[1]);
  return v1;
}

void FullGestureCallbacks.possible.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

double key path getter for FullGestureCallbacks.changed : <A>FullGestureCallbacks<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ()partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
}

void key path setter for FullGestureCallbacks.changed : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ())partial apply;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10, v11);
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
}

uint64_t FullGestureCallbacks.changed.getter()
{
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, *(v0 + 24));
  return v1;
}

void FullGestureCallbacks.changed.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double key path getter for FullGestureCallbacks.ended : <A>FullGestureCallbacks<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
}

void key path setter for FullGestureCallbacks.ended : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v5, v6);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v10, v11);
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
}

uint64_t FullGestureCallbacks.ended.getter()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, *(v0 + 40));
  return v1;
}

void FullGestureCallbacks.ended.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

double key path getter for FullGestureCallbacks.failed : <A>FullGestureCallbacks<A>@<D0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for closure #1 in Transaction.addAnimationLogicalListener(allFinished:);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
}

void key path setter for FullGestureCallbacks.failed : <A>FullGestureCallbacks<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v3, v4);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
}

uint64_t FullGestureCallbacks.failed.getter()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, *(v0 + 56));
  return v1;
}

void FullGestureCallbacks.failed.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t FullGestureCallbacks.init(possible:changed:ended:failed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t (*FullGestureCallbacks.dispatch(phase:state:)(uint64_t a1, _BYTE *a2, uint64_t a3))()
{
  v64 = a2;
  v6 = *(a3 + 16);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[1] = v7;
  MEMORY[0x1EEE9AC00](v8);
  v57 = v54 - v9;
  v59 = type metadata accessor for Optional();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v54 - v12;
  v15 = type metadata accessor for GesturePhase(0, v6, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v54 - v17;
  v19 = v3[1];
  v70 = *v3;
  v71 = v19;
  v20 = v3[3];
  v72 = v3[2];
  v73 = v20;
  v60 = a3;
  v21 = *(a3 + 24);
  v23 = *(type metadata accessor for FullGestureCallbacks.StateType(0, v6, v21, v22) + 36);
  v66 = v6;
  v67 = v21;
  v61 = v21;
  v24 = a1;
  v68 = a1;
  v25 = type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in FullGestureCallbacks.dispatch(phase:state:), v65, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v26, v69);
  if (v69[0] != 2 && (v69[0] & 1) == 0)
  {
    return 0;
  }

  v54[0] = v10;
  v27 = v64;
  (*(*(v25 - 8) + 8))(&v64[v23], v25);
  v28 = *(v16 + 16);
  v28(&v27[v23], v24, v15);
  (*(v16 + 56))(&v27[v23], 0, 1, v15);
  v28(v18, v24, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v30 = v63;
    if (!EnumCaseMultiPayload)
    {
      v32 = v58 + 32;
      v31 = *(v58 + 32);
      v33 = v55;
      v34 = v59;
      v31(v55, v18, v59);
      *v64 = 0;
      v35 = v56;
      v31(v56, v33, v34);
      v36 = (*(v32 + 48) + 96) & ~*(v32 + 48);
      v37 = swift_allocObject();
      v38 = v61;
      *(v37 + 16) = v6;
      *(v37 + 24) = v38;
      v39 = v71;
      *(v37 + 32) = v70;
      *(v37 + 48) = v39;
      v40 = v73;
      *(v37 + 64) = v72;
      *(v37 + 80) = v40;
      v31((v37 + v36), v35, v34);
      (*(*(v60 - 8) + 16))(v69, &v70);
      return partial apply for closure #2 in FullGestureCallbacks.dispatch(phase:state:);
    }

    v45 = *(v63 + 32);
    v46 = v57;
    v45(v57, v18, v6);
    *v64 = 1;
    v47 = v71;
    if (v71)
    {
      v48 = *(&v71 + 1);
      v49 = v62;
      v45(v62, v46, v6);
      v50 = (*(v30 + 80) + 48) & ~*(v30 + 80);
      v51 = swift_allocObject();
      v52 = v61;
      *(v51 + 2) = v6;
      *(v51 + 3) = v52;
      *(v51 + 4) = v47;
      *(v51 + 5) = v48;
      v45(&v51[v50], v49, v6);

      return partial apply for closure #3 in FullGestureCallbacks.dispatch(phase:state:);
    }

    (*(v30 + 8))(v46, v6);
    return 0;
  }

  v42 = v63;
  if (EnumCaseMultiPayload == 2)
  {
    v43 = v62;
    (*(v63 + 32))(v62, v18, v6);
    v44 = bind<A>(_:_:)(v72, *(&v72 + 1), v43, v6);
    (*(v42 + 8))(v43, v6);
    return v44;
  }

  else
  {
    v53 = v73;
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v73, *(&v73 + 1));
    return v53;
  }
}

uint64_t FullGestureCallbacks.cancel(state:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized FullGestureCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
  return v2;
}

uint64_t protocol witness for GestureCallbacks.cancel(state:) in conformance FullGestureCallbacks<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized FullGestureCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
  return v2;
}

double Gesture.onFailed(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = a1;
  v13 = type metadata accessor for FailedCallbacks(0, AssociatedTypeWitness, v11, v12);

  swift_getWitnessTable(protocol conformance descriptor for FailedCallbacks<A>, v13, v15, a2);
  Gesture.callbacks<A>(_:)(&v15, a3, v13, a4, a5);

  return result;
}

uint64_t Gesture<>.callbacks(possible:changed:ended:failed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v26 = a1;
  *(&v26 + 1) = a2;
  *&v27 = a3;
  *(&v27 + 1) = a4;
  *&v28 = a5;
  *(&v28 + 1) = a6;
  *&v29 = a7;
  *(&v29 + 1) = a8;
  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1, a2);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a3, a4);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a5, a6);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a7, a8);
  v22 = type metadata accessor for FullGestureCallbacks(0, AssociatedTypeWitness, a11, v21);
  swift_getWitnessTable(protocol conformance descriptor for FullGestureCallbacks<A>, v22);
  Gesture.callbacks<A>(_:)(v25, a9, v22, a10, x8_0);
  return (*(*(v22 - 8) + 8))(&v26, v22);
}

double static _EndedGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 80);
  v52 = *(a2 + 64);
  v53 = v9;
  v54 = *(a2 + 96);
  v55 = *(a2 + 112);
  v10 = *(a2 + 16);
  v48 = *a2;
  v49 = v10;
  v11 = *(a2 + 48);
  v50 = *(a2 + 32);
  v51 = v11;
  v12 = *(a2 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for EndedCallbacks(255, AssociatedTypeWitness, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for EndedCallbacks<A>, v16);
  v19 = type metadata accessor for CallbacksGesture(255, v16, v17, v18);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v19);
  v21 = v20;
  *&v35 = v19;
  *(&v35 + 1) = a3;
  *&v36 = v20;
  *(&v36 + 1) = a4;
  v22 = type metadata accessor for ModifierGesture(0, &v35);
  v47 = v8;
  v24 = type metadata accessor for _EndedGesture(255, a3, a4, v23);
  type metadata accessor for _GraphValue(0, v24, v25, v26);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _EndedGesture._makeGesture(gesture:inputs:), v22, &v44);
  v39 = v52;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v43 = v12;
  static ModifierGesture._makeGesture(gesture:inputs:)(&v44, &v35, v19, a3, v21, a4, v45);
  if ((v12 & 8) != 0 && (!swift_conformsToProtocol2() || !v22))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v29 = 2;
    }

    else
    {
      v29 = 1;
    }

    LOBYTE(v44) = v29;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v35 = v48;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v43 = v12;
    v30 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v27, v28);
    v31 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v22, &v44, 0x100000000, &v35, v31 | ((HIDWORD(v31) & 1) << 32), 0x100000000, v30);
  }

  v32 = v45[1];
  v33 = v46;
  result = *v45;
  *a5 = v45[0];
  *(a5 + 8) = v32;
  *(a5 + 16) = v33;
  return result;
}

uint64_t closure #1 in static _EndedGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = type metadata accessor for _EndedGesture(0, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for EndedCallbacks(255, AssociatedTypeWitness, v8, v9);
  swift_getWitnessTable(protocol conformance descriptor for EndedCallbacks<A>, v10);
  v13 = type metadata accessor for CallbacksGesture(255, v10, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v13);
  v20[0] = v13;
  v20[1] = a2;
  v20[2] = v14;
  v20[3] = a3;
  v19 = type metadata accessor for ModifierGesture(0, v20);
  v15 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v18, v19, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  return v20[0];
}

double static _ChangedGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a2 + 80);
  v11 = *(a2 + 48);
  v72 = *(a2 + 64);
  v73 = v10;
  v12 = *(a2 + 80);
  *v74 = *(a2 + 96);
  *&v74[12] = *(a2 + 108);
  v13 = *(a2 + 16);
  v69[0] = *a2;
  v69[1] = v13;
  v14 = *(a2 + 48);
  v16 = *a2;
  v15 = *(a2 + 16);
  v70 = *(a2 + 32);
  v71 = v14;
  v65 = v72;
  v66 = v12;
  v67 = *(a2 + 96);
  v61 = v16;
  v62 = v15;
  v17 = *a1;
  v68 = *(a2 + 112);
  v18 = *&v74[24] | 0x20;
  v63 = v70;
  v64 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for ChangedCallbacks(255, AssociatedTypeWitness, a5, v20);
  swift_getWitnessTable(protocol conformance descriptor for ChangedCallbacks<A>, v21);
  v24 = type metadata accessor for CallbacksGesture(255, v21, v22, v23);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v24);
  v26 = v25;
  *&v54 = v24;
  *(&v54 + 1) = a3;
  *&v55 = v25;
  *(&v55 + 1) = a4;
  v27 = type metadata accessor for ModifierGesture(0, &v54);
  v40[1] = v40;
  v40[4] = a3;
  v40[5] = a4;
  v40[6] = a5;
  v53 = v17;
  outlined init with copy of _GestureInputs(v69, &v54);
  v28 = type metadata accessor for _ChangedGesture(255, a3, a4, a5);
  type metadata accessor for _GraphValue(0, v28, v29, v30);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _ChangedGesture._makeGesture(gesture:inputs:), v27, &v50);
  *&v60[16] = v68;
  v59 = v66;
  *v60 = v67;
  v54 = v61;
  v55 = v62;
  v56 = v63;
  v57 = v64;
  v58 = v65;
  *&v60[24] = v18;
  *&v49[12] = *&v60[12];
  v47 = v65;
  v48 = v66;
  *v49 = v67;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v46 = v64;
  outlined init with copy of _GestureInputs(&v54, v41);
  static ModifierGesture._makeGesture(gesture:inputs:)(&v50, &v43, v24, a3, v26, a4, v51);
  if ((v60[24] & 8) == 0 || swift_conformsToProtocol2() && v27)
  {
    outlined destroy of _GestureInputs(&v54);
    v47 = v65;
    v48 = v66;
    *v49 = v67;
    *&v49[16] = v68;
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    *&v49[24] = v18;
    v31 = &v43;
  }

  else
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v34 = 2;
    }

    else
    {
      v34 = 1;
    }

    LOBYTE(v50) = v34;
    v41[4] = v58;
    v41[5] = v59;
    v42[0] = *v60;
    *(v42 + 12) = *&v60[12];
    v41[0] = v54;
    v41[1] = v55;
    v41[2] = v56;
    v41[3] = v57;
    v35 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v32, v33);
    v36 = _GestureOutputs.debugData.getter();
    LOBYTE(v43) = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v27, &v50, 0x100000000, v41, v36 | ((HIDWORD(v36) & 1) << 32), 0x100000000, v35);
    v47 = v65;
    v48 = v66;
    *v49 = v67;
    *&v49[16] = v68;
    v43 = v61;
    v44 = v62;
    v45 = v63;
    v46 = v64;
    *&v49[24] = v18;
    outlined destroy of _GestureInputs(&v43);
    v31 = &v54;
  }

  outlined destroy of _GestureInputs(v31);
  v37 = v51[1];
  v38 = v52;
  result = *v51;
  *a6 = v51[0];
  *(a6 + 8) = v37;
  *(a6 + 16) = v38;
  return result;
}

uint64_t closure #1 in static _ChangedGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = type metadata accessor for _ChangedGesture(0, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ChangedCallbacks(255, AssociatedTypeWitness, a4, v9);
  swift_getWitnessTable(protocol conformance descriptor for ChangedCallbacks<A>, v10);
  v13 = type metadata accessor for CallbacksGesture(255, v10, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v13);
  v20[0] = v13;
  v20[1] = a2;
  v20[2] = v14;
  v20[3] = a3;
  v19 = type metadata accessor for ModifierGesture(0, v20);
  v15 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v18, v19, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  return v20[0];
}

uint64_t (*EndedCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v26 = a3;
  v8 = type metadata accessor for GesturePhase(0, a5, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *(v12 + 32);
    v20(v19, v11, a5);
    v20(v15, v19, a5);
    v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 2) = a5;
    *(v22 + 3) = v23;
    *(v22 + 4) = a4;
    v20(&v22[v21], v15, a5);

    return partial apply for closure #1 in bind<A>(_:_:);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }
}

uint64_t FailedCallbacks.failed.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FailedCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for GesturePhase(0, *(a3 + 16), a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v12 = 0;
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v12 = v11;
  }

  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t FailedCallbacks.cancel(state:)()
{
  v0 = specialized FailedCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0, v1);
  return v0;
}

uint64_t protocol witness for GestureCallbacks.cancel(state:) in conformance FailedCallbacks<A>(uint64_t a1, uint64_t a2)
{
  v2 = specialized FailedCallbacks.cancel(state:)();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
  return v2;
}

uint64_t (*ChangedCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(char *, char *, void *)))()
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v9 = type metadata accessor for GesturePhase(0, a5, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = *(a5 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  (*(v10 + 16))(v12, a1, v9, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *(v13 + 32);
    v21 = v33(v20, v12, a5);
    v35 = &v33;
    MEMORY[0x1EEE9AC00](v21);
    *(&v33 - 4) = a5;
    *(&v33 - 3) = a6;
    v34 = a6;
    *(&v33 - 2) = v20;
    v22 = type metadata accessor for Optional();
    v23 = v38;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:), (&v33 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v24, &v39);
    if (v39 == 2 || (v39 & 1) != 0)
    {
      v25 = v23;
      (*(*(v22 - 8) + 8))(v23, v22);
      v26 = *(v13 + 16);
      v26(v25, v20, a5);
      (*(v13 + 56))(v25, 0, 1, a5);
      v26(v16, v20, a5);
      v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v28 = swift_allocObject();
      v29 = v34;
      *(v28 + 2) = a5;
      *(v28 + 3) = v29;
      v30 = v37;
      *(v28 + 4) = v36;
      *(v28 + 5) = v30;
      v33(&v28[v27], v16, a5);
      v31 = *(v13 + 8);

      v31(v20, a5);
      return partial apply for closure #2 in ChangedCallbacks.dispatch(phase:state:);
    }

    (*(v13 + 8))(v20, a5);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

uint64_t closure #3 in FullGestureCallbacks.dispatch(phase:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v9 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014TracksVelocityF033_FD9125BC1E04E33D1D7BE4A31225AA98LLVG_Tt2g5(&v9, 1);

  specialized closure #1 in withTransaction<A>(_:_:)(v7, a6);
}

uint64_t partial apply for closure #1 in FullGestureCallbacks.dispatch(phase:state:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = static GesturePhase<A>.== infix(_:_:)(a1, v2[4], v2[2], v2[3]);
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t partial apply for closure #2 in FullGestureCallbacks.dispatch(phase:state:)()
{
  v1 = type metadata accessor for Optional();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = *(v0 + 32);
  if (v5)
  {
    return v5(v0 + ((*(v3 + 80) + 96) & ~*(v3 + 80)));
  }

  return result;
}

double destroy for FullGestureCallbacks(void *a1)
{
  if (*a1)
  {
  }

  if (a1[2])
  {
  }

  if (a1[4])
  {
  }

  if (a1[6])
  {
  }

  return result;
}

void *initializeWithCopy for FullGestureCallbacks(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = a2[3];
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];
    a1[4] = v7;
    a1[5] = v8;
  }

  else
  {
    *(a1 + 2) = *(a2 + 2);
  }

  v9 = a2[6];
  if (v9)
  {
    v10 = a2[7];
    a1[6] = v9;
    a1[7] = v10;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  return a1;
}

void *assignWithCopy for FullGestureCallbacks(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;

    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;

    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;

    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (!a1[6])
  {
    if (v13)
    {
      v15 = a2[7];
      a1[6] = v13;
      a1[7] = v15;

      return a1;
    }

LABEL_28:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v13)
  {

    goto LABEL_28;
  }

  v14 = a2[7];
  a1[6] = v13;
  a1[7] = v14;

  return a1;
}

void *assignWithTake for FullGestureCallbacks(void *a1, void *a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (v4)
    {
      v5 = a2[1];
      *a1 = v4;
      a1[1] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[1];
    *a1 = v4;
    a1[1] = v6;
    goto LABEL_8;
  }

  *a1 = *a2;
LABEL_8:
  v7 = a2[2];
  if (a1[2])
  {
    if (v7)
    {
      v8 = a2[3];
      a1[2] = v7;
      a1[3] = v8;

      goto LABEL_15;
    }
  }

  else if (v7)
  {
    v9 = a2[3];
    a1[2] = v7;
    a1[3] = v9;
    goto LABEL_15;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_15:
  v10 = a2[4];
  if (a1[4])
  {
    if (v10)
    {
      v11 = a2[5];
      a1[4] = v10;
      a1[5] = v11;

      goto LABEL_22;
    }
  }

  else if (v10)
  {
    v12 = a2[5];
    a1[4] = v10;
    a1[5] = v12;
    goto LABEL_22;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_22:
  v13 = a2[6];
  if (!a1[6])
  {
    if (v13)
    {
      v15 = a2[7];
      a1[6] = v13;
      a1[7] = v15;
      return a1;
    }

LABEL_28:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v13)
  {

    goto LABEL_28;
  }

  v14 = a2[7];
  a1[6] = v13;
  a1[7] = v14;

  return a1;
}

uint64_t getEnumTagSinglePayload for FullGestureCallbacks(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FullGestureCallbacks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for FullGestureCallbacks.StateType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GesturePhase(255, *(a1 + 16), a3, a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FullGestureCallbacks.StateType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  v9 = ~v7;
  v10 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  v13 = v7 & 0x100000;
  v14 = ((-2 - v7) | v7) - (v12 + 1);
  if (v8 > 7 || v13 != 0 || v14 < 0xFFFFFFFFFFFFFFE7)
  {
    v17 = *a2;
    *v3 = *a2;
    v3 = (v17 + ((v8 + 16) & v9));

    return v3;
  }

  *a1 = *a2;
  v18 = ((a1 + v8 + 1) & v9);
  v19 = ((a2 + v8 + 1) & v9);
  v20 = *(v19 + v12);
  if (v20 > 3)
  {
    goto LABEL_35;
  }

  if (v20 != 3)
  {
    goto LABEL_29;
  }

  if (v12 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = v12;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v19;
    }

    else if (v21 == 3)
    {
      v22 = *v19 | (*(v19 + 2) << 16);
    }

    else
    {
      v22 = *v19;
    }

    goto LABEL_28;
  }

  if (!v21)
  {
LABEL_35:
    memcpy(v18, v19, v12 + 1);
    return v3;
  }

  v22 = *v19;
LABEL_28:
  v20 = v22 + 3;
LABEL_29:
  if (v20 == 2)
  {
    (*(v5 + 16))(v18);
    *(v18 + v12) = 2;
    return v3;
  }

  if (v20 == 1)
  {
    (*(v5 + 16))(v18);
    *(v18 + v12) = 1;
    return v3;
  }

  if (v20)
  {
    goto LABEL_35;
  }

  v23 = v19;
  if ((*(v5 + 48))(v19, 1, v4))
  {
    memcpy(v18, v23, v11);
  }

  else
  {
    (*(v6 + 16))(v18, v23, v4);
    (*(v6 + 56))(v18, 0, 1, v4);
  }

  *(v18 + v12) = 0;
  return v3;
}

uint64_t destroy for FullGestureCallbacks.StateType(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = ((result + *(v3 + 80) + 1) & ~*(v3 + 80));
  v5 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = v5 + 1;
  }

  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = v4[v5];
  if (v7 <= 3)
  {
    if (v7 == 3)
    {
      if (v5 >= 4)
      {
        v8 = 4;
      }

      else
      {
        v8 = v5;
      }

      if (v8 <= 1)
      {
        if (!v8)
        {
          return result;
        }

        v9 = *v4;
      }

      else if (v8 == 2)
      {
        v9 = *v4;
      }

      else if (v8 == 3)
      {
        v9 = *v4 | (v4[2] << 16);
      }

      else
      {
        v9 = *v4;
      }

      v7 = v9 + 3;
    }

    if (v7 - 1 < 2 || !v7 && (v11 = *(*(a2 + 16) - 8), result = (*(v3 + 48))(v4, 1, v2), v3 = v11, !result))
    {
      v10 = *(v3 + 8);

      return v10(v4, v2);
    }
  }

  return result;
}

_BYTE *initializeWithCopy for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = *(v8 + v11);
  if (v12 > 3)
  {
    goto LABEL_27;
  }

  if (v12 != 3)
  {
    goto LABEL_21;
  }

  if (v11 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v11;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (*(v8 + 2) << 16);
    }

    else
    {
      v14 = *v8;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
LABEL_27:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  v14 = *v8;
LABEL_20:
  v12 = v14 + 3;
LABEL_21:
  if (v12 == 2)
  {
    (*(v5 + 16))(v7);
    *(v7 + v11) = 2;
    return a1;
  }

  if (v12 == 1)
  {
    (*(v5 + 16))(v7);
    *(v7 + v11) = 1;
    return a1;
  }

  if (v12)
  {
    goto LABEL_27;
  }

  v15 = v8;
  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v15, v10);
  }

  else
  {
    (*(v5 + 16))(v7, v15, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  *(v7 + v11) = 0;
  return a1;
}

_BYTE *assignWithCopy for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = (&a1[v7 + 1] & ~v7);
  v9 = (&a2[v7 + 1] & ~v7);
  v10 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v11 = *(v5 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 64);
  }

  v13 = v8[v12];
  v14 = v9[v12];
  if (v13 <= 3)
  {
    if (v14 <= 3)
    {
      if (v8 == v9)
      {
        return a1;
      }

      if (v13 == 3)
      {
        if (v12 >= 4)
        {
          v15 = 4;
        }

        else
        {
          v15 = v12;
        }

        if (v15 <= 1)
        {
          if (!v15)
          {
            goto LABEL_66;
          }

          v16 = *v8;
        }

        else if (v15 == 2)
        {
          v16 = *v8;
        }

        else if (v15 == 3)
        {
          v16 = *v8 | (v8[2] << 16);
        }

        else
        {
          v16 = *v8;
        }

        v13 = v16 + 3;
      }

      if (v13 - 1 < 2 || !v13 && !(*(v5 + 48))(v8, 1, v4))
      {
        (*(v6 + 8))(v8, v4);
      }

LABEL_66:
      v14 = v9[v12];
      v21 = v14 - 3;
      if (v14 < 3)
      {
        goto LABEL_80;
      }

      if (v12 <= 3)
      {
        v22 = v12;
      }

      else
      {
        v22 = 4;
      }

      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_80;
        }

        v23 = *v9;
      }

      else if (v22 == 2)
      {
        v23 = *v9;
      }

      else if (v22 == 3)
      {
        v23 = *v9 | (v9[2] << 16);
      }

      else
      {
        v23 = *v9;
      }

      v24 = (v23 | (v21 << (8 * v12))) + 3;
      v14 = v23 + 3;
      if (v12 < 4)
      {
        v14 = v24;
      }

LABEL_80:
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

LABEL_83:
      (*(v6 + 16))(v8, v9, v4);
      v25 = 2;
      goto LABEL_84;
    }

    if (v13 != 3)
    {
LABEL_52:
      if (v13 - 1 < 2 || !v13 && !(*(v5 + 48))(v8, 1, v4))
      {
        (*(v6 + 8))(v8, v4);
      }

      goto LABEL_56;
    }

    if (v12 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v12;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *v8;
      }

      else if (v19 == 3)
      {
        v20 = *v8 | (v8[2] << 16);
      }

      else
      {
        v20 = *v8;
      }

      goto LABEL_51;
    }

    if (v19)
    {
      v20 = *v8;
LABEL_51:
      v13 = v20 + 3;
      goto LABEL_52;
    }

LABEL_56:
    memcpy(v8, v9, v12 + 1);
    return a1;
  }

  if (v14 > 3)
  {
    goto LABEL_56;
  }

  if (v14 == 3)
  {
    if (v12 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v12;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_56;
      }

      v18 = *v9;
    }

    else if (v17 == 2)
    {
      v18 = *v9;
    }

    else if (v17 == 3)
    {
      v18 = *v9 | (v9[2] << 16);
    }

    else
    {
      v18 = *v9;
    }

    v14 = v18 + 3;
  }

  if (v14 == 2)
  {
    goto LABEL_83;
  }

  if (v14 == 1)
  {
LABEL_82:
    (*(v6 + 16))(v8, v9, v4);
    v25 = 1;
LABEL_84:
    v8[v12] = v25;
    return a1;
  }

LABEL_45:
  if (v14)
  {
    goto LABEL_56;
  }

  if ((*(v6 + 48))(v9, 1, v4))
  {
    memcpy(v8, v9, v11);
  }

  else
  {
    (*(v6 + 16))(v8, v9, v4);
    (*(v6 + 56))(v8, 0, 1, v4);
  }

  v8[v12] = 0;
  return a1;
}

_BYTE *initializeWithTake for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = *(v8 + v11);
  if (v12 > 3)
  {
    goto LABEL_27;
  }

  if (v12 != 3)
  {
    goto LABEL_21;
  }

  if (v11 >= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v11;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (*(v8 + 2) << 16);
    }

    else
    {
      v14 = *v8;
    }

    goto LABEL_20;
  }

  if (!v13)
  {
LABEL_27:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  v14 = *v8;
LABEL_20:
  v12 = v14 + 3;
LABEL_21:
  if (v12 == 2)
  {
    (*(v5 + 32))(v7);
    *(v7 + v11) = 2;
    return a1;
  }

  if (v12 == 1)
  {
    (*(v5 + 32))(v7);
    *(v7 + v11) = 1;
    return a1;
  }

  if (v12)
  {
    goto LABEL_27;
  }

  v15 = v8;
  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v15, v10);
  }

  else
  {
    (*(v5 + 32))(v7, v15, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  *(v7 + v11) = 0;
  return a1;
}

_BYTE *assignWithTake for FullGestureCallbacks.StateType(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (&a1[v6 + 1] & ~v6);
  v8 = (&a2[v6 + 1] & ~v6);
  v9 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v5 + 64);
  }

  v12 = v7[v11];
  v13 = v8[v11];
  if (v12 <= 3)
  {
    if (v13 <= 3)
    {
      if (v7 == v8)
      {
        return a1;
      }

      if (v12 == 3)
      {
        if (v11 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v11;
        }

        if (v14 <= 1)
        {
          if (!v14)
          {
            goto LABEL_66;
          }

          v15 = *v7;
        }

        else if (v14 == 2)
        {
          v15 = *v7;
        }

        else if (v14 == 3)
        {
          v15 = *(&a1[v6 + 1] & ~v6) | (*((&a1[v6 + 1] & ~v6) + 2) << 16);
        }

        else
        {
          v15 = *v7;
        }

        v12 = v15 + 3;
      }

      if (v12 - 1 < 2 || !v12 && !(*(v5 + 48))(v7, 1, v4))
      {
        (*(v5 + 8))(v7, v4);
      }

LABEL_66:
      v13 = v8[v11];
      v20 = v13 - 3;
      if (v13 < 3)
      {
        goto LABEL_80;
      }

      if (v11 <= 3)
      {
        v21 = v11;
      }

      else
      {
        v21 = 4;
      }

      if (v21 <= 1)
      {
        if (!v21)
        {
          goto LABEL_80;
        }

        v22 = *v8;
      }

      else if (v21 == 2)
      {
        v22 = *v8;
      }

      else if (v21 == 3)
      {
        v22 = *v8 | (v8[2] << 16);
      }

      else
      {
        v22 = *v8;
      }

      v23 = (v22 | (v20 << (8 * v11))) + 3;
      v13 = v22 + 3;
      if (v11 < 4)
      {
        v13 = v23;
      }

LABEL_80:
      if (v13 != 2)
      {
        if (v13 == 1)
        {
          goto LABEL_82;
        }

        goto LABEL_45;
      }

LABEL_83:
      (*(v5 + 32))(v7, v8, v4);
      v24 = 2;
      goto LABEL_84;
    }

    if (v12 != 3)
    {
LABEL_52:
      if (v12 - 1 < 2 || !v12 && !(*(v5 + 48))(v7, 1, v4))
      {
        (*(v5 + 8))(v7, v4);
      }

      goto LABEL_56;
    }

    if (v11 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v11;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *v7;
      }

      else if (v18 == 3)
      {
        v19 = *(&a1[v6 + 1] & ~v6) | (*((&a1[v6 + 1] & ~v6) + 2) << 16);
      }

      else
      {
        v19 = *v7;
      }

      goto LABEL_51;
    }

    if (v18)
    {
      v19 = *v7;
LABEL_51:
      v12 = v19 + 3;
      goto LABEL_52;
    }

LABEL_56:
    memcpy(v7, v8, v11 + 1);
    return a1;
  }

  if (v13 > 3)
  {
    goto LABEL_56;
  }

  if (v13 == 3)
  {
    if (v11 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v11;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_56;
      }

      v17 = *v8;
    }

    else if (v16 == 2)
    {
      v17 = *v8;
    }

    else if (v16 == 3)
    {
      v17 = *(&a2[v6 + 1] & ~v6) | (*((&a2[v6 + 1] & ~v6) + 2) << 16);
    }

    else
    {
      v17 = *v8;
    }

    v13 = v17 + 3;
  }

  if (v13 == 2)
  {
    goto LABEL_83;
  }

  if (v13 == 1)
  {
LABEL_82:
    (*(v5 + 32))(v7, v8, v4);
    v24 = 1;
LABEL_84:
    v7[v11] = v24;
    return a1;
  }

LABEL_45:
  if (v13)
  {
    goto LABEL_56;
  }

  if ((*(v5 + 48))(v8, 1, v4))
  {
    memcpy(v7, v8, v10);
  }

  else
  {
    (*(v5 + 32))(v7, v8, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
  }

  v7[v11] = 0;
  return a1;
}

uint64_t getEnumTagSinglePayload for FullGestureCallbacks.StateType(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v4 > v5)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + ((*(v3 + 80) + 1) & ~*(v3 + 80)) + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *&a1[v6];
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *a1;
      v13 = v12 >= 2;
      v14 = (v12 + 2147483646) & 0x7FFFFFFF;
      if (v13)
      {
        return (v14 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void storeEnumTagSinglePayload for FullGestureCallbacks.StateType(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + ((*(v5 + 80) + 1) & ~*(v5 + 80)) + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_42:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      *a1 = a2 + 1;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_27;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t type metadata completion function for CallbacksPhase(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CallbacksPhase(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 7;
  if (v7 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((((v8 + ((v7 + 13) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    *a1 = *a2;
    v12 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v14 = *v15;
    *(v14 + 4) = *(v15 + 4);
    v16 = (v14 + v7 + 5) & ~v7;
    v17 = (v15 + v7 + 5) & ~v7;
    (*(v6 + 16))(v16, v17, AssociatedTypeWitness);
    v18 = (v8 + v16) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v8 + v17) & 0xFFFFFFFFFFFFFFF8;
    if (*v19 < 0xFFFFFFFFuLL)
    {
      *v18 = *v19;
    }

    else
    {
      v20 = *(v19 + 8);
      *v18 = *v19;
      *(v18 + 8) = v20;
    }

    *((v18 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

double destroy for CallbacksPhase(uint64_t a1, uint64_t a2)
{
  v2 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = v4 + 8;
  v6 = (v2 + *(v4 + 80) + 5) & ~*(v4 + 80);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  if (*((*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for CallbacksPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v6 = *v7;
  *(v6 + 4) = *(v7 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v11 + 5 + v6) & ~v11;
  v13 = (v11 + 5 + v7) & ~v11;
  (*(v9 + 16))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithCopy for CallbacksPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v6 = *v7;
  *(v6 + 4) = *(v7 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v11 + 5 + v6) & ~v11;
  v13 = (v11 + 5 + v7) & ~v11;
  (*(v9 + 24))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v19 = v16[1];
      *v15 = v17;
      v15[1] = v19;

      goto LABEL_8;
    }

LABEL_7:
    *v15 = *v16;
    goto LABEL_8;
  }

  if (v17 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v18 = v16[1];
  *v15 = v17;
  v15[1] = v18;

LABEL_8:
  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for CallbacksPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v6 = *v7;
  *(v6 + 4) = *(v7 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v11 + 5 + v6) & ~v11;
  v13 = (v11 + 5 + v7) & ~v11;
  (*(v9 + 32))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*v16 < 0xFFFFFFFFuLL)
  {
    *v15 = *v16;
  }

  else
  {
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
  }

  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for CallbacksPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = (v4 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v7 = (v5 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v6 = *v7;
  *(v6 + 4) = *(v7 + 4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v11 + 5 + v6) & ~v11;
  v13 = (v11 + 5 + v7) & ~v11;
  (*(v9 + 40))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v15 < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      v19 = v16[1];
      *v15 = v17;
      v15[1] = v19;
      goto LABEL_8;
    }

LABEL_7:
    *v15 = *v16;
    goto LABEL_8;
  }

  if (v17 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v18 = v16[1];
  *v15 = v17;
  v15[1] = v18;

LABEL_8:
  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for CallbacksPhase(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 < a2 && *(a1 + ((((v11 + ((v9 + 13) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v8 + *a1 + 1;
  }

  v13 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 5) & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v15 = *((v11 + v13) & 0xFFFFFFFFFFFFFFF8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if ((v15 + 1) >= 2)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = *(v6 + 48);

    return v14(v13);
  }
}

void storeEnumTagSinglePayload for CallbacksPhase(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  v13 = (((v12 + ((v10 + 13) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v11 >= a2)
  {
    if (v11 < a3)
    {
      *(a1 + v13) = 0;
    }

    if (a2)
    {
      v14 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 5) & ~v10;
      if (v9 < 0x7FFFFFFE)
      {
        v16 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v16 = 0;
          v16[1] = 0;
          *v16 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v16 = a2;
        }
      }

      else
      {
        v15 = *(v8 + 56);

        v15(v14, a2);
      }
    }
  }

  else
  {
    bzero(a1, v13);
    *a1 = ~v11 + a2;
    if (v11 < a3)
    {
      *(a1 + v13) = 1;
    }
  }
}

void instantiation function for generic protocol witness table for CallbacksPhase<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>);
  *(a1 + 8) = v2;
}

{
  swift_getWitnessTable(protocol conformance descriptor for CallbacksPhase<A>);
  *(a1 + 8) = v2;
}

uint64_t partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:)@<X0>(BOOL *a2@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a2 = (result & 1) == 0;
  return result;
}

double _s7SwiftUI14GraphicsFilterOWOi22_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

double static Glass.regular.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DDCAA00;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double static Glass.clear.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_18DDCAA10;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

double static Glass.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DDAA050;
  *(a1 + 16) = 5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void Glass.tint(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  outlined copy of _Glass.Variant.Role(v6, v5);

  if (!a1)
  {
    a1 = v8;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = a1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
}

double Glass.interactive(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 32) & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  outlined copy of _Glass.Variant.Role(v4, v3);

  return result;
}

uint64_t static Glass.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 40);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = *(a1 + 24);
  v19 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a2 + 24);
  v14 = v8;
  outlined copy of _Glass.Variant.Role(v15, v2);

  outlined copy of _Glass.Variant.Role(v5, v6);

  LOBYTE(v5) = specialized static _Glass.== infix(_:_:)(&v15, &v10);
  outlined consume of _Glass.Variant.Role(v10, v11);

  outlined consume of _Glass.Variant.Role(v15, v16);

  return v5 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Glass(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 40);
  v15 = *a1;
  v16 = v2;
  v17 = v3;
  v18 = *(a1 + 24);
  v19 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = *(a2 + 24);
  v14 = v8;
  outlined copy of _Glass.Variant.Role(v15, v2);

  outlined copy of _Glass.Variant.Role(v5, v6);

  LOBYTE(v5) = specialized static _Glass.== infix(_:_:)(&v15, &v10);
  outlined consume of _Glass.Variant.Role(v10, v11);

  outlined consume of _Glass.Variant.Role(v15, v16);

  return v5 & 1;
}

uint64_t assignWithTake for Glass(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for Glass(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Glass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t ResolvedStyledText.nextUpdate(after:equivalentDate:reduceFrequency:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double *a4@<X8>)
{
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 216);
  if (!v17)
  {
    goto LABEL_9;
  }

  v18 = *a1;
  if ([v17 length] < 1)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v19 = static NSAttributedStringKey.updateSchedule;
  [v17 length];
  if (![v17 attribute:v19 atIndex:0 effectiveRange:0])
  {
    memset(v26, 0, sizeof(v26));
    _sypSgWOhTm_6(v26, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
LABEL_9:
    (*(v13 + 56))(v11, 1, 1, v12, v14);
    goto LABEL_10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _sypSgWOhTm_6(v26, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  NSAttributedString.updateSchedule.getter(v27);
  v20 = v28;
  v21 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  LOBYTE(v26[0]) = a3 & 1;
  TimelineSchedule.nextEntry(after:mode:limit:)(a2, v26, 60, 0, v20, v21, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  __swift_destroy_boxed_opaque_existential_1(v27);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_10:
    result = outlined destroy of Date?(v11, type metadata accessor for Date?);
    v25 = INFINITY;
    goto LABEL_11;
  }

  (*(v13 + 32))(v16, v11, v12);
  Date.timeIntervalSince(_:)();
  v23 = v22;
  result = (*(v13 + 8))(v16, v12);
  v25 = v18 + v23;
LABEL_11:
  *a4 = v25;
  return result;
}

uint64_t ResolvedStyledText.updatesAsynchronously.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
      return *(v0 + 256) & 1;
    }

    memset(v4, 0, sizeof(v4));
    _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  return 0;
}

uint64_t ResolvedStyledText.draw(in:with:applyingMarginOffsets:context:renderer:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[27];
  if (v7)
  {
    LOBYTE(v7) = NSAttributedString.isDynamic.getter();
  }

  v8 = *(*v3 + 296);

  return v8(a1 & 1, v7 & 1, a2, a3);
}

uint64_t static Text._makeViewList(view:inputs:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(*a2))
  {
    outlined init with copy of _ViewListInputs(a2, v11);
    if (v13)
    {
      v9 = v13;
      v10 = v14 & 1;
      v13 = 0;
      v14 = 0;
      specialized Set._Variant.insert(_:)(&v8, &type metadata for LeafContentType.TraitKey);
      v5 = v9;
      v6 = v10;

      v13 = v5;
      v14 = v6;
    }

    LODWORD(v9) = *(a2 + 64);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type Text.WriteTextTrait and conformance Text.WriteTextTrait();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5(v11, a3);
    return outlined destroy of _ViewListInputs(v11);
  }

  else
  {

    return _s7SwiftUI16_ViewListOutputsVAAE05unarycD04view6inputsAcA11_GraphValueVyxG_AA01_cD6InputsVtAA0C0RzlFZAA4TextV_Tt2B5(a2, a3);
  }
}

uint64_t Text.WriteTextTrait.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    AGGraphGetValue();
  }

  v5 = v3;
  result = _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA15LeafContentTypeO0dG0V_Tt0B5(1);
  *a2 = v5;
  return result;
}

void *static Text.makeTextAttributes(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v90 = a3;
  v116 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ResolvedTextFilter(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v74[-v9];
  v91 = *a1;
  v10 = *(a2 + 48);
  *v115 = *(a2 + 32);
  *&v115[16] = v10;
  *&v115[32] = *(a2 + 64);
  *&v115[48] = *(a2 + 80);
  v11 = *(a2 + 16);
  v113 = *a2;
  v114 = v11;
  v12 = v113;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19TextAllowsSelectionV_Tt2g5(v113))
  {
    v88 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA22TextSelectionForbiddenV_Tt2g5(v12) ^ 1;
  }

  else
  {
    v88 = 0;
  }

  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17TextRendererInputV_Tt2g5(v12);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v12, v105);
  if (v14)
  {
    v15 = (v14 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v15 = &static ArchivedViewInput.defaultValue;
  }

  v16 = ~(32 * *v15) & 0x20;
  Attribute = AGWeakAttributeGetAttribute();
  v75 = *MEMORY[0x1E698D3F8];
  if (Attribute == v75)
  {
    if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA4TextV06LayoutI0V_TtB5Tf4dn_n(*&v115[16]))
    {
      v16 |= 0x40u;
    }
  }

  else
  {
    v16 |= 0x48u;
  }

  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA28PreferTextLayoutManagerInputV_Tt2g5(v12))
  {
    v16 |= 0x10u;
  }

  v110 = v113;
  v111 = v114;
  v112 = *v115;
  v108 = *&v115[8];
  v109[0] = *&v115[24];
  *(v109 + 12) = *&v115[36];
  outlined init with copy of _ViewInputs(&v113, &v105);
  v18 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19VariantThatFitsFlagV_Tt2g5(v12);
  v87 = *&v115[4];
  v19 = v114;
  v89 = v18;
  v76 = v13;
  if (v18)
  {
    v85 = HIDWORD(v13);
    swift_beginAccess();
    LODWORD(v83) = *(v19 + 16);
    v82 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v12);
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA17ArchivedViewInputV_Tt2G5(v12, &v94);
    LOWORD(v93[0]) = v94;
    v92 = v16;
    HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v12);
    v86 = 0;
    v66 = *&v115[40];
    v67 = DWORD2(v113);
    v105 = v113;
    v106 = v114;
    v107[0] = *v115;
    _GraphInputs.interfaceIdiom.getter(&v102);
    v96 = v102;
    v68 = v91;
    v69 = specialized SizeFittingTextFilter.init(size:text:environment:time:referenceDate:includeDefaultAttributes:allowsKeyColors:archiveOptions:features:attachmentsAsAuxiliaryMetadata:idiom:)(v66, v91, v83, v67, v82, 1, 1u, v93, &v92, HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5 & 1, &v96);
    v71 = v70;
    *&v105 = v69;
    DWORD2(v105) = v72;
    BYTE12(v105) = v73 & 1;
    *&v106 = v70;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type SizeFittingTextFilter and conformance SizeFittingTextFilter();
    v43 = Attribute.init<A>(body:value:flags:update:)();
    *&v105 = __PAIR64__(*(v19 + 16), v68);
    *(&v105 + 1) = __PAIR64__(v85, v76);
    *&v106 = v71;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type SizeFittingTextLayoutComputer and conformance SizeFittingTextLayoutComputer();
    v44 = Attribute.init<A>(body:value:flags:update:)();

    v45 = v87;
    v46 = v87 & 0xFFFFFFFD;
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    LODWORD(v82) = v16;
    v83 = v7;
    v20 = v5;
    swift_beginAccess();
    v21 = *(v19 + 16);
    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v12);
    v80 = HIDWORD(v22);
    BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
    v23 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v12, v105);
    v81 = v22;
    if (v23)
    {
      v24 = (v23 + 72);
      v25 = (v23 + 73);
    }

    else
    {
      v24 = &static ArchivedViewInput.defaultValue;
      v25 = &static ArchivedViewInput.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v26 = *v25;
    v77 = *v24;
    v78 = v26;
    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v12);
    v86 = 0;
    BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v12, v105);
    v84 = v12;
    if (v28 && (v29 = *(v28 + 72)) != 0)
    {
      v30 = *(v28 + 80);
    }

    else
    {
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v29 = v31;
      v30 = &protocol witness table for InterfaceIdiomBox<A>;
    }

    v32 = DWORD2(v113);
    v33 = v85;
    *v85 = v91;
    *(v33 + 4) = v21;
    v79 = v20;
    v34 = v33 + *(v20 + 24);
    v35 = type metadata accessor for ResolvedTextHelper(0);
    *(v34 + *(v35 + 60)) = 0;
    type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    swift_storeEnumTagMultiPayload();
    v36 = v80;
    v37 = v81;
    *v34 = v32;
    *(v34 + 4) = v37;
    *(v34 + 8) = v36;
    *(v34 + 12) = 257;
    LOBYTE(v36) = v78;
    *(v34 + 14) = v77;
    *(v34 + 15) = v36;
    *(v34 + 16) = v82;
    *(v34 + 18) = v27 & 1;
    *(v34 + 19) = 0;
    *(v34 + 24) = v29;
    *(v34 + 32) = v30;
    type metadata accessor for PropertyList.Tracker();
    v38 = swift_allocObject();
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    v40 = MEMORY[0x1E69E7CC8];
    *(v39 + 24) = 0;
    *(v39 + 32) = v40;
    *(v39 + 40) = v40;
    v41 = MEMORY[0x1E69E7CC0];
    *(v39 + 48) = MEMORY[0x1E69E7CC0];
    *(v39 + 56) = 0;
    *(v38 + 16) = v39;
    *(v34 + 40) = v38;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0u;
    *(v34 + *(v35 + 64)) = 0;
    v42 = v83;
    outlined init with copy of ResolvableStringResolutionContext(v33, v83, type metadata accessor for ResolvedTextFilter);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ResolvedStyledText();
    lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type ResolvedTextFilter and conformance ResolvedTextFilter, type metadata accessor for ResolvedTextFilter, protocol conformance descriptor for ResolvedTextFilter);
    v43 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of Date?(v42, type metadata accessor for ResolvedTextFilter);
    outlined destroy of Date?(v33, type metadata accessor for ResolvedTextFilter);
    v44 = 0;
    v45 = v87;
    v46 = v87;
    v12 = v84;
  }

  v47 = v46 | 0x2000;
  if ((v88 & 1) == 0)
  {
    v54 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE025TextAccessibilityProviderF033_96A6D9E0D6EA43C386EBC45EDA3A548BLLV_Tt2g5(v12);
    v56 = v55;
    v105 = v110;
    v106 = v111;
    *&v107[0] = __PAIR64__(v47, v112);
    *(v107 + 8) = v108;
    *(&v107[2] + 4) = *(v109 + 12);
    *(&v107[1] + 8) = v109[0];
    v104[0] = v107[0];
    v104[1] = v107[1];
    v104[2] = v107[2];
    LODWORD(v104[3]) = DWORD2(v109[1]);
    v102 = v110;
    v103 = v111;
    v57 = (v45 & 0x20) != 0 && (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*&v115[16]) & 1) != 0 && (v45 & 0x2000) == 0;
    outlined init with copy of _ViewInputs(&v105, &v96);
    static Text.makeTextChildQuery<A>(_:styledText:view:renderer:inputs:isScrapeable:)(v43, v91, v76, &v102, v57, v54, v56, v93);
    v98 = v104[0];
    v99 = v104[1];
    v100 = v104[2];
    v101 = v104[3];
    v96 = v102;
    v97 = v103;
    v53 = &v96;
    goto LABEL_34;
  }

  v48 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v12);
  if (v48)
  {
    v50 = v48;
    v102 = v110;
    v103 = v111;
    *&v104[0] = __PAIR64__(v47, v112);
    *(&v104[2] + 4) = *(v109 + 12);
    *(v104 + 8) = v108;
    *(&v104[1] + 8) = v109[0];
    v98 = v104[0];
    v99 = v104[1];
    v100 = v104[2];
    v101 = DWORD2(v109[1]);
    v96 = v110;
    v97 = v111;
    v91 = v44;
    v51 = *(v49 + 8);
    v52 = v49;
    outlined init with copy of _ViewInputs(&v102, &v105);
    v51(v93, v43, &v96, v50, v52);
    v44 = v91;
    v107[0] = v98;
    v107[1] = v99;
    v107[2] = v100;
    LODWORD(v107[3]) = v101;
    v105 = v96;
    v106 = v97;
    v53 = &v105;
LABEL_34:
    outlined destroy of _ViewInputs(v53);
    v94 = v93[0];
    v95 = v93[1];
    goto LABEL_35;
  }

  v94 = v41;
  LODWORD(v95) = 0;
  HIDWORD(v95) = v75;
LABEL_35:
  v58 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v12);
  if (v58)
  {
    v107[0] = *v115;
    v107[1] = *&v115[16];
    v107[2] = *&v115[32];
    LODWORD(v107[3]) = *&v115[48];
    v105 = v113;
    v106 = v114;
    v59 = MEMORY[0x1EEE9AC00](v58);
    (*(v60 + 8))(&v105, partial apply for implicit closure #2 in static Text.makeTextAttributes(view:inputs:), v59);
  }

  v105 = v110;
  v106 = v111;
  *(v107 + 8) = v108;
  if (v89)
  {
    v61 = v44;
  }

  else
  {
    v61 = HIDWORD(v95);
  }

  if (v89)
  {
    v62 = v95 | 0x80;
  }

  else
  {
    v62 = v95;
  }

  *&v107[0] = __PAIR64__(v47, v112);
  *(&v107[1] + 8) = v109[0];
  *(&v107[2] + 4) = *(v109 + 12);
  result = outlined destroy of _ViewInputs(&v105);
  v64 = v90;
  *v90 = v94;
  *(v64 + 2) = v62;
  *(v64 + 3) = v61;
  return result;
}

uint64_t implicit closure #2 in static Text.makeTextAttributes(view:inputs:)(int a1, uint64_t a2)
{
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
  type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>(0);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Map<ResolvedStyledText, TimelineSchedule?> and conformance Map<A, B>, type metadata accessor for Map<ResolvedStyledText, TimelineSchedule?>, MEMORY[0x1E698D3A0]);

  v2 = Attribute.init<A>(body:value:flags:update:)();

  return v2;
}

id ResolvedStyledText.resolvedContent(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(v1 + 216);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (NSAttributedString.isDynamic.getter() && (*(v2 + 256) & 1) != 0)
  {
    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
    if (!swift_dynamicCast())
    {
LABEL_9:

      return 0;
    }

    v9 = one-time initialization token for resolvableTextSegment;
    v10 = aBlock[6];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = static NSAttributedStringKey.resolvableTextSegment;
    v12 = [v10 length];
    outlined init with copy of ResolvableStringResolutionContext(a1, &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
    v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ResolvableStringResolutionContext);
    v15 = swift_allocObject();
    *(v15 + 16) = _s7SwiftUI30ResolvableTextSegmentAttributeO6update_2inySo25NSMutableAttributedStringC_AA0cK17ResolutionContextVtFZyypSg_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0;
    *(v15 + 24) = v14;
    aBlock[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_10;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    [v17 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{2, v16}];

    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    v8 = v17;
    if (v16)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  return v8;
}

uint64_t static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)(void *a1, unint64_t *a2, char *a3, char a4, __int16 *a5, void **a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, unsigned __int8 *a14, char a15, char a16)
{
  v21 = *a2;
  v87 = a3[1];
  v88 = *a3;
  v22 = *a5;
  v94 = *a6;
  v95 = a6[1];
  v97 = a6[2];
  v99 = a6[3];
  v23 = a6[5];
  v96 = a6[6];
  v92 = *a7;
  v93 = a6[4];
  v24 = *a14;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v21, v129);
  }

  else
  {
    *v127 = v21;

    TextLayoutProperties.init(from:)(v127, v129);
  }

  *v127 = *v129;
  *&v127[10] = *&v129[10];
  v25 = v130;
  v26 = v134;
  *&v127[82] = v135;
  *&v127[98] = v136;
  *&v127[114] = *v137;
  *&v127[128] = *&v137[14];
  v27 = v138;
  if (v24 != 2)
  {
    v26 = v24 & 1;
  }

  if (a16 != 3)
  {
    v25 = a16;
  }

  if (a15)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v127[26] = v25;
  *&v127[73] = *&v133[14];
  *&v127[59] = *v133;
  *&v127[43] = v132;
  *&v127[27] = v131;
  v127[81] = v26;
  v128 = v138 & 0xFD | v28;
  v98 = v22;
  if ((v26 & 1) != 0 || (v22 & 0xD8) != 0 || *(v92 + 16))
  {
LABEL_21:
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v29 = swift_allocObject();
    *(v29 + 416) = MEMORY[0x1E69E7CC0];
    *(v29 + 424) = 0u;
    *(v29 + 440) = 0u;
    *(v29 + 456) = 0u;
    *(v29 + 472) = 0u;
    *(v29 + 488) = 512;
    if ((v127[8] & 1) != 0 || *v127 != 1)
    {
      v33 = a8;
      v34 = v97;
      v35 = v95;
      if (a1)
      {
        NSAttributedString.replacingLineBreakModes(_:)(0);
        a1 = v36;
      }
    }

    else
    {
      v32 = a1;
      v33 = a8;
      v34 = v97;
      v35 = v95;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v38 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v37 setDelegate_];
    [v37 setUsesFontLeading_];
    v86 = a1;
    v91 = v37;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v91, a1, v125);
    v39 = v125[3];
    *(v29 + 528) = v125[2];
    *(v29 + 544) = v39;
    *(v29 + 560) = v125[4];
    v40 = v125[1];
    *(v29 + 496) = v125[0];
    *(v29 + 512) = v40;
    *(v29 + 576) = v38;
    *(v29 + 352) = v94;
    *(v29 + 360) = v35;
    *(v29 + 368) = v34;
    *(v29 + 376) = v99;
    *(v29 + 384) = v93;
    *(v29 + 392) = v23;
    *(v29 + 400) = v96;
    *(v29 + 408) = v92;
    *(v29 + 200) = 0;
    *(v29 + 208) = 1;
    v126 = 1;
    *(v29 + 280) = 0u;
    *(v29 + 296) = 0u;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *(v29 + 344) = 1;
    *(v29 + 216) = a1;
    *(v29 + 224) = a9;
    *(v29 + 232) = a10;
    *(v29 + 240) = a11;
    *(v29 + 248) = a12;
    *(v29 + 256) = v88;
    *(v29 + 257) = v87;
    *(v29 + 258) = a4 & 1;
    *(v29 + 260) = v98;
    *(v29 + 264) = v33;
    *(v29 + 272) = a13;
    v41 = *&v127[16];
    *(v29 + 16) = *v127;
    *(v29 + 32) = v41;
    v42 = *&v127[80];
    *(v29 + 80) = *&v127[64];
    *(v29 + 96) = v42;
    v43 = *&v127[48];
    *(v29 + 48) = *&v127[32];
    *(v29 + 64) = v43;
    *(v29 + 160) = v128;
    v44 = *&v127[128];
    *(v29 + 128) = *&v127[112];
    *(v29 + 144) = v44;
    *(v29 + 112) = *&v127[96];
    if (a1)
    {
      v112 = 0uLL;
      v113 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      v114 = 1;
      v108 = v127[104];
      v109 = *&v127[112];
      v121 = *&v127[96];
      v122 = *&v127[112];
      v123 = *&v127[128];
      v124 = v128;
      v117 = *&v127[32];
      v118 = *&v127[48];
      v119 = *&v127[64];
      v120 = *&v127[80];
      v115 = *v127;
      v116 = *&v127[16];
      outlined init with copy of TextLayoutProperties(v127, v107);
      v45 = v86;
      outlined init with copy of TextLayoutProperties(v127, v107);
      v46 = v38;
      outlined copy of ResolvedTextSuffix(v94, v35, v97, v99, v93, v23, v96);

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v45, &v110, &v115);
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v55 = v113;
      *(v29 + 312) = v112;
      *(v29 + 328) = v55;
      *(v29 + 344) = v114;
      v56 = v111;
      *(v29 + 280) = v110;
      *(v29 + 296) = v56;
      *(v29 + 168) = v48;
      *(v29 + 176) = v50;
      *(v29 + 184) = v52;
      *(v29 + 192) = v54;
      v57 = v38;
    }

    else
    {
      *(v29 + 344) = 1;
      *(v29 + 168) = 0uLL;
      *(v29 + 184) = 0uLL;
      outlined init with copy of TextLayoutProperties(v127, &v115);
      v57 = v38;
      v58 = v38;
      outlined copy of ResolvedTextSuffix(v94, v35, v97, v99, v93, v23, v96);
    }

    swift_beginAccess();
    v59 = _TextContainer(*(v29 + 97));
    [v59 setLineFragmentPadding_];
    v60 = v91;
    [v91 setTextContainer_];
    if ((v98 & 0x40) == 0)
    {
      if (v23 < 0)
      {
        outlined consume of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
        if ((v98 & 0x80) == 0 && !*(v92 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        outlined copy of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
        v60 = v91;
        outlined consume of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
      }
    }

    _NSTextLayoutManagerRequiresCTLine(v60);
LABEL_35:
    outlined destroy of TextLayoutProperties(v127);

    return v29;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    outlined copy of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
    outlined consume of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
    outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
    goto LABEL_21;
  }

  outlined consume of ResolvedTextSuffix(v94, v95, v97, v99, v93, v23, v96);
  outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
  if (v127[120] != 2)
  {
    goto LABEL_21;
  }

  type metadata accessor for ResolvedStyledText.StringDrawing();
  v29 = swift_allocObject();
  if (v27)
  {
    outlined init with copy of TextLayoutProperties(v127, &v115);
    v31 = 1;
    v30 = v88;
    goto LABEL_40;
  }

  v30 = v88;
  if (!a1)
  {
    outlined init with copy of TextLayoutProperties(v127, &v115);
    goto LABEL_39;
  }

  outlined init with copy of TextLayoutProperties(v127, &v115);
  if (!NSAttributedString.isDynamic.getter())
  {
LABEL_39:
    v31 = 0;
    goto LABEL_40;
  }

  v31 = v88 & 1;
LABEL_40:
  v62 = *v127;
  v63 = v127[8];
  v64 = *&v127[16];
  v65 = v127[24];
  v66 = *&v127[88];
  v67 = *&v127[32];
  v68 = *&v127[72];
  if (a1)
  {
    v69 = a1;
  }

  else
  {
    v100 = *&v127[88];
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v69 = static NSAttributedString.emptyString;
    v66 = v100;
  }

  v108 = v63;
  v126 = v65;
  *(v29 + 352) = 0;
  *(v29 + 360) = v69;
  *(v29 + 368) = v62;
  *(v29 + 376) = v63;
  *(v29 + 384) = v64;
  *(v29 + 392) = v65;
  *(v29 + 400) = v67;
  *(v29 + 408) = v66;
  *(v29 + 424) = v31;
  *(v29 + 425) = v68 != 0.0;
  *(v29 + 426) = a4 & 1;
  *(v29 + 432) = MEMORY[0x1E69E7CC0];
  *(v29 + 200) = 0;
  *(v29 + 208) = 1;
  v70 = (v29 + 280);
  v106 = 1;
  *(v29 + 216) = a1;
  *(v29 + 224) = a9;
  *(v29 + 232) = a10;
  *(v29 + 240) = a11;
  *(v29 + 248) = a12;
  *(v29 + 256) = v30;
  *(v29 + 257) = v87;
  *(v29 + 258) = a4 & 1;
  *(v29 + 260) = v22;
  *(v29 + 264) = a8;
  *(v29 + 272) = a13;
  v71 = *&v127[80];
  *(v29 + 80) = *&v127[64];
  *(v29 + 96) = v71;
  v72 = *&v127[48];
  *(v29 + 48) = *&v127[32];
  *(v29 + 64) = v72;
  *(v29 + 160) = v128;
  v73 = *&v127[128];
  *(v29 + 128) = *&v127[112];
  *(v29 + 144) = v73;
  *(v29 + 112) = *&v127[96];
  v74 = *&v127[16];
  *(v29 + 16) = *v127;
  *(v29 + 32) = v74;
  if (a1)
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v105 = 1;
    LOBYTE(v125[0]) = v127[104];
    *(&v125[0] + 1) = *&v127[112];
    v121 = *&v127[96];
    v122 = *&v127[112];
    v123 = *&v127[128];
    v124 = v128;
    v117 = *&v127[32];
    v118 = *&v127[48];
    v119 = *&v127[64];
    v120 = *&v127[80];
    v115 = *v127;
    v116 = *&v127[16];
    v75 = a1;
    outlined init with copy of TextLayoutProperties(v127, v107);

    Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v75, &v101, &v115);
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    outlined destroy of TextLayoutProperties(v127);
    v84 = v104;
    *(v29 + 312) = v103;
    *(v29 + 328) = v84;
    *(v29 + 344) = v105;
    v85 = v102;
    *v70 = v101;
    *(v29 + 296) = v85;
    *(v29 + 168) = v77;
    *(v29 + 176) = v79;
    *(v29 + 184) = v81;
    *(v29 + 192) = v83;
  }

  else
  {

    outlined destroy of TextLayoutProperties(v127);
    *v70 = 0u;
    *(v29 + 296) = 0u;
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *(v29 + 344) = 1;
    *(v29 + 168) = 0u;
    *(v29 + 184) = 0u;
  }

  return v29;
}

Swift::Void __swiftcall ResolvedOptionalTextFilter.updateValue()()
{
  v1 = v0;
  v32 = *MEMORY[0x1E69E9840];
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for Text?, &type metadata for Text, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = Value[1];
  v8 = Value[2];
  v7 = Value[3];
  outlined copy of Text?(*Value, v5, v8, v7);
  v9 = AGGraphGetValue();
  v11 = v10;
  v13 = *v9;
  v12 = v9[1];
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for ResolvedStyledText?, v14, type metadata accessor for ResolvedStyledText, MEMORY[0x1E69E6720]);
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_18;
  }

  v29 = v11;
  v15 = (v1 + *(type metadata accessor for ResolvedOptionalTextFilter(0) + 24));
  if ((v4 & 1) == 0)
  {

    goto LABEL_4;
  }

  if (!v15[9])
  {

    if (!v7)
    {
      goto LABEL_4;
    }

LABEL_19:
    v30 = *&v13;
    v31 = v12;
    type metadata accessor for ResolvedOptionalTextFilter(0);
    v30 = COERCE_DOUBLE(ResolvedTextHelper.resolve(_:with:sizeFitting:)(v6, v5, v8, v7, &v30, 0));
    AGGraphSetOutputValue();

    goto LABEL_20;
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v16 = v15[6];
  if ((v15[8] & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      v27 = v15[8];
      v28 = v15[9];
      v21 = v16 == v6 && v15[7] == v5;
      v26 = v15[7];
      if (v21)
      {

        outlined copy of Text?(v6, v5, v27, v28);
        goto LABEL_34;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined copy of Text?(v16, v26, v27, v28);
      if (v24)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if ((v8 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  v23 = *(*v16 + 96);
  v27 = v15[8];
  v28 = v15[9];
  v26 = v15[7];

  v17 = outlined copy of Text?(v16, v26, v27, v28);
  if ((v23(v6, v17) & 1) == 0)
  {
LABEL_32:
    outlined consume of Text?(v16, v26, v27, v28);
    goto LABEL_19;
  }

LABEL_34:
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v28, v7);
  v25 = v22;
  outlined consume of Text?(v16, v26, v27, v28);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v29 & 1) != 0 && (PropertyList.Tracker.hasDifferentUsedValues(_:)(v13))
  {
    goto LABEL_19;
  }

  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v31 & 1) == 0 && *AGGraphGetValue() >= v30)
  {
    goto LABEL_19;
  }

LABEL_20:
  type metadata accessor for ResolvedOptionalTextFilter(0);
  type metadata accessor for ResolvedTextHelper(0);
  ResolvedTextHelper.NextUpdate.time()();
  if ((v31 & 1) != 0 || (v18 = v30, *AGGraphGetValue() >= v18))
  {
    outlined consume of Text?(v6, v5, v8, v7);
  }

  else
  {
    specialized static GraphHost.currentHost.getter();
    outlined consume of Text?(v6, v5, v8, v7);

    type metadata accessor for ViewGraph();
    v19 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    v20 = *(v19 + 376);
    if (v18 < v20)
    {
      v20 = v18;
    }

    *(v19 + 376) = v20;
  }
}

uint64_t AccessibilityStyledTextContentView.init(text:unresolvedText:renderer:needsDrawingGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double static TextChildQuery.scrapeContent(from:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AGGraphGetAttributeInfo();
  v8 = v7;
  v9 = swift_allocObject();
  type metadata accessor for TextChildQuery(0, a1, a2, v10);
  *(v9 + 16) = TextChildQuery.unresolvedText.getter();
  *(v9 + 24) = v11;
  *(v9 + 32) = v12 & 1;
  *(v9 + 40) = v13;
  type metadata accessor for ResolvedStyledText();
  *(v9 + 48) = *AGGraphGetValue();

  TextChildQuery.environment.getter((v9 + 56));
  v14 = *(v8 + 32);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v16 = *Value;
  v17 = Value[1];
  v18 = AGGraphGetValue();
  v19 = *v18;
  v20 = v18[1];
  v21 = AGGraphGetValue();
  v23 = *v21;
  v22 = *(v21 + 8);
  v24 = *(v21 + 32) - (v16 - *(v21 + 16));
  v25 = *(v21 + 40) - (v17 - *(v21 + 24));
  *a3 = 0;
  *(a3 + 4) = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v23;
  *(a3 + 40) = v22;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = v24;
  *(a3 + 72) = v25;

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TextChildQuery<A>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for LayoutEngine.debugContentDescription.getter in conformance StyledTextLayoutEngine()
{
  v1 = *(*v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t AccessibilityStyledTextContentView.unresolvedText.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Text.Storage(v1, *(v0 + 16), *(v0 + 24));

  return v1;
}

void AccessibilityStyledTextContentView.unresolvedText.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*(v4 + 8), *(v4 + 16), *(v4 + 24));

  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 32) = a4;
}

uint64_t StyledTextContentView.init(text:renderer:needsDrawingGroup:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

double StyledTextContentView.shape(in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  if (v8)
  {
    v10 = *(*v8 + 120);

    v12 = v10(v11);
    v16 = CGRect.outset(by:)(v12, v13, v14, v15, 0.0, 0.0, a2, a3);
  }

  else
  {
    v16 = 0.0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0x40000000;

  return v16;
}

void *static StyledTextContentView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v9 = v3;
  return static StyledTextContentView._makeInnerView(view:inputs:)(&v9, v7, a3);
}

double StyledTextContentView.ArchivedTransitionEnvironment.value.getter@<D0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);
  *a2 = *Value;
  a2[1] = v5;

  v6 = *AGGraphGetValue();

  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v4, &v27);

    v8 = v27;
    if (BYTE5(v28))
    {
LABEL_3:

      v9 = v28 | (BYTE4(v28) << 32);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v4);
    if (v10)
    {
      v8 = v10[9];
      v11 = *(v10 + 20);
      v12 = v11 | (*(v10 + 84) << 32);
      v13 = *(v10 + 85);
      v14 = *(v10 + 86);
      v15 = *(v10 + 87);
      v16 = v10[11];
      v17 = *(v10 + 24);
      BYTE4(v28) = *(v10 + 84);
      LODWORD(v28) = v11;
      BYTE5(v28) = v13;
      BYTE6(v28) = v14;
      HIBYTE(v28) = v15;
      v29 = v16;
      v30 = v17;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v8 = static ContentTransition.State.defaultValue;
      v12 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v13 = BYTE13(static ContentTransition.State.defaultValue);
      v28 = *(&static ContentTransition.State.defaultValue + 1);
      v29 = off_1ED536620;
      v30 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v8, v12, v13);

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v9 = v28 | (BYTE4(v28) << 32);
  if ((v8 & 0xC000000000) == 0x4000000000 && (v8 & 0xFF0000000000) == 0x20000000000)
  {
    v18 = (*(*v6 + 208))(v7);

    outlined consume of ContentTransition.Storage(v8, v9, 0);
    BYTE5(v28) = 0;
    v8 = v8 & 0xFFFF000000000000 | (((v18 & 1) == 0) << 40) | v8 | ((BYTE4(v8) & 1) << 32) | 0x4000000000;
  }

  else
  {
  }

LABEL_14:
  v19 = BYTE5(v28);
  v20 = BYTE6(v28);
  v21 = v29;
  v22 = v30;
  v23 = HIBYTE(v28);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v8, v9, v19);
  v24 = 0x1000000000000;
  if (!v20)
  {
    v24 = 0;
  }

  v25 = v9 & 0xFFFFFFFFFFLL | (v19 << 40) | v24 | (v23 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(a2, v8, v25, v21, v22);

  outlined consume of ContentTransition.Storage(v8, v9, v19);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v4, *a2);
  }

  outlined consume of ContentTransition.Storage(v8, v9, v19);

  return result;
}

double protocol witness for ShapeStyledLeafView.shape(in:) in conformance StyledTextContentView(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  if (v8)
  {
    v10 = *(*v8 + 120);

    v12 = v10(v11);
    v16 = CGRect.outset(by:)(v12, v13, v14, v15, 0.0, 0.0, a2, a3);
  }

  else
  {
    v16 = 0.0;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0x40000000;

  return v16;
}

uint64_t protocol witness for Rule.value.getter in conformance TextLayoutQuery@<X0>(uint64_t *a1@<X8>)
{
  result = TextLayoutQuery.value.getter(*v1, v1[1]);
  *a1 = result;
  return result;
}

void static ResolvedStyledText.defaultTransition.getter(uint64_t a1@<X8>)
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v3 = 0x302000000;
  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
LABEL_7:
      v4 = 0;
      v5 = 0;
      v6 = 0;
      goto LABEL_12;
    }
  }

  else if (static Semantics.forced >= v2)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v4 = static ContentTransition.identity;
  v3 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
  v5 = HIBYTE(word_1EAB144D4);
  v6 = byte_1EAB144D6;
  outlined copy of ContentTransition.Storage(static ContentTransition.identity, v3, SHIBYTE(word_1EAB144D4));
LABEL_12:
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3);
  *(a1 + 13) = v5;
  *(a1 + 14) = v6;
}

void closure #1 in ResolvedStyledText.requiresTransition(to:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t *a5, void *a6, void *a7)
{
  v40 = a3;
  v41 = a7;
  v46 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for AttributeContainer();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  v20 = *a5;
  if (v20 >= [a6 length])
  {
    *a4 = 1;
    return;
  }

  v39 = a4;
  v43 = 0;
  v44 = 0;
  v21 = [a6 attributesAtIndex:*a5 effectiveRange:&v43];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AttributeContainer.init(_:)();
  AttributeContainer.init(_:)();
  LOBYTE(v21) = static AttributeContainer.== infix(_:_:)();
  v22 = *(v13 + 8);
  v22(v15, v12);
  v22(v19, v12);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7A720);
  v24 = v23;
  if (!*(a1 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v26 & 1) == 0))
  {

LABEL_10:
    v27 = [v41 attributedSubstringFromRange_];
    v28 = [v27 string];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = [a6 attributedSubstringFromRange_];
    v33 = [v32 string];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (v29 == v34 && v31 == v36)
    {

      goto LABEL_14;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_14;
    }

LABEL_16:
    *v39 = 1;
    return;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v25, v45);

  if ((swift_dynamicCast() & 1) == 0 || (v42 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (__OFADD__(*a5, v44))
  {
    __break(1u);
  }

  *a5 += v44;
}

double protocol witness for StatefulRule.updateValue() in conformance StyledTextLayoutComputer()
{
  v0 = *AGGraphGetValue();

  v1 = *(AGGraphGetValue() + 8);
  v5[0] = v0;
  v5[1] = v1;
  v4 = v5;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v3, _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFqd__yXEfU0_AD010StyledTextgH033_641995D812913A47B866B20B88782376LLV_AD0mngL0VTG5TA_0);

  return result;
}

uint64_t TextLayoutProperties.lineLimit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t TextLayoutProperties.lowerLineLimit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

double TextLayoutProperties.textSizing.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;

  return result;
}

void TextLayoutProperties.textSizing.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);

  *(v1 + 104) = v2;
  *(v1 + 112) = v3;
}

__n128 TextLayoutProperties.textShape.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 136);
  result = *(v1 + 120);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 TextLayoutProperties.textShape.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  return result;
}

uint64_t (*TextLayoutProperties.widthIsFlexible.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 144);
  *(a1 + 9) = v2;
  *(a1 + 8) = v2 & 1;
  return TextLayoutProperties.widthIsFlexible.modify;
}

uint64_t TextLayoutProperties.sizeFitting.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 144) = *(v1 + 144) & 0xFD | v2;
  return result;
}

uint64_t (*TextLayoutProperties.sizeFitting.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 144);
  *(a1 + 9) = v2;
  *(a1 + 8) = (v2 & 2) != 0;
  return TextLayoutProperties.sizeFitting.modify;
}

_BYTE *TextLayoutProperties.sizeFitting.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 144) = v1 | result[9] & 0xFD;
  return result;
}

double TextLayoutProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 88) = xmmword_18DDAB500;
  *(a1 + 25) = 1;
  *(a1 + 81) = 0;
  if (one-time initialization token for standard != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ED5372E8;
  *(a1 + 104) = static Text.Sizing.standard;
  *(a1 + 112) = v2;
  *(a1 + 120) = 2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;

  return result;
}

double TextLayoutProperties.init(_:)@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA20TextLayoutPropertiesV0J033_641995D812913A47B866B20B88782376LLVG_Tt1g5(v3, v10);
  }

  else
  {
    v9[0] = *a1;
    v9[1] = 0;

    TextLayoutProperties.init(from:)(v9, v10);
  }

  v4 = v10[7];
  *(a2 + 96) = v10[6];
  *(a2 + 112) = v4;
  *(a2 + 128) = v10[8];
  *(a2 + 144) = v11;
  v5 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v5;
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  return result;
}

void TextLayoutProperties.update(_:from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v63 = *(a2 + 25);
  v65 = *(a2 + 26);
  v67 = *(a2 + 27);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v68 = *(a2 + 48);
  v69 = *(a2 + 56);
  v70 = *(a2 + 64);
  v71 = *(a2 + 72);
  v72 = *(a2 + 80);
  v73 = *(a2 + 28);
  v79 = *(a2 + 81);
  v75 = *(a2 + 104);
  v60 = *(a2 + 112);
  v80 = *(a2 + 120);
  v58 = *(a2 + 136);
  v59 = *(a2 + 128);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 25);
  v64 = *(v2 + 26);
  v66 = *(v2 + 27);
  v82 = *(v2 + 28);
  v14 = *(v2 + 32);
  v15 = *(v2 + 40);
  v17 = *(v2 + 48);
  v16 = *(v2 + 56);
  v19 = *(v2 + 64);
  v18 = *(v2 + 72);
  v20 = *(v2 + 80);
  v78 = *(v2 + 81);
  v21 = *(v2 + 112);
  v81 = *(v2 + 120);
  v62 = *(v2 + 128);
  v61 = *(v2 + 136);
  v77 = v21;
  v76 = *(v2 + 104);
  if (v10)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_14:
    v24 = *(v2 + 80);
    v23 = *(v2 + 104);
    v25 = *(v2 + 25);
    if ((*(v2 + 24) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v9 != *a2)
  {
    v4 = 1;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_3:
  v56 = *(a2 + 16);
  v57 = *(a2 + 24);
  v22 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a1, v9, v10);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV09LineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v22, *a1);
  }

  v21 = v77;
  v23 = v76;
  v24 = v20;
  v6 = v57;
  v5 = v56;
  v25 = v13;
  if ((v12 & 1) == 0)
  {
LABEL_6:
    if (v11 == v5)
    {
      v26 = v6;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_16:
  v27 = v23;
  v28 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV014LowerLineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a1, v11, v12);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV014LowerLineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v28, *a1);
  }

  v23 = v27;
LABEL_19:
  if (v25 != v63)
  {
    v29 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014TruncationModeF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(a1, v25);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014TruncationModeK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v29, *a1);
    }
  }

  if (v64 != v65)
  {
    v30 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v64);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v30, *a1);
    }
  }

  if (v67 != v66)
  {
    v31 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(a1, v66);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV015LayoutDirectionK0VG_Ttg5(v31, *a1);
    }
  }

  if (v14 != v7)
  {
    if (v14 <= 1.0 && v14 > 0.0)
    {
      v33 = v14;
    }

    else
    {
      v33 = 1.0;
    }

    v34 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(a1, v33);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v34, *a1);
    }
  }

  if (v15 != v8)
  {
    v35 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011LineSpacingF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v15);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011LineSpacingK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v35, *a1);
    }
  }

  if (v17 != v68)
  {
    v36 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018LineHeightMultipleF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v17);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018LineHeightMultipleK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v36, *a1);
    }
  }

  if (v16 != v69)
  {
    v37 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MaximumLineHeightF0VG_Tt2g5(a1, v16);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017MaximumLineHeightK0VG_Ttg5(v37, *a1);
    }
  }

  if (v19 != v70)
  {
    v38 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017MinimumLineHeightF0VG_Tt2g5(a1, v19);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017MinimumLineHeightK0VG_Ttg5(v38, *a1);
    }
  }

  if (v18 != v71)
  {
    v39 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017HyphenationFactorF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v18);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017HyphenationFactorK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v39, *a1);
    }
  }

  if (v72 != v24)
  {
    v40 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019HyphenationDisabledF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1, v24);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019HyphenationDisabledK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v40, *a1);
    }
  }

  if (v82 != v73)
  {
    v42 = *a1;
    v41 = a1[1];
    if (v41)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v42, &v83);

      v43 = v83;
      v44 = v84 | (v85 << 32);
      v45 = v86;
      v46 = v87;
      v47 = v88;
      v74 = v89;
    }

    else
    {
      v48 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*a1);
      if (v48)
      {
        v43 = v48[9];
        v44 = *(v48 + 20) | (*(v48 + 84) << 32);
        v45 = *(v48 + 85);
        v46 = *(v48 + 86);
        v47 = v48[11];
        v49 = *(v48 + 24);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v43 = static ContentTransition.State.defaultValue;
        v44 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v45 = BYTE13(static ContentTransition.State.defaultValue);
        v46 = BYTE14(static ContentTransition.State.defaultValue);
        v47 = off_1ED536620;
        v49 = dword_1ED536628;
      }

      v74 = v49;
      outlined copy of ContentTransition.Storage(v43, v44, v45);
    }

    swift_retain_n();
    outlined copy of ContentTransition.Storage(v43, v44, v45);
    v50 = 0x1000000000000;
    if (!v46)
    {
      v50 = 0;
    }

    v51 = v50 | (v82 << 56);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(a1, v43, v51 | v44 & 0xFFFFFFFFFFLL | (v45 << 40), v47, v74);

    outlined consume of ContentTransition.Storage(v43, v44, v45);

    if (v41)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v42, *a1);
    }

    outlined consume of ContentTransition.Storage(v43, v44, v45);

    v21 = v77;
    v23 = v76;
  }

  if (v23 != v75 || (, , v52 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(v21, v60), , , (v52 & 1) == 0))
  {
    v53 = *a1;
    swift_retain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(a1, v23, v21);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(v53, *a1);
    }
  }

  if (v79 != v78)
  {
    v54 = *a1;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011WritingModeF0023_82074A2E22E8635055FCB3J8D5E40280LLVG_Tt2B5(a1, v78);

    if (a1[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011WritingModeK0023_82074A2E22E8635055FCB3O8D5E40280LLVG_Ttg5(v54, *a1);
    }
  }

  if (v81 == 2)
  {
    if (v80 == 2)
    {
      return;
    }
  }

  else if (v80 != 2 && ((v81 ^ v80) & 1) == 0 && v59 == *&v62 && v58 == *&v61)
  {
    return;
  }

  v55 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt2B5(a1, v81, v62, v61);

  if (a1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Ttg5(v55, *a1);
  }
}

void TextLayoutProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 25);
  v10 = *(v3 + 26);
  v11 = *(v3 + 28);
  v13 = *(v3 + 32);
  v12 = *(v3 + 40);
  v15 = *(v3 + 48);
  v14 = *(v3 + 56);
  v17 = *(v3 + 64);
  v16 = *(v3 + 72);
  v58 = *(v3 + 80);
  v59 = *(v3 + 27);
  v55 = *(v3 + 81);
  v61 = *(v3 + 88);
  v60 = *(v3 + 96);
  v56 = *(v3 + 104);
  v57 = *(v3 + 144);
  if (v9 != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v9 + 1);
  }

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 1;
  }

  else
  {
    v18 = v6;
  }

  if ((v18 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v5) ^ (v5 >> 63));
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 1;
  }

  else
  {
    v19 = v8;
  }

  if ((v19 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)((2 * v7) ^ (v7 >> 63));
  }

  if (v13 == 1.0)
  {
    goto LABEL_24;
  }

  v20 = fabs(v13);
  if (v20 >= 65536.0)
  {
    v21 = 33;
  }

  else
  {
    v21 = 37;
  }

  ProtobufEncoder.encodeVarint(_:)(v21);
  if (v20 >= 65536.0)
  {
    v24 = a1[1];
    v23 = v24 + 8;
    if (!__OFADD__(v24, 8))
    {
      if (a1[2] < v23)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v23) = v13;
      }

      else
      {
        a1[1] = v23;
        *(*a1 + v24) = v13;
      }

      goto LABEL_24;
    }

LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
    goto LABEL_119;
  }

  *&v13 = v13;
  if (a1[2] < v23)
  {
    goto LABEL_124;
  }

  a1[1] = v23;
  *(*a1 + v22) = LODWORD(v13);
  while (1)
  {
LABEL_24:
    if (v12 == 0.0)
    {
      goto LABEL_35;
    }

    v25 = fabs(v12);
    v26 = v25 >= 65536.0 ? 41 : 45;
    ProtobufEncoder.encodeVarint(_:)(v26);
    if (v25 >= 65536.0)
    {
      break;
    }

    v27 = a1[1];
    v23 = v27 + 4;
    if (!__OFADD__(v27, 4))
    {
      *&v12 = v12;
      if (a1[2] >= v23)
      {
        a1[1] = v23;
        *(*a1 + v27) = LODWORD(v12);
        goto LABEL_35;
      }

      goto LABEL_128;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v13);
  }

  v28 = a1[1];
  v23 = v28 + 8;
  if (__OFADD__(v28, 8))
  {
    goto LABEL_121;
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v12;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v28) = v12;
  }

  while (1)
  {
LABEL_35:
    if (v15 != 0.0)
    {
      v29 = fabs(v15);
      if (v29 >= 65536.0)
      {
        v30 = 49;
      }

      else
      {
        v30 = 53;
      }

      ProtobufEncoder.encodeVarint(_:)(v30);
      if (v29 >= 65536.0)
      {
        v32 = a1[1];
        v23 = v32 + 8;
        if (__OFADD__(v32, 8))
        {
          goto LABEL_123;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v15;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v32) = v15;
        }
      }

      else
      {
        v31 = a1[1];
        v23 = v31 + 4;
        if (__OFADD__(v31, 4))
        {
          goto LABEL_122;
        }

        *&v15 = v15;
        if (a1[2] < v23)
        {
LABEL_132:
          *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v15);
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v31) = LODWORD(v15);
        }
      }
    }

    if (v14 == 0.0)
    {
      goto LABEL_57;
    }

    v33 = fabs(v14);
    if (v33 >= 65536.0)
    {
      v34 = 57;
    }

    else
    {
      v34 = 61;
    }

    ProtobufEncoder.encodeVarint(_:)(v34);
    if (v33 < 65536.0)
    {
      v35 = a1[1];
      v23 = v35 + 4;
      if (!__OFADD__(v35, 4))
      {
        *&v14 = v14;
        if (a1[2] >= v23)
        {
          a1[1] = v23;
          *(*a1 + v35) = LODWORD(v14);
          goto LABEL_57;
        }

        goto LABEL_136;
      }

      __break(1u);
      goto LABEL_127;
    }

    v36 = a1[1];
    v23 = v36 + 8;
    if (!__OFADD__(v36, 8))
    {
      break;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v12);
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v14;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v36) = v14;
  }

  while (1)
  {
LABEL_57:
    if (v17 != 0.0)
    {
      v37 = fabs(v17);
      if (v37 >= 65536.0)
      {
        v38 = 65;
      }

      else
      {
        v38 = 69;
      }

      ProtobufEncoder.encodeVarint(_:)(v38);
      if (v37 >= 65536.0)
      {
        v40 = a1[1];
        v23 = v40 + 8;
        if (__OFADD__(v40, 8))
        {
          goto LABEL_131;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v17;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v40) = v17;
        }
      }

      else
      {
        v39 = a1[1];
        v23 = v39 + 4;
        if (__OFADD__(v39, 4))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        *&v17 = v17;
        if (a1[2] < v23)
        {
LABEL_140:
          *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v17);
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v39) = LODWORD(v17);
        }
      }
    }

    v17 = v61;
    if (v16 == 0.0)
    {
      goto LABEL_79;
    }

    v41 = fabs(v16);
    if (v41 >= 65536.0)
    {
      v42 = 73;
    }

    else
    {
      v42 = 77;
    }

    ProtobufEncoder.encodeVarint(_:)(v42);
    if (v41 < 65536.0)
    {
      v43 = a1[1];
      v23 = v43 + 4;
      if (!__OFADD__(v43, 4))
      {
        *&v16 = v16;
        if (a1[2] >= v23)
        {
          a1[1] = v23;
          *(*a1 + v43) = LODWORD(v16);
          goto LABEL_79;
        }

        goto LABEL_144;
      }

      __break(1u);
      goto LABEL_135;
    }

    v44 = a1[1];
    v23 = v44 + 8;
    if (!__OFADD__(v44, 8))
    {
      break;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v14);
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v16;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v44) = v16;
  }

  while (1)
  {
LABEL_79:
    v16 = v60;
    if (v61 != 0.0)
    {
      v45 = fabs(v61);
      if (v45 >= 65536.0)
      {
        v46 = 81;
      }

      else
      {
        v46 = 85;
      }

      ProtobufEncoder.encodeVarint(_:)(v46);
      if (v45 >= 65536.0)
      {
        v49 = a1[1];
        v23 = v49 + 8;
        if (__OFADD__(v49, 8))
        {
          goto LABEL_139;
        }

        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v61;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v49) = v61;
        }
      }

      else
      {
        v47 = a1[1];
        v23 = v47 + 4;
        if (__OFADD__(v47, 4))
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v48 = v61;
        if (a1[2] < v23)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v23) = v48;
        }

        else
        {
          a1[1] = v23;
          *(*a1 + v47) = v48;
        }
      }
    }

    if (v60 == 1.0)
    {
      goto LABEL_101;
    }

    v50 = fabs(v60);
    v51 = v50 >= 65536.0 ? 89 : 93;
    ProtobufEncoder.encodeVarint(_:)(v51);
    if (v50 >= 65536.0)
    {
      break;
    }

    v52 = a1[1];
    v23 = v52 + 4;
    if (!__OFADD__(v52, 4))
    {
      v53 = v60;
      if (a1[2] < v23)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v23) = v53;
      }

      else
      {
        a1[1] = v23;
        *(*a1 + v52) = v53;
      }

      goto LABEL_101;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    *ProtobufEncoder.growBufferSlow(to:)(v23) = LODWORD(v16);
  }

  v54 = a1[1];
  v23 = v54 + 8;
  if (__OFADD__(v54, 8))
  {
    goto LABEL_143;
  }

  if (a1[2] < v23)
  {
    *ProtobufEncoder.growBufferSlow(to:)(v23) = v60;
  }

  else
  {
    a1[1] = v23;
    *(*a1 + v54) = v60;
  }

LABEL_101:
  if (v10)
  {
    ProtobufEncoder.encodeVarint(_:)(0x60uLL);
    ProtobufEncoder.encodeVarint(_:)(v10 + 1);
  }

  if (v59)
  {
    ProtobufEncoder.encodeVarint(_:)(0x68uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

  if (!v11 || (specialized ProtobufEncoder.messageField<A>(_:_:)(14), !v2))
  {
    if (v55)
    {
      ProtobufEncoder.encodeVarint(_:)(0x80uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v57)
    {
      ProtobufEncoder.encodeVarint(_:)(0x88uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v56)
    {
      ProtobufEncoder.encodeVarint(_:)(0x90uLL);
      ProtobufEncoder.encodeVarint(_:)(v56);
    }

    if ((v57 & 2) != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x98uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if (v58)
    {
      ProtobufEncoder.encodeVarint(_:)(0xA0uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }
  }
}

uint64_t one-time initialization function for oversizedScalarsWithoutEmoji()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  __swift_allocate_value_buffer(v7, static NSAttributedString.oversizedScalarsWithoutEmoji);
  __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalarsWithoutEmoji);
  if (one-time initialization token for oversizedScalars != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalars);
  (*(v1 + 16))(v6, v8, v0);
  v9 = [objc_opt_self() ic_emojiCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.subtracting(_:)();
  v10 = *(v1 + 8);
  v10(v3, v0);
  return (v10)(v6, v0);
}

uint64_t closure #1 in NSAttributedString.allFonts()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CA0];
  outlined init with copy of Any?(a1, &v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  if (!v6)
  {
    return _sypSgWOhTm_6(&v5, &lazy cache variable for type metadata for Any?, v1 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  outlined init with take of Any(&v5, v7);
  outlined init with copy of Any(v7, &v5);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  specialized Set._Variant.insert(_:)(&v4, v3);

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ResolvedStyledText.layoutProperties.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  v4 = *(v1 + 96);
  v21 = *(v1 + 112);
  v22 = v3;
  v5 = *(v1 + 128);
  v23 = *(v1 + 144);
  v6 = *(v1 + 64);
  v8 = *(v1 + 32);
  v17 = *(v1 + 48);
  v7 = v17;
  v18 = v6;
  v9 = *(v1 + 64);
  v10 = *(v1 + 96);
  v19 = *(v1 + 80);
  v11 = v19;
  v20 = v10;
  v12 = *(v1 + 32);
  v16[0] = *(v1 + 16);
  v13 = v16[0];
  v16[1] = v12;
  *(a1 + 96) = v21;
  *(a1 + 112) = v5;
  *(a1 + 128) = *(v1 + 144);
  *(a1 + 32) = v7;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v1 + 160);
  *(a1 + 144) = *(v1 + 160);
  *a1 = v13;
  *(a1 + 16) = v8;
  return outlined init with copy of TextLayoutProperties(v16, &v15);
}

uint64_t ResolvedStyledText.layoutProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 144);
  v13[7] = *(v1 + 128);
  v13[8] = v4;
  v14 = *(v1 + 160);
  v5 = *(v1 + 64);
  v13[2] = *(v1 + 48);
  v13[3] = v5;
  v6 = *(v1 + 96);
  v13[4] = *(v1 + 80);
  v13[5] = v6;
  v13[6] = v3;
  v7 = *(v1 + 32);
  v13[0] = *(v1 + 16);
  v13[1] = v7;
  v8 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v8;
  *(v1 + 144) = *(a1 + 128);
  *(v1 + 160) = *(a1 + 144);
  v9 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v9;
  v10 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v10;
  v11 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v11;
  return outlined destroy of TextLayoutProperties(v13);
}

void ResolvedStyledText.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
}

uint64_t ResolvedStyledText.scaleFactorOverride.setter(uint64_t a1, char a2)
{
  v5 = swift_beginAccess();
  *(v2 + 200) = a1;
  *(v2 + 208) = a2 & 1;
  return (*(*v2 + 176))(v5);
}

void (*ResolvedStyledText.scaleFactorOverride.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ResolvedStyledText.scaleFactorOverride.modify;
}

void ResolvedStyledText.scaleFactorOverride.modify(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*(**(a1 + 24) + 176))(v4);
  }
}

void *ResolvedStyledText.storage.getter()
{
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

uint64_t ResolvedStyledText.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, char a5, __int16 *a6, void **a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v23 = swift_allocObject();

  outlined consume of ResolvedTextSuffix(*a7, a7[1], a7[2], a7[3], a7[4], a7[5], a7[6]);
  v24 = *(a2 + 80);
  v25 = *(a2 + 112);
  v74 = *(a2 + 96);
  v26 = v74;
  v75 = v25;
  v27 = *(a2 + 112);
  v76 = *(a2 + 128);
  v28 = *(a2 + 16);
  v29 = *(a2 + 48);
  v70 = *(a2 + 32);
  v30 = v70;
  v71 = v29;
  v31 = *(a2 + 48);
  v32 = *(a2 + 80);
  v72 = *(a2 + 64);
  v33 = v72;
  v73 = v32;
  v34 = *(a2 + 16);
  v69[0] = *a2;
  v35 = v69[0];
  v69[1] = v34;
  *(v23 + 224) = a9;
  *(v23 + 232) = a10;
  *(v23 + 240) = a11;
  *(v23 + 248) = a12;
  *(v23 + 16) = v35;
  *(v23 + 32) = v28;
  v77 = *(a2 + 144);
  v36 = *a4;
  v37 = *a6;
  *(v23 + 200) = 0;
  *(v23 + 208) = 1;
  v38 = (v23 + 280);
  v78 = 1;
  *(v23 + 216) = a1;
  *(v23 + 256) = v36;
  *(v23 + 258) = a5;
  *(v23 + 260) = v37;
  *(v23 + 264) = a13;
  *(v23 + 272) = a14;
  *(v23 + 80) = v33;
  *(v23 + 96) = v24;
  *(v23 + 48) = v30;
  *(v23 + 64) = v31;
  v39 = *(a2 + 128);
  *(v23 + 160) = *(a2 + 144);
  *(v23 + 128) = v27;
  *(v23 + 144) = v39;
  *(v23 + 112) = v26;
  if (*(a3 + 32))
  {
    if (a1)
    {
      v66 = 0uLL;
      v67 = 0uLL;
      v64 = 0uLL;
      v65 = 0uLL;
      v68 = 1;
      v62 = BYTE8(v74);
      v63 = v75;
      v40 = *(a2 + 112);
      v60[6] = *(a2 + 96);
      v60[7] = v40;
      v60[8] = *(a2 + 128);
      v61 = *(a2 + 144);
      v41 = *(a2 + 48);
      v60[2] = *(a2 + 32);
      v60[3] = v41;
      v42 = *(a2 + 80);
      v60[4] = *(a2 + 64);
      v60[5] = v42;
      v43 = *(a2 + 16);
      v60[0] = *a2;
      v60[1] = v43;
      outlined init with copy of TextLayoutProperties(v69, v59);
      outlined init with copy of TextLayoutProperties(v69, v59);
      v44 = a1;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v64, v60);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      outlined destroy of TextLayoutProperties(v69);
      v53 = v67;
      *(v23 + 312) = v66;
      *(v23 + 328) = v53;
      *(v23 + 344) = v68;
      v54 = v65;
      *v38 = v64;
      *(v23 + 296) = v54;
      *(v23 + 168) = v46;
      *(v23 + 176) = v48;
      *(v23 + 184) = v50;
      *(v23 + 192) = v52;
    }

    else
    {
      *(v23 + 312) = 0uLL;
      *(v23 + 328) = 0uLL;
      *v38 = 0uLL;
      *(v23 + 296) = 0uLL;
      *(v23 + 344) = 1;
      *(v23 + 168) = 0uLL;
      *(v23 + 184) = 0uLL;
    }
  }

  else
  {
    *(v23 + 312) = 0u;
    *(v23 + 328) = 0u;
    *v38 = 0u;
    *(v23 + 296) = 0u;
    *(v23 + 344) = 1;
    v55 = *(a3 + 16);
    *(v23 + 168) = *a3;
    *(v23 + 184) = v55;
  }

  return v23;
}

uint64_t ResolvedStyledText.init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, uint64_t a2, uint64_t a3, __int16 *a4, char a5, __int16 *a6, void **a7, void *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;

  outlined consume of ResolvedTextSuffix(*a7, a7[1], a7[2], a7[3], a7[4], a7[5], a7[6]);
  v26 = *(a2 + 112);
  v28 = *(a2 + 80);
  v73 = *(a2 + 96);
  v27 = v73;
  v74 = v26;
  v29 = *(a2 + 112);
  v75 = *(a2 + 128);
  v30 = *(a2 + 48);
  v32 = *(a2 + 16);
  v69 = *(a2 + 32);
  v31 = v69;
  v70 = v30;
  v33 = *(a2 + 48);
  v34 = *(a2 + 80);
  v71 = *(a2 + 64);
  v35 = v71;
  v72 = v34;
  v36 = *(a2 + 16);
  v68[0] = *a2;
  v37 = v68[0];
  v68[1] = v36;
  *(v15 + 280) = 0u;
  *(v15 + 296) = 0u;
  *(v15 + 312) = 0u;
  *(v15 + 328) = 0u;
  *(v15 + 224) = a9;
  *(v15 + 232) = a10;
  *(v15 + 240) = a11;
  *(v15 + 248) = a12;
  *(v15 + 112) = v27;
  *(v15 + 128) = v29;
  *(v15 + 144) = *(a2 + 128);
  v76 = *(a2 + 144);
  v38 = *a4;
  v39 = *a6;
  *(v15 + 200) = 0;
  *(v15 + 208) = 1;
  v77 = 1;
  *(v15 + 344) = 1;
  *(v15 + 216) = a1;
  *(v15 + 256) = v38;
  *(v15 + 258) = a5;
  *(v15 + 260) = v39;
  *(v15 + 264) = a13;
  *(v15 + 272) = a14;
  *(v15 + 160) = *(a2 + 144);
  *(v15 + 48) = v31;
  *(v15 + 64) = v33;
  *(v15 + 80) = v35;
  *(v15 + 96) = v28;
  *(v15 + 16) = v37;
  *(v15 + 32) = v32;
  if (*(a3 + 32))
  {
    if (a1)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v67 = 1;
      v61 = BYTE8(v73);
      v62 = v74;
      v40 = *(a2 + 112);
      v59[6] = *(a2 + 96);
      v59[7] = v40;
      v59[8] = *(a2 + 128);
      v60 = *(a2 + 144);
      v41 = *(a2 + 48);
      v59[2] = *(a2 + 32);
      v59[3] = v41;
      v42 = *(a2 + 80);
      v59[4] = *(a2 + 64);
      v59[5] = v42;
      v43 = *(a2 + 16);
      v59[0] = *a2;
      v59[1] = v43;
      outlined init with copy of TextLayoutProperties(v68, v58);
      outlined init with copy of TextLayoutProperties(v68, v58);
      v44 = a1;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v44, &v63, v59);
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      outlined destroy of TextLayoutProperties(v68);
      v53 = v66;
      *(v15 + 312) = v65;
      *(v15 + 328) = v53;
      *(v15 + 344) = v67;
      v54 = v64;
      *(v15 + 280) = v63;
      *(v15 + 296) = v54;
      *(v15 + 168) = v46;
      *(v15 + 176) = v48;
      *(v15 + 184) = v50;
      *(v15 + 192) = v52;
    }

    else
    {
      *(v15 + 344) = 1;
      *(v15 + 168) = 0u;
      *(v15 + 184) = 0u;
    }
  }

  else
  {
    *(v15 + 344) = 1;
    v55 = *(a3 + 16);
    *(v15 + 168) = *a3;
    *(v15 + 184) = v55;
  }

  return v15;
}

SwiftUI::Spacing __swiftcall ResolvedStyledText.spacing()()
{
  result.minima._rawValue = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGSize __swiftcall ResolvedStyledText.size(in:)(CGSize in)
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result.height = v2;
  result.width = v1;
  return result;
}

void ResolvedStyledText.layoutValue(in:with:applyingMarginOffsets:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void ResolvedStyledText.resolvingContent(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(v1 + 216);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  if (!NSAttributedString.isDynamic.getter() || ([v8 mutableCopy], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40), (swift_dynamicCast() & 1) == 0))
  {

LABEL_14:

    return;
  }

  v9 = one-time initialization token for resolvableTextSegment;
  v10 = v157;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static NSAttributedStringKey.resolvableTextSegment;
  v12 = [v10 length];
  outlined init with copy of ResolvableStringResolutionContext(a1, &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(&v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ResolvableStringResolutionContext);
  v15 = swift_allocObject();
  *(v15 + 16) = closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)partial apply;
  *(v15 + 24) = v14;
  *&v140 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  *(&v140 + 1) = v15;
  *&v138 = MEMORY[0x1E69E9820];
  *(&v138 + 1) = 1107296256;
  *&v139 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(&v139 + 1) = &block_descriptor_33_0;
  v16 = _Block_copy(&v138);
  v17 = v10;

  [v17 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{2, v16}];

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v18 = *(v2 + 128);
    v153[1] = *(v2 + 112);
    v154 = v18;
    v155 = *(v2 + 144);
    v156 = *(v2 + 160);
    v19 = *(v2 + 64);
    v150 = *(v2 + 48);
    v151 = v19;
    v20 = *(v2 + 96);
    v152 = *(v2 + 80);
    v153[0] = v20;
    v21 = *(v2 + 32);
    v148 = *(v2 + 16);
    v149 = v21;
    v23 = *(v2 + 224);
    v22 = *(v2 + 232);
    v25 = *(v2 + 240);
    v24 = *(v2 + 248);
    v26 = *(v2 + 256);
    v119 = *(v2 + 257);
    v27 = *(v2 + 258);
    LODWORD(v28) = *(v2 + 260);
    v30 = *(v2 + 264);
    v29 = *(v2 + 272);
    swift_beginAccess();
    v121 = v30;
    v120 = v26;
    if ((BYTE1(v153[0]) & 1) != 0 || (v28 & 0xD8) != 0 || BYTE8(v154) != 2)
    {
      v117 = v28;
      type metadata accessor for ResolvedStyledText.TextLayoutManager();
      v33 = swift_allocObject();
      *(v33 + 416) = MEMORY[0x1E69E7CC0];
      *(v33 + 424) = 0u;
      *(v33 + 440) = 0u;
      *(v33 + 456) = 0u;
      *(v33 + 472) = 0u;
      *(v33 + 488) = 512;
      v34 = BYTE8(v148);
      v35 = v148;
      v118 = v17;
      v116 = v29;
      if ((v34 & 1) != 0 || v35 != 1)
      {
        outlined init with copy of TextLayoutProperties(&v148, &v138);

        v36 = v118;
        NSAttributedString.replacingLineBreakModes(_:)(0);
        v38 = v37;

        v17 = v38;
      }

      else
      {
        outlined init with copy of TextLayoutProperties(&v148, &v138);
      }

      v39 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
      v40 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
      [v39 setDelegate_];
      [v39 setUsesFontLeading_];
      v41 = v17;
      v42 = v39;
      ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v42, v17, v136);
      v43 = v136[3];
      *(v33 + 528) = v136[2];
      *(v33 + 544) = v43;
      *(v33 + 560) = v136[4];
      v44 = v136[1];
      *(v33 + 496) = v136[0];
      *(v33 + 512) = v44;
      *(v33 + 224) = v23;
      *(v33 + 232) = v22;
      *(v33 + 240) = v25;
      *(v33 + 248) = v24;
      v45 = v149;
      v46 = v148;
      v47 = v149;
      *(v33 + 16) = v148;
      *(v33 + 32) = v45;
      v48 = v153[0];
      v49 = v152;
      v50 = v153[0];
      *(v33 + 80) = v152;
      *(v33 + 96) = v48;
      v51 = v151;
      v52 = v150;
      v53 = v151;
      *(v33 + 48) = v150;
      *(v33 + 64) = v51;
      v54 = v154;
      *(v33 + 144) = v155;
      v55 = v154;
      v56 = v153[1];
      *(v33 + 112) = v153[1];
      *(v33 + 128) = v55;
      *(v33 + 352) = 0u;
      *(v33 + 368) = 0u;
      *(v33 + 280) = 0u;
      *(v33 + 296) = 0u;
      *(v33 + 312) = 0u;
      *(v33 + 328) = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v144 = v56;
      v145 = v54;
      v146 = v155;
      *(v33 + 384) = 0;
      *(v33 + 392) = 0x8000000000000000;
      *(v33 + 576) = v40;
      *(v33 + 400) = 0;
      *(v33 + 408) = MEMORY[0x1E69E7CC0];
      *(v33 + 200) = 0;
      *(v33 + 208) = 1;
      v137 = 1;
      *(v33 + 344) = 1;
      *(v33 + 216) = v17;
      v57 = v119;
      *(v33 + 256) = v120;
      *(v33 + 257) = v57;
      *(v33 + 258) = v27;
      v58 = v117;
      *(v33 + 260) = v117;
      v59 = v116;
      *(v33 + 264) = v121;
      *(v33 + 272) = v59;
      *(v33 + 160) = v156;
      v135 = 1;
      v129 = BYTE8(v153[1]);
      v130 = v154;
      v147 = v156;
      v140 = v52;
      v141 = v53;
      v142 = v49;
      v143 = v50;
      v138 = v46;
      v139 = v47;
      outlined init with copy of TextLayoutProperties(&v148, v128);
      outlined init with copy of TextLayoutProperties(&v148, v128);
      v60 = v41;
      v61 = v40;
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v60, &v131, &v138);
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;

      v70 = v134;
      *(v33 + 312) = v133;
      *(v33 + 328) = v70;
      *(v33 + 344) = v135;
      v71 = v132;
      *(v33 + 280) = v131;
      *(v33 + 296) = v71;
      *(v33 + 168) = v63;
      *(v33 + 176) = v65;
      *(v33 + 184) = v67;
      *(v33 + 192) = v69;
      swift_beginAccess();
      v72 = _TextContainer(*(v33 + 97));
      [v72 setLineFragmentPadding_];
      [v42 setTextContainer_];
      if ((v58 & 0xC0) != 0)
      {
        _NSTextLayoutManagerRequiresCTLine(v42);
      }

      outlined destroy of TextLayoutProperties(&v148);
    }

    else
    {
      v31 = *(v2 + 200);
      LODWORD(v118) = *(v2 + 208);
      type metadata accessor for ResolvedStyledText.StringDrawing();
      v32 = swift_allocObject();
      v115 = v27;
      if (v156)
      {
        outlined init with copy of TextLayoutProperties(&v148, &v138);
        outlined init with copy of TextLayoutProperties(&v148, &v138);

        v117 = 1;
      }

      else
      {
        outlined init with copy of TextLayoutProperties(&v148, &v138);
        outlined init with copy of TextLayoutProperties(&v148, &v138);

        if (NSAttributedString.isDynamic.getter())
        {
          v117 = v26 & 1;
        }

        else
        {
          v117 = 0;
        }
      }

      v73 = v148;
      v74 = BYTE8(v148);
      v75 = v149;
      v76 = BYTE8(v149);
      v114 = *(v153 + 8);
      v77 = *&v150;
      v78 = *(&v152 + 1);
      if (v118)
      {
        v31 = 1.0;
      }

      if (v31 == 1.0)
      {
        v129 = BYTE8(v148);
        v137 = BYTE8(v149);
        v79 = v17;
      }

      else
      {
        v80 = v17;
        v112 = v73;
        v113 = v75;
        v81 = v29;
        v82 = v28;
        v28 = v80;
        v83 = [v80 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

        v79 = v83;
        LOWORD(v28) = v82;
        v29 = v81;
        v73 = v112;
        v75 = v113;
        v129 = v74;
        v137 = v76;
      }

      v84 = 1.0;
      if (v118)
      {
        v84 = v77;
      }

      *(v32 + 400) = v84;
      *(v32 + 408) = v114;
      *(v32 + 224) = v23;
      *(v32 + 232) = v22;
      *(v32 + 240) = v25;
      *(v32 + 248) = v24;
      v85 = v154;
      *(v32 + 112) = v153[1];
      *(v32 + 128) = v85;
      v86 = v153[1];
      v87 = v154;
      *(v32 + 144) = v155;
      v88 = v151;
      v89 = v150;
      v90 = v151;
      *(v32 + 48) = v150;
      *(v32 + 64) = v88;
      v91 = v153[0];
      v92 = v152;
      v93 = v153[0];
      *(v32 + 80) = v152;
      *(v32 + 96) = v91;
      v94 = v149;
      v95 = v148;
      v96 = v149;
      *(v32 + 16) = v148;
      *(v32 + 32) = v94;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v97 = v129;
      v98 = v137;
      *(v32 + 352) = 0;
      *(v32 + 360) = v79;
      *(v32 + 368) = v73;
      *(v32 + 376) = v97;
      *(v32 + 384) = v75;
      *(v32 + 392) = v98;
      *(v32 + 424) = v117;
      *(v32 + 425) = v78 != 0.0;
      v99 = v115;
      *(v32 + 426) = v115;
      *(v32 + 432) = MEMORY[0x1E69E7CC0];
      *(v32 + 200) = 0;
      *(v32 + 208) = 1;
      v127 = 1;
      *(v32 + 216) = v17;
      v100 = v119;
      *(v32 + 256) = v120;
      *(v32 + 257) = v100;
      *(v32 + 258) = v99;
      *(v32 + 260) = v28;
      *(v32 + 264) = v121;
      *(v32 + 272) = v29;
      *(v32 + 160) = v156;
      v126 = 1;
      LOBYTE(v136[0]) = BYTE8(v153[1]);
      *(&v136[0] + 1) = v154;
      v144 = v86;
      v145 = v87;
      v146 = v155;
      v147 = v156;
      v140 = v89;
      v141 = v90;
      v142 = v92;
      v143 = v93;
      v138 = v95;
      v139 = v96;
      v101 = v17;
      outlined init with copy of TextLayoutProperties(&v148, v128);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v101, &v122, &v138);
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v109 = v108;

      outlined destroy of TextLayoutProperties(&v148);
      v110 = v125;
      *(v32 + 312) = v124;
      *(v32 + 328) = v110;
      *(v32 + 344) = v126;
      v111 = v123;
      *(v32 + 280) = v122;
      *(v32 + 296) = v111;
      *(v32 + 168) = v103;
      *(v32 + 176) = v105;
      *(v32 + 184) = v107;
      *(v32 + 192) = v109;
    }
  }
}

uint64_t static ResolvedStyledText.styledText(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, void **a7, uint64_t *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, char a20)
{
  v25 = a2[7];
  *&v142[16] = a2[6];
  v143 = v25;
  v144 = a2[8];
  v145 = *(a2 + 144);
  v26 = a2[3];
  v139 = a2[2];
  v140 = v26;
  v27 = a2[5];
  v141 = a2[4];
  *v142 = v27;
  v28 = a2[1];
  v137 = *a2;
  v138 = v28;
  v29 = *a4;
  v100 = a4[1];
  v101 = *a4;
  v110 = *a6;
  v30 = a7[1];
  v31 = a7[3];
  v105 = *a7;
  v106 = a7[2];
  v33 = a7[4];
  v32 = a7[5];
  v34 = a7[6];
  v35 = *a8;
  v104 = v30;
  if ((v142[1] & 1) == 0 && (v110 & 0xD8) == 0 && !*(v35 + 16))
  {
    if (v32 < 0)
    {
      outlined consume of ResolvedTextSuffix(v105, v30, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
      if (BYTE8(v143) == 2)
      {
        type metadata accessor for ResolvedStyledText.StringDrawing();
        v37 = swift_allocObject();
        if (v145)
        {
          v38 = 1;
        }

        else if (a1)
        {
          if (NSAttributedString.isDynamic.getter())
          {
            v38 = v29 & 1;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v67 = v137;
        v68 = BYTE8(v137);
        v69 = v138;
        v70 = BYTE8(v138);
        v109 = *&v142[8];
        if (a1)
        {
          if (a20)
          {
            v71 = 1.0;
          }

          else
          {
            v71 = a19;
          }

          v72 = a18;
          if (v71 == 1.0)
          {
            v73 = a1;
          }

          else
          {
            v73 = [a1 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
          }
        }

        else
        {
          v72 = a18;
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v73 = static NSAttributedString.emptyString;
        }

        v118 = BYTE8(v137);
        v74 = *(&v141 + 1) != 0.0;
        v136 = BYTE8(v138);
        v75 = 1.0;
        if (a20)
        {
          v75 = *&v139;
        }

        *(v37 + 352) = 0;
        *(v37 + 360) = v73;
        *(v37 + 368) = v67;
        *(v37 + 376) = v68;
        *(v37 + 384) = v69;
        *(v37 + 392) = v70;
        *(v37 + 400) = v75;
        *(v37 + 408) = v109;
        *(v37 + 424) = v38;
        *(v37 + 425) = v74;
        *(v37 + 426) = a5 & 1;
        *(v37 + 432) = MEMORY[0x1E69E7CC0];
        *(v37 + 200) = 0;
        *(v37 + 208) = 1;
        v76 = (v37 + 280);
        v116 = 1;
        *(v37 + 216) = a1;
        *(v37 + 224) = a9;
        *(v37 + 232) = a10;
        *(v37 + 240) = a11;
        *(v37 + 248) = a12;
        *(v37 + 256) = v101;
        *(v37 + 257) = v100;
        *(v37 + 258) = a5 & 1;
        *(v37 + 260) = v110;
        *(v37 + 264) = a17;
        *(v37 + 272) = v72;
        v77 = a2[7];
        *(v37 + 112) = a2[6];
        *(v37 + 128) = v77;
        *(v37 + 144) = a2[8];
        *(v37 + 160) = *(a2 + 144);
        v78 = a2[3];
        *(v37 + 48) = a2[2];
        *(v37 + 64) = v78;
        v79 = a2[5];
        *(v37 + 80) = a2[4];
        *(v37 + 96) = v79;
        v80 = a2[1];
        *(v37 + 16) = *a2;
        *(v37 + 32) = v80;
        if (*(a3 + 32))
        {
          if (a1)
          {
            v113 = 0uLL;
            v114 = 0uLL;
            v111 = 0uLL;
            v112 = 0uLL;
            v115 = 1;
            LOBYTE(v135[0]) = v142[24];
            *(&v135[0] + 1) = v143;
            v81 = a2[7];
            v131 = a2[6];
            v132 = v81;
            v133 = a2[8];
            v134 = *(a2 + 144);
            v82 = a2[3];
            v127 = a2[2];
            v128 = v82;
            v83 = a2[5];
            v129 = a2[4];
            v130 = v83;
            v84 = a2[1];
            v125 = *a2;
            v126 = v84;
            v85 = a1;
            outlined init with copy of TextLayoutProperties(&v137, v117);
            v86 = v85;

            outlined init with copy of TextLayoutProperties(&v137, v117);
            Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v86, &v111, &v125);
            v88 = v87;
            v90 = v89;
            v92 = v91;
            v94 = v93;

            v95 = v114;
            *(v37 + 312) = v113;
            *(v37 + 328) = v95;
            *(v37 + 344) = v115;
            v96 = v112;
            *v76 = v111;
            *(v37 + 296) = v96;
            *(v37 + 168) = v88;
            *(v37 + 176) = v90;
            *(v37 + 184) = v92;
            *(v37 + 192) = v94;
            return v37;
          }

          *(v37 + 312) = 0uLL;
          *(v37 + 328) = 0uLL;
          *v76 = 0uLL;
          *(v37 + 296) = 0uLL;
          *(v37 + 344) = 1;
          *(v37 + 168) = 0uLL;
          *(v37 + 184) = 0uLL;
        }

        else
        {
          *(v37 + 312) = 0u;
          *(v37 + 328) = 0u;
          *v76 = 0u;
          *(v37 + 296) = 0u;
          *(v37 + 344) = 1;
          v97 = *(a3 + 16);
          *(v37 + 168) = *a3;
          *(v37 + 184) = v97;
          v98 = a1;
        }

        outlined init with copy of TextLayoutProperties(&v137, &v125);
        return v37;
      }
    }

    else
    {
      outlined copy of ResolvedTextSuffix(v105, v30, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
    }
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v37 = swift_allocObject();
  *(v37 + 416) = MEMORY[0x1E69E7CC0];
  *(v37 + 424) = 0u;
  *(v37 + 440) = 0u;
  *(v37 + 456) = 0u;
  *(v37 + 472) = 0u;
  *(v37 + 488) = 512;
  if ((BYTE8(v137) & 1) != 0 || v137 != 1)
  {
    if (a1)
    {
      NSAttributedString.replacingLineBreakModes(_:)(0);
      v40 = v41;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v39 = a1;
    v40 = a1;
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v43 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v42 setDelegate_];
  [v42 setUsesFontLeading_];
  v99 = v40;
  v107 = v42;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v107, v40, v135);
  v44 = v135[3];
  *(v37 + 528) = v135[2];
  *(v37 + 544) = v44;
  *(v37 + 560) = v135[4];
  v45 = v135[1];
  *(v37 + 496) = v135[0];
  *(v37 + 512) = v45;
  v108 = v43;
  *(v37 + 576) = v43;
  *(v37 + 352) = v105;
  *(v37 + 360) = v104;
  *(v37 + 368) = v106;
  *(v37 + 376) = v31;
  *(v37 + 384) = v33;
  *(v37 + 392) = v32;
  *(v37 + 400) = v34;
  *(v37 + 408) = v35;
  *(v37 + 200) = 0;
  *(v37 + 208) = 1;
  v136 = 1;
  *(v37 + 280) = 0u;
  *(v37 + 296) = 0u;
  *(v37 + 312) = 0u;
  *(v37 + 328) = 0u;
  *(v37 + 344) = 1;
  *(v37 + 216) = v40;
  *(v37 + 224) = a9;
  *(v37 + 232) = a10;
  *(v37 + 240) = a11;
  *(v37 + 248) = a12;
  *(v37 + 256) = v101;
  *(v37 + 257) = v100;
  *(v37 + 258) = a5 & 1;
  *(v37 + 260) = v110;
  *(v37 + 264) = a17;
  *(v37 + 272) = a18;
  v46 = v138;
  *(v37 + 16) = v137;
  *(v37 + 32) = v46;
  v47 = *v142;
  *(v37 + 80) = v141;
  *(v37 + 96) = v47;
  v48 = v140;
  *(v37 + 48) = v139;
  *(v37 + 64) = v48;
  *(v37 + 160) = v145;
  v49 = v144;
  *(v37 + 128) = v143;
  *(v37 + 144) = v49;
  *(v37 + 112) = *&v142[16];
  if (*(a3 + 32))
  {
    if (v40)
    {
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v124 = 1;
      v118 = v142[24];
      v119 = v143;
      v131 = *&v142[16];
      v132 = v143;
      v133 = v144;
      v134 = v145;
      v127 = v139;
      v128 = v140;
      v129 = v141;
      v130 = *v142;
      v125 = v137;
      v126 = v138;
      outlined init with copy of TextLayoutProperties(&v137, v117);
      outlined copy of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);

      outlined init with copy of TextLayoutProperties(&v137, v117);
      v50 = v99;
      v51 = v43;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v50, &v120, &v125);
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      v60 = v123;
      *(v37 + 312) = v122;
      *(v37 + 328) = v60;
      *(v37 + 344) = v124;
      v61 = v121;
      *(v37 + 280) = v120;
      *(v37 + 296) = v61;
      *(v37 + 168) = v53;
      *(v37 + 176) = v55;
      *(v37 + 184) = v57;
      *(v37 + 192) = v59;
    }

    else
    {
      *(v37 + 344) = 1;
      *(v37 + 168) = 0u;
      *(v37 + 184) = 0u;
      outlined copy of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);

      outlined init with copy of TextLayoutProperties(&v137, &v125);
      v64 = v43;
    }
  }

  else
  {
    *(v37 + 344) = 1;
    v62 = *(a3 + 16);
    *(v37 + 168) = *a3;
    *(v37 + 184) = v62;
    outlined copy of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);

    outlined init with copy of TextLayoutProperties(&v137, &v125);
    v63 = v43;
  }

  swift_beginAccess();
  v65 = _TextContainer(*(v37 + 97));
  [v65 setLineFragmentPadding_];
  [v107 setTextContainer_];
  if ((v110 & 0x40) == 0)
  {
    if (v32 < 0)
    {
      outlined consume of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
      if ((v110 & 0x80) == 0 && !*(v35 + 16))
      {

        goto LABEL_28;
      }
    }

    else
    {
      outlined copy of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(v105, v104, v106, v31, v33, v32, v34);
      outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
    }
  }

  _NSTextLayoutManagerRequiresCTLine(v107);

LABEL_28:
  return v37;
}

uint64_t ResolvedStyledText.description.getter()
{
  v1 = *(v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ResolvedStyledText.accessibilityText.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    v9[3] = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v9[0] = v1;
    v2 = v1;
    AccessibilityText.init(_:)(v9, v10);
    v3 = v10[0];
    v4 = v10[1];
    v5 = v11;
    v6 = v12;
    type metadata accessor for AccessibilityTextStorage();
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    *(result + 32) = v5;
    *(result + 33) = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    type metadata accessor for LocalizedTextStorage();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = 0xE000000000000000;
    *(result + 32) = 0;
    *(result + 40) = v8;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
  }

  return result;
}

void (*ResolvedStyledText.cgStyleHandler.getter())(uint64_t a1, unint64_t a2)
{
  v1 = *(v0 + 272);
  if (!*(v1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v0 + 43);
  v3 = *(v0 + 44);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 25) = v2;

  return partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
}

void closure #1 in ResolvedStyledText.cgStyleHandler.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a2 & 0x8000000000000000) != 0 || *(a3 + 16) <= a2)
  {
    return;
  }

  v5 = a3 + 16 * a2;
  v6 = *(v5 + 44);
  v7 = *(v5 + 40);
  v8 = *(v5 + 46);
  v23 = *(v5 + 32);
  v25 = v6;
  v24 = v7;
  v26 = *(v5 + 45);
  v27 = v8;
  LOBYTE(v17) = a4;
  v22 = a5 & 1;
  outlined copy of ContentTransition.Storage(v23, v7 | (v6 << 32), v26);
  ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v17, &v22);
  v9 = v23;
  v10 = v24 | (v25 << 32);
  v11 = v26;
  v17 = v23;
  v19 = v25;
  v18 = v24;
  v20 = v26;
  v21 = v27;
  v12 = ContentTransition.rbTransition.getter();
  RBDrawingStateSetTransition();

  outlined copy of ContentTransition.Storage(v9, v10, v11);
  outlined consume of ContentTransition.Storage(v9, v10, v11);
  if (v11)
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
LABEL_9:

    outlined consume of ContentTransition.Storage(v13, v14, v15);
    return;
  }

  if ((v9 & 0xC000000000) != 0x4000000000 || (v9 & 0x100000000) == 0)
  {
    v13 = v9;
    v14 = v10;
    v15 = 0;
    goto LABEL_9;
  }

  outlined consume of ContentTransition.Storage(v9, v10, 0);
  isa = Float._bridgeToObjectiveC()().super.super.isa;
  RBDrawingStateSetAttribute();
}

uint64_t ResolvedStyledText.deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v6[8] = *(v0 + 144);
  v7 = *(v0 + 160);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  outlined destroy of TextLayoutProperties(v6);

  return v0;
}

uint64_t ResolvedStyledText.__deallocating_deinit()
{
  v1 = *(v0 + 128);
  v6[6] = *(v0 + 112);
  v6[7] = v1;
  v6[8] = *(v0 + 144);
  v7 = *(v0 + 160);
  v2 = *(v0 + 64);
  v6[2] = *(v0 + 48);
  v6[3] = v2;
  v3 = *(v0 + 96);
  v6[4] = *(v0 + 80);
  v6[5] = v3;
  v4 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v6[1] = v4;
  outlined destroy of TextLayoutProperties(v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvedStyledText()
{
  v1 = *(*v0 + 216);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 string];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::tuple_UInt_optional_CGSize __swiftcall ResolvedStyledText.textSizeCacheMetrics(in:)(CGSize in)
{
  memset(v10, 0, sizeof(v10));
  v11 = 1;
  (*(*v1 + 264))(v8, v10, __PAIR128__(v2, *&in.width), __PAIR128__(v3, *&in.height));
  v4 = v8[7];
  v5 = v9;
  v6 = *v8;
  v7 = *&v8[1];
  result._1.height = v7;
  result._1.width = v6;
  result._0.value = v4;
  result._0.is_nil = v5;
  return result;
}

double ResolvedStyledText.linkURLMetrics(in:layoutMargins:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *v9 = a3;
  *&v9[1] = a4;
  *&v9[2] = a5;
  *&v9[3] = a6;
  v10 = 0;
  (*(*v6 + 264))(v8, v9, a1, a2);
  return *&v8[2];
}

void CodableResolvedStyledText.encode(to:)(__int128 *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v108 - v11;
  v13 = *(a2 + 216);
  if (v13)
  {
    v14 = v13;
    specialized ProtobufEncoder.messageField<A>(_:_:)(1, v14);
    if (v3)
    {

      return;
    }
  }

  v15 = *(a2 + 240);
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 224)), vceqzq_f64(v15))))) & 1) == 0 || (v114 = *(a2 + 224), v115 = v15, ProtobufEncoder.encodeVarint(_:)(0x12uLL), specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v114, *(&v114 + 1), v115.f64[0], v115.f64[1]), !v3))
  {
    swift_beginAccess();
    v16 = *(a2 + 184);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 168)), vceqzq_f64(v16))))) & 1) == 0 || (v114 = *(a2 + 168), v115 = v16, ProtobufEncoder.encodeVarint(_:)(0x1AuLL), specialized ProtobufEncoder.encodeMessage<A>(_:)(*&v114, *(&v114 + 1), v115.f64[0], v115.f64[1]), !v3))
    {
      if (v13)
      {
        NSAttributedString.resolvableAttributeConfiguration.getter(v9);
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v9, v12, type metadata accessor for ResolvableAttributeConfiguration);
        ProtobufEncoder.encodeVarint(_:)(0x22uLL);
        v17 = a1[1];
        v121 = *a1;
        v122 = v17;
        v123 = *(a1 + 4);
        v18 = specialized ProtobufEncoder.binaryPlistData<A>(for:)(v12);
        if (v3)
        {
          outlined destroy of Date?(v12, type metadata accessor for ResolvableAttributeConfiguration);
          return;
        }

        v20 = v18;
        v21 = v19;
        specialized Data._Representation.withUnsafeBytes<A>(_:)(v18, v19, a1);
        v4 = 0;
        outlined consume of Data._Representation(v20, v21);
        outlined destroy of Date?(v12, type metadata accessor for ResolvableAttributeConfiguration);
      }

      swift_beginAccess();
      v22 = *(a2 + 128);
      v119[6] = *(a2 + 112);
      v119[7] = v22;
      v119[8] = *(a2 + 144);
      v120 = *(a2 + 160);
      v23 = *(a2 + 64);
      v119[2] = *(a2 + 48);
      v119[3] = v23;
      v24 = *(a2 + 96);
      v119[4] = *(a2 + 80);
      v119[5] = v24;
      v25 = *(a2 + 32);
      v119[0] = *(a2 + 16);
      v119[1] = v25;
      outlined init with copy of TextLayoutProperties(v119, &v116);
      v26 = a1;
      specialized ProtobufEncoder.messageField<A>(_:_:)(5);
      outlined destroy of TextLayoutProperties(v119);
      if (!v4)
      {
        v28 = *(a2 + 272);
        v109 = *(v28 + 16);
        v110 = a2;
        if (!v109)
        {
LABEL_125:
          v92 = *(a2 + 260);
          if (*(a2 + 260))
          {
            ProtobufEncoder.encodeVarint(_:)(0x38uLL);
            ProtobufEncoder.encodeVarint(_:)(v92);
          }

          v93 = ResolvedStyledText.smallerSizeVariant.getter(v27);
          if (v93)
          {
            v29 = v93;
            v95 = ResolvedStyledText.largerSizeVariant.getter(v94);
            if (v95)
            {
              v96 = v95;
              swift_beginAccess();
              objc_setAssociatedObject(v96, &smallerSizeVariantKey, 0, 0);
              swift_endAccess();
            }

            swift_beginAccess();
            objc_setAssociatedObject(v29, &largerSizeVariantKey, 0, 0x301);
            swift_endAccess();
            ProtobufEncoder.encodeVarint(_:)(0x42uLL);
            v30 = *(a1 + 1);
            v26 = *(a1 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_149;
            }

            goto LABEL_131;
          }

LABEL_135:
          v101 = ResolvedStyledText.largerSizeVariant.getter(v94);
          if (v101)
          {
            v98 = v101;
            v103 = ResolvedStyledText.smallerSizeVariant.getter(v102);
            if (v103)
            {
              v104 = v103;
              swift_beginAccess();
              objc_setAssociatedObject(v104, &largerSizeVariantKey, 0, 0);
              swift_endAccess();
            }

            swift_beginAccess();
            objc_setAssociatedObject(v98, &smallerSizeVariantKey, 0, 0x301);
            swift_endAccess();
            ProtobufEncoder.encodeVarint(_:)(0x4AuLL);
            v99 = *(a1 + 1);
            v26 = *(a1 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_151;
            }

            goto LABEL_139;
          }

          return;
        }

        v29 = 0;
        v30 = (v28 + 46);
        v108 = v28;
        while (1)
        {
          if (v29 >= *(v28 + 16))
          {
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
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
LABEL_131:
            v98 = *(v26 + 2);
            v97 = *(v26 + 3);
            v99 = v98 + 1;
            if (v98 >= v97 >> 1)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v26);
            }

            *(v26 + 2) = v99;
            *&v26[8 * v98 + 32] = v30;
            *(a1 + 3) = v26;
            if (!__OFADD__(v30, 1))
            {
              *(a1 + 1) = v30 + 1;

              CodableResolvedStyledText.encode(to:)(a1, v29, v100);

              ProtobufEncoder.endLengthDelimited()();

              goto LABEL_135;
            }

            __break(1u);
LABEL_151:
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
LABEL_139:
            v106 = *(v26 + 2);
            v105 = *(v26 + 3);
            if (v106 >= v105 >> 1)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v26);
            }

            *(v26 + 2) = v106 + 1;
            *&v26[8 * v106 + 32] = v99;
            *(a1 + 3) = v26;
            if (__OFADD__(v99, 1))
            {
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
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
            }

            else
            {
              *(a1 + 1) = v99 + 1;

              CodableResolvedStyledText.encode(to:)(a1, v98, v107);

              ProtobufEncoder.endLengthDelimited()();
            }

            return;
          }

          v32 = *(v30 - 14);
          v33 = *(v30 - 6) | (*(v30 - 2) << 32);
          v34 = *(v30 - 1);
          v35 = *v30;
          v36 = *(a1 + 1);
          v37 = *(a1 + 2);
          *&v114 = v33;
          v112 = v29;
          v113 = v35;
          if (v36 >= v37)
          {
            v71 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_153;
            }

            if (v37 < v71)
            {
              v38 = v34;
              outlined copy of ContentTransition.Storage(v32, v33, v34);
              v72 = ProtobufEncoder.growBufferSlow(to:)(v71);
            }

            else
            {
              *(a1 + 1) = v71;
              v72 = (*a1 + v36);
              v38 = v34;
              outlined copy of ContentTransition.Storage(v32, v33, v34);
            }

            *v72 = 50;
          }

          else
          {
            *(*a1 + v36) = 50;
            *(a1 + 1) = v36 + 1;
            v38 = v34;
            outlined copy of ContentTransition.Storage(v32, v33, v34);
          }

          v29 = *(a1 + 1);
          v26 = *(a1 + 3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v115.f64[0] = v32;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          }

          v41 = *(v26 + 2);
          v40 = *(v26 + 3);
          if (v41 >= v40 >> 1)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v26);
          }

          *(v26 + 2) = v41 + 1;
          *&v26[8 * v41 + 32] = v29;
          *(a1 + 3) = v26;
          v42 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_144;
          }

          *(a1 + 1) = v42;
          v111 = v38;
          if (v38)
          {
            v43 = v115.f64[0];
            if (v38 == 1)
            {
              v44 = *(a1 + 2);
              if (v42 >= v44)
              {
                v76 = (v29 + 2);
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_156;
                }

                if (v44 < v76)
                {
                  v77 = ProtobufEncoder.growBufferSlow(to:)(v76);
                }

                else
                {
                  *(a1 + 1) = v76;
                  v77 = &v42[*a1];
                }

                *v77 = 18;
                v29 = *(a1 + 1);
                v43 = v115.f64[0];
              }

              else
              {
                v42[*a1] = 18;
                v29 += 2;
                *(a1 + 1) = v42 + 1;
              }

              v116 = v43;
              v117 = v114;
              v118 = BYTE4(v114);
              v26 = *(a1 + 3);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
              }

              v46 = *(v26 + 2);
              v45 = *(v26 + 3);
              if (v46 >= v45 >> 1)
              {
                v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v26);
              }

              *(v26 + 2) = v46 + 1;
              *&v26[8 * v46 + 32] = v29;
              *(a1 + 3) = v26;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_145;
              }

              *(a1 + 1) = v29 + 1;
              ContentTransition.CustomTransition.encode(to:)(a1);
              a2 = v110;
              v29 = v114;
              v47 = *&v115.f64[0];
            }

            else
            {
              v52 = *(a1 + 2);
              if (v42 >= v52)
              {
                v80 = (v29 + 2);
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_157;
                }

                if (v52 < v80)
                {
                  v81 = ProtobufEncoder.growBufferSlow(to:)(v80);
                }

                else
                {
                  *(a1 + 1) = v80;
                  v81 = &v42[*a1];
                }

                *v81 = 34;
                v29 = *(a1 + 1);
              }

              else
              {
                v42[*a1] = 34;
                v29 += 2;
                *(a1 + 1) = v42 + 1;
              }

              v26 = *(a1 + 3);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
              }

              v54 = *(v26 + 2);
              v53 = *(v26 + 3);
              if (v54 >= v53 >> 1)
              {
                v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v26);
              }

              *(v26 + 2) = v54 + 1;
              *&v26[8 * v54 + 32] = v29;
              *(a1 + 3) = v26;
              v55 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_147;
              }

              *(a1 + 1) = v55;
              v47 = *&v115.f64[0];
              v56 = LODWORD(v115.f64[0]);
              a2 = v110;
              v29 = v114;
              if (LODWORD(v115.f64[0]))
              {
                v57 = *(a1 + 2);
                if (v55 >= v57)
                {
                  v82 = v114;
                  v83 = LODWORD(v115.f64[0]);
                  v84 = (v55 + 1);
                  if (__OFADD__(v55, 1))
                  {
                    goto LABEL_159;
                  }

                  if (v57 < v84)
                  {
                    v85 = ProtobufEncoder.growBufferSlow(to:)(v84);
                  }

                  else
                  {
                    *(a1 + 1) = v84;
                    v85 = &v55[*a1];
                  }

                  *v85 = 8;
                  v56 = v83;
                  a2 = v110;
                  v29 = v82;
                  v47 = *&v115.f64[0];
                }

                else
                {
                  v55[*a1] = 8;
                  *(a1 + 1) = v55 + 1;
                }

                v26 = a1;
                ProtobufEncoder.encodeVarint(_:)(v56);
              }

              if ((v47 & 0x100000000) == 0)
              {
                v58 = *(a1 + 1);
                v59 = *(a1 + 2);
                if (v58 >= v59)
                {
                  v86 = v58 + 1;
                  if (__OFADD__(v58, 1))
                  {
                    goto LABEL_160;
                  }

                  if (v59 < v86)
                  {
                    v26 = a1;
                    v87 = ProtobufEncoder.growBufferSlow(to:)(v86);
                  }

                  else
                  {
                    *(a1 + 1) = v86;
                    v87 = (*a1 + v58);
                  }

                  *v87 = 16;
                  v60 = *(a1 + 1);
                  a2 = v110;
                  v47 = *&v115.f64[0];
                }

                else
                {
                  *(*a1 + v58) = 16;
                  v60 = v58 + 1;
                  *(a1 + 1) = v60;
                }

                v61 = *(a1 + 2);
                if (v60 >= v61)
                {
                  v88 = v60 + 1;
                  if (__OFADD__(v60, 1))
                  {
                    goto LABEL_161;
                  }

                  if (v61 < v88)
                  {
                    v26 = a1;
                    v89 = ProtobufEncoder.growBufferSlow(to:)(v88);
                  }

                  else
                  {
                    *(a1 + 1) = v88;
                    v89 = (*a1 + v60);
                  }

                  *v89 = 0;
                  a2 = v110;
                  v47 = *&v115.f64[0];
                }

                else
                {
                  *(*a1 + v60) = 0;
                  *(a1 + 1) = v60 + 1;
                }
              }

              if (*&v29 != 1.0)
              {
                v62 = *(a1 + 1);
                v63 = *(a1 + 2);
                if (v62 >= v63)
                {
                  v90 = v62 + 1;
                  if (__OFADD__(v62, 1))
                  {
                    goto LABEL_162;
                  }

                  if (v63 < v90)
                  {
                    v26 = a1;
                    v91 = ProtobufEncoder.growBufferSlow(to:)(v90);
                  }

                  else
                  {
                    *(a1 + 1) = v90;
                    v91 = (*a1 + v62);
                  }

                  *v91 = 29;
                  v64 = *(a1 + 1);
                  a2 = v110;
                  v47 = *&v115.f64[0];
                  v65 = v64 + 4;
                  if (__OFADD__(v64, 4))
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
                  *(*a1 + v62) = 29;
                  v64 = v62 + 1;
                  *(a1 + 1) = v64;
                  v65 = v64 + 4;
                  if (__OFADD__(v64, 4))
                  {
                    goto LABEL_148;
                  }
                }

                if (*(a1 + 2) < v65)
                {
                  v66 = ProtobufEncoder.growBufferSlow(to:)(v65);
                }

                else
                {
                  *(a1 + 1) = v65;
                  v66 = (*a1 + v64);
                }

                *v66 = v29;
              }
            }
          }

          else
          {
            v48 = *(a1 + 2);
            v49 = v115.f64[0];
            if (v42 >= v48)
            {
              v78 = (v29 + 2);
              if (__OFADD__(v42, 1))
              {
                goto LABEL_158;
              }

              if (v48 < v78)
              {
                v79 = ProtobufEncoder.growBufferSlow(to:)(v78);
              }

              else
              {
                *(a1 + 1) = v78;
                v79 = &v42[*a1];
              }

              *v79 = 10;
              v29 = *(a1 + 1);
              v49 = v115.f64[0];
            }

            else
            {
              v42[*a1] = 10;
              v29 += 2;
              *(a1 + 1) = v42 + 1;
            }

            v116 = v49;
            v117 = v114;
            v118 = BYTE4(v114);
            v26 = *(a1 + 3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
            }

            v51 = *(v26 + 2);
            v50 = *(v26 + 3);
            if (v51 >= v50 >> 1)
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v26);
            }

            *(v26 + 2) = v51 + 1;
            *&v26[8 * v51 + 32] = v29;
            *(a1 + 3) = v26;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_146;
            }

            *(a1 + 1) = v29 + 1;
            ContentTransition.NamedTransition.encode(to:)(a1);
            a2 = v110;
            v29 = v114;
            v47 = *&v115.f64[0];
          }

          ProtobufEncoder.endLengthDelimited()();
          if (v113)
          {
            v67 = *(a1 + 1);
            v68 = *(a1 + 2);
            if (v67 >= v68)
            {
              v73 = v67 + 1;
              if (__OFADD__(v67, 1))
              {
                goto LABEL_154;
              }

              if (v68 < v73)
              {
                v74 = ProtobufEncoder.growBufferSlow(to:)(v73);
              }

              else
              {
                *(a1 + 1) = v73;
                v74 = (*a1 + v67);
              }

              *v74 = 24;
              v69 = *(a1 + 1);
            }

            else
            {
              *(*a1 + v67) = 24;
              v69 = v67 + 1;
              *(a1 + 1) = v67 + 1;
            }

            v70 = *(a1 + 2);
            if (v69 < v70)
            {
              *(*a1 + v69) = 1;
              outlined consume of ContentTransition.Storage(v47, v29, v111);
              *(a1 + 1) = v69 + 1;
              goto LABEL_20;
            }

            v75 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_155;
            }

            if (v70 >= v75)
            {
              *(a1 + 1) = v75;
              v31 = (*a1 + v69);
            }

            else
            {
              v31 = ProtobufEncoder.growBufferSlow(to:)(v75);
            }

            *v31 = 1;
          }

          outlined consume of ContentTransition.Storage(v47, v29, v111);
LABEL_20:
          v29 = v112 + 1;
          v26 = a1;
          ProtobufEncoder.endLengthDelimited()();
          v30 += 16;
          v28 = v108;
          if (v109 == v29)
          {
            goto LABEL_125;
          }
        }
      }
    }
  }
}

uint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance CodableResolvedStyledText@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CodableResolvedStyledText.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ResolvedStyledText.firstBaseline(in:)()
{
  if (one-time initialization token for firstTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v0 + 280))(static VerticalAlignment.firstTextBaseline);
}

uint64_t ResolvedStyledText.lastBaseline(in:)()
{
  if (one-time initialization token for lastTextBaseline != -1)
  {
    swift_once();
  }

  return (*(*v0 + 280))(static VerticalAlignment.lastTextBaseline);
}

CGSize __swiftcall ResolvedStyledText.frameOffset()()
{
  v1 = (*(*v0 + 184))();
  v3 = v2;
  swift_beginAccess();
  v4 = *(v0 + 168);
  v5 = -(v3 - *(v0 + 176));
  swift_beginAccess();
  if ((*(v0 + 43) & 1) == 0)
  {
    v5 = v5 - *(v0 + 104);
  }

  v6 = -(v1 - v4);
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

uint64_t property wrapper backing initializer of TextDrawingContext.ctx@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AtomicBuffer<NSStringDrawingContext>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  *a2 = result;
  return result;
}

unint64_t closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v5 = v1;
  v2 = one-time initialization token for kitForegroundColor;

  if (v2 != -1)
  {
    swift_once();
  }

  specialized Dictionary._Variant.removeValue(forKey:)(static NSAttributedStringKey.kitForegroundColor, v4);
  _sypSgWOhTm_6(v4, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  return v5;
}

uint64_t TextDrawingContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *protocol witness for _DisplayList_ViewFactory.makeView() in conformance DynamicTextViewFactory()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = specialized static ResolvedStyledText.normalizedSizeVariant(for:)(*v0);
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for AnyViewStorage<DynamicTextView>, &type metadata for DynamicTextView, &protocol witness table for DynamicTextView, type metadata accessor for AnyViewStorage);
  result = swift_allocObject();
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  return result;
}

double static DynamicTextView._makeView(view:inputs:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v94 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Date();
  v45 = *(v5 - 8);
  v46 = v5;
  v43 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DynamicTextView.DynamicTextEnvironment(0);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OffsetAttribute2 = *a1;
  v11 = a2[4];
  v92[1] = a2[3];
  *v93 = v11;
  v12 = a2[2];
  v91 = a2[1];
  v92[0] = v12;
  v93[4] = *(a2 + 20);
  v90 = *a2;
  *&v84 = __PAIR64__(v93[0], OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  v14 = v90;
  v53 = DWORD2(v90);
  v54 = v13;
  v15 = v91;
  v42 = HIDWORD(v91);
  swift_beginAccess();
  LODWORD(v49) = *(v15 + 16);
  v51 = v14;
  v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA18ReferenceDateInputV_Tt2g5(v14);
  v17 = v16;
  v50 = 0;
  v48 = HIDWORD(v16);
  LODWORD(a2) = AGGraphCreateOffsetAttribute2();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  type metadata accessor for PropertyList.Tracker();
  v18 = swift_allocObject();
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC8];
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v20;
  v21 = MEMORY[0x1E69E7CC0];
  *(v19 + 40) = v20;
  *(v19 + 48) = v21;
  *(v19 + 56) = 0;
  *(v18 + 16) = v19;
  *(v10 + 4) = v18;
  *(v10 + 5) = 0;
  static Date.distantPast.getter();
  *v10 = v49;
  *(v10 + 1) = v17;
  v22 = v53;
  *(v10 + 2) = v48;
  *(v10 + 3) = v22;
  v23 = OffsetAttribute2;
  *(v10 + 4) = a2;
  *(v10 + 5) = v23;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFilter and conformance DynamicTextView.DynamicTextFilter, type metadata accessor for DynamicTextView.DynamicTextFilter, protocol conformance descriptor for DynamicTextView.DynamicTextFilter);
  v53 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of Date?(v10, type metadata accessor for DynamicTextView.DynamicTextFilter);
  v89 = v90;
  v56 = *(&v91 + 1);
  v41 = v92[0];
  v88[0] = *(v92 + 4);
  *(v88 + 12) = v92[1];
  LODWORD(v48) = v93[1];
  v49 = *&v93[3];
  outlined init with copy of _ViewInputs(&v90, &v84);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v54 = AGGraphCreateOffsetAttribute2();
  LODWORD(a2) = *(v15 + 16);
  LODWORD(v18) = AGGraphCreateOffsetAttribute2();
  v24 = v44;
  static Date.distantPast.getter();
  v25 = v42;
  *v8 = a2;
  *(v8 + 1) = v25;
  *(v8 + 2) = v18;
  (*(v45 + 32))(&v8[*(v47 + 28)], v24, v46);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type DynamicTextView.DynamicTextEnvironment and conformance DynamicTextView.DynamicTextEnvironment, type metadata accessor for DynamicTextView.DynamicTextEnvironment, protocol conformance descriptor for DynamicTextView.DynamicTextEnvironment);
  LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of Date?(v8, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  v57 = 1;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v28 = swift_allocObject();
  *(v28 + 16) = v18;
  *(v28 + 24) = v26;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 256;
  *(v28 + 82) = v59;
  *(v28 + 86) = v60;
  *(v28 + 88) = v27;

  v29 = v41 | 0x38;
  v30 = AGGraphCreateOffsetAttribute2();
  v84 = v89;
  *&v85 = v28;
  *(&v85 + 1) = v56;
  LODWORD(v86[0]) = v29;
  *(v86 + 4) = v88[0];
  v86[1] = *(v88 + 12);
  v31 = v48;
  *&v87[0] = __PAIR64__(v48, OffsetAttribute2);
  DWORD2(v87[0]) = v54;
  v32 = v49;
  *(v87 + 12) = v49;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v80 = v86[0];
  v81 = v86[1];
  v82 = v87[0];
  v83 = v87[1];
  v78 = v84;
  v79 = v85;
  v34 = v86[0];
  LODWORD(v80) = 0;
  v74 = v80;
  v75 = v86[1];
  v76 = v87[0];
  v77 = v87[1];
  v72 = v84;
  v73 = v85;
  LODWORD(v61[0]) = v30;
  outlined init with copy of _ViewInputs(&v84, &v63);
  static StyledTextContentView._makeInnerView(view:inputs:)(v61, &v72, &v58);
  LODWORD(v80) = v34;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v58, &v78);
    AGSubgraphEndTreeElement();
  }

  v74 = v80;
  v75 = v81;
  v76 = v82;
  v77 = v83;
  v72 = v78;
  v73 = v79;
  outlined destroy of _ViewInputs(&v72);
  v35 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v51);
  if (v35)
  {
    v61[2] = v92[0];
    v61[3] = v92[1];
    v61[4] = *v93;
    v62 = v93[4];
    v61[0] = v90;
    v61[1] = v91;
    v36 = MEMORY[0x1EEE9AC00](v35);
    *(&v40 - 4) = v53;
    (*(v37 + 8))(v61, partial apply for implicit closure #1 in static DynamicTextView._makeView(view:inputs:), v36);
  }

  v63 = v89;
  v64 = v28;
  v65 = v56;
  v66 = v29;
  *v67 = v88[0];
  *&v67[12] = *(v88 + 12);
  v68 = OffsetAttribute2;
  v69 = v31;
  v70 = v54;
  v71 = v32;
  outlined destroy of _ViewInputs(&v63);
  v38 = v52;
  *v52 = v58;
  result = *(&v58 + 1);
  v38[1] = *(&v58 + 1);
  return result;
}

uint64_t DynamicTextView.DynamicTextFilter.textManager.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = DynamicTextView.DynamicTextFilter.makeTextManager()();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t DynamicTextView.DynamicTextFilter.makeTextManager()()
{
  type metadata accessor for Date?(0);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v10 = *Value;
  v9 = *(Value + 8);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  if (v9)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v10, v3);
  }

  else
  {

    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v12);
    if (v13)
    {
      v14 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v1, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
    }

    outlined init with copy of ResolvableStringResolutionContext(v14, v3, type metadata accessor for Date?);
  }

  v15 = &v6[*(v4 + 24)];
  outlined assign with take of ResolvedTextHelper.NextUpdate(v3, v6, type metadata accessor for Date?);
  v16 = &v6[*(v4 + 20)];
  *v16 = v10;
  v16[1] = v9;
  *v15 = 0;
  v15[8] = 1;
  type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextCache);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = 10;
  *(v17 + 24) = v18;
  *(v17 + 32) = 0;
  type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18DDA6EB0;
  *(v19 + 32) = v7;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0;
  *(v17 + 40) = v19;
  *(v17 + 48) = 0;
  *(v17 + 50) = *&v21[10];
  *(v17 + 54) = v22;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0;
  *(v17 + 89) = 1;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v6, v17 + *(*v17 + 144), type metadata accessor for ResolvableStringResolutionContext);
  return v17;
}

void DynamicTextView.DynamicTextFilter.updateValue()()
{
  v1 = v0;
  v127 = *MEMORY[0x1E69E9840];
  v115 = type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  MEMORY[0x1EEE9AC00](v115);
  v113 = (&v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v108);
  v112 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date?(0);
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v105 = &v102 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v102 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  v120 = type metadata accessor for Date();
  v21 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v104 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v102 - v30;
  Value = AGGraphGetValue();
  v33 = v32;
  v34 = *Value;
  v118 = Value[1];

  v119 = v34;

  v35 = *AGGraphGetValue();
  if (v36)
  {

    LODWORD(v114) = 1;
  }

  else
  {

    if (v33)
    {

      LODWORD(v114) = PropertyList.Tracker.hasDifferentUsedValues(_:)(v37);
    }

    else
    {
      LODWORD(v114) = 0;
    }
  }

  v38 = v117;
  v39 = *(v35 + 216);
  v116 = v35;
  if (v39)
  {

    v40 = NSAttributedString.isDynamic.getter();

    if (v40)
    {
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        outlined init with copy of ResolvableStringResolutionContext(WeakValue, v20, type metadata accessor for Date?);
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v20, v17, type metadata accessor for Date?);
        v42 = v120;
        if ((*(v21 + 48))(v17, 1, v120) != 1)
        {
          (*(v21 + 32))(v38, v17, v42);
          goto LABEL_21;
        }

        outlined destroy of Date?(v17, type metadata accessor for Date?);
      }

      if (*AGGraphGetValue() >= *(v1 + 40))
      {
        *&v124 = v119;
        *(&v124 + 1) = v118;
        EnvironmentValues.stringResolutionDate.getter(v14);
        v49 = *(v21 + 48);
        v50 = v120;
        if (v49(v14, 1, v120) == 1)
        {
          AGGraphGetValue();
          static Date.now.getter();
          v51 = v49(v14, 1, v50);
          v42 = v50;
          if (v51 != 1)
          {
            outlined destroy of Date?(v14, type metadata accessor for Date?);
          }
        }

        else
        {
          (*(v21 + 32))(v28, v14, v50);
          v42 = v50;
        }
      }

      else
      {
        v43 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
        v42 = v120;
        (*(v21 + 16))(v28, v1 + *(v43 + 48), v120);
      }

      (*(v21 + 32))(v38, v28, v42);
LABEL_21:
      v45 = 1;
      if ((v114 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_14:
      v46 = DynamicTextView.DynamicTextFilter.makeTextManager()();

      *(v1 + 24) = v46;
      v47 = v119;
      v48 = v116;
      goto LABEL_26;
    }
  }

  v44 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  v42 = v120;
  (*(v21 + 16))(v38, v1 + *(v44 + 48), v120);
  v45 = 0;
  if (v114)
  {
    goto LABEL_14;
  }

LABEL_22:
  v52 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  (*(v21 + 16))(v25, v1 + *(v52 + 48), v42);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v21 + 8))(v25, v42);
  v47 = v119;
  v48 = v116;
  if ((v53 & 1) != 0 && AGGraphGetOutputValue())
  {
    if (!v45)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_26:
  v55 = *(v1 + 32);
  PropertyList.Tracker.reset()();
  v110 = v45;
  if (!v45)
  {

    v57 = v48;
    goto LABEL_52;
  }

  v122 = v47;
  v123 = v55;
  if (v47)
  {
    v56 = v47[8];
  }

  else
  {
    v56 = 0;
  }

  v58 = *(v55 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v58 + 16));
  *(v58 + 24) = v56;
  os_unfair_lock_unlock((v58 + 16));

  v59 = v106;
  (*(v21 + 16))(v106, v38, v42);
  v60 = *(v21 + 56);
  v60(v59, 0, 1, v42);
  EnvironmentValues.stringResolutionDate.setter(v59);
  v61 = v107;
  if ((*(v48 + 260) & 4) != 0)
  {
    v62 = v122;

    v64 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v63);
    if (!v64 || (v65 = v62, *(v64 + 72) != 1))
    {
      type metadata accessor for TypedElement<EnvironmentPropertyKey<SensitiveContentKey>>(0);
      *(swift_allocObject() + 72) = 1;
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
      v65 = PropertyList.Element.init(keyType:before:after:)(v66, 0, v62).value;
      v122 = v65;
    }

    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016SensitiveContentK033_7799685610985DBA9248562F2E4D5E6ELLVG_Ttg5(v62, v65);
  }

  v67 = AGGraphGetWeakValue();
  v103 = v21;
  if (v67)
  {
    v68 = v105;
    outlined init with copy of ResolvableStringResolutionContext(v67, v105, type metadata accessor for Date?);
    _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v68, v61, type metadata accessor for Date?);
    v69 = v120;
  }

  else
  {
    v69 = v120;
    v60(v61, 1, 1, v120);
  }

  v70 = v122;
  v71 = v123;

  v72 = v1;
  v73 = *AGGraphGetValue();
  v74 = v112;
  v114 = v21 + 56;
  v111 = v60;
  v60(v112, 1, 1, v69);
  v75 = v108;
  v76 = v74 + *(v108 + 24);
  outlined assign with take of ResolvedTextHelper.NextUpdate(v61, v74, type metadata accessor for Date?);
  v77 = (v74 + *(v75 + 20));
  *v77 = v70;
  v77[1] = v71;
  *v76 = v73;
  v1 = v72;
  *(v76 + 8) = 0;
  v78 = DynamicTextView.DynamicTextFilter.textManager.getter();
  v79 = AGGraphGetValue();
  v80 = v79[1];
  v124 = *v79;
  v125 = v80;
  v57 = DynamicTextView.TextManager.resolve(in:for:)(v74, &v124, v78);

  v81 = v119;

  if (v118)
  {
    swift_retain_n();

    v82 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v81);

    v38 = v117;
    v21 = v103;
  }

  else
  {

    v83 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v81);
    v38 = v117;
    v21 = v103;
    if (v83)
    {
      v82 = *(v83 + 72);
    }

    else
    {
      v82 = 0;
    }
  }

  v84 = *AGGraphGetValue();
  ResolvedStyledText.schedule.getter(&v124);
  v85 = *(&v125 + 1);
  if (*(&v125 + 1))
  {
    v86 = v126;
    __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
    v121 = v82 & 1;
    v87 = v109;
    TimelineSchedule.nextEntry(after:mode:limit:)(v38, &v121, 60, 0, v85, v86, v109);
    v42 = v120;
    v111(v87, 0, 1, v120);
    __swift_destroy_boxed_opaque_existential_1(&v124);
    if ((*(v21 + 48))(v87, 1, v42) != 1)
    {
      v89 = v104;
      (*(v21 + 32))(v104, v87, v42);
      Date.timeIntervalSince(_:)();
      v91 = v90;

      (*(v21 + 8))(v89, v42);
      v88 = v84 + v91;
      goto LABEL_51;
    }
  }

  else
  {

    _sypSgWOhTm_6(&v124, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    v87 = v109;
    v42 = v120;
    v111(v109, 1, 1, v120);
  }

  outlined destroy of Date?(v87, type metadata accessor for Date?);
  v88 = INFINITY;
LABEL_51:
  outlined destroy of Date?(v112, type metadata accessor for ResolvableStringResolutionContext);

  *(v72 + 40) = v88;
LABEL_52:
  v92 = type metadata accessor for DynamicTextView.DynamicTextFilter(0);
  (*(v21 + 24))(v1 + *(v92 + 48), v38, v42);

  v93 = ResolvedStyledText.schedule.getter(&v124);
  v94 = v113;
  *v113 = v57;
  *(v94 + 8) = 0;
  *(v94 + 16) = 0;
  v95 = v115;
  (*(v21 + 16))(v94 + *(v115 + 20), v38, v42, v93);
  v96 = v94 + *(v95 + 24);
  v97 = v125;
  *v96 = v124;
  *(v96 + 16) = v97;
  *(v96 + 32) = v126;
  AGGraphSetOutputValue();

  outlined destroy of Date?(v94, type metadata accessor for DynamicTextView.DynamicTextFilter.Value);
  if (!v110)
  {
LABEL_57:
    (*(v21 + 8))(v38, v42, v54);

    goto LABEL_58;
  }

LABEL_53:
  v98 = *(v1 + 40);
  v54.n128_u64[0] = *AGGraphGetValue();
  if (v54.n128_f64[0] >= v98)
  {
    goto LABEL_57;
  }

  specialized static GraphHost.currentHost.getter();

  (*(v21 + 8))(v38, v42);
  type metadata accessor for ViewGraph();
  v99 = swift_dynamicCastClassUnconditional();
  v100 = *(v1 + 40);
  swift_beginAccess();
  v101 = *(v99 + 376);
  if (v100 < v101)
  {
    v101 = v100;
  }

  *(v99 + 376) = v101;
LABEL_58:
}

uint64_t DynamicTextView.TextManager.resolve(in:for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  outlined init with copy of ResolvableStringResolutionContext(a1, v8, type metadata accessor for ResolvableStringResolutionContext);
  specialized SizeFittingTextCache.input.setter(v8, 1);
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  ViewSize.proposal.getter(&v28);
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  LOBYTE(v36) = v29;
  v27 = v31;
  specialized SizeFittingTextCache.suggestedVariant(for:)(*&v28, v29, v30, v31, &v25);
  if (v26)
  {
    swift_beginAccess();

    LOBYTE(v36) = v14;
    v27 = v16;
    specialized ClosestFitCache.callAsFunction(for:makeValue:)(v13, v14, *&v15, v16, (a3 + 16), a3, &v36, v15, v16);
    swift_endAccess();
    v17 = v36;
  }

  else
  {
    v17 = v25;
  }

  v18 = specialized SizeFittingTextCache.withValue<A>(for:onChange:compute:)(v17, _ViewInputs.base.modify, 0, closure #1 in DynamicTextView.TextManager.resolve(in:for:), 0);
  v32 = v9;
  v33 = v10;
  v34 = v11;
  v35 = v12;
  ViewSize.proposal.getter(&v28);
  v19 = *&v28;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  *(a3 + 56) = v17;
  *(a3 + 64) = v19;
  *(a3 + 72) = v20;
  *(a3 + 80) = v21;
  *(a3 + 88) = v22;
  return v18;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DynamicTextView.DynamicTextFilter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t DynamicTextView.DynamicTextHelper.value(for:)(uint64_t a1)
{
  ResolvedStyledText.resolvingContent(in:)(a1);
  v2 = v1;
  v67 = *(v1 + 256) & 0xFE;
  v68 = *(v1 + 257);
  v3 = *(v1 + 216);
  swift_beginAccess();
  v4 = *(v2 + 128);
  *&v75[16] = *(v2 + 112);
  v76 = v4;
  v77 = *(v2 + 144);
  v78 = *(v2 + 160);
  v5 = *(v2 + 64);
  v72 = *(v2 + 48);
  v73 = v5;
  v6 = *(v2 + 96);
  v74 = *(v2 + 80);
  *v75 = v6;
  v7 = *(v2 + 32);
  v70 = *(v2 + 16);
  v71 = v7;
  swift_beginAccess();
  v9 = *(v2 + 168);
  v8 = *(v2 + 176);
  v11 = *(v2 + 184);
  v10 = *(v2 + 192);
  v13 = *(v2 + 224);
  v12 = *(v2 + 232);
  v14 = *(v2 + 240);
  v15 = *(v2 + 248);
  v66 = *(v2 + 258);
  v16 = *(v2 + 260);
  v18 = *(v2 + 264);
  v17 = *(v2 + 272);
  swift_beginAccess();
  if ((v75[1] & 1) == 0 && (v16 & 0xD8) == 0 && BYTE8(v76) == 2)
  {
    v64 = v14;
    v19 = *(v2 + 200);
    v65 = *(v2 + 208);
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v20 = swift_allocObject();
    v61 = v78 & 1;
    v62 = v13;
    v63 = v12;
    if (v78)
    {
      outlined init with copy of TextLayoutProperties(&v70, v69);
      outlined init with copy of TextLayoutProperties(&v70, v69);
      v43 = v3;
    }

    else
    {
      if (v3)
      {
        outlined init with copy of TextLayoutProperties(&v70, v69);
        outlined init with copy of TextLayoutProperties(&v70, v69);
        v21 = v3;

        NSAttributedString.isDynamic.getter();
LABEL_19:
        v44 = v70;
        v45 = BYTE8(v70);
        v59 = v71;
        v46 = BYTE8(v71);
        v60 = *&v75[8];
        v47 = *&v72;
        v48 = *(&v74 + 1);
        if (v3)
        {
          if (v65)
          {
            v19 = 1.0;
          }

          v49 = v3;
          v50 = v49;
          if (v19 == 1.0)
          {
            outlined destroy of TextLayoutProperties(&v70);
          }

          else
          {
            v58 = [v49 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
            outlined destroy of TextLayoutProperties(&v70);

            v50 = v58;
          }
        }

        else
        {
          if (one-time initialization token for emptyString != -1)
          {
            swift_once();
          }

          v50 = static NSAttributedString.emptyString;
          outlined destroy of TextLayoutProperties(&v70);
        }

        LOBYTE(v69[0]) = v45;
        v51 = 1.0;
        if (v65)
        {
          v51 = v47;
        }

        *(v20 + 352) = 0;
        *(v20 + 360) = v50;
        *(v20 + 368) = v44;
        *(v20 + 376) = v45;
        *(v20 + 384) = v59;
        *(v20 + 392) = v46;
        *(v20 + 400) = v51;
        *(v20 + 408) = v60;
        *(v20 + 424) = v61;
        *(v20 + 425) = v48 != 0.0;
        v52 = MEMORY[0x1E69E7CC0];
        *(v20 + 426) = v66;
        *(v20 + 432) = v52;
        *(v20 + 200) = 0;
        *(v20 + 208) = 1;
        *(v20 + 216) = v3;
        *(v20 + 224) = v62;
        *(v20 + 232) = v63;
        *(v20 + 240) = v64;
        *(v20 + 248) = v15;
        *(v20 + 256) = v67;
        *(v20 + 257) = v68;
        *(v20 + 258) = v66;
        *(v20 + 260) = v16;
        *(v20 + 264) = v18;
        *(v20 + 272) = v17;
        v53 = v76;
        *(v20 + 112) = *&v75[16];
        *(v20 + 128) = v53;
        *(v20 + 144) = v77;
        *(v20 + 160) = v78;
        v54 = v73;
        *(v20 + 48) = v72;
        *(v20 + 64) = v54;
        v55 = *v75;
        *(v20 + 80) = v74;
        *(v20 + 96) = v55;
        v56 = v71;
        *(v20 + 16) = v70;
        *(v20 + 32) = v56;
        *(v20 + 312) = 0u;
        *(v20 + 328) = 0u;
        *(v20 + 280) = 0u;
        *(v20 + 296) = 0u;
        *(v20 + 344) = 1;
        *(v20 + 168) = v9;
        *(v20 + 176) = v8;
        *(v20 + 184) = v11;
        *(v20 + 192) = v10;
        return v2;
      }

      outlined init with copy of TextLayoutProperties(&v70, v69);
      outlined init with copy of TextLayoutProperties(&v70, v69);
    }

    goto LABEL_19;
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 416) = MEMORY[0x1E69E7CC0];
  *(v22 + 424) = 0u;
  *(v22 + 440) = 0u;
  *(v22 + 456) = 0u;
  *(v22 + 472) = 0u;
  *(v22 + 488) = 512;
  if ((BYTE8(v70) & 1) != 0 || v70 != 1)
  {
    outlined init with copy of TextLayoutProperties(&v70, v69);
    if (v3)
    {
      v27 = v3;
      outlined init with copy of TextLayoutProperties(&v70, v69);
      v28 = v27;

      NSAttributedString.replacingLineBreakModes(_:)(0);
      v26 = v29;
    }

    else
    {
      outlined init with copy of TextLayoutProperties(&v70, v69);

      v26 = 0;
    }
  }

  else
  {
    outlined init with copy of TextLayoutProperties(&v70, v69);
    v24 = v3;
    outlined init with copy of TextLayoutProperties(&v70, v69);
    v25 = v24;

    v26 = v3;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v31 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v30 setDelegate_];
  [v30 setUsesFontLeading_];
  v32 = v26;
  v33 = v30;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v33, v26, v69);
  v34 = v69[3];
  *(v22 + 528) = v69[2];
  *(v22 + 544) = v34;
  *(v22 + 560) = v69[4];
  v35 = v69[1];
  *(v22 + 496) = v69[0];
  *(v22 + 512) = v35;
  *(v22 + 576) = v31;
  *(v22 + 352) = 0u;
  *(v22 + 368) = 0u;
  *(v22 + 384) = 0;
  *(v22 + 392) = 0x8000000000000000;
  *(v22 + 400) = 0;
  *(v22 + 408) = v23;
  *(v22 + 200) = 0;
  *(v22 + 208) = 1;
  *(v22 + 216) = v26;
  *(v22 + 224) = v13;
  *(v22 + 232) = v12;
  *(v22 + 240) = v14;
  *(v22 + 248) = v15;
  *(v22 + 256) = v67;
  *(v22 + 257) = v68;
  *(v22 + 258) = v66;
  *(v22 + 260) = v16;
  *(v22 + 264) = v18;
  *(v22 + 272) = v17;
  v36 = v76;
  *(v22 + 112) = *&v75[16];
  *(v22 + 128) = v36;
  *(v22 + 144) = v77;
  *(v22 + 160) = v78;
  v37 = v73;
  *(v22 + 48) = v72;
  *(v22 + 64) = v37;
  v38 = *v75;
  *(v22 + 80) = v74;
  *(v22 + 96) = v38;
  v39 = v71;
  *(v22 + 16) = v70;
  *(v22 + 32) = v39;
  *(v22 + 312) = 0u;
  *(v22 + 328) = 0u;
  *(v22 + 280) = 0u;
  *(v22 + 296) = 0u;
  *(v22 + 344) = 1;
  *(v22 + 168) = v9;
  *(v22 + 176) = v8;
  *(v22 + 184) = v11;
  *(v22 + 192) = v10;
  swift_beginAccess();
  v40 = *(v22 + 97);
  v41 = v31;
  v42 = _TextContainer(v40);
  [v42 setLineFragmentPadding_];
  [v33 setTextContainer_];
  if ((v16 & 0xC0) != 0)
  {
    _NSTextLayoutManagerRequiresCTLine(v33);
  }

  outlined destroy of TextLayoutProperties(&v70);

  return v2;
}

void DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v5 = *(a1 + 260);
  *(v4 + 16) = v5;
  swift_beginAccess();
  if ((*(a1 + 160) & 2) == 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v4 + 16) = v5 & 0xFEFF;
    }

    v6 = 0;
    v7 = 0;
LABEL_27:
    getter of styledText #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(v3, v2, v4);

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v6, v7);
    return;
  }

  v8 = *(a1 + 216);
  if (!v8)
  {

    goto LABEL_15;
  }

  [v8 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v6 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v32 = v8;
  v46 = 0;
  v10 = one-time initialization token for resolvableTextSegment;
  v11 = v37;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = static NSAttributedStringKey.resolvableTextSegment;
  v33 = [v11 length];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &v46;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
  *(v14 + 24) = v13;
  v35 = v13;
  v44 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v45 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v43 = &block_descriptor_124;
  v15 = _Block_copy(&aBlock);
  v16 = v11;

  [v16 enumerateAttribute:v12 inRange:0 options:v33 usingBlock:{0, v15}];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (v46 != 1)
    {

      v28 = v5 & 0xFEFF;
      if (v46)
      {
        v29 = 256;
      }

      else
      {
        v29 = 0;
      }

      v5 = v29 | v28;
      *(v4 + 16) = v29 | v28;
      v6 = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
      v7 = v35;
      goto LABEL_16;
    }

    if ([v16 length] < 1)
    {

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
LABEL_33:
      _sypSgWOhTm_6(&v37, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
      v7 = v35;
      v8 = v32;
      *(v3 + 16) = v16;
      v30 = v5 & 0xFEFF;
      if (v46)
      {
        v31 = 256;
      }

      else
      {
        v31 = 0;
      }

      v5 = v31 | v30;
      *(v4 + 16) = v31 | v30;
      v6 = partial apply for closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter;
      if (v16)
      {
        goto LABEL_27;
      }

LABEL_16:
      aBlock = 1;
      v21 = ResolvedStyledText.sizeVariant(_:)(&aBlock, v9);
      v22 = v21;
      if (v23)
      {
        if (!v21[27] || (, v24 = NSAttributedString.isDynamic.getter(), , !v24))
        {
          if (v8)
          {
            if (NSAttributedString.isDynamic.getter())
            {
              v25 = v22[27];
              if (v25)
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v36 = v7;
                  v26 = v25;
                  ResolvedStyledText.schedule.getter(&aBlock);
                  NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

                  v7 = v36;
                  _sypSgWOhTm_6(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
                }
              }
            }
          }
        }

        *(v2 + 16) = v22;
        v27 = v5 | 0x100;
      }

      else
      {

        v27 = v5 & 0xFEFF;
      }

      *(v4 + 16) = v27;
      goto LABEL_27;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v34 = [v16 length];
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &v37;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    *(v18 + 24) = v17;
    v44 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v45 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v43 = &block_descriptor_134;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    [v20 enumerateAttribute:v12 inRange:0 options:v34 usingBlock:{0, v19}];
    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if ((v19 & 1) == 0)
    {
      outlined init with copy of Any?(&v37, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      _sypSgWOhTm_6(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);

      goto LABEL_33;
    }
  }

  __break(1u);
}