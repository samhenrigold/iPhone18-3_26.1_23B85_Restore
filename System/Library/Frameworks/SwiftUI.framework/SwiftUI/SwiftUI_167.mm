uint64_t AnyAccessibilityAction.ConcreteBase.perform<A>(action:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v34 = a6;
  v33 = a2;
  v10 = *(a3 + 24);
  v30 = *(a3 + 16);
  v31 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = a3;
  v23 = v34;
  result = AnyAccessibilityAction.ConcreteBase.matches<A>(_:)(a1, v22, a4, a5);
  if (result)
  {
    (*(v16 + 16))(v18, v33, v15);
    v25 = swift_dynamicCast();
    v26 = v32;
    v27 = *(v32 + 56);
    if (v25)
    {
      v27(v14, 0, 1, AssociatedTypeWitness);
      (*(v26 + 32))(v21, v14, AssociatedTypeWitness);
      (*(v31 + 64))(v21, v30);
      return (*(v26 + 8))(v21, AssociatedTypeWitness);
    }

    v27(v14, 1, 1, AssociatedTypeWitness);
    result = (*(v28 + 8))(v14, v29);
  }

  *v23 = 1;
  return result;
}

uint64_t AnyAccessibilityAction.ConcreteBase.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(v7 + 32))(v8, v7, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a4) = (*(AssociatedConformanceWitness + 32))(a1, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return a4 & 1;
}

uint64_t AnyAccessibilityAction.ConcreteBase.asReference(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for AccessibilityActionReference(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - v18;
  (*(v8 + 16))(v10, v4, v7, v17);
  AccessibilityActionReference.init<A>(_:_:)(v10, a1, AssociatedTypeWitness, v7, v12, v19);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionReference<A>, v16);
  return AnyAccessibilityAction.init<A>(_:bridged:)(v19, 0, v16, WitnessTable, a3);
}

uint64_t AnyAccessibilityAction.ConcreteBase.asCustomAction(category:fallbackLabel:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (*(*(a6 + 24) + 72))(v8, a2, a3, a4, a5, *(a6 + 16));
}

uint64_t AnyAccessibilityAction.ConcreteBase.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46[0] = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v50 = v46 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v46 - v11;
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v55 = v46 - v19;
  outlined init with copy of _Benchmark(a1, v56);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityAction, &protocol descriptor for AbstractAnyAccessibilityAction);
  v20 = swift_dynamicCast();
  v21 = *(a2 - 8);
  v22 = *(v21 + 56);
  v54 = v4;
  v46[1] = a2;
  v47 = v15;
  if (v20)
  {
    v23 = v21;
    v22(v12, 0, 1, a2);
    v24 = *(v5 + 16);
    v25 = v55;
    v24(v55, v12, v4);
    (*(v23 + 8))(v12, a2);
    v26 = *(v5 + 56);
    v26(v25, 0, 1, v4);
  }

  else
  {
    v22(v12, 1, 1, a2);
    (*(v10 + 8))(v12, v9);
    v26 = *(v5 + 56);
    v26(v55, 1, 1, v4);
    v24 = *(v5 + 16);
  }

  v27 = v51;
  v28 = v54;
  v24(v51, v49, v54);
  v26(v27, 0, 1, v28);
  v29 = v52;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v52 + 16);
  v32 = v50;
  (v31)(v50, v55, v7);
  (v31)(&v32[v30], v27, v7);
  v49 = v5;
  v33 = v5;
  v34 = v32;
  v35 = *(v33 + 48);
  if (v35(v34, 1, v28) != 1)
  {
    v38 = v47;
    v31();
    v39 = v54;
    if (v35(&v34[v30], 1, v54) != 1)
    {
      v41 = v49;
      v42 = v46[0];
      (*(v49 + 32))(v46[0], &v34[v30], v39);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v41 + 8);
      v43(v42, v39);
      v44 = *(v52 + 8);
      v44(v51, v7);
      v44(v55, v7);
      v43(v38, v39);
      v44(v34, v7);
      return v37 & 1;
    }

    v40 = *(v52 + 8);
    v40(v51, v7);
    v40(v55, v7);
    (*(v49 + 8))(v38, v39);
    goto LABEL_9;
  }

  v36 = *(v29 + 8);
  v36(v27, v7);
  v36(v55, v7);
  if (v35(&v34[v30], 1, v54) != 1)
  {
LABEL_9:
    (*(v48 + 8))(v34, TupleTypeMetadata2);
    v37 = 0;
    return v37 & 1;
  }

  v36(v34, v7);
  v37 = 1;
  return v37 & 1;
}

void *AnyAccessibilityAction.asCombinedAction(name:properties:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = v7;
  v15 = v7[3];
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v15);
  result = (*(v16 + 72))(&v37, a1, a2, a3 & 1, a4, a5, a6, v15, v16);
  if (*&v38[8])
  {
    *&v40[9] = *&v38[9];
    v39 = v37;
    *v40 = *v38;
    v18 = *v38;
    *a7 = v37;
    a7[1] = v18;
    *(a7 + 25) = *&v40[9];
  }

  else
  {
    v35 = a7;
    outlined destroy of AnyAccessibilityAction?(&v37, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    v19 = a1;
    v20 = a2;
    v21 = a3 & 1;
    v23 = v7[3];
    v22 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v23);
    v34 = *(v22 + 16);
    outlined copy of AccessibilityActionKind.ActionKind(v19, v20, v21, a4);
    v24 = a4;
    v25 = v34(v23, v22);
    if (!v25)
    {
      v26 = AccessibilityProperties.images.getter();
      if (*(v26 + 16))
      {
        v25 = *(v26 + 32);
      }

      else
      {

        v25 = 0;
      }
    }

    outlined init with copy of AnyAccessibilityAction(v8, &v39);
    v27 = swift_allocObject();
    v28 = *v40;
    *(v27 + 16) = v39;
    *(v27 + 32) = v28;
    *(v27 + 41) = *&v40[9];
    *(v27 + 64) = a6;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:);
    *(v29 + 24) = v27;
    v30 = *(v8 + 40);
    v31 = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    *(v35 + 3) = v32;
    *(v35 + 4) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v33 = swift_allocObject();
    *v35 = v33;
    *(v33 + 16) = v19;
    *(v33 + 24) = v20;
    *(v33 + 32) = v21;
    *(v33 + 40) = v24;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = 2;
    *(v33 + 80) = 0u;
    *(v33 + 96) = 0u;
    *(v33 + 112) = v25;
    *(v33 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
    *(v33 + 128) = v29;
    *(v33 + 136) = v31;
    *(v35 + 40) = v30;

    return a6;
  }

  return result;
}

uint64_t closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    v7[3] = MEMORY[0x1E69E7CA8] + 8;
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v3);
    (*(v4 + 32))(v7, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = specialized AccessibilityNode.sendAction<A>(_:value:)(0, 0, 0, 0);
    if (result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *a2 = v6;
  }

  return result;
}

uint64_t AnyAccessibilityAction.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of _Benchmark(a1, v17);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityAction, &protocol descriptor for AbstractAnyAccessibilityAction);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v16, 0, 41);
  }

  outlined init with copy of AnyAccessibilityAction(v1, v15);
  outlined init with copy of AnyAccessibilityAction?(v16, v11);
  outlined init with copy of AnyAccessibilityAction?(v15, &v13);
  if (!v12)
  {
    outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    if (!*&v14[8])
    {
      outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      v4 = 1;
      goto LABEL_10;
    }

LABEL_9:
    outlined destroy of IndexingIterator<_ArchivedViewStates>(v11, type metadata accessor for (AnyAccessibilityAction?, AnyAccessibilityAction?));
    v4 = 0;
    goto LABEL_10;
  }

  outlined init with copy of AnyAccessibilityAction?(v11, v8);
  if (!*&v14[8])
  {
    outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    outlined destroy of AnyAccessibilityAction(v8);
    goto LABEL_9;
  }

  v6 = v13;
  v7[0] = *v14;
  *(v7 + 9) = *&v14[9];
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v4 = (*(v3 + 88))(&v6, v2, v3);
  outlined destroy of AnyAccessibilityAction(&v6);
  outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
  outlined destroy of AnyAccessibilityAction(v8);
  outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
LABEL_10:
  outlined destroy of AnyAccessibilityAction?(v16, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
  return v4 & 1;
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.name.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.image.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.category.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.perform(value:) in conformance AnyAccessibilityAction(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.impliedRole(for:) in conformance AnyAccessibilityAction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v7[0] = v2;
  v7[1] = v3;
  return (*(v5 + 48))(v7, v4, v5);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asReference(for:) in conformance AnyAccessibilityAction(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asCustomAction(category:fallbackLabel:) in conformance AnyAccessibilityAction(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  return (*(v12 + 64))(v15, a2, a3, a4, a5, v11, v12);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asCodableAction(in:) in conformance AnyAccessibilityAction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v7[0] = v2;
  v7[1] = v3;
  return (*(v5 + 96))(v7, v4, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyAccessibilityAction(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 88))(a2, v3, v4) & 1;
}

uint64_t closure #1 in Sequence<>.resolved(in:)(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v48 = a6;
  v49 = a1;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  result = (*(v12 + 8))(v11, v12);
  if (!v16)
  {
    return result;
  }

  v17 = result;
  v18 = v14;
  v19 = v15;
  v52[0] = a3;
  v52[1] = a4;
  v50 = 0;
  v51 = 0;
  default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  v20 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  v21 = v17;
  if (!v20)
  {
    v27 = v19 & 1;
    v28 = v17;
LABEL_8:
    outlined consume of Text.Storage(v28, v18, v27);
  }

  v22 = v20;
  v47 = v21;
  if ([v20 length] <= 0)
  {

    v27 = v19 & 1;
    v28 = v47;
    goto LABEL_8;
  }

  v45 = v18;
  v46 = v6;
  v23 = *a5;

  v24 = v22;
  v25 = NSObject.hashValue.getter();
  v26 = specialized Set.contains(_:)(v25, v23);

  if (v26)
  {

    outlined consume of Text.Storage(v47, v45, v19 & 1);
  }

  else
  {
    v29 = NSObject.hashValue.getter();

    v30 = specialized Set._Variant.insert(_:)(v52, v29);
    MEMORY[0x1EEE9AC00](v30);
    v44[2] = a2;
    v44[3] = a3;
    v44[4] = a4;
    MEMORY[0x1EEE9AC00](v31);
    v32 = v24;
    v48 = specialized AnyAccessibilityAction.Resolved.init(name:category:image:)(v32, partial apply for implicit closure #1 in closure #1 in Sequence<>.resolved(in:), v44, partial apply for implicit closure #2 in closure #1 in Sequence<>.resolved(in:));
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = *v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
    }

    outlined consume of Text.Storage(v47, v45, v19 & 1);

    *(v39 + 2) = v41 + 1;
    v42 = &v39[32 * v41];
    v43 = v49;
    *(v42 + 4) = v48;
    *(v42 + 5) = v34;
    *(v42 + 6) = v36;
    *(v42 + 7) = v38;
    *v43 = v39;
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in Sequence<>.resolved(in:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 24))(&v14, v5, v6);
  v7 = v17;
  if (v17 == 2)
  {
    return 0;
  }

  v10 = v15;
  v9 = v16;
  v11 = v14;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v12 = AccessibilityActionCategory.Category.platformValue(in:)(&v13, v14, v15, v16, v17);
  outlined consume of AccessibilityActionCategory?(v11, v10, v9, v7);
  return v12;
}

double implicit closure #2 in closure #1 in Sequence<>.resolved(in:)@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v5 + 16))(v4, v5))
  {
    Image.resolve(in:)();

    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  }

  else
  {
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v12);
  }

  v6 = v20;
  a3[8] = v19;
  a3[9] = v6;
  a3[10] = v21[0];
  *(a3 + 171) = *(v21 + 11);
  v7 = v16;
  a3[4] = v15;
  a3[5] = v7;
  v8 = v18;
  a3[6] = v17;
  a3[7] = v8;
  v9 = v12[1];
  *a3 = v12[0];
  a3[1] = v9;
  result = *&v13;
  v11 = v14;
  a3[2] = v13;
  a3[3] = v11;
  return result;
}

uint64_t closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t closure #1 in closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (a1)
  {
    v7 = *(a3 + 48);

    a1(v7);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1, a2);
  }

  else
  {
    result = (*(a3 + 56))(0, a2);
  }

  *a4 = 2;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5);
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSe_SESHp_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSH_p_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = specialized Collection.distance(from:to:)(v2, *(a1 + 36), 0, 1 << *(a1 + 32), *(a1 + 36), 0, a1);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI22SpatialEventCollectionV0K0V_Tt1g5(v3, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v9, v5 + 32, v4, a1);
  v7 = v9;

  outlined consume of Set<UIPress>.Iterator._Variant(v7);
  if (v6 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  outlined init with copy of TableColumnCollection.Backing(a1, v16);
  if (v17)
  {
    v2 = *(*&v16[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
    v3 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v2 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21TableColumnCollectionV5EntryV_Tt1g5(v5, 0);
  v8 = *(type metadata accessor for TableColumnCollection.Entry(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  outlined init with copy of TableColumnCollection(a1, v13);
  specialized Sequence._copySequenceContents(initializing:)(v16, v7 + v9, v6);
  v11 = v10;
  outlined destroy of IndexingIterator<TableColumnCollection>(v16, &lazy cache variable for type metadata for IndexingIterator<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6CF0]);
  if (v11 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

{
  v2 = type metadata accessor for _ArchivedViewStates(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<_ArchivedViewStates>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(v3 + 28) + 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13_ArchivedViewV_Tt1g5(*(v9 + 16), 0);
  v12 = *(type metadata accessor for _ArchivedView(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  outlined init with copy of _ArchivedViewStates(a1, v5);
  v14 = specialized Sequence._copySequenceContents(initializing:)(v8, v11 + v13, v10);
  outlined destroy of IndexingIterator<_ArchivedViewStates>(v8, type metadata accessor for IndexingIterator<_ArchivedViewStates>);
  if (v14 != v10)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

{
  v2 = *(*a1 + 88);
  v3 = v2();
  v4 = *(*a1 + 96);
  v5 = v4();
  v6 = v2();
  result = v4();
  if (v3 < v6 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = (v2)(result);
  result = v4();
  if (v5 < v9 || result < v5)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, v3);
  v12 = v5 - v3;
  if (!v11)
  {
    if (v12)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13TableColumnIDV_Tt1g5(v12, 0);

      v14 = specialized Sequence._copyContents(initializing:)(&v15, (v13 + 4), v12);

      if (v14 == v12)
      {
        return v13;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2 - 1;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI14FocusStoreListV4ItemV_Tt1g5(v2, 0);
  outlined init with copy of FocusStoreList.Item(a1 + 32, (v4 + 4));
  if (v3)
  {
    v5 = (v4 + 13);
    v6 = a1 + 104;
    do
    {
      outlined init with copy of FocusStoreList.Item(v6, v5);
      v5 += 72;
      v6 += 72;
      --v3;
    }

    while (v3);
  }

  return v4;
}

{
  v2 = *(*a1 + 88);
  v3 = v2();
  v4 = *(*a1 + 96);
  v5 = v4();
  v6 = v2();
  result = v4();
  if (v3 < v6 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = (v2)(result);
  result = v4();
  if (v5 < v9 || result < v5)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, v3);
  v12 = v5 - v3;
  if (!v11)
  {
    if (v12)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10TableRowIDO_Tt1g5(v12, 0);

      v14 = specialized Sequence._copyContents(initializing:)(&v15, v13 + 2, v12);

      if (v14 == v12)
      {
        return v13;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = _VariadicView_Children.endIndex.getter();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1g5(v2, 0);
        outlined init with copy of SubviewCollection(a1, v6);
        v5 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), v2);
        outlined destroy of IndexingIterator<TableColumnCollection>(v7, &lazy cache variable for type metadata for IndexingIterator<SubviewCollection>, lazy protocol witness table accessor for type SubviewCollection and conformance SubviewCollection, &type metadata for SubviewCollection, MEMORY[0x1E69E6CF0]);
        if (v5 == v2)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, void, uint64_t, __n128))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = (a3)(&v9, a2 + 32, v6, a1);

    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v7 = __CocoaSet.count.getter();
    if (v7 < 0)
    {
      __break(1u);
    }

    v6 = v7;
    if (!v7)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(char *result, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI025NavigationViewDestinationK0V_Tt1g5(a2 - result, 0);
  v12 = specialized Slice._copyContents(initializing:)(v13, (v11 + 4), v8, v7, a2, a3, a4);

  if (v12 != v8)
  {
    goto LABEL_11;
  }

  return v11;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentLaunchScreenAction>, &type metadata for DocumentLaunchScreenAction, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for UIMenuElement();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v4, 0);

    MEMORY[0x18D00E990](a2 + 32, v4, v3);
    v3 = v5;

    if (v3 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t outlined assign with take of AnyAccessibilityAction(__int128 *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a2);
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 40) = *(a1 + 40);
  return a2;
}

void *specialized Slice._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_10:
    v12 = a4;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a5;
    }

    if (a5 == a4)
    {
      v12 = a5;
      v10 = a5 - a4;
LABEL_11:
      *v9 = a4;
      v9[1] = a5;
      v9[2] = a6;
      v9[3] = a7;
      v9[4] = v12;
      return v10;
    }

    v13 = a2;
    v19 = a5 - a4;
    v20 = a5;
    v21 = a7;
    v14 = 0;
    v15 = v11 - a4;
    v16 = a3 - 1;
    v17 = a4 - a5;
    v18 = a6 + 88 * a4 + 32;
    while (v15 != v14)
    {
      if (a4 < 0)
      {
        goto LABEL_21;
      }

      if ((a4 + v14) >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      result = outlined init with copy of NavigationViewDestinationView(v18, v13);
      if (v16 == v14)
      {
        v12 = a4 + v14 + 1;
        a5 = v20;
        a7 = v21;
        goto LABEL_11;
      }

      v13 += 88;
      ++v14;
      v18 += 88;
      if (!(v17 + v14))
      {
        v10 = v19;
        a5 = v20;
        v12 = v20;
        a7 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of IndexingIterator<_ArchivedViewStates>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AccessibilityKindActionProvider?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AccessibilityKindActionProvider?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for AccessibilityKindActionProvider, &protocol descriptor for AccessibilityKindActionProvider);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AccessibilityKindActionProvider?);
    }
  }
}

uint64_t outlined init with copy of AnyAccessibilityAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (AnyAccessibilityAction?, AnyAccessibilityAction?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AnyAccessibilityAction?, AnyAccessibilityAction?))
  {
    type metadata accessor for AnyAccessibilityAction?(255, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyAccessibilityAction?, AnyAccessibilityAction?));
    }
  }
}

id specialized AnyAccessibilityAction.Resolved.init(name:category:image:)(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(_OWORD *__return_ptr, __n128))
{
  v6 = a1;
  a2();

  (a4)(v11, v7);
  v20 = v11[8];
  v21 = v11[9];
  v22[0] = v12[0];
  *(v22 + 11) = *(v12 + 11);
  v17 = v11[4];
  *v18 = v11[5];
  *&v18[16] = v11[6];
  v19 = v11[7];
  v13 = v11[0];
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v13) == 1)
  {
  }

  else
  {
    outlined init with copy of GraphicsImage(&v13, v9);
    outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v9[4] = v17;
    v10[0] = *v18;
    *(v10 + 12) = *&v18[12];
    v9[0] = v13;
    v9[1] = v14;
    v9[2] = v15;
    v9[3] = v16;
    GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 0, 0);

    outlined destroy of GraphicsImage(&v13);
  }

  return v6;
}

uint64_t outlined destroy of AnyAccessibilityAction?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyAccessibilityAction?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityZoomAction and conformance AccessibilityZoomAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction;
  if (!lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityZoomAction, &type metadata for AccessibilityZoomAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction;
  if (!lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityZoomAction, &type metadata for AccessibilityZoomAction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of IndexingIterator<TableColumnCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SubviewCollection and conformance SubviewCollection()
{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewCollection, &type metadata for SubviewCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewCollection, &type metadata for SubviewCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewCollection, &type metadata for SubviewCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewCollection, &type metadata for SubviewCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SubviewCollection, &type metadata for SubviewCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

uint64_t outlined init with copy of _ArchivedViewStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ArchivedViewStates(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void destroy for AnyAccessibilityAction.Resolved(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for AnyAccessibilityAction.Resolved(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for AnyAccessibilityAction.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for AnyAccessibilityAction.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t type metadata completion function for AccessibilityActionReference(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for AccessibilityActionReference(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(v4 + 24);
  }

  if (v5 >= 2 && v6 - 2 < 0)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  JUMPOUT(0x18D011290);
}

uint64_t initializeWithCopy for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  if (v10 - 2 < 0 && v9 >= 2)
  {
    v19 = *v8;
    v20 = *(v8 + 8);
    v21 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v20, v21);
    *v7 = v19;
    *(v7 + 8) = v20;
    *(v7 + 16) = v21;
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
  }

  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v17 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v17;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = *(v13 + 24);
  }

  *((v12 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t assignWithCopy for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  else
  {
    v11 = *(v7 + 24);
  }

  v12 = v11 - 2;
  v13 = *(v8 + 24);
  if (v13 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  v14 = v10 - 2;
  if (v12 < 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      if (v9 >= 2)
      {
        outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
      }

      goto LABEL_14;
    }

    if (v9 >= 2)
    {
      if (v13 >= 2)
      {
        v34 = *v8;
        v35 = *(v8 + 8);
        v36 = *(v8 + 16);
        outlined copy of Text.Storage(*v8, v35, v36);
        v37 = *v7;
        v38 = *(v7 + 8);
        v39 = *(v7 + 16);
        *v7 = v34;
        *(v7 + 8) = v35;
        *(v7 + 16) = v36;
        outlined consume of Text.Storage(v37, v38, v39);
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        outlined destroy of Text(v7);
        v33 = *(v8 + 16);
        *v7 = *v8;
        *(v7 + 16) = v33;
      }

      goto LABEL_15;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    v15 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v15;
    goto LABEL_15;
  }

  if (v13 < 2)
  {
    goto LABEL_14;
  }

  v30 = *v8;
  v31 = *(v8 + 8);
  v32 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v31, v32);
  *v7 = v30;
  *(v7 + 8) = v31;
  *(v7 + 16) = v32;
  *(v7 + 24) = *(v8 + 24);

LABEL_15:
  v16 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_22;
    }

LABEL_21:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_22;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_22:
  *((v16 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakCopyAssign();
  return a1;
}

uint64_t initializeWithTake for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  *((v10 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t assignWithTake for AccessibilityActionReference(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v7 + 24);
  }

  if (v10 - 2 >= 0)
  {
    goto LABEL_4;
  }

  v18 = *(v8 + 24);
  LODWORD(v19) = -1;
  if (v18 < 0xFFFFFFFF)
  {
    v19 = *(v8 + 24);
  }

  if (v19 - 2 >= 0)
  {
    if (v9 >= 2)
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }

    goto LABEL_4;
  }

  if (v9 < 2)
  {
LABEL_4:
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
    goto LABEL_5;
  }

  if (v18 >= 2)
  {
    v23 = *(v8 + 16);
    v24 = *v7;
    v25 = *(v7 + 8);
    v26 = *(v7 + 16);
    *v7 = *v8;
    *(v7 + 16) = v23;
    outlined consume of Text.Storage(v24, v25, v26);
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    outlined destroy of Text(v7);
    v22 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v22;
  }

LABEL_5:
  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
LABEL_14:
    v20 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v20;
    goto LABEL_15;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_14;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v12 + 24) = *(v13 + 24);

LABEL_15:
  *((v12 + 39) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 39) & 0xFFFFFFFFFFFFFFF8);

  swift_unknownObjectWeakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionReference(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for AccessibilityActionReference(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *v20 = 0u;
          *(v20 + 16) = 0u;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        v19();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityActionStorage(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 24);
    LODWORD(v13) = -1;
    if (v12 < 0xFFFFFFFF)
    {
      v13 = *(v11 + 24);
    }

    if (v13 - 2 < 0 && v12 >= 2)
    {
      v27 = *v11;
      v28 = *(v11 + 8);
      v29 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v28, v29);
      *v10 = v27;
      *(v10 + 8) = v28;
      *(v10 + 16) = v29;
      *(v10 + 24) = *(v11 + 24);
    }

    else
    {
      v14 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v14;
    }

    v15 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v16 + 24) < 0xFFFFFFFFuLL)
    {
      v20 = *(v16 + 16);
      *v15 = *v16;
      *(v15 + 16) = v20;
    }

    else
    {
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      outlined copy of Text.Storage(*v16, v18, v19);
      *v15 = v17;
      *(v15 + 8) = v18;
      *(v15 + 16) = v19;
      *(v15 + 24) = *(v16 + 24);
    }

    v21 = ((v15 + 39) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v24[1];
    *v23 = *v24;
    v23[1] = v25;
    *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  if (v10 - 2 < 0 && v9 >= 2)
  {
    v24 = *v8;
    v25 = *(v8 + 8);
    v26 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v25, v26);
    *v7 = v24;
    *(v7 + 8) = v25;
    *(v7 + 16) = v26;
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
  }

  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v17 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v17;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Text.Storage(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    *(v12 + 24) = *(v13 + 24);
  }

  v18 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  *((v20 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 19) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  else
  {
    v11 = *(v7 + 24);
  }

  v12 = v11 - 2;
  v13 = *(v8 + 24);
  if (v13 < 0xFFFFFFFF)
  {
    v10 = *(v8 + 24);
  }

  v14 = v10 - 2;
  if (v12 < 0)
  {
    if ((v14 & 0x80000000) == 0)
    {
      if (v9 >= 2)
      {
        outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
      }

      goto LABEL_14;
    }

    if (v9 >= 2)
    {
      if (v13 >= 2)
      {
        v39 = *v8;
        v40 = *(v8 + 8);
        v41 = *(v8 + 16);
        outlined copy of Text.Storage(*v8, v40, v41);
        v42 = *v7;
        v43 = *(v7 + 8);
        v44 = *(v7 + 16);
        *v7 = v39;
        *(v7 + 8) = v40;
        *(v7 + 16) = v41;
        outlined consume of Text.Storage(v42, v43, v44);
        *(v7 + 24) = *(v8 + 24);
      }

      else
      {
        outlined destroy of Text(v7);
        v38 = *(v8 + 16);
        *v7 = *v8;
        *(v7 + 16) = v38;
      }

      goto LABEL_15;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
LABEL_14:
    v15 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v15;
    goto LABEL_15;
  }

  if (v13 < 2)
  {
    goto LABEL_14;
  }

  v35 = *v8;
  v36 = *(v8 + 8);
  v37 = *(v8 + 16);
  outlined copy of Text.Storage(*v8, v36, v37);
  *v7 = v35;
  *(v7 + 8) = v36;
  *(v7 + 16) = v37;
  *(v7 + 24) = *(v8 + 24);

LABEL_15:
  v16 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 24);
  if (*(v16 + 24) < 0xFFFFFFFFuLL)
  {
    if (v18 >= 0xFFFFFFFF)
    {
      v25 = *v17;
      v26 = *(v17 + 8);
      v27 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v26, v27);
      *v16 = v25;
      *(v16 + 8) = v26;
      *(v16 + 16) = v27;
      *(v16 + 24) = *(v17 + 24);

      goto LABEL_22;
    }

LABEL_21:
    v28 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v28;
    goto LABEL_22;
  }

  if (v18 < 0xFFFFFFFF)
  {
    outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

    goto LABEL_21;
  }

  v19 = *v17;
  v20 = *(v17 + 8);
  v21 = *(v17 + 16);
  outlined copy of Text.Storage(*v17, v20, v21);
  v22 = *v16;
  v23 = *(v16 + 8);
  v24 = *(v16 + 16);
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  outlined consume of Text.Storage(v22, v23, v24);
  *(v16 + 24) = *(v17 + 24);

LABEL_22:
  v29 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v30 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v29 = *v30;

  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;

  *((v31 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = ((v10 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  *((v15 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AccessibilityActionStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 24);
  LODWORD(v10) = -1;
  if (v9 < 0xFFFFFFFF)
  {
    v10 = *(v7 + 24);
  }

  if (v10 - 2 >= 0)
  {
    goto LABEL_4;
  }

  v18 = *(v8 + 24);
  LODWORD(v19) = -1;
  if (v18 < 0xFFFFFFFF)
  {
    v19 = *(v8 + 24);
  }

  if (v19 - 2 >= 0)
  {
    if (v9 >= 2)
    {
      outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
    }

    goto LABEL_4;
  }

  if (v9 < 2)
  {
LABEL_4:
    v11 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v11;
    goto LABEL_5;
  }

  if (v18 >= 2)
  {
    v27 = *(v8 + 16);
    v28 = *v7;
    v29 = *(v7 + 8);
    v30 = *(v7 + 16);
    *v7 = *v8;
    *(v7 + 16) = v27;
    outlined consume of Text.Storage(v28, v29, v30);
    *(v7 + 24) = *(v8 + 24);
  }

  else
  {
    outlined destroy of Text(v7);
    v26 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v26;
  }

LABEL_5:
  v12 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v12 + 24) < 0xFFFFFFFFuLL)
  {
LABEL_14:
    v20 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v20;
    goto LABEL_15;
  }

  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

    goto LABEL_14;
  }

  v14 = *(v13 + 16);
  v15 = *v12;
  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  *v12 = *v13;
  *(v12 + 16) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v12 + 24) = *(v13 + 24);

LABEL_15:
  v21 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;

  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;

  *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionStorage(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  if (v5 >= 0x7FFFFFFF)
  {
    return (*(v4 + 48))();
  }

  v9 = *((((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

void storeEnumTagSinglePayload for AccessibilityActionStorage(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v8 >= a2)
  {
    if (v8 < a3)
    {
      a1[v10] = 0;
    }

    if (a2)
    {
      if (v7 < 0x7FFFFFFF)
      {
        v13 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v13 = a2 & 0x7FFFFFFF;
          v13[1] = 0;
        }

        else
        {
          *v13 = a2 - 1;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12();
      }
    }
  }

  else
  {
    v11 = ~v8 + a2;
    bzero(a1, v10);
    *a1 = v11;
    if (v8 < a3)
    {
      a1[v10] = 1;
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AccessibilityActionReference<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionReference<A>);
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityActionReference<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in AccessibilityActionStorage.perform(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v5 = v4[5];
  v7 = type metadata accessor for AccessibilityActionStorage(0, v4[2], v4[3], a4);
  return (*(v6 + *(v7 + 48)))(v5);
}

void _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t type metadata completion function for BadgedView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BadgedView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-33 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[2];
    if ((v10 >> 1) > 0x80000000)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
    }

    else
    {
      v11 = *a2;
      v12 = a2[1];
      v13 = a2[3];
      v14 = a2;
      v15.n128_f64[0] = outlined copy of BadgeLabel(*a2, v12, v10);
      a2 = v14;
      *v3 = v11;
      v3[1] = v12;
      v3[2] = v10;
      v3[3] = v13;
    }

    (*(v5 + 16))((v3 + v6 + 32) & ~v6, (a2 + v6 + 32) & ~v6, v4, v15);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

uint64_t destroy for BadgedView(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if ((v4 >> 1) <= 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v4);
  }

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 32) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t initializeWithCopy for BadgedView(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[2];
  if ((v6 >> 1) > 0x80000000)
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v11;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = a2[3];
    v10.n128_f64[0] = outlined copy of BadgeLabel(*a2, v8, v6);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v6;
    *(a1 + 24) = v9;
  }

  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 16))((*(v12 + 80) + 32 + a1) & ~*(v12 + 80), (a2 + *(v12 + 80) + 32) & ~*(v12 + 80), v10);
  return a1;
}

uint64_t *assignWithCopy for BadgedView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = a2[2];
  v8 = v7 >> 1;
  if ((v6 >> 1) > 0x80000000)
  {
    if (v8 <= 0x80000000)
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[3];
      outlined copy of BadgeLabel(*a2, v16, v7);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v7;
      a1[3] = v17;
      goto LABEL_8;
    }

LABEL_7:
    v18 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v18;
    goto LABEL_8;
  }

  if (v8 > 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v6);
    goto LABEL_7;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  outlined copy of BadgeLabel(*a2, v10, v7);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v7;
  a1[3] = v11;
  outlined consume of BadgeLabel(v12, v13, v14);
LABEL_8:
  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 24))((a1 + *(v19 + 80) + 32) & ~*(v19 + 80), (a2 + *(v19 + 80) + 32) & ~*(v19 + 80));
  return a1;
}

uint64_t *assignWithTake for BadgedView(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  if ((v6 >> 1) > 0x80000000)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if ((v7 >> 1) > 0x80000000)
  {
    outlined consume of BadgeLabel(*a1, a1[1], v6);
LABEL_5:
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 1) = v11;
    goto LABEL_6;
  }

  v8 = *(a2 + 24);
  v9 = *a1;
  v10 = a1[1];
  *a1 = *a2;
  a1[2] = v7;
  a1[3] = v8;
  outlined consume of BadgeLabel(v9, v10, v6);
LABEL_6:
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((a1 + *(v12 + 80) + 32) & ~*(v12 + 80), (*(v12 + 80) + 32 + a2) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for BadgedView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 2) >> 1;
      if (v15 > 0x80000000)
      {
        v16 = ~v15;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for BadgedView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 2 * ~a2;
    *(a1 + 3) = 0;
  }
}

uint64_t *initializeWithCopy for BadgeLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of BadgeLabel(*a2, v4, v5);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for BadgeLabel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of BadgeLabel(*a2, v4, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of BadgeLabel(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for BadgeLabel(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v6;
  outlined consume of BadgeLabel(v3, v5, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type BadgeLabel and conformance BadgeLabel()
{
  result = lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel;
  if (!lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BadgeLabel, &type metadata for BadgeLabel, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeLabel and conformance BadgeLabel);
  }

  return result;
}

double specialized closure #1 in AccessibilityBadgedViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1;
  if (a3 < 0)
  {
    v9 = a3;
    v8 = a2;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined copy of Text.Storage(v6, v8, v9 & 1);
  }

  else
  {
    v14[0] = a1;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;

    v9 = 0;
  }

  v10 = *a5;
  v11 = a5[1];

  outlined copy of Text.Storage(v6, v8, v9 & 1);

  AccessibilityValueStorage.init(description:)();
  swift_beginAccess();
  outlined init with copy of AccessibilityValueStorage(v14, v13);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e59AttachmentModifierVRs_rlE18accessibilityValueyACyxAEGAA0eI7G35VFyAA0E10PropertiesVzXEfU_SbAIXEfU_AFTf1cn_n(v10 + 80, v13);
  outlined destroy of AccessibilityValueStorage?(v10 + 80);
  outlined init with copy of AccessibilityValueStorage(v13, v10 + 80);
  outlined destroy of AccessibilityValueStorage(v13);
  swift_endAccess();
  outlined consume of Text.Storage(v6, v8, v9 & 1);

  outlined consume of Text.Storage(v6, v8, v9 & 1);

  outlined destroy of AccessibilityValueStorage(v14);

  *a5 = v10;
  a5[1] = v11;

  return result;
}

uint64_t BadgedView.init(badgeLabel:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  type metadata accessor for BadgedView(0, a6, a7, a4);
  return a5();
}

uint64_t BadgedView.body.getter@<X0>(uint64_t a1@<X0>, const char *a2@<X8>)
{
  v22[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  v32[0] = *(a1 + 24);
  v7 = v32[0];
  v32[1] = lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v32);
  v28 = &type metadata for BadgeViewStyleConfiguration.Content;
  v29 = v5;
  v30 = v6;
  v31 = WitnessTable;
  type metadata accessor for StaticSourceWriter(255, &v28);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *(v2 + 8);
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  v28 = *v2;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v24 = v4;
  v25 = v7;
  v26 = v2;
  outlined copy of BadgeLabel?(v28, v16, v17);
  v19 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();
  View.viewAlias<A, B>(_:_:)(&type metadata for BadgeViewStyleConfiguration.Content, partial apply for closure #1 in BadgedView.body.getter, v23, &type metadata for ResolvedBadgedView, &type metadata for BadgeViewStyleConfiguration.Content, v5, v19);
  outlined consume of BadgeLabel?(v28, v29, v30);
  v27[0] = v19;
  v27[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(v22[0], v9, v27);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v15, v9);
}

uint64_t closure #1 in BadgedView.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  v7 = v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  type metadata accessor for BadgedView(0, a2, a3, v15);
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v24 = *a1;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v19 = outlined copy of BadgeLabel?(v24, v16, v17);
  MEMORY[0x18D00A570](&v24, a2, v7, a3, v19);
  outlined consume of BadgeLabel?(v24, v25, v26);
  v20 = lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v23[0] = a3;
  v23[1] = v20;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v9 + 8);
  v21(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v14, v8);
}

uint64_t AccessibilityConfigurationViewModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  outlined copy of BadgeLabel?(a1, a2, a3);
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityProperties(v15, v13);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v15);
  _s7SwiftUI10MutableBoxCyAA23AccessibilityAttachmentVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v10 = swift_allocObject();
  result = memcpy((v10 + 16), __src, 0x128uLL);
  __src[0] = v10;
  __src[1] = 0;
  if (a3 >> 1 == 0xFFFFFFFF)
  {
    v12 = 0;
  }

  else
  {
    specialized closure #1 in AccessibilityBadgedViewModifier.body(content:)(a1, a2, a3, a4, __src);
    result = outlined consume of BadgeLabel?(a1, a2, a3);
    v10 = __src[0];
    v12 = __src[1];
  }

  *a5 = v10;
  a5[1] = v12;
  return result;
}

void protocol witness for View.body.getter in conformance BadgeLabel(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s10Foundation18IntegerFormatStyleVySiGMaTm_0(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v4);
  v5 = *v1;
  v6 = v1[2];
  if (v6 < 0)
  {
    v11 = v1[3];
    v8 = v1[1];
    outlined copy of Text.Storage(v5, v8, v6 & 1);
  }

  else
  {
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Int and conformance Int();
    IntegerFormatStyle.init(locale:)();
    lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
    v5 = Text.init<A>(_:format:)();
    v8 = v7;
    LOBYTE(v6) = v9;
    v11 = v10;
  }

  *a1 = v5;
  *(a1 + 8) = v8;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v11;
}

void type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue();
    v5[1] = lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityBadgedViewNeedsValue, &type metadata for AccessibilityBadgedViewNeedsValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewNeedsValue and conformance AccessibilityBadgedViewNeedsValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityConfigurationViewModifier, &unk_1F0004420, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v1;
    v6[5] = v2;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>(255, a1);
    v5 = v4;
    v6[0] = lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>();
    v6[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>)
  {
    _s10Foundation18IntegerFormatStyleVySiGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityConfigurationViewModifier>, lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier, &unk_1F0004420, MEMORY[0x1E697FDE8]);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityConfigurationViewModifier>, AccessibilityAttachmentModifier>);
    }
  }
}

void _s10Foundation18IntegerFormatStyleVySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>)
  {
    _s10Foundation18IntegerFormatStyleVySiGMaTm_0(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityConfigurationViewModifier>, lazy protocol witness table accessor for type AccessibilityConfigurationViewModifier and conformance AccessibilityConfigurationViewModifier, &unk_1F0004420, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityConfigurationViewModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized TextInputValidation.shouldChangeText(in:text:replacement:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t), uint64_t a7)
{
  v63 = a7;
  v64 = a6;
  v60 = a4;
  v61 = a5;
  v10 = MEMORY[0x1E69E60D0];
  v11 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
  v13 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54 - v14;
  type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>(0);
  v56 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, v10, v11, MEMORY[0x1E69E7BE0]);
  v66 = v17;
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v54 - v20;
  v77 = a2;
  v78 = a3;
  v69 = a2;
  v59 = v13;
  if (a1 >> 62)
  {
LABEL_27:
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = a1;
  v23 = a1 & 0xC000000000000001;

  v24 = 0;
  v67 = MEMORY[0x1E69E7CC0];
  while (v21 != v24)
  {
    if (v23)
    {
      v25 = MEMORY[0x18D00E9C0](v24, v22);
    }

    else
    {
      if (v24 >= *(v68 + 16))
      {
        goto LABEL_26;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    a1 = v25;
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    [v25 rangeValue];

    v27 = Range<>.init(_:in:)();
    v29 = v28;
    v31 = v30;

    ++v24;
    if ((v31 & 1) == 0)
    {
      v32 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      a1 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = a1;
      v67 = v32;
      v35 = &v32[16 * v34];
      *(v35 + 4) = v27;
      *(v35 + 5) = v29;
      v24 = v26;
    }
  }

  v36 = v67;

  v38 = v65;
  _ss8RangeSetV7SwiftUIEyAByxGqd__cSTRd__SnyxG7ElementRtd__lufCSS5IndexV_SaySnyAIGGTt1g5(v37);
  v39 = v66;
  if (RangeSet.isEmpty.getter())
  {
    (*(v62 + 8))(v38, v39);
  }

  else
  {
    lazy protocol witness table accessor for type String and conformance String();
    v40 = v55;
    RangeSet._inverted<A>(within:)();
    v75 = 0;
    v76 = 0xE000000000000000;
    v41 = v57;
    RangeSet.ranges.getter();
    v42 = *(v62 + 8);
    v62 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68 = v42;
    v42(v40, v39);
    v43 = v58;
    v44 = v59;
    v45 = v70;
    (*(v58 + 16))(v70, v41, v59);
    v46 = *(v56 + 36);
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    dispatch thunk of Collection.startIndex.getter();
    (*(v43 + 8))(v41, v44);
    dispatch thunk of Collection.endIndex.getter();
    v47 = v45;
    if (*&v45[v46] != v71)
    {
      do
      {
        v48 = dispatch thunk of Collection.subscript.read();
        v48(&v71, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v71 = String.subscript.getter();
        v72 = v49;
        v73 = v50;
        v74 = v51;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        dispatch thunk of Collection.endIndex.getter();
        v47 = v70;
      }

      while (*&v70[v46] != v71);
    }

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>);

    v77 = v75;
    v78 = v76;
    v36 = v67;
    (v68)(v65, v66);
  }

  if (*(v36 + 2))
  {

    v71 = v60;
    v72 = v61;
    lazy protocol witness table accessor for type String and conformance String();
    String.insert<A>(contentsOf:at:)();
  }

  else
  {
  }

  v52 = v64(v77, v78);

  return v52 & 1;
}

_BYTE *TextEditorTextView.helper.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
  }

  else
  {
    v4 = closure #1 in TextEditorTextView.helper.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void TextEditorTextView.updateBackground(_:inheritBackground:)(uint64_t a1, unsigned __int8 a2, char a3)
{
  v6 = a2;
  v7 = [v3 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  v9 = objc_opt_self();
  v10 = &selRef_clearColor;
  if (v8 != 6)
  {
    v10 = &selRef_systemBackgroundColor;
  }

  v11 = [v9 *v10];
  v12 = v11;
  v13 = 0;
  if (v6 != 2 && !a1 && (a3 & 1) == 0)
  {
    v13 = v11;
  }

  v14 = v13;
  [v3 setBackgroundColor_];
}

uint64_t static UIKitTextEditor._makeView(view:inputs:)(unsigned int *a1, __int128 *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a2[1];
  v3 = a2[3];
  v24 = a2[2];
  v25 = v3;
  v26 = a2[4];
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  v16 = v22;
  v17 = v2;
  v27 = *(a2 + 20);
  v18 = v24;
  if (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v5 = 1;
  }

  else
  {
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v5 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>(0);
  outlined init with copy of _GraphInputs(&v22, &v16);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(&lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<TextSelection> and conformance _GraphInputs.SelectionBasedStorageKey<A>, type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>, protocol conformance descriptor for _GraphInputs.SelectionBasedStorageKey<A>);
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v22);
  v7 = _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5(v16, *(&v16 + 1), v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for TextEditorStyleConfiguration(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for UIKitTextViewAdaptor(0);
  LODWORD(v16) = OffsetAttribute2;
  BYTE4(v16) = v5 & 1;
  *(&v16 + 1) = v7;
  *&v17 = v9;
  *(&v17 + 1) = v11;
  *&v18 = v13;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable();
  Attribute.init<A>(body:value:flags:update:)();
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v16 = v22;
  v17 = v23;
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t UIKitTextEditor.MakeRepresentable.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TextEditor.Storage(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextEditorStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of TextEditorStyleConfiguration(Value, v8, type metadata accessor for TextEditorStyleConfiguration);
  v10 = *(v1 + 24);
  v24 = *(v1 + 8);
  v25 = v10;
  v11 = *(v1 + 4);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v12 = type metadata accessor for UIKitTextViewAdaptor(0);
  v13 = v12[7];
  type metadata accessor for Binding<TextSelection?>(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  outlined init with copy of TextEditorStyleConfiguration(v8, v5, type metadata accessor for TextEditor.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v8, type metadata accessor for TextEditorStyleConfiguration);
    v23 = *v5;
    v15 = *(v5 + 2);
    v16 = *(v5 + 3);
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v18 = *(v17 + 48);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1 + v13, type metadata accessor for Binding<TextSelection?>?);
    result = outlined init with take of Binding<TextSelection?>?(&v5[v18], a1 + v13, type metadata accessor for Binding<TextSelection?>?);
    v20 = v24;
    *(a1 + 32) = v23;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    v21 = (a1 + v12[8]);
    v22 = v25;
    *v21 = v20;
    v21[1] = v22;
    *(a1 + v12[9]) = v11;
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance UIKitTextEditor.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIKitTextViewAdaptor(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 1, 1, v3);
}

id UIKitTextViewAdaptor.makeUIView(context:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  type metadata accessor for TextEditorTextView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setContentInsetAdjustmentBehavior_];
  v4 = v3;
  [v4 setAllowsEditingTextAttributes_];
  [v4 setDelegate_];
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  [v4 setBorderStyle_];

  v5 = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  UIView.setHoverEffectEnabled(_:)(v5 & 1);
  return v4;
}

double UIKitTextViewAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v11 = v4;
  RepresentableContextValues.environment.getter();
  v6 = v12;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>();
  if (*(&v12 + 1))
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v7 = *(v2 + *(type metadata accessor for UIKitTextViewAdaptor(0) + 36));
  TextEditorTextView.updateBackground(_:inheritBackground:)(*&v10[0], BYTE8(v10[0]), v7);

  specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  [a1 setBorderStyle_];
  v8 = specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24));
  UIView.setHoverEffectEnabled(_:)(v8 & 1);
  sub_18BF9B644(v12, *(&v12 + 1));
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v12, *(&v12 + 1));
  v10[0] = v12;
  UIKitTextEditorCoordinator.update(_:configuration:env:)(a1, v2, v10);
  v10[0] = v6;
  specialized UIKitTextEditorCoordinatorBase.updateInputAccessoryGenerator(textView:env:)(a1, v10);

  return result;
}

void UIKitTextEditorCoordinator.update(_:configuration:env:)(char *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  type metadata accessor for AttributedString.LineHeight?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v121 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v118 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v114 = (&v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v113 = (&v112 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v112 - v20;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v124 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v115 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v125 = &v112 - v26;
  v27 = type metadata accessor for TextSelection(0);
  v126 = *(v27 - 8);
  v127 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a3;
  v29 = a3[1];
  v122 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating;
  *(v4 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) = 1;
  v31 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
  swift_beginAccess();
  outlined assign with copy of UIKitTextViewAdaptor(a2, v4 + v31, type metadata accessor for UIKitTextViewAdaptor);
  swift_endAccess();
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();
  if (v29)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v32 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation;
  swift_beginAccess();
  v123 = v4;
  outlined assign with take of TextInputValidation?(&v136, v4 + v32);
  swift_endAccess();
  *&v136 = v30;
  *(&v136 + 1) = v29;
  specialized UIKitTextEditorCoordinatorBase.updateFindInteraction(textView:env:)(a1, &v136);
  v33 = [a1 text];
  v129 = v29;
  v130 = a1;
  v128 = v30;
  v116 = v18;
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = a2[4];
  v39 = a2[5];
  v41 = a2[6];
  v40 = a2[7];
  *&v136 = v38;
  *(&v136 + 1) = v39;
  *&v137 = v41;
  *(&v137 + 1) = v40;
  type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158]);
  v43 = v42;
  MEMORY[0x18D00ACC0](v134);
  if (!v37)
  {

LABEL_12:
    *&v136 = v38;
    *(&v136 + 1) = v39;
    *&v137 = v41;
    *(&v137 + 1) = v40;
    MEMORY[0x18D00ACC0](v134, v43);
    v45 = MEMORY[0x18D00C850](*&v134[0], *(&v134[0] + 1));

    [v130 setText_];

    goto LABEL_13;
  }

  if (__PAIR128__(v37, v35) == v134[0])
  {

    goto LABEL_13;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v44 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v46 = type metadata accessor for UIKitTextViewAdaptor(0);
  v47 = v124;
  outlined init with copy of TextEditorStyleConfiguration(a2 + *(v46 + 28), v124, type metadata accessor for Binding<TextSelection?>?);
  type metadata accessor for Binding<TextSelection?>(0);
  v49 = v48;
  v50 = (*(*(v48 - 8) + 48))(v47, 1, v48);
  v51 = v126;
  if (v50 != 1)
  {
    v52 = v125;
    MEMORY[0x18D00ACC0](v49);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for Binding<TextSelection?>);
    v56 = v127;
    v57 = (*(v51 + 48))(v52, 1, v127);
    v53 = v129;
    v54 = v130;
    v55 = v128;
    if (v57 == 1)
    {
      goto LABEL_16;
    }

    v60 = v119;
    outlined init with take of Binding<TextSelection?>?(v52, v119, type metadata accessor for TextSelection);
    v61 = v60;
    v62 = v115;
    outlined init with copy of TextEditorStyleConfiguration(v61, v115, type metadata accessor for TextSelection);
    (*(v51 + 56))(v62, 0, 1, v56);
    v63 = v117;
    SelectionRanges<>.init(_:)(v62, v117);
    v64 = v116;
    outlined init with copy of SelectionRanges<String.Index>(v63, v116);
    v65 = [v54 text];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;

      *&v136 = v67;
      *(&v136 + 1) = v69;
      lazy protocol witness table accessor for type String and conformance String();
      LOBYTE(v66) = SelectionRanges.isSafe<A>(in:)();

      outlined destroy of SelectionRanges<String.Index>(v64);
      if (v66)
      {
        goto LABEL_25;
      }

      v70 = [v54 text];
      if (v70)
      {
        v71 = v70;
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        outlined destroy of SelectionRanges<String.Index>(v63);

        v75 = HIBYTE(v74) & 0xF;
        if ((v74 & 0x2000000000000000) == 0)
        {
          v75 = v72;
        }

        v76 = 7;
        if (((v74 >> 60) & ((v72 & 0x800000000000000) == 0)) != 0)
        {
          v76 = 11;
        }

        v77 = v113;
        *v113 = v76 | (v75 << 16);
        swift_storeEnumTagMultiPayload();
        outlined init with take of SelectionRanges<String.Index>(v77, v63);
LABEL_25:
        v78 = v114;
        UITextView.selection.getter(v114);
        v79 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v63, v78);
        outlined destroy of SelectionRanges<String.Index>(v78);
        if ((v79 & 1) == 0)
        {
          outlined init with copy of SelectionRanges<String.Index>(v63, v78);
          UITextView.selection.setter(v78);
        }

        if (v53)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();

          PropertyList.Tracker.value<A>(_:for:)();

          if (!v136 || (, PropertyList.Tracker.value<A>(_:for:)(), , v80 = v136, !v136))
          {
LABEL_35:
            outlined destroy of SelectionRanges<String.Index>(v63);
            v58 = type metadata accessor for TextSelection;
            v59 = v119;
            goto LABEL_36;
          }
        }

        else
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();
          PropertyList.subscript.getter();
          if (!v136)
          {
            goto LABEL_35;
          }

          PropertyList.subscript.getter();
          v80 = v136;
          if (!v136)
          {
            goto LABEL_35;
          }
        }

        v81 = v80 != 1;
        if (v81 != [v54 selectionAffinity])
        {
          [v54 setSelectionAffinity_];
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v47, type metadata accessor for Binding<TextSelection?>?);
  v52 = v125;
  (*(v51 + 56))(v125, 1, 1, v127);
  v53 = v129;
  v54 = v130;
  v55 = v128;
LABEL_16:
  v58 = type metadata accessor for TextSelection?;
  v59 = v52;
LABEL_36:
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v59, v58);
  v82 = TextEditorTextView.helper.getter();
  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;

  ScrollEnvironmentProperties.init(environment:)(v134, &v136);
  v83 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(&v82[v83], v134);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(&v136, &v82[v83]);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(v134);

  outlined destroy of ScrollEnvironmentProperties(v134);
  outlined destroy of ScrollEnvironmentProperties(&v136);
  v84 = *&v54[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper];
  v132 = v55;
  v133 = v53;
  v85 = v84;
  EnvironmentValues.contentMarginProxy.getter(&v136);
  v86 = &v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v134[12] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192];
  v134[13] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208];
  v135[0] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224];
  *(v135 + 9) = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233];
  v134[8] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128];
  v134[9] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144];
  v134[10] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160];
  v134[11] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176];
  v134[4] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64];
  v134[5] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80];
  v134[6] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96];
  v134[7] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112];
  v134[0] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v134[1] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16];
  v134[2] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32];
  v134[3] = *&v85[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48];
  *(v86 + 12) = v148;
  *(v86 + 13) = v149;
  *(v86 + 14) = v150[0];
  *(v86 + 233) = *(v150 + 9);
  *(v86 + 8) = v144;
  *(v86 + 9) = v145;
  *(v86 + 10) = v146;
  *(v86 + 11) = v147;
  *(v86 + 4) = v140;
  *(v86 + 5) = v141;
  *(v86 + 6) = v142;
  *(v86 + 7) = v143;
  *v86 = v136;
  *(v86 + 1) = v137;
  *(v86 + 2) = v138;
  *(v86 + 3) = v139;
  ScrollViewHelper.didChangeMargins(from:)();

  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  if (EnvironmentValues.font.getter())
  {
    v132 = v55;
    v133 = v53;
    v87 = Font.platformFont(in:)();
  }

  else
  {
    *&v134[0] = v55;
    *(&v134[0] + 1) = v53;
    EnvironmentValues.dynamicTypeSize.getter();
    v88 = **(&unk_1E7238808 + v132);
    v89 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v90 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:v89];
    Font.init(_:)();
    *&v134[0] = v55;
    *(&v134[0] + 1) = v53;
    v87 = Font.platformFont(in:)();
  }

  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  v91 = type metadata accessor for AttributedString.TextAlignment();
  v92 = v120;
  (*(*(v91 - 8) + 56))(v120, 1, 1, v91);
  LOBYTE(v132) = 1;
  v131 = 1;
  v93 = type metadata accessor for AttributedString.LineHeight();
  v94 = v121;
  (*(*(v93 - 8) + 56))(v121, 1, 1, v93);
  v95 = v87;
  v96 = makeParagraphStyle(environment:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v94, type metadata accessor for AttributedString.LineHeight?);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v92, type metadata accessor for AttributedString.TextAlignment?);
  [v96 setLineBreakMode_];
  [v96 setLineBreakStrategy_];
  *&v134[0] = v55;
  *(&v134[0] + 1) = v53;
  if (EnvironmentValues.foregroundColor.getter())
  {
    v132 = v55;
    v133 = v53;
    dispatch thunk of AnyColorBox.resolve(in:)();

    Color.Resolved.kitColor.getter();
    objc_opt_self();
    v97 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v97 = [objc_opt_self() labelColor];
  }

  v98 = v97;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_18CDD3F30;
  v100 = *MEMORY[0x1E69DB688];
  *(v99 + 32) = *MEMORY[0x1E69DB688];
  v101 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle, 0x1E69DB7C8);
  *(v99 + 40) = v96;
  v102 = *MEMORY[0x1E69DB650];
  *(v99 + 64) = v101;
  *(v99 + 72) = v102;
  v103 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  *(v99 + 80) = v98;
  v104 = *MEMORY[0x1E69DB648];
  *(v99 + 104) = v103;
  *(v99 + 112) = v104;
  *(v99 + 144) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont, 0x1E69DB878);
  *(v99 + 120) = v95;
  v105 = v100;
  v129 = v96;
  v106 = v102;
  v107 = v98;
  v108 = v104;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v99);
  swift_setDeallocating();
  type metadata accessor for (NSAttributedStringKey, Any)(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v109 = [v54 textStorage];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_6(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v109 addAttributes:isa range:{0, objc_msgSend(v109, sel_length)}];

  v111 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v54 setTypingAttributes_];

  *(v123 + v122) = 0;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitTextViewAdaptor@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(v3, v7, type metadata accessor for UIKitTextViewAdaptor);
  v8 = (v3 + *(v5 + 40));
  v9 = v8[1];
  v18 = *v8;
  v19 = v9;
  v10 = type metadata accessor for UIKitTextEditorCoordinator(0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating] = 0;
  outlined init with copy of TextEditorStyleConfiguration(v7, &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration], type metadata accessor for UIKitTextViewAdaptor);
  v13 = &v11[OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_selectionStorage];
  v14 = v19;
  *v13 = v18;
  v13[1] = v14;
  v17.receiver = v11;
  v17.super_class = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v7, type metadata accessor for UIKitTextViewAdaptor);
  *a2 = v15;
  return result;
}

void UIKitTextEditorCoordinator.textViewDidChange(_:)(void *a1)
{
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) & 1) == 0)
  {
    v3 = v1 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
    swift_beginAccess();

    v4 = [a1 text];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v28 = v6;
    *(&v28 + 1) = v8;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    v28 = *(v3 + 32);
    v29 = v9;
    v30 = v10;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158]);
    v12 = v11;
    MEMORY[0x18D00ACC0](&v26);
    v14 = v26;
    v13 = v27;
    v15 = [a1 text];
    if (!v15)
    {

LABEL_9:
      v21 = *(v3 + 32);
      v22 = *(v3 + 40);
      v23 = *(v3 + 48);
      v24 = *(v3 + 56);
      *&v28 = v21;
      *(&v28 + 1) = v22;
      v29 = v23;
      v30 = v24;

      MEMORY[0x18D00ACC0](&v26, v12);
      v25 = MEMORY[0x18D00C850](v26, v27);

      [a1 setText_];

      return;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v14 == v17 && v13 == v19)
    {

      return;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }
  }
}

id UIKitTextEditorCoordinator.textView(_:shouldChangeTextInRanges:replacementText:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_textInputValidation;
  swift_beginAccess();
  outlined init with copy of TextEditorStyleConfiguration(v4 + v9, &v17, type metadata accessor for TextInputValidation?);
  if (!v18)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(&v17, type metadata accessor for TextInputValidation?);
    v16 = 1;
    return (v16 & 1);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, v19);
  v10 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  result = [a1 text];
  if (result)
  {
    v12 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = specialized TextInputValidation.shouldChangeText(in:text:replacement:)(a2, v13, v15, a3, a4, *v10, v10[1]);

    __swift_destroy_boxed_opaque_existential_1(v19);
    return (v16 & 1);
  }

  __break(1u);
  return result;
}

void closure #1 in UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)(void *a2@<X8>)
{
  type metadata accessor for (_:)();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = WeakValue;
}

uint64_t closure #2 in UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TextSelection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TextEditorStyleConfiguration(a2, v8, type metadata accessor for TextSelection);
  v9 = a1(v8);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v8, type metadata accessor for TextSelection);
  *a3 = v9;
  return result;
}

uint64_t UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(void *a1)
{
  v2 = v1;
  v108 = a1;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v93 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v15 = *(v14 - 8);
  v102 = v14;
  v103 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v109 = (&v93 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v93 - v27;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v93 - v37;
  if ((*(v2 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_viewIsUpdating) & 1) == 0)
  {
    v100 = v35;
    v43 = v2 + OBJC_IVAR____TtC7SwiftUIP33_A90AD0DD13E6C72FFE734B65FAFF6EFF26UIKitTextEditorCoordinator_configuration;
    v44 = v36;
    swift_beginAccess();
    v45 = type metadata accessor for UIKitTextViewAdaptor(0);
    outlined init with copy of TextEditorStyleConfiguration(v43 + *(v45 + 28), v30, type metadata accessor for Binding<TextSelection?>?);
    v99 = v44;
    if ((*(v44 + 48))(v30, 1, v32) == 1)
    {
      v41 = type metadata accessor for Binding<TextSelection?>?;
      v42 = v30;
    }

    else
    {
      outlined init with take of Binding<TextSelection?>?(v30, v38, type metadata accessor for Binding<TextSelection?>);
      MEMORY[0x18D00ACC0](v32);
      v50 = v107;
      SelectionRanges<>.init(_:)(v13, v107);
      UITextView.selection.getter(v109);
      static Log.textEditor.getter();
      v51 = type metadata accessor for Logger();
      v97 = *(v51 - 8);
      v52 = *(v97 + 48);
      v53 = v52(v10, 1, v51);
      v98 = v51;
      if (v53 == 1)
      {
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v10, type metadata accessor for Logger?);
      }

      else
      {
        outlined init with copy of SelectionRanges<String.Index>(v50, v23);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v93 = v56;
          v95 = swift_slowAlloc();
          v110 = v95;
          *v56 = 136315138;
          v94 = v55;
          v57 = SelectionRanges.debugDescription.getter();
          v59 = v58;
          outlined destroy of SelectionRanges<String.Index>(v23);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v110);

          v61 = v93;
          *(v93 + 1) = v60;
          v62 = v61;
          _os_log_impl(&dword_18BD4A000, v54, v94, "Selection binding selection: %s", v61, 0xCu);
          v63 = v95;
          __swift_destroy_boxed_opaque_existential_1(v95);
          MEMORY[0x18D0110E0](v63, -1, -1);
          MEMORY[0x18D0110E0](v62, -1, -1);
        }

        else
        {

          outlined destroy of SelectionRanges<String.Index>(v23);
        }

        v51 = v98;
        (*(v97 + 8))(v10, v98);
      }

      v64 = v104;
      static Log.textEditor.getter();
      if (v52(v64, 1, v51) == 1)
      {
        v65 = v38;
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v64, type metadata accessor for Logger?);
        v66 = v107;
      }

      else
      {
        v67 = v101;
        outlined init with copy of SelectionRanges<String.Index>(v109, v101);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = v67;
          v104 = swift_slowAlloc();
          v110 = v104;
          *v70 = 136315138;
          v72 = SelectionRanges.debugDescription.getter();
          v74 = v73;
          outlined destroy of SelectionRanges<String.Index>(v71);
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v110);

          *(v70 + 4) = v75;
          _os_log_impl(&dword_18BD4A000, v68, v69, "UITextView selection: %s", v70, 0xCu);
          v76 = v104;
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x18D0110E0](v76, -1, -1);
          MEMORY[0x18D0110E0](v70, -1, -1);
        }

        else
        {

          outlined destroy of SelectionRanges<String.Index>(v67);
        }

        v66 = v107;
        v65 = v38;
        (*(v97 + 8))(v64, v98);
      }

      v77 = [v108 selectionAffinity];
      v78 = 2 * (v77 == 1);
      if (!v77)
      {
        v78 = 1;
      }

      LODWORD(v108) = v78;
      LOBYTE(v110) = 17;
      v79 = v105;
      outlined init with copy of SelectionRanges<String.Index>(v66, v105);
      v80 = v109;
      v81 = v106;
      outlined init with copy of SelectionRanges<String.Index>(v109, v106);
      v82 = v65;
      v96 = v65;
      v83 = v100;
      outlined init with copy of TextEditorStyleConfiguration(v82, v100, type metadata accessor for Binding<TextSelection?>);
      v84 = *(v103 + 80);
      v85 = (v84 + 16) & ~v84;
      v86 = (v16 + v84 + v85) & ~v84;
      v87 = *(v99 + 80);
      v88 = v16 + v87 + v86;
      v89 = v66;
      v90 = v88 & ~v87;
      v91 = v90 + v33;
      v92 = swift_allocObject();
      outlined init with take of SelectionRanges<String.Index>(v79, v92 + v85);
      outlined init with take of SelectionRanges<String.Index>(v81, v92 + v86);
      outlined init with take of Binding<TextSelection?>?(v83, v92 + v90, type metadata accessor for Binding<TextSelection?>);
      *(v92 + v91) = v108;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of SelectionRanges<String.Index>(v80);
      outlined destroy of SelectionRanges<String.Index>(v89);
      v41 = type metadata accessor for Binding<TextSelection?>;
      v42 = v96;
    }

    return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, v41);
  }

  static Log.textEditor.getter();
  v39 = type metadata accessor for Logger();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v5, 1, v39) == 1)
  {
    v41 = type metadata accessor for Logger?;
    v42 = v5;
    return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, v41);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_18BD4A000, v46, v47, "Ignoring selection update because view is updating", v48, 2u);
    MEMORY[0x18D0110E0](v48, -1, -1);
  }

  return (*(v40 + 8))(v5, v39);
}

uint64_t closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v49 = a4;
  v48 = a1;
  v5 = MEMORY[0x1E69E60D0];
  v6 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v8;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v5, v6, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43 - v26;
  v28 = type metadata accessor for TextSelection(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v48, a2) & 1) == 0)
  {
    outlined init with copy of SelectionRanges<String.Index>(a2, v11);
    TextSelection.init(_:)(v11, v27);
    v48 = v29;
    v32 = *(v29 + 48);
    if (v32(v27, 1, v28) == 1)
    {
      v33 = v44;
      RangeSet.init()();
      (*(v45 + 32))(v31, v33, v46);
      type metadata accessor for TextSelection.Indices(0);
      swift_storeEnumTagMultiPayload();
      v31[*(v28 + 20)] = 0;
      if (v32(v27, 1, v28) != 1)
      {
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v27, type metadata accessor for TextSelection?);
      }
    }

    else
    {
      outlined init with take of Binding<TextSelection?>?(v27, v31, type metadata accessor for TextSelection);
    }

    type metadata accessor for Binding<TextSelection?>(0);
    MEMORY[0x18D00ACC0]();
    outlined init with copy of TextEditorStyleConfiguration(v24, v21, type metadata accessor for TextSelection?);
    v34 = v32(v21, 1, v28);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v21, type metadata accessor for TextSelection?);
    if (v34 == 1)
    {
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v24, type metadata accessor for TextSelection?);
      outlined init with copy of TextEditorStyleConfiguration(v31, v24, type metadata accessor for TextSelection.Indices);
      v24[*(v28 + 20)] = 0;
      (*(v48 + 56))(v24, 0, 1, v28);
    }

    else if (!v32(v24, 1, v28))
    {
      outlined assign with copy of UIKitTextViewAdaptor(v31, v24, type metadata accessor for TextSelection.Indices);
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v31, type metadata accessor for TextSelection);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v24, type metadata accessor for TextSelection?);
    v29 = v48;
  }

  v35 = v49;
  type metadata accessor for Binding<TextSelection?>(0);
  v37 = v36;
  MEMORY[0x18D00ACC0]();
  v38 = *(v29 + 48);
  if (v38(v18, 1, v28))
  {
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v18, type metadata accessor for TextSelection?);
  }

  else
  {
    v40 = v18[*(v28 + 20)];
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v18, type metadata accessor for TextSelection?);
    if (v40 != 3)
    {
      v41 = v50;
      if (v35 != 3 && v40 == v35)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  v41 = v50;
  if (v35 == 3)
  {
    return result;
  }

LABEL_15:
  MEMORY[0x18D00ACC0](v37);
  if (v38(v41, 1, v28))
  {
    v42 = v47;
    outlined init with copy of TextEditorStyleConfiguration(v41, v47, type metadata accessor for TextSelection?);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v42, type metadata accessor for TextSelection?);
  }

  else
  {
    *(v41 + *(v28 + 20)) = v35;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v41, type metadata accessor for TextSelection?);
}

uint64_t type metadata completion function for UIKitTextEditorCoordinator(uint64_t a1, double a2)
{
  result = type metadata accessor for UIKitTextViewAdaptor(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *closure #1 in TextEditorTextView.helper.getter(uint64_t a1)
{
  v1 = type metadata accessor for ScrollViewHelper();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v6 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v7 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v7 = 257;
  *(v7 + 21) = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 67) = 0u;
  *(v7 + 44) = 4;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v7 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v8);
  v7[112] = 0;
  v7[120] = 0;
  *(v7 + 16) = 0;
  *(v7 + 68) = 0;
  v7[144] = 0;
  *(v7 + 19) = 0;
  *(v7 + 158) = 0;
  v7[166] = 1;
  *(v7 + 167) = 0u;
  *(v7 + 183) = 0u;
  v7[199] = 0;
  static EdgeInsets.zero.getter();
  *(v7 + 25) = v9;
  *(v7 + 26) = v10;
  *(v7 + 27) = v11;
  *(v7 + 28) = v12;
  v13 = static EdgeInsets.zero.getter();
  *(v7 + 29) = v14;
  *(v7 + 30) = v15;
  *(v7 + 31) = v16;
  *(v7 + 32) = v17;
  v18 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v19 = MEMORY[0x18D007050](v44, v13);
  v20 = MEMORY[0x18D007050](v46, v19);
  v21 = MEMORY[0x18D007050](v48, v20);
  MEMORY[0x18D007050](v50, v21);
  v22 = v44[1];
  *v18 = v44[0];
  v18[1] = v22;
  v18[2] = v45[0];
  *(v18 + 41) = *(v45 + 9);
  v23 = v46[1];
  v18[4] = v46[0];
  v18[5] = v23;
  v18[6] = v47[0];
  *(v18 + 105) = *(v47 + 9);
  v24 = v48[0];
  v25 = v48[1];
  v26 = v49[0];
  *(v18 + 169) = *(v49 + 9);
  v18[9] = v25;
  v18[10] = v26;
  v18[8] = v24;
  v27 = v50[1];
  v18[12] = v50[0];
  v18[13] = v27;
  v18[14] = v51[0];
  *(v18 + 233) = *(v51 + 9);
  v28 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v28 = 0;
  *(v28 + 4) = 0;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v29 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v31 = 0;
  *(v31 + 1) = 0;
  v31[16] = 1;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v32 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v32[66] = 0;
  *(v32 + 32) = 512;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v33 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  *&v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v36 = &v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v36 = v37;
  v36[1] = v38;
  v36[2] = v39;
  v36[3] = v40;
  *&v2[v3] = 0;
  *&v2[v4] = 0;
  *&v2[v5] = 0;
  *&v2[v6] = 0;
  v2[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = 2;
  v43.receiver = v2;
  v43.super_class = v1;
  v41 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectWeakAssign();
  *&v41[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = &protocol witness table for TextEditorTextView;
  swift_unknownObjectWeakAssign();
  v41[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 2;
  return v41;
}

double TextEditorTextView.findInteraction(_:didBegin:)(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5)
{
  v15.receiver = v5;
  v15.super_class = type metadata accessor for TextEditorTextView();
  objc_msgSendSuper2(&v15, *a3, a1, a2);
  v10 = &v5[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v11 = *&v5[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8];
  if (v11 != 1)
  {
    v12 = *v10;
    v13 = *(v10 + 8);
    outlined copy of _FindContext?(*v10, v11);
    outlined copy of Binding<Int>?(v12, v11);
    outlined consume of _FindContext?(v12, v11);
    if (v11)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v11;
      *(v14 + 32) = v13 & 1;

      static Update.enqueueAction(reason:_:)();
    }
  }

  return result;
}

void TextEditorTextView.__ivar_destroyer()
{
  outlined consume of _FindContext?(*(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext), *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI18TextEditorTextView____lazy_storage___helper);
}

id UIKitTextEditorCoordinatorBase.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t initializeBufferWithCopyOfBuffer for UIKitTextViewAdaptor(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = v21 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Selector?>.Content(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of Environment<Selector?>.Content(v9, v10);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v11 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v11;
    v12 = *(a2 + 56);
    v48 = a3;
    v13 = *(a3 + 28);
    v14 = (a1 + v13);
    v15 = (a2 + v13);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v12;
    type metadata accessor for Binding<TextSelection?>(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v16;

    if (v18(v15, 1, v19))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v14, v15, *(*(v20 - 8) + 64));
    }

    else
    {
      v45 = v17;
      v46 = v19;
      v22 = v15[1];
      *v14 = *v15;
      v14[1] = v22;
      v23 = *(v19 + 32);
      v47 = v14;
      v24 = v14 + v23;
      v25 = v15 + v23;
      v26 = type metadata accessor for TextSelection(0);
      v27 = *(v26 - 8);
      v28 = *(v27 + 48);

      if (v28(v25, 1, v26))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v24, v25, *(*(v29 - 8) + 64));
        v31 = v46;
        v30 = v47;
        v32 = v45;
      }

      else
      {
        v33 = v24;
        v34 = v27;
        v35 = type metadata accessor for TextSelection.Indices(0);
        v32 = v45;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v37 = v33;
          (*(*(v36 - 8) + 16))(v33, v25, v36);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v37 = v33;
          memcpy(v33, v25, *(*(v35 - 8) + 64));
        }

        v38 = v37;
        v31 = v46;
        v30 = v47;
        v38[*(v26 + 20)] = v25[*(v26 + 20)];
        (*(v34 + 56))();
      }

      (*(v32 + 56))(v30, 0, 1, v31);
    }

    v39 = *(v48 + 32);
    v40 = *(v48 + 36);
    v41 = (a1 + v39);
    v42 = (a2 + v39);
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    *(a1 + v40) = *(a2 + v40);
  }

  return a1;
}

uint64_t destroy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));

  v4 = a1 + *(a2 + 28);
  type metadata accessor for Binding<TextSelection?>(0);
  v6 = v5;
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (!result)
  {

    v8 = *(v6 + 32);
    v9 = type metadata accessor for TextSelection(0);
    result = (*(*(v9 - 8) + 48))(v4 + v8, 1, v9);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v11 = *(*(v10 - 8) + 8);

        return v11(v4 + v8, v10);
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;
  v11 = *(a2 + 56);
  v46 = a3;
  v12 = *(a3 + 28);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v11;
  type metadata accessor for Binding<TextSelection?>(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v15;

  if (v17(v14, 1, v18))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v13, v14, *(*(v19 - 8) + 64));
  }

  else
  {
    v43 = v16;
    v44 = v18;
    v20 = v14[1];
    *v13 = *v14;
    v13[1] = v20;
    v21 = *(v18 + 32);
    v45 = v13;
    v22 = v13 + v21;
    v23 = v14 + v21;
    v24 = type metadata accessor for TextSelection(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);

    if (v26(v23, 1, v24))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
      v29 = v44;
      v28 = v45;
      v30 = v43;
    }

    else
    {
      v31 = v22;
      v32 = v25;
      v33 = type metadata accessor for TextSelection.Indices(0);
      v30 = v43;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v35 = v31;
        (*(*(v34 - 8) + 16))(v31, v23, v34);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v35 = v31;
        memcpy(v31, v23, *(*(v33 - 8) + 64));
      }

      v36 = v35;
      v29 = v44;
      v28 = v45;
      v36[*(v24 + 20)] = v23[*(v24 + 20)];
      (*(v32 + 56))();
    }

    (*(v30 + 56))(v28, 0, 1, v29);
  }

  v37 = *(v46 + 32);
  v38 = *(v46 + 36);
  v39 = (a1 + v37);
  v40 = (a2 + v37);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  *(a1 + v38) = *(a2 + v38);
  return a1;
}

uint64_t assignWithCopy for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  type metadata accessor for Binding<TextSelection?>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      *v15 = *v16;
      *(v15 + 1) = *(v16 + 1);
      v23 = *(v18 + 32);
      v52 = &v16[v23];
      __dst = &v15[v23];
      v24 = type metadata accessor for TextSelection(0);
      v51 = *(v24 - 8);
      v25 = *(v51 + 48);

      if (v25(v52, 1, v24))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v52, *(*(v26 - 8) + 64));
      }

      else
      {
        v41 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v43 = v52;
          (*(*(v42 - 8) + 16))(__dst, v52, v42);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v43 = v52;
          memcpy(__dst, v52, *(*(v41 - 8) + 64));
        }

        __dst[*(v24 + 20)] = v43[*(v24 + 20)];
        (*(v51 + 56))(__dst, 0, 1, v24);
      }

      (*(v19 + 56))(v15, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v15, type metadata accessor for Binding<TextSelection?>);
LABEL_7:
    type metadata accessor for Binding<TextSelection?>?(0);
    v28 = *(*(v27 - 8) + 64);
    v29 = v15;
    v30 = v16;
LABEL_8:
    memcpy(v29, v30, v28);
    goto LABEL_21;
  }

  *v15 = *v16;

  *(v15 + 1) = *(v16 + 1);

  v31 = *(v18 + 32);
  v32 = &v15[v31];
  v33 = &v16[v31];
  v34 = type metadata accessor for TextSelection(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(v32, 1, v34);
  v38 = v36(v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      v39 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v40 - 8) + 16))(v32, v33, v40);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v32, v33, *(*(v39 - 8) + 64));
      }

      v32[*(v34 + 20)] = v33[*(v34 + 20)];
      (*(v35 + 56))(v32, 0, 1, v34);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v38)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v32, type metadata accessor for TextSelection);
LABEL_17:
    type metadata accessor for TextSelection?(0);
    v28 = *(*(v44 - 8) + 64);
    v29 = v32;
    v30 = v33;
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v32, type metadata accessor for TextSelection.Indices);
    v49 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v50 - 8) + 16))(v32, v33, v50);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v32, v33, *(*(v49 - 8) + 64));
    }
  }

  v32[*(v34 + 20)] = v33[*(v34 + 20)];
LABEL_21:
  v45 = a3[8];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  *v46 = *v47;
  v46[1] = v47[1];
  v46[2] = v47[2];
  v46[3] = v47[3];
  v46[4] = v47[4];
  v46[5] = v47[5];
  v46[6] = v47[6];
  v46[7] = v47[7];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t initializeWithTake for UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  v7 = a3[7];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  type metadata accessor for Binding<TextSelection?>(0);
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v9, 1, v10))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v8, v9, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v9[1];
    *v8 = *v9;
    v8[1] = v14;
    v15 = *(v11 + 32);
    v16 = v8 + v15;
    v17 = v9 + v15;
    v18 = type metadata accessor for TextSelection(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v28 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v16, v17, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v16, v17, *(*(v28 - 8) + 64));
      }

      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  v22 = a3[8];
  v23 = a3[9];
  v24 = (a1 + v22);
  v25 = (a2 + v22);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  *(a1 + v23) = *(a2 + v23);
  return a1;
}

uint64_t assignWithTake for UIKitTextViewAdaptor(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];

  v13 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v13;

  v14 = a3[7];
  v15 = (a1 + v14);
  v16 = a2 + v14;
  type metadata accessor for Binding<TextSelection?>(0);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v17);
  v22 = v20(v16, 1, v18);
  if (v21)
  {
    if (!v22)
    {
      v23 = *(v16 + 1);
      *v15 = *v16;
      *(v15 + 1) = v23;
      v24 = *(v18 + 32);
      v25 = &v15[v24];
      v26 = &v16[v24];
      v27 = type metadata accessor for TextSelection(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v26, 1, v27))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v25, v26, *(*(v29 - 8) + 64));
      }

      else
      {
        v54 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v44 - 8) + 32))(v25, v26, v44);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v25, v26, *(*(v54 - 8) + 64));
        }

        v25[*(v27 + 20)] = v26[*(v27 + 20)];
        (*(v28 + 56))(v25, 0, 1, v27);
      }

      (*(v19 + 56))(v15, 0, 1, v18);
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v22)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v15, type metadata accessor for Binding<TextSelection?>);
LABEL_7:
    type metadata accessor for Binding<TextSelection?>?(0);
    v31 = *(*(v30 - 8) + 64);
    v32 = v15;
    v33 = v16;
LABEL_8:
    memcpy(v32, v33, v31);
    goto LABEL_21;
  }

  *v15 = *v16;

  *(v15 + 1) = *(v16 + 1);

  v34 = *(v18 + 32);
  v35 = &v15[v34];
  v36 = &v16[v34];
  v37 = type metadata accessor for TextSelection(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v39(v35, 1, v37);
  v41 = v39(v36, 1, v37);
  if (v40)
  {
    if (!v41)
    {
      v42 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v43 - 8) + 32))(v35, v36, v43);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v35, v36, *(*(v42 - 8) + 64));
      }

      v35[*(v37 + 20)] = v36[*(v37 + 20)];
      (*(v38 + 56))(v35, 0, 1, v37);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (v41)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v35, type metadata accessor for TextSelection);
LABEL_17:
    type metadata accessor for TextSelection?(0);
    v31 = *(*(v45 - 8) + 64);
    v32 = v35;
    v33 = v36;
    goto LABEL_8;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v35, type metadata accessor for TextSelection.Indices);
    v52 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v53 - 8) + 32))(v35, v36, v53);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v35, v36, *(*(v52 - 8) + 64));
    }
  }

  v35[*(v37 + 20)] = v36[*(v37 + 20)];
LABEL_21:
  v46 = a3[8];
  v47 = a3[9];
  v48 = (a1 + v46);
  v49 = (a2 + v46);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v47) = *(a2 + v47);
  return a1;
}

void type metadata completion function for UIKitTextViewAdaptor(uint64_t a1)
{
  type metadata accessor for Binding<TextSelection?>?(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

char *initializeBufferWithCopyOfBuffer for UIKitTextEditor(char *a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for TextEditor.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v6;
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v8 = *(v7 + 32);
      v9 = type metadata accessor for AttributedString();
      v10 = *(*(v9 - 8) + 16);

      v10(&a1[v8], a2 + v8, v9);
      v11 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v12 = &a1[v11];
      v13 = (a2 + v11);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v15 = v14;
      v16 = *(v14 - 8);
      if ((*(v16 + 48))(v13, 1, v14))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v59 = v12;
        v29 = v13[1];
        *v12 = *v13;
        *(v12 + 1) = v29;
        v30 = *(v15 + 32);
        __dst = &v12[v30];
        v31 = v13 + v30;
        v32 = type metadata accessor for AttributedTextSelection.Indices(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);

        if (v34(v31, 1, v32))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v36 = __dst;
          memcpy(__dst, v31, *(*(v35 - 8) + 64));
        }

        else
        {
          v36 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v48 = v47;
          }

          else
          {
            v48 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v48 - 8) + 16))(__dst, v31);
          swift_storeEnumTagMultiPayload();
          (*(v33 + 56))(__dst, 0, 1, v32);
        }

        v51 = type metadata accessor for AttributedTextSelection(0);
        v52 = *(v51 + 20);
        v53 = type metadata accessor for AttributeContainer();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(&v31[v52], 1, v53))
        {
          v55 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v36[v52], &v31[v52], *(*(v55 - 8) + 64));
        }

        else
        {
          (*(v54 + 16))(&v36[v52], &v31[v52], v53);
          (*(v54 + 56))(&v36[v52], 0, 1, v53);
        }

        v36[*(v51 + 24)] = v31[*(v51 + 24)];
        (*(v16 + 56))(v59, 0, 1, v15);
      }
    }

    else
    {
      v19 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v19;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v21 = *(v20 + 48);
      v22 = &a1[v21];
      v23 = (a2 + v21);
      type metadata accessor for Binding<TextSelection?>(0);
      v25 = v24;
      v26 = *(v24 - 1);
      v27 = *(v26 + 48);

      if (v27(v23, 1, v25))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v22, v23, *(*(v28 - 8) + 64));
      }

      else
      {
        v37 = v23[1];
        *v22 = *v23;
        *(v22 + 1) = v37;
        __dsta = v25;
        v60 = v22;
        v38 = v25[8];
        v39 = &v22[v38];
        v40 = v23 + v38;
        v41 = type metadata accessor for TextSelection(0);
        v42 = *(v41 - 8);
        v43 = *(v42 + 48);

        if (v43(v40, 1, v41))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v39, v40, *(*(v44 - 8) + 64));
          v46 = __dsta;
          v45 = v60;
        }

        else
        {
          v49 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v50 - 8) + 16))(v39, v40, v50);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v39, v40, *(*(v49 - 8) + 64));
          }

          v46 = __dsta;
          v45 = v60;
          v39[*(v41 + 20)] = v40[*(v41 + 20)];
          (*(v42 + 56))(v39, 0, 1, v41);
        }

        (*(v26 + 56))(v45, 0, 1, v46);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for UIKitTextEditor(uint64_t a1)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {

    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v14 = a1 + *(v13 + 48);
    type metadata accessor for Binding<TextSelection?>(0);
    v16 = v15;
    result = (*(*(v15 - 8) + 48))(v14, 1, v15);
    if (result)
    {
      return result;
    }

    v17 = *(v16 + 32);
    v18 = type metadata accessor for TextSelection(0);
    result = (*(*(v18 - 8) + 48))(v14 + v17, 1, v18);
    if (result)
    {
      return result;
    }

    type metadata accessor for TextSelection.Indices(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    v20 = v19;
    v21 = *(*(v19 - 8) + 8);
    v22 = v14 + v17;
    goto LABEL_15;
  }

  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AttributedString();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
  type metadata accessor for Binding<AttributedTextSelection>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = v6 + *(v8 + 32);
    v11 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for RangeSet<AttributedString.Index>(0);
      }

      else
      {
        v12 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v12 - 8) + 8))(v10, v12);
    }

    v23 = *(type metadata accessor for AttributedTextSelection(0) + 20);
    v24 = type metadata accessor for AttributeContainer();
    v25 = *(v24 - 8);
    result = (*(v25 + 48))(v10 + v23, 1, v24);
    if (!result)
    {
      v21 = *(v25 + 8);
      v22 = v10 + v23;
      v20 = v24;
LABEL_15:

      return v21(v22, v20);
    }
  }

  return result;
}

char *initializeWithCopy for UIKitTextEditor(char *a1, char *a2)
{
  type metadata accessor for TextEditor.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v7 = *(v6 + 32);
    v8 = type metadata accessor for AttributedString();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
    v10 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v11 = &a1[v10];
    v12 = &a2[v10];
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v14 = v13;
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v12, 1, v13))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v16 - 8) + 64));
    }

    else
    {
      v54 = v11;
      v27 = *(v12 + 1);
      *v11 = *v12;
      *(v11 + 1) = v27;
      v28 = *(v14 + 32);
      __dst = &v11[v28];
      v29 = &v12[v28];
      v30 = type metadata accessor for AttributedTextSelection.Indices(0);
      v31 = *(v30 - 8);
      v32 = *(v31 + 48);

      if (v32(v29, 1, v30))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        v34 = __dst;
        memcpy(__dst, v29, *(*(v33 - 8) + 64));
      }

      else
      {
        v34 = __dst;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v43 = v42;
        }

        else
        {
          v43 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v43 - 8) + 16))(__dst, v29);
        swift_storeEnumTagMultiPayload();
        (*(v31 + 56))(__dst, 0, 1, v30);
      }

      v46 = type metadata accessor for AttributedTextSelection(0);
      v47 = *(v46 + 20);
      v48 = type metadata accessor for AttributeContainer();
      v49 = *(v48 - 8);
      if ((*(v49 + 48))(&v29[v47], 1, v48))
      {
        v50 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        memcpy(&v34[v47], &v29[v47], *(*(v50 - 8) + 64));
      }

      else
      {
        (*(v49 + 16))(&v34[v47], &v29[v47], v48);
        (*(v49 + 56))(&v34[v47], 0, 1, v48);
      }

      v34[*(v46 + 24)] = v29[*(v46 + 24)];
      (*(v15 + 56))(v54, 0, 1, v14);
    }
  }

  else
  {
    v17 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v17;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v19 = *(v18 + 48);
    v20 = &a1[v19];
    v21 = &a2[v19];
    type metadata accessor for Binding<TextSelection?>(0);
    v23 = v22;
    v24 = *(v22 - 8);
    v25 = *(v24 + 48);

    if (v25(v21, 1, v23))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v20, v21, *(*(v26 - 8) + 64));
    }

    else
    {
      v35 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v35;
      v36 = *(v23 + 32);
      __dsta = &v20[v36];
      v55 = v20;
      v37 = &v21[v36];
      v38 = type metadata accessor for TextSelection(0);
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);

      if (v40(v37, 1, v38))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dsta, v37, *(*(v41 - 8) + 64));
      }

      else
      {
        v44 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v45 - 8) + 16))(__dsta, v37, v45);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dsta, v37, *(*(v44 - 8) + 64));
        }

        __dsta[*(v38 + 20)] = v37[*(v38 + 20)];
        (*(v39 + 56))(__dsta, 0, 1, v38);
      }

      (*(v24 + 56))(v55, 0, 1, v23);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for UIKitTextEditor(char *a1, char *a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    if (EnumCaseMultiPayload == 1)
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      v8 = *(*(v7 - 8) + 16);

      v8(&a1[v6], &a2[v6], v7);
      v9 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v10 = &a1[v9];
      v11 = &a2[v9];
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v13 = v12;
      v14 = *(v12 - 8);
      if ((*(v14 + 48))(v11, 1, v12))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v10, v11, *(*(v15 - 8) + 64));
      }

      else
      {
        v50 = v10;
        *v10 = *v11;
        *(v10 + 1) = *(v11 + 1);
        v25 = *(v13 + 32);
        __dst = &v10[v25];
        v26 = &v11[v25];
        v27 = type metadata accessor for AttributedTextSelection.Indices(0);
        v28 = *(v27 - 8);
        v29 = *(v28 + 48);

        if (v29(v26, 1, v27))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          v31 = __dst;
          memcpy(__dst, v26, *(*(v30 - 8) + 64));
        }

        else
        {
          v31 = __dst;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 16))(__dst, v26);
          swift_storeEnumTagMultiPayload();
          (*(v28 + 56))(__dst, 0, 1, v27);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v26[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          memcpy(&v31[v43], &v26[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 16))(&v31[v43], &v26[v43], v44);
          (*(v45 + 56))(&v31[v43], 0, 1, v44);
        }

        v31[*(v42 + 24)] = v26[*(v42 + 24)];
        (*(v14 + 56))(v50, 0, 1, v13);
      }
    }

    else
    {
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = *(a2 + 3);
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v17 = *(v16 + 48);
      v18 = &a1[v17];
      v19 = &a2[v17];
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 48);

      if (v23(v19, 1, v21))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v24 - 8) + 64));
      }

      else
      {
        *v18 = *v19;
        *(v18 + 1) = *(v19 + 1);
        v32 = *(v21 + 32);
        __dsta = &v18[v32];
        v51 = v18;
        v33 = &v19[v32];
        v34 = type metadata accessor for TextSelection(0);
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);

        if (v36(v33, 1, v34))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(__dsta, v33, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 16))(__dsta, v33, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(__dsta, v33, *(*(v40 - 8) + 64));
          }

          __dsta[*(v34 + 20)] = v33[*(v34 + 20)];
          (*(v35 + 56))(__dsta, 0, 1, v34);
        }

        (*(v22 + 56))(v51, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for UIKitTextEditor(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextEditor.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
    v6 = *(v5 + 32);
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    type metadata accessor for Binding<AttributedTextSelection>(0);
    v12 = v11;
    v13 = *(v11 - 8);
    if ((*(v13 + 48))(v10, 1, v11))
    {
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v14 - 8) + 64));
    }

    else
    {
      v24 = v10[1];
      *v9 = *v10;
      v9[1] = v24;
      v25 = *(v12 + 32);
      v26 = v9 + v25;
      v27 = v10 + v25;
      v28 = type metadata accessor for AttributedTextSelection.Indices(0);
      v29 = *(v28 - 8);
      v49 = v26;
      if ((*(v29 + 48))(v27, 1, v28))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
        memcpy(v26, v27, *(*(v30 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for RangeSet<AttributedString.Index>(0);
          v39 = v38;
        }

        else
        {
          v39 = type metadata accessor for AttributedString.Index();
        }

        (*(*(v39 - 8) + 32))(v26, v27);
        swift_storeEnumTagMultiPayload();
        (*(v29 + 56))(v26, 0, 1, v28);
      }

      v42 = type metadata accessor for AttributedTextSelection(0);
      v43 = *(v42 + 20);
      v44 = type metadata accessor for AttributeContainer();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(&v27[v43], 1, v44))
      {
        v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
        v47 = v49;
        memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
      }

      else
      {
        (*(v45 + 32))(&v49[v43], &v27[v43], v44);
        (*(v45 + 56))(&v49[v43], 0, 1, v44);
        v47 = v49;
      }

      v47[*(v42 + 24)] = v27[*(v42 + 24)];
      (*(v13 + 56))(v9, 0, 1, v12);
    }
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
    v17 = *(v16 + 48);
    v18 = (a1 + v17);
    v19 = (a2 + v17);
    type metadata accessor for Binding<TextSelection?>(0);
    v21 = v20;
    v22 = *(v20 - 8);
    if ((*(v22 + 48))(v19, 1, v20))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v18, v19, *(*(v23 - 8) + 64));
    }

    else
    {
      v31 = v19[1];
      *v18 = *v19;
      v18[1] = v31;
      v32 = *(v21 + 32);
      v33 = v18 + v32;
      v34 = v19 + v32;
      v35 = type metadata accessor for TextSelection(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
      }

      else
      {
        v40 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v41 - 8) + 32))(v33, v34, v41);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v33, v34, *(*(v40 - 8) + 64));
        }

        v33[*(v35 + 20)] = v34[*(v35 + 20)];
        (*(v36 + 56))(v33, 0, 1, v35);
      }

      (*(v22 + 56))(v18, 0, 1, v21);
    }
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for UIKitTextEditor(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(a1, type metadata accessor for TextEditor.Storage);
    type metadata accessor for TextEditor.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
      v6 = *(v5 + 32);
      v7 = type metadata accessor for AttributedString();
      (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
      v8 = *(type metadata accessor for TextEditor.Storage.AttributedText(0) + 20);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      type metadata accessor for Binding<AttributedTextSelection>(0);
      v12 = v11;
      v13 = *(v11 - 8);
      if ((*(v13 + 48))(v10, 1, v11))
      {
        _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>?, type metadata accessor for Binding<AttributedTextSelection>, MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v14 - 8) + 64));
      }

      else
      {
        v24 = v10[1];
        *v9 = *v10;
        v9[1] = v24;
        v25 = *(v12 + 32);
        v26 = v9 + v25;
        v27 = v10 + v25;
        v28 = type metadata accessor for AttributedTextSelection.Indices(0);
        v29 = *(v28 - 8);
        v49 = v26;
        if ((*(v29 + 48))(v27, 1, v28))
        {
          _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for AttributedTextSelection.Indices?, type metadata accessor for AttributedTextSelection.Indices, MEMORY[0x1E69E6720]);
          memcpy(v26, v27, *(*(v30 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            type metadata accessor for RangeSet<AttributedString.Index>(0);
            v39 = v38;
          }

          else
          {
            v39 = type metadata accessor for AttributedString.Index();
          }

          (*(*(v39 - 8) + 32))(v26, v27);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v42 = type metadata accessor for AttributedTextSelection(0);
        v43 = *(v42 + 20);
        v44 = type metadata accessor for AttributeContainer();
        v45 = *(v44 - 8);
        if ((*(v45 + 48))(&v27[v43], 1, v44))
        {
          v46 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
          v47 = v49;
          memcpy(&v49[v43], &v27[v43], *(*(v46 - 8) + 64));
        }

        else
        {
          (*(v45 + 32))(&v49[v43], &v27[v43], v44);
          (*(v45 + 56))(&v49[v43], 0, 1, v44);
          v47 = v49;
        }

        v47[*(v42 + 24)] = v27[*(v42 + 24)];
        (*(v13 + 56))(v9, 0, 1, v12);
      }
    }

    else
    {
      v15 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v15;
      type metadata accessor for (Binding<String>, Binding<TextSelection?>?)(0);
      v17 = *(v16 + 48);
      v18 = (a1 + v17);
      v19 = (a2 + v17);
      type metadata accessor for Binding<TextSelection?>(0);
      v21 = v20;
      v22 = *(v20 - 8);
      if ((*(v22 + 48))(v19, 1, v20))
      {
        type metadata accessor for Binding<TextSelection?>?(0);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v31 = v19[1];
        *v18 = *v19;
        v18[1] = v31;
        v32 = *(v21 + 32);
        v33 = v18 + v32;
        v34 = v19 + v32;
        v35 = type metadata accessor for TextSelection(0);
        v36 = *(v35 - 8);
        if ((*(v36 + 48))(v34, 1, v35))
        {
          type metadata accessor for TextSelection?(0);
          memcpy(v33, v34, *(*(v37 - 8) + 64));
        }

        else
        {
          v40 = type metadata accessor for TextSelection.Indices(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
            (*(*(v41 - 8) + 32))(v33, v34, v41);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(v33, v34, *(*(v40 - 8) + 64));
          }

          v33[*(v35 + 20)] = v34[*(v35 + 20)];
          (*(v36 + 56))(v33, 0, 1, v35);
        }

        (*(v22 + 56))(v18, 0, 1, v21);
      }
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E60D0];
  v5 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v4, v5, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v25 - v15);
  type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>)(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  outlined init with copy of SelectionRanges<String.Index>(a1, v19);
  outlined init with copy of SelectionRanges<String.Index>(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of SelectionRanges<String.Index>(v19, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = (*v16 ^ *&v19[v21]) < 0x4000uLL;
      goto LABEL_6;
    }

LABEL_8:
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v19, type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>));
    v22 = 0;
    return v22 & 1;
  }

  outlined init with copy of SelectionRanges<String.Index>(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v8 + 8))(v13, v7);
    goto LABEL_8;
  }

  (*(v8 + 32))(v10, &v19[v21], v7);
  v22 = static RangeSet.== infix(_:_:)();
  v23 = *(v8 + 8);
  v23(v10, v7);
  v23(v13, v7);
LABEL_6:
  outlined destroy of SelectionRanges<String.Index>(v19);
  return v22 & 1;
}

unint64_t lazy protocol witness table accessor for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable()
{
  result = lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable;
  if (!lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIKitTextEditor.MakeRepresentable, &unk_1F00045B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitTextEditor.MakeRepresentable and conformance UIKitTextEditor.MakeRepresentable);
  }

  return result;
}

uint64_t outlined init with copy of TextEditorStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized UIKitTextEditorCoordinatorBase.updateFindInteraction(textView:env:)(char *a1, uint64_t *a2)
{
  if (a2[1])
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>, &type metadata for _FindContext.Key, &protocol witness table for _FindContext.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<_FindContext.Key>, &type metadata for _FindContext.Key, &protocol witness table for _FindContext.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<_FindContext.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v4 = v24;
  v3 = v25;
  v5 = v26;
  v6 = v27;
  v7 = v28;
  if (v27)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v26;
  v10 = &a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v11 = *&a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext];
  v12 = *&a1[OBJC_IVAR____TtC7SwiftUI18TextEditorTextView_findContext + 8];
  *v10 = v24;
  *(v10 + 1) = v3;
  v10 += 16;
  *v10 = v9;
  v10[2] = v7 != 0;
  outlined copy of Binding<Int>?(v4, v3);
  outlined consume of _FindContext?(v11, v12);
  [a1 setFindInteractionEnabled_];
  v13 = [a1 findInteraction];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [a1 window];
  if (!v15)
  {
LABEL_17:

LABEL_18:
    outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3);
    return;
  }

  v16 = [v14 isFindNavigatorVisible];
  if (v6)
  {
    if (v3)
    {
      v24 = v4;
      v25 = v3;
      v26 = v5 & 1;
      type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370]);
      v18 = v17;

      MEMORY[0x18D00ACC0](&v23, v18);
      v19 = v23;

      if (!(v16 & 1 | ((v19 & 1) == 0)))
      {
LABEL_16:
        *(swift_allocObject() + 16) = v14;
        v22 = v14;
        onNextMainRunLoop(do:)();

        outlined consume of Binding<NavigationSplitViewColumn>?(v4, v3);

        return;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
LABEL_14:
    v24 = v4;
    v25 = v3;
    v26 = v5 & 1;
    type metadata accessor for Binding<AnyNavigationSplitVisibility>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370]);
    v21 = v20;

    MEMORY[0x18D00ACC0](&v23, v21);

    if (v23 != 1 && v16)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }
}

void specialized UIKitTextEditorCoordinatorBase.updateInputAccessoryGenerator(textView:env:)(void *a1, uint64_t *a2)
{
  if (a2[1])
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(&v7, type metadata accessor for WeakBox<InputAccessoryGenerator>);
  if (Strong)
  {
    v4 = specialized InputAccessoryGenerator.callAsFunction()();
    v5 = [a1 inputAccessoryView];
    if (v5 && (v6 = v5, v5, v6 == v4))
    {
    }

    else
    {
      [a1 setInputAccessoryView_];
    }
  }
}

uint64_t outlined assign with take of TextInputValidation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextInputValidation?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Binding<TextSelection?>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (SelectionRanges<String.Index>, SelectionRanges<String.Index>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>))
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SelectionRanges<String.Index>, SelectionRanges<String.Index>));
    }
  }
}

uint64_t outlined consume of _FindContext?(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined consume of Binding<NavigationSplitViewColumn>?(result, a2);
  }

  return result;
}

void _UITextInputTraitSetForceDisableDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceDisableDictation:a2];
  }
}

void _UITextInputTraitSetPreferOnlineDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setPreferOnlineDictation:a2];
  }
}

void _UITextInputTraitSetForceSpellingDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceSpellingDictation:a2];
  }
}

void _UITextInputTraitSetForceEnableDictation(void *a1, uint64_t a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setForceEnableDictation:a2];
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined copy of _FindContext?(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined copy of Binding<Int>?(result, a2);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)()
{
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = *(v6 - 8);
  v8 = (v0 + ((v5 + v4 + *(v7 + 80)) & ~*(v7 + 80)));
  v9 = *(v8 + *(v7 + 64));

  return closure #1 in UIKitTextEditorCoordinator.textViewDidChangeSelection(_:)(v0 + v3, v0 + v5, v8, v9);
}

uint64_t outlined assign with copy of UIKitTextViewAdaptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void specialized UIKitTextEditorCoordinator.textView(_:editMenuForTextInRanges:suggestedActions:)(void *a1, char *a2)
{
  v49 = a1;
  v50 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E60D0];
  v7 = MEMORY[0x1E69E60E0];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v6, v7, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v45 - v12);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TextSelection(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for ((_:))?, type metadata accessor for (_:), MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v21 = v52[0];
  if (v52[0])
  {
    v46 = a2;
    v22 = v52[1];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v45 = v23;
    v24 = [v49 selectionAffinity];
    if (v24)
    {
      v25 = 2 * (v24 == 1);
    }

    else
    {
      v25 = 1;
    }

    UITextView.selection.getter(v13);
    TextSelection.init(_:)(v13, v16);
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      RangeSet.init()();
      (*(v47 + 32))(v20, v10, v48);
      type metadata accessor for TextSelection.Indices(0);
      swift_storeEnumTagMultiPayload();
      v20[*(v17 + 20)] = 0;
      v27 = v26(v16, 1, v17);
      if (v27 != 1)
      {
        v27 = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v16, type metadata accessor for TextSelection?);
      }
    }

    else
    {
      v27 = outlined init with take of Binding<TextSelection?>?(v16, v20, type metadata accessor for TextSelection);
    }

    v20[*(v17 + 20)] = v25;
    MEMORY[0x1EEE9AC00](v27);
    v30 = v45;
    *(&v45 - 4) = _s7SwiftUI13TextSelectionVAA16PlatformItemListVIegnr_AcEIegno_TRTA_0;
    *(&v45 - 3) = v30;
    v43 = v20;
    static Update.ensure<A>(_:)();
    v31 = v52[0];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
    v32 = MEMORY[0x1E69E7CC0];
    v52[0] = MEMORY[0x1E69E7CC0];
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v34 = MEMORY[0x1E69E7CC8];
    v5[8] = 0;
    *(v5 + 2) = v34;
    *(v5 + 3) = v33;
    *(v5 + 4) = v32;
    *(v5 + 5) = v34;
    v5[48] = 0;
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
    v35 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
    v36 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_18CD63400;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of TextEditorStyleConfiguration(v38, v37 + v36, type metadata accessor for MenuVisitor.MenuStackGroup);
    *(v5 + 7) = v37;
    v39 = *(v50 + 32);
    v40 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
    (*(*(v40 - 8) + 56))(&v5[v39], 1, 1, v40);
    *v5 = 0;
    MenuVisitor.visit(_:uniqueNames:)(v31, v52);

    v41 = *(v5 + 4);

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v5, type metadata accessor for MenuVisitor);
    v52[0] = v46;

    specialized Array.append<A>(contentsOf:)(v41);
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v54.value.super.isa = 0;
    v54.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52[0], v42, 0, v54, 0, 0xFFFFFFFFFFFFFFFFLL, v52[0], v44);

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(v20, type metadata accessor for TextSelection);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v53.value.super.isa = 0;
    v53.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, v28, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v44);
  }
}

void type metadata accessor for IndexingIterator<RangeSet<String.Index>.Ranges>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<String.Index>.Ranges>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<RangeSet<String.Index>.Ranges>);
    }
  }
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitTextEditor.MakeRepresentable(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitTextEditor.MakeRepresentable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

double protocol witness for StyleableView.configuration.getter in conformance ResolvedGaugeStyle@<D0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedGaugeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedGaugeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedGaugeStyle and conformance ResolvedGaugeStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t View.gaugeStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GaugeStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.CurrentValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MinimumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MaximumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GaugeStyleConfiguration.MarkedValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel();
  *(a1 + 8) = result;
  return result;
}

uint64_t GaugeStyleModifier.styleBody(configuration:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  v14 = *(a1 + 10);
  v17 = *a1;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  (*(v3 + 24))(&v17, v4, v3);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance GaugeStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance GaugeStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>)
  {
    type metadata accessor for GaugeStyleModifier<DefaultGaugeStyle>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for GaugeStyleModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleModifier<DefaultGaugeStyle> and conformance GaugeStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for GaugeStyleModifier<DefaultGaugeStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GaugeStyleModifier<DefaultGaugeStyle>)
  {
    v2 = lazy protocol witness table accessor for type DefaultGaugeStyle and conformance DefaultGaugeStyle();
    v4 = type metadata accessor for GaugeStyleModifier(a1, &type metadata for DefaultGaugeStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GaugeStyleModifier<DefaultGaugeStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultGaugeStyle and conformance DefaultGaugeStyle()
{
  result = lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle;
  if (!lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultGaugeStyle, &type metadata for DefaultGaugeStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGaugeStyle and conformance DefaultGaugeStyle);
  }

  return result;
}

uint64_t initializeWithCopy for AnyToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t *assignWithCopy for AnyToken(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2, a3);
  __swift_assign_boxed_opaque_existential_1(a1 + 4, a2 + 4);
  return a1;
}

uint64_t assignWithTake for AnyToken(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  __swift_destroy_boxed_opaque_existential_1((a1 + 32));
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t AttributedString.search.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributedString();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Void __swiftcall SearchAttributedString.update(tokens:text:)(Swift::OpaquePointer tokens, Swift::String text)
{
  v15 = text;
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  AttributedString.init()();
  v10 = *(tokens._rawValue + 2);
  if (v10)
  {
    v11 = tokens._rawValue + 32;
    v12 = (v17 + 8);
    do
    {
      v19[0] = 12369903;
      static String._uncheckedFromUTF8(_:)();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      outlined init with copy of AnyToken(v11, v19);
      outlined init with copy of AnyToken?(v19, v18);
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
      AttributedString.subscript.setter();
      outlined destroy of AnyToken?(v19);
      static AttributedString.+= infix(_:_:)();
      (*v12)(v6, v4);
      v11 += 72;
      --v10;
    }

    while (v10);
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  AttributedString.append<A>(_:)();
  v13 = v17;
  (*(v17 + 8))(v6, v4);
  (*(v13 + 40))(v16, v9, v4);
}

char *SearchAttributedString.tokens.getter(double a1)
{
  v31 = type metadata accessor for AttributedString.Runs.Index();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AttributedString.Runs.Run();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.runs.getter();
  (*(v7 + 16))(v13, v10, v6);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v7 + 8))(v10, v6);
  v14 = (v1 + 8);
  v29 = (v28 + 2);
  ++v28;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v16 = v31;
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v14)(v3, v16);
    if (v17)
    {
      break;
    }

    v18 = dispatch thunk of Collection.subscript.read();
    v19 = v30;
    (*v29)(v5);
    v18(v37, 0);
    dispatch thunk of Collection.formIndex(after:)();
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    (*v28)(v5, v19);
    if (*(&v33 + 1))
    {
      v37[2] = v34;
      v37[3] = v35;
      v38 = v36;
      v37[0] = v32;
      v37[1] = v33;
      outlined init with copy of AnyToken(v37, &v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
      }

      outlined destroy of AnyToken(v37);
      *(v15 + 2) = v21 + 1;
      v22 = &v15[72 * v21];
      v23 = v35;
      v24 = v34;
      v25 = v33;
      *(v22 + 12) = v36;
      *(v22 + 4) = v24;
      *(v22 + 5) = v23;
      *(v22 + 3) = v25;
      *(v22 + 2) = v32;
    }

    else
    {
      outlined destroy of AnyToken?(&v32);
    }
  }

  outlined destroy of SearchAttributedString(v13, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  return v15;
}

uint64_t AnyToken.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  a4[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v9 = *(a2 - 8);
  (*(v9 + 16))(boxed_opaque_existential_1, a1, a2);
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  AnyHashable.init<A>(_:)();
  return (*(v9 + 8))(a1, a2);
}

Swift::Void __swiftcall SearchAttributedString.update(text:)(Swift::String text)
{
  countAndFlagsBits = text._countAndFlagsBits;
  type metadata accessor for Range<AttributedString.Index>(0);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs.Run();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = type metadata accessor for AttributedString();
  v24 = *(v15 - 8);
  v25 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of SearchAttributedString(v5, type metadata accessor for AttributedString.Runs.Run?);
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (!v27)
    {
      outlined destroy of AnyToken?(v26);
      v19 = v21;
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v18 = v25;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      outlined destroy of SearchAttributedString(v19, type metadata accessor for Range<AttributedString.Index>);
      (*(v11 + 8))(v13, v10);
      goto LABEL_6;
    }

    (*(v11 + 8))(v13, v10);
    outlined destroy of AnyToken?(v26);
  }

  v18 = v25;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  AttributedString.append<A>(_:)();
LABEL_6:
  (*(v24 + 8))(v17, v18);
}

uint64_t SearchAttributedString.append(token:)(uint64_t a1)
{
  v23 = a1;
  type metadata accessor for Range<AttributedString.Index>(0);
  v21[1] = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString.Runs();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString.Runs.Run();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v22 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = type metadata accessor for AttributedString();
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 12369903;
  static String._uncheckedFromUTF8(_:)();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  outlined init with copy of AnyToken(v23, v27);
  outlined init with copy of AnyToken?(v27, v26);
  lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
  AttributedString.subscript.setter();
  outlined destroy of AnyToken?(v27);
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v5);
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    outlined destroy of SearchAttributedString(v5, type metadata accessor for AttributedString.Runs.Run?);
  }

  else
  {
    v17 = v22;
    (*(v11 + 32))(v22, v5, v10);
    AttributedString.Runs.Run.subscript.getter();
    if (!v27[3])
    {
      outlined destroy of AnyToken?(v27);
      v20 = v21[0];
      AttributedString.Runs.Run.range.getter();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v18 = v25;
      AttributedString.replaceSubrange<A, B>(_:with:)();
      outlined destroy of SearchAttributedString(v20, type metadata accessor for Range<AttributedString.Index>);
      (*(v11 + 8))(v17, v10);
      return (*(v24 + 8))(v16, v18);
    }

    (*(v11 + 8))(v17, v10);
    outlined destroy of AnyToken?(v27);
  }

  v18 = v25;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  AttributedString.append<A>(_:)();
  return (*(v24 + 8))(v16, v18);
}

uint64_t SearchAttributedString.lastText.getter()
{
  v0 = type metadata accessor for AttributedString.Index();
  v45 = *(v0 - 8);
  v46 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v44 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AttributedString.CharacterView();
  v41 = *(v43 - 8);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.CharacterView>(0, v4);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  type metadata accessor for AttributedString.Runs.Run?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString.Runs();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString.Runs.Run();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.runs.getter();
  specialized BidirectionalCollection.last.getter(v13);
  (*(v15 + 8))(v17, v14);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    outlined destroy of SearchAttributedString(v13, type metadata accessor for AttributedString.Runs.Run?);
    return 0;
  }

  v22 = *(v19 + 32);
  v37 = v18;
  v22(v21, v13, v18);
  v23 = v39;
  AttributedString.characters.getter();
  v24 = v42;
  AttributedString.Runs.Run.range.getter();
  AttributedString.CharacterView.subscript.getter();
  outlined destroy of SearchAttributedString(v24, type metadata accessor for Range<AttributedString.Index>);
  (*(v41 + 8))(v23, v43);
  v26 = v44;
  v25 = v45;
  v27 = v46;
  (*(v45 + 16))(v44, v10, v46);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = specialized Slice.subscript.getter(v26);
    v29 = v30;
  }

  (*(v25 + 8))(v26, v27);
  v47 = 12369903;
  v31 = static String._uncheckedFromUTF8(_:)();
  if (v29)
  {
    if (v28 == v31 && v29 == v32)
    {

LABEL_12:
      outlined destroy of SearchAttributedString(v10, type metadata accessor for Slice<AttributedString.CharacterView>);
      (*(v19 + 8))(v21, v37);
      return 0;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v10, v38, type metadata accessor for Slice<AttributedString.CharacterView>);
  v35 = String.init(_:)();
  outlined destroy of SearchAttributedString(v10, type metadata accessor for Slice<AttributedString.CharacterView>);
  (*(v19 + 8))(v21, v37);
  return v35;
}

Swift::Void __swiftcall SearchAttributedString.update(tokens:)(Swift::OpaquePointer tokens)
{
  type metadata accessor for Slice<AttributedString.CharacterView>(0, v1);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for AttributedString.CharacterView();
  v50 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.Runs.Index();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AttributedString.Runs.Run();
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v47 - v12;
  v47 = type metadata accessor for AttributedString.Runs();
  v66 = *(v47 - 8);
  v13 = MEMORY[0x1EEE9AC00](v47);
  v65 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v13);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString();
  v48 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  AttributedString.init()();
  v27 = *(tokens._rawValue + 2);
  if (v27)
  {
    v28 = tokens._rawValue + 32;
    v29 = (v48 + 8);
    do
    {
      v71[0] = 12369903;
      static String._uncheckedFromUTF8(_:)();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      outlined init with copy of AnyToken(v28, v71);
      outlined init with copy of AnyToken?(v71, v70);
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
      AttributedString.subscript.setter();
      outlined destroy of AnyToken?(v71);
      static AttributedString.+= infix(_:_:)();
      (*v29)(v23, v21);
      v28 += 72;
      --v27;
    }

    while (v27);
  }

  v51 = v23;
  v58 = v26;
  v52 = v20;
  v59 = v21;
  v30 = v65;
  AttributedString.runs.getter();
  v31 = v66;
  v32 = v47;
  (v66[2])(v17, v30, v47);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  (v31[1])(v30, v32);
  ++v68;
  v66 = (v64 + 2);
  v65 = (v64 + 4);
  ++v64;
  ++v50;
  v49 = (v48 + 8);
  v33 = v62;
  v34 = v61;
  v35 = v60;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v36 = v69;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v68)(v33, v36);
    if (v37)
    {
      break;
    }

    v38 = dispatch thunk of Collection.subscript.read();
    v39 = v67;
    (*v66)(v67);
    v38(v71, 0);
    v40 = v32;
    dispatch thunk of Collection.formIndex(after:)();
    (*v65)(v35, v39, v34);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (v71[3])
    {
      (*v64)(v35, v34);
      outlined destroy of AnyToken?(v71);
    }

    else
    {
      outlined destroy of AnyToken?(v71);
      v41 = v53;
      AttributedString.Runs.Run.range.getter();
      v42 = v54;
      AttributedString.characters.getter();
      AttributedString.CharacterView.subscript.getter();
      v43 = v42;
      v35 = v60;
      (*v50)(v43, v55);
      v44 = v41;
      v34 = v61;
      outlined destroy of SearchAttributedString(v44, type metadata accessor for Range<AttributedString.Index>);
      AttributeContainer.init()();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type Slice<AttributedString.CharacterView> and conformance Slice<A>, type metadata accessor for Slice<AttributedString.CharacterView>, MEMORY[0x1E69E74E8]);
      v45 = v51;
      v33 = v62;
      AttributedString.init<A>(_:attributes:)();
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v46 = v59;
      AttributedString.append<A>(_:)();
      (*v49)(v45, v46);
      (*v64)(v35, v34);
      v32 = v40;
    }
  }

  outlined destroy of SearchAttributedString(v17, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  (*(v48 + 40))(v63, v58, v59);
}

uint64_t protocol witness for Projection.set(base:newValue:) in conformance StringToAttributedStringProjection(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(v5 + 16))(v7, a2, v4);
  result = String.init(_:)();
  *a1 = result;
  a1[1] = v9;
  return result;
}

uint64_t outlined init with copy of AnyToken?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyToken?(uint64_t a1)
{
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for AnyToken?, &type metadata for AnyToken, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StringTokensToAttributedStringProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a5;
  v32 = a7;
  v33 = a8;
  v34 = a3;
  v30 = a1;
  v11 = type metadata accessor for SearchAttributedString(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v29 - v21;
  (*(*(a4 - 8) + 16))(&v29 - v21, v30, a4, v20);
  v23 = &v22[*(TupleTypeMetadata2 + 48)];
  v24 = v34;
  *v23 = a2;
  *(v23 + 1) = v24;

  AttributedString.init()();
  v36 = a4;
  v37 = v31;
  v38 = a6;
  v39 = v32;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in StringTokensToAttributedStringProjection.get(base:), v35, a4, &type metadata for AnyToken, MEMORY[0x1E69E73E0], *(a6 + 8), MEMORY[0x1E69E7410], v25);
  (*(v15 + 16))(v13, v17, v14);
  v27._countAndFlagsBits = a2;
  v27._object = v34;
  SearchAttributedString.update(tokens:text:)(v26, v27);

  (*(v15 + 8))(v17, v14);
  (*(v15 + 32))(v33, v13, v14);
  return (*(v19 + 8))(v22, TupleTypeMetadata2);
}

uint64_t implicit closure #1 in StringTokensToAttributedStringProjection.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, AssociatedTypeWitness, v8);
  return AnyToken.init<A>(_:)(v10, AssociatedTypeWitness, a5);
}

uint64_t closure #1 in StringTokensToAttributedStringProjection.set(base:newValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  outlined init with copy of Any(a1, &v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v6 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for Projection.get(base:) in conformance StringTokensToAttributedStringProjection<A>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
  v8 = *v7;
  v9 = v7[1];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];

  return StringTokensToAttributedStringProjection.get(base:)(a1, v8, v9, v6, v10, v11, v12, a3);
}

uint64_t specialized Slice.subscript.getter(uint64_t a1)
{
  v28 = a1;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  type metadata accessor for Range<AttributedString.Index>(0);
  v27 = v9 - 8;
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<AttributedString.CharacterView>(0, v10);
  v26[1] = v13;
  v14 = *(v13 + 36);
  v15 = type metadata accessor for AttributedString.Index();
  v16 = *(v15 - 8);
  v17 = v16[2];
  v26[0] = v1;
  v17(v8, v1, v15);
  v17(&v8[*(v3 + 56)], v1 + v14, v15);
  outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v8, v5, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
  v18 = *(v3 + 56);
  v19 = v16[4];
  v20 = v12;
  v19(v12, v5, v15);
  v21 = v16[1];
  v21(&v5[v18], v15);
  outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v8, v5);
  v19((v20 + *(v27 + 44)), &v5[*(v3 + 56)], v15);
  v21(v5, v15);
  type metadata accessor for AttributedString.CharacterView();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  outlined destroy of SearchAttributedString(v20, type metadata accessor for Range<AttributedString.Index>);
  v22 = dispatch thunk of Collection.subscript.read();
  v24 = *v23;

  v22(v29, 0);
  return v24;
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for SearchAttributedString(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t specialized StringTokensToAttributedStringProjection.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v109 = a1;
  v11 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = v80 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v94 = type metadata accessor for Range();
  v87 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v80 - v16;
  v107 = AssociatedTypeWitness;
  v84 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v108 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = v80 - v20;
  v21 = type metadata accessor for SearchAttributedString(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AttributedString();
  (*(*(v24 - 8) + 16))(v23, a2, v24);
  v120 = SearchAttributedString.splitIntoTokensAndText()();
  rawValue = v120._0._rawValue;
  v106 = v120._0._rawValue;
  object = v120._1._object;
  countAndFlagsBits = v120._1._countAndFlagsBits;
  outlined destroy of SearchAttributedString(v23, type metadata accessor for SearchAttributedString);
  v112 = rawValue;
  v111[14] = a3;
  v111[15] = a4;
  v111[16] = a5;
  v111[17] = a6;
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E62F8]);
  v26 = swift_getAssociatedTypeWitness();
  _sSays11AnyHashableVGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type [AnyToken] and conformance [A], &lazy cache variable for type metadata for [AnyToken], &type metadata for AnyToken, MEMORY[0x1E69E6328]);
  v81 = Sequence.compactMap<A>(_:)();
  v111[8] = a3;
  v111[9] = a4;
  v111[10] = a5;
  v111[11] = a6;
  KeyPath = swift_getKeyPath();
  v111[2] = a3;
  v111[3] = a4;
  v104 = a5;
  v111[4] = a5;
  v111[5] = a6;
  v111[6] = KeyPath;
  v85 = v26;
  v28 = swift_getAssociatedTypeWitness();
  v102 = a3;
  v105 = v11;
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in StringTokensToAttributedStringProjection.set(base:newValue:), v111, a3, v28, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v29);
  v31 = v106;

  v32 = v31[2];
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v101 = v30;
    v103 = v28;
    v119[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v34 = v119[0];
    v35 = (v31 + 4);
    do
    {
      outlined init with copy of AnyToken(v35, &v112);
      outlined init with copy of AnyHashable(&v116, v117);
      outlined destroy of AnyToken(&v112);
      v119[0] = v34;
      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v34 = v119[0];
      }

      *(v34 + 16) = v37 + 1;
      v38 = v34 + 40 * v37;
      v39 = v117[0];
      v40 = v117[1];
      *(v38 + 64) = v118;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      v35 += 72;
      --v32;
    }

    while (v32);

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v41 = MEMORY[0x1E69E69B8];
  v42 = _arrayForceCast<A, B>(_:)();

  *&v117[0] = v42;
  v119[0] = v34;
  v112 = v33;
  type metadata accessor for CollectionChanges<Int, Int>();
  type metadata accessor for AnyToken?(0, &lazy cache variable for type metadata for [AnyHashable], v41, MEMORY[0x1E69E62F8]);
  _sSays11AnyHashableVGSayxGSKsWlTm_0(&lazy protocol witness table cache variable for type [AnyHashable] and conformance [A], &lazy cache variable for type metadata for [AnyHashable], v41, MEMORY[0x1E69E6310]);
  CollectionChanges.formChanges<A, B>(from:to:)();

  v43 = v112;
  LOBYTE(v117[0]) = 0;
  type metadata accessor for Range<Int>();
  v45 = v44;

  v80[0] = v45;
  v80[1] = v43;
  CollectionChanges.Projection.init(kind:changes:)();
  v46 = v114;
  v101 = v113;
  v103 = v115;
  v47 = v107;
  v48 = v110;
  if (v115 == v114)
  {
LABEL_12:

    LOBYTE(v117[0]) = 1;
    CollectionChanges.Projection.init(kind:changes:)();
    v66 = v113;
    v103 = v114;
    v67 = v81;
    if (v114 != v115)
    {
      v68 = v48;
      LODWORD(AssociatedConformanceWitness) = v112;
      v99 = (v84 + 8);
      v69 = v103;
      v101 = v113;
      v108 = v115;
      do
      {
        v70 = AssociatedConformanceWitness;
        v71 = v67;
        v72 = v103;
        v106 = specialized CollectionChanges.Projection.subscript.getter(v69, AssociatedConformanceWitness, v66);
        v107 = v73;
        LOBYTE(v112) = v70;
        v113 = v66;
        v114 = v72;
        v67 = v71;
        v115 = v108;
        type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
        v69 = CollectionChanges.Projection.index(after:)(v69);
        dispatch thunk of Collection.startIndex.getter();
        Collection.formIndex(_:offsetBy:)();
        v112 = Array.subscript.getter();
        v113 = v74;
        v114 = v75;
        v115 = v76;
        v77 = type metadata accessor for ArraySlice();
        swift_getWitnessTable(MEMORY[0x1E69E6978], v77);
        dispatch thunk of RangeReplaceableCollection.insert<A>(contentsOf:at:)();
        v66 = v101;
        (*v99)(v68, v47);
      }

      while (v69 != v108);
    }

    v78 = (v109 + *(swift_getTupleTypeMetadata2() + 48));

    v79 = object;
    *v78 = countAndFlagsBits;
    v78[1] = v79;
  }

  else
  {
    LODWORD(v99) = v112;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
    v98 = v49;
    v91 = v88 + 2;
    v92 = (v84 + 16);
    v89 = (v84 + 8);
    v90 = (v84 + 32);
    ++v87;
    v88 += 4;
    v50 = v103;
    v86 = v46;
    while (1)
    {
      v51 = v47;
      v52 = v99;
      LOBYTE(v112) = v99;
      v53 = v101;
      v113 = v101;
      v114 = v46;
      v115 = v103;
      v107 = CollectionChanges.Projection.index(before:)(v50);
      specialized CollectionChanges.Projection.subscript.getter(v107, v52, v53);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.startIndex.getter();
      Collection.formIndex(_:offsetBy:)();
      v54 = v110;
      Collection.formIndex(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v47 = v51;
      v56 = *v92;
      v57 = v95;
      (*v92)(v95, v54, v51);
      v58 = TupleTypeMetadata2;
      v56(&v57[*(TupleTypeMetadata2 + 48)], v108, v47);
      v59 = v96;
      (*v91)(v96, v57, v58);
      v60 = *(v58 + 48);
      v106 = *v90;
      v61 = v93;
      (v106)(v93, v59, v47);
      v62 = *v89;
      (*v89)(&v59[v60], v47);
      (*v88)(v59, v57, v58);
      v63 = v94;
      (v106)(&v61[*(v94 + 36)], &v59[*(v58 + 48)], v47);
      v62(v59, v47);
      dispatch thunk of RangeReplaceableCollection.removeSubrange(_:)();
      v64 = v63;
      v65 = v108;
      (*v87)(v61, v64);
      v62(v65, v47);
      v48 = v110;
      v62(v110, v47);
      v50 = v107;
      v46 = v86;
      if (v107 == v86)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _sSays11AnyHashableVGSayxGSKsWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyToken?(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AnyToken?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

int *_OutlineGenerator_Configuration.init(element:isExpanded:grouping:parentContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  result = type metadata accessor for _OutlineGenerator_Configuration(0, &v25);
  v21 = a9 + result[15];
  *v21 = a2;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4;
  v22 = (a9 + result[16]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[17]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t OutlineGenerator<>.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a2 - 8) + 16))(a9, a1, a2);
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a7;
  v16 = type metadata accessor for _OutlineGenerator_Configuration(0, &v36);
  v17 = (a1 + v16[15]);
  v19 = *v17;
  v18 = v17[1];
  v33 = *(v17 + 16);
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a7;
  v20 = type metadata accessor for _OutlineGenerator_Configuration.Subtree(255, &v36);
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v20;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = &protocol witness table for _OutlineGenerator_Configuration<A, B, C>.Subtree;
  v21 = type metadata accessor for OutlineGenerator(0, &v36);
  v22 = a9 + v21[23];
  *v22 = v19;
  *(v22 + 8) = v18;
  *(v22 + 16) = v33;
  v23 = (a1 + v16[16]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (a9 + v21[24]);
  *v26 = v24;
  v26[1] = v25;
  v27 = (a1 + v16[17]);
  v28 = *v27;
  v29 = v27[1];
  v30 = (a9 + v21[25]);
  *v30 = v28;
  v30[1] = v29;
  v31 = *(*(v16 - 1) + 8);

  return v31(a1, v16);
}

uint64_t OutlineGenerator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = *(a1 + 24);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v6 + 32);
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v9 + 40);
  v34 = *(v9 + 72);
  v51[1] = v34;
  v51[0] = v33;
  type metadata accessor for StaticSourceWriter(255, v51);
  v10 = type metadata accessor for ModifiedContent();
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v35 = &v29 - v14;
  v16 = *(a1 + 92);
  v15 = *(a1 + 96);
  v30 = v2;
  v17 = *(v2 + v15);
  v18 = *(v2 + v16);
  v19 = *(v2 + v16 + 8);
  v20 = *(v2 + v16 + 16);
  (*(v2 + *(a1 + 100)))(v2, v13);
  v17(v18, v19, v20, v5);
  v21 = v5;
  v22 = v37;
  (*(v36 + 8))(v21, v37);
  v42 = *(a1 + 16);
  v43 = v22;
  v23 = v31;
  v44 = v31;
  v45 = v33;
  v24 = *(a1 + 64);
  v46 = *(a1 + 56);
  v47 = v24;
  v48 = v34;
  v49 = v30;
  v25 = v32;
  View.viewAlias<A, B>(_:_:)(v33, partial apply for closure #1 in OutlineGenerator.body.getter, v41, v31, v33, *(&v33 + 1), v24);
  (*(v39 + 8))(v8, v23);
  v50[0] = v24;
  v50[1] = &protocol witness table for StaticSourceWriter<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v10, v50);
  v26 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v38 + 8);
  v27(v25, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v26, v10);
}

uint64_t closure #1 in OutlineGenerator.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  v24[4] = v18;
  v24[5] = v19;
  v24[6] = v20;
  v24[7] = v21;
  v24[8] = a10;
  type metadata accessor for OutlineGenerator(0, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v11 + 8))(v13, a6);
}

uint64_t type metadata completion function for _OutlineGenerator_Configuration(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _OutlineGenerator_Configuration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 16) = *(v11 + 16);
    v12 = ((v3 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
  }

  return v3;
}

double destroy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t initializeWithCopy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

uint64_t assignWithCopy for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;

  return a1;
}

uint64_t initializeWithTake for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  v12 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for _OutlineGenerator_Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v6 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;

  *(v9 + 8) = *(v10 + 8);

  *(v9 + 16) = *(v10 + 16);
  v11 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _OutlineGenerator_Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for _OutlineGenerator_Configuration(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 16) = 0;
          *v19 = a2 & 0x7FFFFFFF;
          *(v19 + 8) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for OutlineGenerator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OutlineGenerator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | *(v4 + 80) & 0xF8;
  if (v9 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-17 - v8 - ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v8) - *(v7 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    (*(v4 + 16))(a1);
    v14 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 16) = *(v15 + 16);
    v16 = ((v3 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v5 + 31) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[1];
    *v16 = *v17;
    v16[1] = v18;
    v19 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    *v19 = *v20;
    v19[1] = v21;
    v22 = *(v7 + 16);

    v22(v19 + 2, v20 + 2, v6);
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  return v3;
}

uint64_t destroy for OutlineGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;

  v6 = *(*(a2 + 48) - 8);
  v7 = *(v6 + 8);
  v8 = (((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v18 = *(a3 + 48);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v21 = *(v19 + 80);
  v22 = v15 + v21 + 16;
  v23 = v16 + v21 + 16;

  v20(v22 & ~v21, v23 & ~v21, v18);
  return a1;
}

uint64_t assignWithCopy for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  v15 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  v18 = *(*(a3 + 48) - 8);
  (*(v18 + 24))((v15 + *(v18 + 80) + 16) & ~*(v18 + 80), (v16 + *(v18 + 80) + 16) & ~*(v18 + 80));
  return a1;
}

uint64_t initializeWithTake for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v13;
  v15 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = *(*(a3 + 48) - 8);
  (*(v17 + 32))((v15 + *(v17 + 80) + 16) & ~*(v17 + 80), (v16 + *(v17 + 80) + 16) & ~*(v17 + 80));
  return a1;
}

uint64_t assignWithTake for OutlineGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = v7 + a1;
  v9 = v7 + a2;
  v10 = (v7 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;

  *(v10 + 8) = *(v11 + 8);

  *(v10 + 16) = *(v11 + 16);
  v12 = ((v8 + 31) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  v16 = *(*(a3 + 48) - 8);
  (*(v16 + 40))((v14 + *(v16 + 80) + 16) & ~*(v16 + 80), (v15 + *(v16 + 80) + 16) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for OutlineGenerator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 48) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v7 + 16;
  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v11 = ((v10 + ((((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v7) + *(*(*(a3 + 48) - 8) + 64);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v4 == v9)
      {
        return (*(v3 + 48))();
      }

      v19 = a1 + v6;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v10 + ((((v19 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v7);
      }

      v20 = *(((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 <= 3)
    {
      v17 = ((v10 + ((((v6 + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v7) + *(*(*(a3 + 48) - 8) + 64);
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v18 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v18 = *a1;
      }
    }

    else if (v17 == 1)
    {
      v18 = *a1;
    }

    else
    {
      v18 = *a1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v9 + (v18 | v16) + 1;
}

char *storeEnumTagSinglePayload for OutlineGenerator(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 48) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  if (v5 <= *(v6 + 84))
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9;
  if (a3 > v11)
  {
    if (v12 <= 3)
    {
      v17 = ((a3 - v11 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v17))
      {
        v13 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v13 = v18;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v11 < a2)
  {
    v14 = ~v11 + a2;
    if (v12 < 4)
    {
      v16 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v14 & ~(-1 << (8 * v12));
        v20 = result;
        bzero(result, ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9);
        result = v20;
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *v20 = v19;
            if (v13 > 1)
            {
LABEL_52:
              if (v13 == 2)
              {
                *&result[v12] = v16;
              }

              else
              {
                *&result[v12] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v14;
            if (v13 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v13 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = result;
      bzero(result, ((v8 + 16 + ((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8) + v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v13 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v13)
    {
      result[v12] = v16;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&result[v12] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v12] = 0;
  }

  else if (v13)
  {
    result[v12] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 == v11)
  {
    v21 = *(v4 + 56);

    return v21();
  }

  else
  {
    v22 = &result[v7];
    if ((v10 & 0x80000000) != 0)
    {
      v24 = *(v6 + 56);

      return v24((v8 + 16 + ((((v22 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v8);
    }

    else
    {
      v23 = (v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        *(v23 + 16) = 0;
        *v23 = a2 & 0x7FFFFFFF;
        *(v23 + 8) = 0;
      }

      else
      {
        *(v23 + 8) = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _OutlineGenerator_Configuration<A, B, C>.Subtree(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _OutlineGenerator_Configuration<A, B, C>.Subtree);
  *(a1 + 8) = result;
  return result;
}

__n128 Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = type metadata accessor for Stepper(0, a11, a12, a4);
  v20 = &a9[*(v19 + 40)];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  *(a9 + 6) = a8;
  (*(*(a11 - 8) + 32))(&a9[*(v19 + 36)], a1, a11);
  outlined consume of AccessibilityBoundedNumber?(*v20, v20[1], v20[2], v20[3]);
  result = *a10;
  v22 = *(a10 + 16);
  *v20 = *a10;
  *(v20 + 1) = v22;
  return result;
}

double Stepper.init(onIncrement:onDecrement:onEditingChanged:label:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v15);
  memset(v22, 0, sizeof(v22));
  *&result = Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)(v17, 0, a1, a2, a3, a4, a5, v21, a7, v22, a8, a9).n128_u64[0];
  return result;
}

void Stepper.init<A>(label:currentValueLabel:onIncrement:onDecrement:onEditingChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a7, a8);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a5, a6);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t Stepper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v55 = a2;
  v5 = *(a1 + 16);
  v46 = lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  v6 = *(a1 + 24);
  *&v62 = &type metadata for StepperStyleConfiguration.Label;
  *(&v62 + 1) = v5;
  *&v63 = v46;
  *(&v63 + 1) = v6;
  type metadata accessor for StaticSourceWriter(255, &v62);
  v49 = type metadata accessor for ModifiedContent();
  v54 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v7;
  v51 = type metadata accessor for ModifiedContent();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v44 - v10;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v15 = v3[4];
  v14 = v3[5];
  v16 = v3[6];
  *&v62 = *v3;
  *(&v62 + 1) = v11;
  *&v63 = v12;
  *(&v63 + 1) = v13;
  *&v64 = v15;
  *(&v64 + 1) = v14;
  *&v65 = v16;
  v56[2] = v5;
  v56[3] = v6;
  v56[4] = v3;

  outlined copy of AppIntentExecutor?(v11, v12);
  outlined copy of AppIntentExecutor?(v13, v15);
  v17 = lazy protocol witness table accessor for type StepperBody and conformance StepperBody();
  v45 = v17;

  View.viewAlias<A, B>(_:_:)(&type metadata for StepperStyleConfiguration.Label, partial apply for closure #1 in Stepper.body.getter, v56, &type metadata for StepperBody, &type metadata for StepperStyleConfiguration.Label, v5, v17);
  v18 = *(&v62 + 1);
  v19 = v63;
  v20 = v64;

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18, v19);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(&v19 + 1), v20);

  v21 = v3[1];
  v22 = v3[2];
  v23 = v3[3];
  v25 = v3[4];
  v24 = v3[5];
  v26 = v3[6];
  *&v62 = *v3;
  *(&v62 + 1) = v21;
  *&v63 = v22;
  *(&v63 + 1) = v23;
  *&v64 = v25;
  *(&v64 + 1) = v24;
  *&v65 = v26;
  v27 = (v3 + *(v48 + 40));
  v28 = v27[1];
  v31 = v27[2];
  v30 = v27[3];
  v61[0] = *v27;
  v29 = v61[0];
  v61[1] = v28;
  v61[2] = v31;
  v61[3] = v30;

  outlined copy of AppIntentExecutor?(v21, v22);
  outlined copy of AppIntentExecutor?(v23, v25);

  outlined copy of AccessibilityBoundedNumber?(v29, v28, v31, v30);
  v60[0] = v45;
  v60[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v32 = MEMORY[0x1E697E858];
  v33 = v49;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v49, v60);
  AccessibilityStepperModifier.init(_:value:)(&v62, v61, v33, WitnessTable, v58);
  v36 = type metadata accessor for AccessibilityStepperModifier(0, v33, WitnessTable, v35);
  v37 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityStepperModifier<A>, v36);
  v57[0] = WitnessTable;
  v57[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v38 = v51;
  swift_getWitnessTable(v32, v51, v57);
  v39 = v50;
  v40 = v47;
  View.accessibilityConfiguration<A>(_:)(v58, v33, v36, WitnessTable, v37);
  v66 = v58[4];
  v67 = v58[5];
  v68 = v59;
  v62 = v58[0];
  v63 = v58[1];
  v64 = v58[2];
  v65 = v58[3];
  (*(*(v36 - 8) + 8))(&v62, v36);
  (*(v54 + 8))(v40, v33);
  v41 = v52;
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = *(v53 + 8);
  v42(v39, v38);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v42)(v41, v38);
}

uint64_t closure #1 in Stepper.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Stepper(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v172 = a7;
  v171 = a6;
  v170 = a5;
  v179 = a4;
  v185 = a3;
  v186 = a1;
  v169 = a9;
  v178 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v167 = v147 - v16;
  v183 = a8;
  v168 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v166 = v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v174 = v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v173 = (v147 - v22);
  v181 = AssociatedTypeWitness;
  v182 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v160 = v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v147 - v26;
  v188 = type metadata accessor for Binding();
  v28 = *(v188 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v31 = v147 - v30;
  v184 = a12;
  v32 = *(a12 + 8);
  v187 = a10;
  v33 = type metadata accessor for ClosedRange();
  v34 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v34);
  v165 = v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v147 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v157 = v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v40;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v44 = v147 - v43;
  v175 = v45;
  v46 = *(v45 + 16);
  v180 = a2;
  v47 = a2;
  v49 = v48;
  v164 = v45 + 16;
  v163 = v46;
  (v46)(v38, v47, v34, v42);
  v50 = (*(v49 + 48))(v38, 1, v33);
  v176 = v28;
  v177 = v34;
  v161 = v27;
  if (v50 != 1)
  {
    v151 = v29;
    v152 = v31;
    v153 = v49;
    v68 = *(v49 + 32);
    v149 = v49 + 32;
    v148 = v68;
    v68(v44, v38, v33);
    MEMORY[0x18D00ACC0](v188);
    v154 = v33;
    v69 = v160;
    v70 = v184;
    dispatch thunk of Strideable.distance(to:)();
    v71 = v32;
    v72 = *(v32 + 8);
    v155 = v44;
    v147[2] = v72;
    v73 = v70;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v162 = 0;
      v150 = 0;
      v74 = v181;
      v75 = v173;
    }

    else
    {
      v76 = v181;
      swift_getAssociatedConformanceWitness();
      v77 = dispatch thunk of static Comparable.> infix(_:_:)();
      v78 = v182;
      v147[1] = v71;
      if (v77 & 1) != 0 && (v79 = v187, swift_getAssociatedConformanceWitness(), v80 = v161, dispatch thunk of static SignedNumeric.- prefix(_:)(), v81 = v174, dispatch thunk of Strideable.advanced(by:)(), (*(v78 + 8))(v80, v76), v82 = dispatch thunk of static Comparable.<= infix(_:_:)(), (*(v158 + 8))(v81, v79), (v82))
      {
        v83 = v176;
        (*(v176 + 16))(v152, v186, v188);
        v84 = v153 + 16;
        v85 = v157;
        v86 = v154;
        (*(v153 + 16))(v157, v155, v154);
        v87 = v78;
        v88 = v161;
        (*(v78 + 16))(v161, v185, v76);
        v89 = (*(v83 + 80) + 48) & ~*(v83 + 80);
        v90 = (v151 + v89 + *(v84 + 64)) & ~*(v84 + 64);
        v91 = (v156 + *(v78 + 80) + v90) & ~*(v78 + 80);
        v92 = swift_allocObject();
        v94 = v187;
        v93 = v188;
        *(v92 + 2) = v183;
        *(v92 + 3) = v94;
        *(v92 + 4) = v178;
        *(v92 + 5) = v73;
        (*(v176 + 32))(&v92[v89], v152, v93);
        v148(&v92[v90], v85, v86);
        (*(v87 + 32))(&v92[v91], v88, v76);
        v95 = partial apply for closure #1 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
        v74 = v76;
      }

      else
      {
        v96 = v176;
        v97 = v152;
        v98 = v188;
        (*(v176 + 16))(v152, v186, v188);
        v99 = v153 + 16;
        v100 = v157;
        v74 = v76;
        v101 = v154;
        (*(v153 + 16))(v157, v155, v154);
        v102 = v73;
        v103 = (*(v96 + 80) + 48) & ~*(v96 + 80);
        v104 = (v151 + v103 + *(v99 + 64)) & ~*(v99 + 64);
        v105 = swift_allocObject();
        v106 = v187;
        *(v105 + 2) = v183;
        *(v105 + 3) = v106;
        *(v105 + 4) = v178;
        *(v105 + 5) = v102;
        (*(v96 + 32))(&v105[v103], v97, v98);
        v107 = v100;
        v92 = v105;
        v148(&v105[v104], v107, v101);
        v95 = partial apply for closure #2 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
      }

      v162 = v95;
      v150 = v92;

      v75 = v173;
      v69 = v160;
    }

    v108 = v155;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v182 + 8))(v69, v74);
      (*(v158 + 8))(v75, v187);
      (*(v153 + 8))(v108, v154);
      v173 = 0;
      v64 = 0;
LABEL_18:
      v57 = v150;
      goto LABEL_19;
    }

    swift_getAssociatedConformanceWitness();
    if (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      v109 = v174;
      v110 = v108;
      v111 = v187;
      dispatch thunk of Strideable.advanced(by:)();
      v112 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v113 = *(v158 + 8);
      v114 = v109;
      v115 = v74;
      v113(v114, v111);
      v116 = v182;
      (*(v182 + 8))(v69, v74);
      v113(v75, v111);
      v117 = v152;
      if (v112)
      {
        v118 = v176;
        (*(v176 + 16))(v152, v186, v188);
        v119 = v148;
        v148(v157, v110, v154);
        (*(v116 + 16))(v161, v185, v115);
        v120 = (*(v118 + 80) + 48) & ~*(v118 + 80);
        v121 = (v151 + v120 + *(v153 + 80)) & ~*(v153 + 80);
        v122 = (v156 + *(v116 + 80) + v121) & ~*(v116 + 80);
        v64 = swift_allocObject();
        v124 = v187;
        v123 = v188;
        *(v64 + 16) = v183;
        *(v64 + 24) = v124;
        v125 = v184;
        *(v64 + 32) = v178;
        *(v64 + 40) = v125;
        (*(v118 + 32))(v64 + v120, v117, v123);
        v119(v64 + v121, v157, v154);
        (*(v116 + 32))(v64 + v122, v161, v181);

        v126 = partial apply for closure #3 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
LABEL_17:
        v173 = v126;
        goto LABEL_18;
      }
    }

    else
    {
      (*(v182 + 8))(v69, v74);
      (*(v158 + 8))(v75, v187);
      v117 = v152;
      v110 = v108;
    }

    v127 = v176;
    v128 = v188;
    (*(v176 + 16))(v117, v186, v188);
    v129 = v157;
    v130 = v110;
    v131 = v154;
    v132 = v117;
    v133 = v148;
    v148(v157, v130, v154);
    v134 = (*(v127 + 80) + 48) & ~*(v127 + 80);
    v135 = (v151 + v134 + *(v153 + 80)) & ~*(v153 + 80);
    v64 = swift_allocObject();
    v136 = v187;
    *(v64 + 16) = v183;
    *(v64 + 24) = v136;
    v137 = v184;
    *(v64 + 32) = v178;
    *(v64 + 40) = v137;
    (*(v127 + 32))(v64 + v134, v132, v128);
    v133(v64 + v135, v129, v131);

    v126 = partial apply for closure #4 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
    goto LABEL_17;
  }

  (*(v175 + 8))(v38, v34);
  v51 = *(v28 + 16);
  v157 = (v28 + 16);
  v173 = v51;
  (v51)(v31, v186, v188);
  v52 = v182;
  v162 = *(v182 + 16);
  v53 = v181;
  (v162)(v27, v185, v181);
  v54 = *(v28 + 80);
  v55 = (v54 + 48) & ~v54;
  v56 = *(v52 + 80);
  v155 = v55;
  v154 = (v29 + v56 + v55) & ~v56;
  v160 = (v54 | v56);
  v57 = swift_allocObject();
  v58 = v187;
  *(v57 + 2) = v183;
  *(v57 + 3) = v58;
  v59 = v178;
  v60 = v184;
  *(v57 + 4) = v178;
  *(v57 + 5) = v60;
  v158 = *(v28 + 32);
  (v158)(&v57[v55], v31, v188);
  v61 = v53;
  v156 = *(v52 + 32);
  v62 = v154;
  v63 = v161;
  v156(&v57[v154], v161, v61);
  (v173)(v31, v186, v188);
  (v162)(v63, v185, v61);
  v64 = swift_allocObject();
  v66 = v187;
  v65 = v188;
  *(v64 + 16) = v183;
  *(v64 + 24) = v66;
  v67 = v184;
  *(v64 + 32) = v59;
  *(v64 + 40) = v67;
  (v158)(&v155[v64], v31, v65);
  v156((v64 + v62), v63, v61);

  v162 = partial apply for closure #5 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
  v173 = partial apply for closure #6 in Stepper.init<A>(value:in:step:label:currentValueField:onEditingChanged:);
LABEL_19:
  v138 = v168;
  v139 = v166;
  v140 = v183;
  (*(v168 + 16))(v166, v179, v183);
  MEMORY[0x18D00ACC0](v188);
  v163(v165, v180, v177);
  v141 = v181;
  v142 = v182;
  v143 = v167;
  (*(v182 + 16))(v167, v185, v181);
  (*(v142 + 56))(v143, 0, 1, v141);
  AccessibilityBoundedNumber.init<A>(for:in:by:)();
  v189[0] = v189[2];
  v189[1] = v189[3];
  v144 = v162;
  v145 = v173;
  Stepper.init(label:currentValueField:onIncrement:onDecrement:onEditingChanged:accessibilityValue:)(v139, v170, v162, v57, v173, v64, v171, v172, v169, v189, v140, v178);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v144, v57);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v145, v64);
  (*(v138 + 8))(v179, v140);
  (*(v142 + 8))(v185, v141);
  (*(v175 + 8))(v180, v177);
  return (*(v176 + 8))(v186, v188);
}