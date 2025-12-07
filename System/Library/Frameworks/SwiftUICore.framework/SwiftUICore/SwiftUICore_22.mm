uint64_t type metadata completion function for PlatformViewRepresentableContext(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ViewLeafView(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a8;
  v33 = a7;
  v32 = a6;
  v31 = a5;
  v30 = a4;
  v28 = a3;
  v36 = a9;
  v29 = a10;
  v14 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UncheckedSendable(0, a11, v17, v18);
  v19 = *(v35 - 8);
  v20 = MEMORY[0x1EEE9AC00](v35);
  v22 = &v27 - v21;
  (*(v14 + 16))(v16, a1, a11, v20);
  UncheckedSendable.init(_:)(v16, a11, v22);
  closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a2, v48);
  v23 = v48[2];
  v24 = v48[3];
  v25 = v49;
  v37 = a11;
  v38 = a12;
  v39 = v22;
  v40 = a2;
  v41 = v28;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v29;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  RepresentableContextValues.asCurrent<A>(do:)(partial apply for closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue());

  outlined consume of RepresentableContextValues.EnvironmentStorage(v23, v24, v25);
  return (*(v19 + 8))(v22, v35);
}

uint64_t RepresentableContextValues.asCurrent<A>(do:)(void (*a1)(uint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v16 = v4;
  v6 = *(v1 + 32);
  swift_beginAccess();
  v7 = static RepresentableContextValues.current;
  v9 = qword_1ED527ED0;
  v8 = qword_1ED527ED8;
  *&static RepresentableContextValues.current = v2;
  *(&static RepresentableContextValues.current + 1) = v3;
  qword_1ED527ED0 = v4;
  qword_1ED527ED8 = v5;
  LOBYTE(v4) = byte_1ED527EE0;
  byte_1ED527EE0 = v6;
  outlined copy of RepresentableContextValues?(v7, *(&v7 + 1), v9, v8, v4);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v16, v5, v6);
  v10 = outlined consume of RepresentableContextValues?(v7, *(&v7 + 1), v9, v8, v4);
  a1(v10);
  v11 = static RepresentableContextValues.current;
  v12 = qword_1ED527ED0;
  v13 = qword_1ED527ED8;
  static RepresentableContextValues.current = v7;
  qword_1ED527ED0 = v9;
  qword_1ED527ED8 = v8;
  v14 = byte_1ED527EE0;
  byte_1ED527EE0 = v4;
  return outlined consume of RepresentableContextValues?(v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v23 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v17 = v24 - v16;
  (*(a8 + 64))(a1, a6, a8, v15);
  if (a2)
  {
    v18 = *(a3 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_getAssociatedTypeWitness();
  v24[0] = a4;
  v24[1] = 0;
  v25 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 24);

  swift_unknownObjectRetain();
  v24[0] = v21(v17, a2, v18, v24, &v25, v19, AssociatedConformanceWitness);
  return UncheckedSendable.init(_:)(v24, v19, v23);
}

uint64_t closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = closure #1 in closure #2 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a1, a2, a3, a4, a5, a9, &v22, a10);
  v13 = v22;
  v14 = *(a6 + 68);
  if (!v14)
  {
LABEL_8:
    *a7 = v13;
    return result;
  }

  v15 = *(a6 + 56);
  if (v15)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = 0;
    v19 = v14 - 1;
    do
    {
      v21 = v15 + v18;
      if (v19)
      {
        v18 += *(v21 + 8);
      }

      else
      {
        v18 = 0;
      }

      v20 = v19 | v18;
      v22 = v21;
      result = CoreViewRepresentableFeatureBuffer.Element.update<A>(forHost:environment:isInitialUpdate:)(v13, a8, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
      --v19;
    }

    while (v20);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #6 in closure #1 in PlatformViewChild.updateValue()@<X0>(uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v14 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v13 = *(v2 + 80);
  v10 = *(v2 + 96);
  v12 = *(v2 + 88);
  AGGraphClearUpdate();
  closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(v14, v5, v6, v7, v8, v9, v13, v12, a2, v10, v3, v4);
  return AGGraphSetUpdate();
}

void one-time initialization function for platformUpdate()
{
  *&static Signpost.platformUpdate = "PlatformViewUpdate";
  *(&static Signpost.platformUpdate + 1) = 18;
  word_1ED529260 = 258;
  byte_1ED529262 = 3;
}

void PreferenceValues.setValue<A>(_:of:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PreferenceValues.Value(0, a5, a3, a4);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22[-v15];
  v17 = *v5;
  v18 = *(*v5 + 2);
  if (v18 == a4)
  {
    goto LABEL_4;
  }

  if (v18 <= a4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    *v5 = v17;
    goto LABEL_11;
  }

  if (*&v17[56 * a4 + 32] != a2)
  {
LABEL_4:
    v16 = *(a1 + *(v13 + 28));
    if (!v16)
    {
      return;
    }

    v25[3] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
    v23[0] = a2;
    v23[1] = a3;
    v24 = v16;
    if (v18 >= a4)
    {
      outlined init with copy of PreferenceValues.Entry(v23, v22);
      specialized Array.replaceSubrange<A>(_:with:)(a4, a4, v22);
LABEL_7:
      outlined destroy of PreferenceValues.Entry(v23);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!*(a1 + *(v13 + 28)))
  {
    specialized Array.remove(at:)(a4, v23);
    goto LABEL_7;
  }

  v20 = a1;
  a1 = v13;
  (*(v12 + 16))(v16, v20, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (*(v17 + 2) <= a4)
  {
    __break(1u);
  }

  else
  {
    specialized PreferenceValues.Entry.subscript.setter(v16, a5);
    (*(v12 + 8))(v16, a1);
    *v5 = v17;
  }
}

uint64_t outlined destroy of CollectionOfOne<PreferenceValues.Entry>(uint64_t a1)
{
  type metadata accessor for GesturePhase<()>(0, &lazy cache variable for type metadata for CollectionOfOne<PreferenceValues.Entry>, &type metadata for PreferenceValues.Entry, MEMORY[0x1E69E6BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ViewTraitCollection.value<A>(for:defaultValue:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  v8 = *(*v4 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      outlined init with copy of AnyTrackedValue(v10, v19);
      v11 = v20;
      v12 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if ((*(v12 + 8))(v11, v12) == a2)
      {
        v14 = v20;
        v15 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v16 = *(v15 + 16);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v16(AssociatedTypeWitness, v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v19);
        return;
      }

      ++v9;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v13 = swift_getAssociatedTypeWitness();
    (*(*(v13 - 8) + 16))(a4, a1, v13);
  }
}

void _LayoutTraits.Dimension.init(min:ideal:max:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

void _LayoutTraits.Dimension._checkInvariant()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *v0 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = *v0 > -1 && (v4 - 0x10000000000000) >> 53 < 0x3FF || (*v0 - 1) < 0xFFFFFFFFFFFFFLL || v4 == 0;
  if (!v7 || v2 == INFINITY)
  {
LABEL_20:
    v9 = v3;
    v10 = v1;
    _StringGuts.grow(_:)(22);

    if (v10 == v9)
    {
      v11 = Double.description.getter();
      v13 = v12;
    }

    else
    {
      v17 = Double.description.getter();
      v18 = v14;
      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v15 = Double.description.getter();
      MEMORY[0x193ABEDD0](v15);

      MEMORY[0x193ABEDD0](3026478, 0xE300000000000000);
      v16 = Double.description.getter();
      MEMORY[0x193ABEDD0](v16);

      v11 = v17;
      v13 = v18;
    }

    MEMORY[0x193ABEDD0](v11, v13);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v1 > v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v1 > v2 || v2 > v3)
  {
    goto LABEL_20;
  }
}

__n128 _LayoutTraits.init(width:height:)@<Q0>(__n128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4 = a1[1].n128_u64[0];
  *(&v4 + 1) = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v8 = *a1;
  v9 = v4;
  _LayoutTraits.Dimension._checkInvariant()();
  _LayoutTraits.Dimension._checkInvariant()();
  result = v8;
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  return result;
}

uint64_t protocol witness for PlatformViewFactory.makePlatformView() in conformance ViewLeafView<A>(uint64_t a1)
{
  specialized ViewLeafView.makePlatformView()(a1);

  return swift_unknownObjectRetain();
}

void lazy protocol witness table accessor for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions()
{
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoreViewRepresentableLayoutOptions, &type metadata for CoreViewRepresentableLayoutOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoreViewRepresentableLayoutOptions, &type metadata for CoreViewRepresentableLayoutOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoreViewRepresentableLayoutOptions, &type metadata for CoreViewRepresentableLayoutOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }
}

{
  if (!lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions)
  {
    swift_getWitnessTable(protocol conformance descriptor for CoreViewRepresentableLayoutOptions, &type metadata for CoreViewRepresentableLayoutOptions, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CoreViewRepresentableLayoutOptions and conformance CoreViewRepresentableLayoutOptions);
  }
}

uint64_t specialized static Semantics.UnifiedLayout.isEnabled.getter()
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if (dyld_program_sdk_at_least())
    {
LABEL_5:
      v0 = 1;
      return v0 & 1;
    }
  }

  else if (static Semantics.forced == -1)
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v0 = static EnableUnifiedLayoutFeature.cachedValue;
  if (static EnableUnifiedLayoutFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of ViewGraphHost.LayoutInvalidator?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD78800);
      v0 = [v5 BOOLForKey_];

      static EnableUnifiedLayoutFeature.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of ViewGraphHost.LayoutInvalidator?(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      v0 = 0;
      static EnableUnifiedLayoutFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

double closure #1 in ViewLeafView.layoutTraits()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  type metadata accessor for ViewLeafView(0, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 64);
  v11 = swift_checkMetadataState();
  v10(v14, v11, AssociatedConformanceWitness);
  v15 = v14[0];
  v16 = v14[1];
  v17 = v14[2];
  closure #1 in closure #1 in ViewLeafView.layoutTraits()(a1, &v15, a2, a3);
  v12 = v16;
  *a5 = v15;
  a5[1] = v12;
  result = *&v17;
  a5[2] = v17;
  return result;
}

uint64_t ViewLeafView.layoutTraits()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AGGraphClearUpdate();
  closure #1 in ViewLeafView.layoutTraits()(v2, *(a1 + 16), *(a1 + 24), v5, a2);

  return AGGraphSetUpdate();
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in closure #1 in ViewLeafView.layoutTraits()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v12 = type metadata accessor for ViewLeafView(0, a3, a4, v11);
  ViewLeafView.representedViewProvider.getter(v12);
  (*(a4 + 160))(a2, v10, a3, a4);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t closure #3 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v21[1] = a5;
  v21[0] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v21 - v15;
  v18 = type metadata accessor for ViewLeafView(0, a7, a8, v17);
  ViewLeafView.representedViewProvider.getter(v18);
  v19 = *(a8 + 120);
  v23 = a4 & 1;
  v22 = a6 & 1;
  v19(a2, v21[0]);
  return (*(v14 + 8))(v16, AssociatedTypeWitness);
}

Swift::Void __swiftcall PreferenceValues.combine(with:)(SwiftUI::PreferenceValues with)
{
  v2 = *with.entries._rawValue;
  v3 = *(*with.entries._rawValue + 16);
  if (!v3)
  {
    return;
  }

  v4 = v1;
  v5 = *v1;
  v40 = *(*v1 + 2);
  if (!v40)
  {

    *v1 = v2;
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v39 = v2 + 32;
  v9 = 56;
  v34 = v2;
  v35 = v1;
  v33 = v3;
  do
  {
    if (v7 >= *(v5 + 2))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v41 = v6;
    outlined init with copy of PreferenceValues.Entry(&v5[v9 - 24], v44);
    v10 = v44[0];
    outlined destroy of PreferenceValues.Entry(v44);
    if (v8 >= *(v2 + 16))
    {
      goto LABEL_28;
    }

    v11 = v39 + 56 * v8;
    outlined init with copy of PreferenceValues.Entry(v11, v44);
    v12 = v44[0];
    outlined destroy of PreferenceValues.Entry(v44);
    if (v10 == v12)
    {
      outlined init with copy of PreferenceValues.Entry(v11, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        *v4 = v5;
      }

      if (v7 >= *(v5 + 2))
      {
        goto LABEL_29;
      }

      v38 = v8;
      v17 = *&v5[v9 - 24];
      v18 = *&v5[v9 - 16];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37 = &v32;
      v20 = *(AssociatedTypeWitness - 8);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v22 = &v32 - v21;
      outlined init with copy of Any(&v5[v9], &v42);
      v23 = swift_dynamicCast();
      v36 = &v32;
      v24 = MEMORY[0x1EEE9AC00](v23);
      *(&v32 - 4) = v17;
      *(&v32 - 3) = v18;
      *(&v32 - 2) = &v5[v9 - 24];
      v25 = v38;
      *(&v32 - 1) = v44;
      v26 = *(v18 + 24);
      v4 = v35;
      v26(v22, partial apply for closure #1 in reduce #1 <A>(key:) in PreferenceValues.Entry.reduce(_:), v24);
      v43 = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 16))(boxed_opaque_existential_1, v22, AssociatedTypeWitness);
      __swift_destroy_boxed_opaque_existential_1(&v5[v9]);
      v3 = v33;
      outlined init with take of Any(&v42, &v5[v9]);
      v28 = AssociatedTypeWitness;
      v2 = v34;
      (*(v20 + 8))(v22, v28);
      outlined destroy of PreferenceValues.Entry(v44);
      *v4 = v5;
      v8 = v25 + 1;
LABEL_16:
      v29 = v41;
      goto LABEL_19;
    }

    if (v12 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v5 + 2);
    if (v13 < v7)
    {
      goto LABEL_30;
    }

    outlined init with copy of PreferenceValues.Entry(v11, v44);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (v14 && v13 < *(v5 + 3) >> 1)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v13 + 1, 1, v5);
      *v4 = v5;
    }

    swift_arrayDestroy();
    v29 = v41;
    memmove(&v5[v9 + 32], &v5[v9 - 24], 56 * (v41 + *(v5 + 2)));
    ++*(v5 + 2);
    outlined init with copy of PreferenceValues.Entry(v44, &v5[v9 - 24]);
    outlined destroy of CollectionOfOne<PreferenceValues.Entry>(v44);
    *v4 = v5;
    ++v40;
    v8 = v15 + 1;
LABEL_19:
    if (++v7 >= v40)
    {
      break;
    }

    v9 += 56;
    v6 = v29 - 1;
  }

  while (v8 < v3);
  if (v8 >= v3)
  {
    return;
  }

  v30 = *(v2 + 16);
  if (v30 >= v8 && v30 >= v3)
  {

    specialized Array.append<A>(contentsOf:)(v31, v39, v8, (2 * v3) | 1);
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t PlatformViewLayoutEngine.explicitAlignment(_:at:)(uint64_t a1, double *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (one-time initialization token for firstTextBaseline != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  if (static VerticalAlignment.firstTextBaseline == a1)
  {
    v21 = 0.0;
    v22 = 0.0;
    MEMORY[0x1EEE9AC00](a1);
    v14 = *(v7 + 16);
    v15 = &v21;
    v16 = v2;
    v17 = v4;
    v18 = v3;
    v19 = v6;
    v20 = v5;
    specialized static Update.syncMain(_:)(partial apply for closure #1 in PlatformViewLayoutEngine.explicitAlignment(_:at:), v13);
    if ((*&v21 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v21 & 0x7FF0000000000000) == 0)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v21;
    }
  }

  else
  {
    if (one-time initialization token for lastTextBaseline != -1)
    {
      v12 = a1;
      swift_once();
      a1 = v12;
    }

    if (static VerticalAlignment.lastTextBaseline == a1)
    {
      v21 = 0.0;
      v22 = 0.0;
      MEMORY[0x1EEE9AC00](a1);
      v14 = *(v10 + 16);
      v15 = &v21;
      v16 = v2;
      v17 = v4;
      v18 = v3;
      v19 = v6;
      v20 = v5;
      specialized static Update.syncMain(_:)(partial apply for closure #2 in PlatformViewLayoutEngine.explicitAlignment(_:at:), v13);
      if ((~*&v22 & 0x7FF0000000000000) != 0 || (*&v22 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        *&result = v3 - v22;
      }

      else
      {
        *&result = v3;
      }
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t destroy for ViewLeafView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  return v7(v8, AssociatedTypeWitness);
}

uint64_t outlined init with copy of ViewGraphHost.LayoutInvalidator?(uint64_t a1, uint64_t a2)
{
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t $defer #1 <A>() in PlatformViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformViewLayoutEngine(0, a3, a4, a4);
  type metadata accessor for ViewLeafView(0, a3, a4, v7);
  outlined init with copy of ViewGraphHost.LayoutInvalidator?(a2, v12);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 48);
  swift_unknownObjectRetain();
  v10 = swift_checkMetadataState();
  v9(v12, v10, AssociatedConformanceWitness);
  return swift_unknownObjectRelease();
}

double PlatformViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for ViewLeafView(0, v8, v9, a4);
  v72 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v67 = *a1;
  v65 = *(a1 + 8);
  v64 = *(a1 + 16);
  v66 = *(a1 + 24);
  v13 = v5 + *(a2 + 36);
  swift_getAssociatedTypeWitness();
  v68 = v9;
  v69 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 40);
  v16 = swift_checkMetadataState();
  v15(v74, v16, AssociatedConformanceWitness);
  v75 = 0;
  v76 = 0;
  LOBYTE(v77) = 1;
  v17 = *(AssociatedConformanceWitness + 48);
  v18 = v16;
  v19 = v64;
  v20 = AssociatedConformanceWitness;
  v21 = v65;
  v17(&v75, v18, v20);
  v22 = *(v72 + 16);
  v70 = v12;
  v23 = v13;
  v24 = v67;
  v71 = v10;
  v25 = v10;
  v26 = v66;
  v22(v12, v23, v25);
  v27 = *(v5 + *(a2 + 40));
  v28 = *(v5 + *(a2 + 44));
  v29 = *v5;
  v30 = *(v5 + 8);
  v32 = *(v5 + 16);
  v31 = *(v5 + 24);
  v34 = *(v5 + 32);
  v33 = *(v5 + 40);
  v35 = *(v5 + 48);
  v36 = *(v5 + 72);
  v37 = *(v5 + 56);
  v39 = *(v5 + 88);
  v38 = *(v5 + 96);
  v40 = *(v5 + 144);
  if ((v35 & 1) == 0)
  {
    if (v21)
    {
      if ((v30 & 1) == 0)
      {
        if (*(v5 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v5 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v30 & 1) != 0 || v24 != v29)
    {
      goto LABEL_2;
    }

    if (v26)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v31 & 1) != 0 || v19 != v32)
    {
      goto LABEL_2;
    }

    v40 = *(v5 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v5 + 104))
  {
    goto LABEL_22;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  if ((*(v5 + 64) & 1) != 0 || *&v37 != v24)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v26)
  {
    if (*(v5 + 80))
    {
LABEL_21:
      v40 = *(v5 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v5 + 80) & 1) == 0 && *&v36 == v19)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v5 + 160))
  {
LABEL_23:
    v54 = *(v5 + 104);
    v55 = v36;
    v56 = v37;
    v60 = v35;
    v61 = v31;
    v59 = v32;
    v58 = v30;
    v57 = v29;
    v62 = v34;
    v63 = v33;
    v41 = v19;
    v42 = *&v24;
    swift_beginAccess();
    v43 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      *(v43 + 4) = v42;
      *(v43 + 5) = v21;
      v43[6] = v41;
      *(v43 + 28) = v26;
    }

    v73 = v26;
    v75 = v42;
    LOBYTE(v76) = v21;
    v77 = v41;
    v78 = v26;
    v40 = ViewLeafView.sizeThatFits(in:environment:context:)(&v75, v27, v28, v71);
    v44 = v55;
    *(v5 + 112) = v56;
    *(v5 + 128) = v44;
    *(v5 + 144) = v39;
    *(v5 + 152) = v38;
    *(v5 + 160) = v54;
    v45 = v58;
    *(v5 + 56) = v57;
    *(v5 + 64) = v45;
    v46 = v61;
    *(v5 + 72) = v59;
    *(v5 + 80) = v46;
    v47 = v63;
    *(v5 + 88) = v62;
    *(v5 + 96) = v47;
    *(v5 + 104) = v60;
    *v5 = v42;
    *(v5 + 8) = v21;
    *(v5 + 16) = v41;
    *(v5 + 24) = v26;
    *(v5 + 32) = v40;
    *(v5 + 40) = v48;
    *(v5 + 48) = 0;
    goto LABEL_41;
  }

  if (v21)
  {
    if ((*(v5 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v5 + 120) & 1) != 0 || *(v5 + 112) != v24)
  {
    goto LABEL_23;
  }

  if (v26)
  {
    if ((*(v5 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v5 + 136) & 1) != 0 || *(v5 + 128) != v19)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v49 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v49[4] = v24;
    *(v49 + 5) = v21;
    v49[6] = v19;
    *(v49 + 28) = v26 | 0x100;
  }

LABEL_41:
  v51 = v68;
  v50 = v69;
  (*(v72 + 8))(v70, v71);
  $defer #1 <A>() in PlatformViewLayoutEngine.sizeThatFits(_:)(v5, v74, v50, v51);
  outlined destroy of ViewGraphHost.LayoutInvalidator?(v74, &lazy cache variable for type metadata for ViewGraphHost.LayoutInvalidator?, &type metadata for ViewGraphHost.LayoutInvalidator);
  return v40;
}

uint64_t initializeWithCopy for ViewLeafView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 16);
  v12 = *(v10 + 80);
  swift_unknownObjectRetain();
  v11((v7 + v12 + 8) & ~v12, (v8 + v12 + 8) & ~v12, AssociatedTypeWitness);
  return a1;
}

uint64_t outlined destroy of ViewGraphHost.LayoutInvalidator?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI11DisplayListVGMaTm_1(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v5;
  *(a1 + 160) = *(a2 + 160);
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 80);
  v15 = v12 | v14 | 7;
  v16 = (v15 + 161 + a1) & ~v15;
  v17 = (v15 + 161 + a2) & ~v15;
  (*(v11 + 16))(v16, v17, v10);
  v18 = *(v11 + 64) + 7;
  v19 = ((v18 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + v17) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = v19 + v14 + 8;
  v22 = v20 + v14 + 8;
  v23 = *(v13 + 16);
  swift_unknownObjectRetain();
  v23(v21 & ~v14, v22 & ~v14, AssociatedTypeWitness);
  v24 = *(v13 + 64) + ((v14 + 8 + (v18 & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 3;
  v25 = ((v24 + v16) & 0xFFFFFFFFFFFFFFFCLL);
  v26 = ((v24 + v17) & 0xFFFFFFFFFFFFFFFCLL);
  *v25 = *v26;
  *((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t destroy for PlatformViewLayoutEngine(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80) & 0xF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v7 = *(v12 + 80);
  v8 = (a1 + (v5 | v7 | 7) + 161) & ~(v5 | v7 | 7);
  (*(v4 + 8))(v8, v3);
  v9 = (*(v4 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = *(v12 + 8);

  return v10((v7 + v9 + 8) & ~v7, AssociatedTypeWitness);
}

double ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t *a1, int a2, int a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v17[0] = 0;
  v17[1] = 0;
  v9[1] = *(a4 + 16);
  v10 = a2;
  v11 = a3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v17;
  specialized static Update.syncMain(_:)(partial apply for closure #1 in ViewLeafView.sizeThatFits(in:environment:context:), v9);
  return *v17;
}

uint64_t closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, double *a8, uint64_t a9, uint64_t a10)
{
  v38 = a8;
  v15 = a2;
  v17 = type metadata accessor for PlatformViewRepresentableContext(0, a9, a10, a4);
  v36 = *(v17 - 8);
  v37 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = v15;
  v21 = a6;
  v22 = a7;
  closure #1 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a1, v20, a3, a9, a10, &v35 - v18);
  v23 = a5;
  LOBYTE(v39) = a5 & 1;
  v44 = v22 & 1;
  closure #2 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a4, a5 & 1, v21, v22 & 1, v19, a9, a10, &v39);
  if ((LOBYTE(v40) & 1) == 0)
  {
    *v38 = v39;
    return (*(v36 + 8))(v19, v37);
  }

  v24 = v38;
  if (specialized static Semantics.UnifiedLayout.isEnabled.getter())
  {
    *&v39 = a4;
    BYTE8(v39) = v23 & 1;
    v40 = *&v21;
    LOBYTE(v41) = v22 & 1;
    v26 = type metadata accessor for ViewLeafView(0, a9, a10, v25);
    ViewLeafView.unifiedLayoutSize(in:)(&v39, v26);
    v29 = v24;
LABEL_20:
    *v29 = v27;
    v29[1] = v28;
    LOBYTE(v39) = v23 & 1;
    v44 = v22 & 1;
    closure #3 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)(a1, v29, a4, v23 & 1, v21, v22 & 1, a9, a10);
    return (*(v36 + 8))(v19, v37);
  }

  v30 = type metadata accessor for ViewLeafView(0, a9, a10, v25);
  result = ViewLeafView.layoutTraits()(v30, &v39);
  v32 = *&v39;
  v27 = v40;
  v33 = v42;
  if ((v22 & 1) == 0)
  {
    v33 = *&v21;
  }

  if (*&v39 > v40)
  {
    __break(1u);
  }

  else if (v41 <= v43)
  {
    v29 = v24;
    v34 = *(&v39 + 1);
    if ((v23 & 1) == 0)
    {
      v34 = *&a4;
    }

    if (*&v39 <= v34)
    {
      v32 = v34;
    }

    if (v40 >= v32)
    {
      v27 = v32;
    }

    if (v41 > v33)
    {
      v28 = v41;
    }

    else
    {
      v28 = v33;
    }

    if (v43 < v28)
    {
      v28 = v43;
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v20[-1] - v14;
  v17 = type metadata accessor for ViewLeafView(0, a4, a5, v16);
  (*(v13 + 16))(v15, a1 + *(v17 + 40), AssociatedTypeWitness);
  v20[0] = a2 | (a3 << 32);
  v20[1] = 0;
  v21 = 1;
  return PlatformViewRepresentableContext.init(coordinator:preferenceBridge:transaction:environmentStorage:)(v15, 0, 0, v20, a4, a5, a6);
}

uint64_t closure #2 in closure #1 in ViewLeafView.sizeThatFits(in:environment:context:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a5;
  v26 = a1;
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v25 - v15;
  v18 = type metadata accessor for ViewLeafView(0, a6, a7, v17);
  ViewLeafView.representedViewProvider.getter(v18);
  v19 = *(a7 + 112);
  v30 = a2 & 1;
  v29 = a4 & 1;
  v20 = v19(v26);
  v22 = v21;
  LOBYTE(a7) = v23;
  result = (*(v14 + 8))(v16, AssociatedTypeWitness);
  *a8 = v20;
  *(a8 + 8) = v22;
  *(a8 + 16) = a7 & 1;
  return result;
}

uint64_t ViewLeafView.representedViewProvider.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 32);
  v3 = swift_checkMetadataState();
  return v2(v3, AssociatedConformanceWitness);
}

double ViewGraphHostEnvironmentWrapper.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return result;
}

void ViewGraphHostEnvironmentWrapper.phase.setter(int *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a4;
  v34 = a5;
  v35 = a3;
  v30 = a2;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for Optional();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v30 - v11;
  v14 = type metadata accessor for PlatformViewChild(0, a6, a7, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  (*(v15 + 16))(v17, v35, v14, v20);
  PlatformViewChild.representedViewProvider.getter(v14, v12);
  (*(v15 + 8))(v17, v14);
  if ((*(v18 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v10 + 8))(v12, v31);
  }

  v24 = (*(v18 + 32))(v22, v12, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v24);
  *(&v30 - 6) = a6;
  *(&v30 - 5) = a7;
  v25 = v33;
  v26 = v34;
  *(&v30 - 4) = v33;
  *(&v30 - 3) = v26;
  *(&v30 - 2) = v22;
  if (v32)
  {
    v27 = one-time initialization token for _lock;
    swift_unknownObjectRetain();
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    ObjectType = swift_getObjectType();
    ViewRendererHost.performExternalUpdate(_:)(partial apply for closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue(), (&v30 - 8), ObjectType, v30);
    static Update.end()();
    _MovableLockUnlock(v28);
    swift_unknownObjectRelease();
  }

  else
  {
    closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(v25, v26, v22, a6, a7);
  }

  return (*(v18 + 8))(v22, AssociatedTypeWitness);
}

uint64_t ViewLeafView.init(content:platformView:coordinator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for ViewLeafView(0, a4, a5, v11);
  *(a6 + *(v12 + 36)) = a2;
  v13 = *(v12 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 32);

  return v15(a6 + v13, a3, AssociatedTypeWitness);
}

uint64_t ColorBox.resolve(in:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*(v2 + 184) + 32))(&v4, *(v2 + 176));
}

void *assignWithTake for AnyTransition.InsertionVisitor(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t EnvironmentValues.isEnabled.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA07EnabledI033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt1g5(v1);

    return v2 & 1;
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA07EnabledS033_09CE35833F3876FE3A3A46977D61FC64LLVG_Tt0g5(v1);
    if (v4)
    {
      return *(v4 + 72);
    }

    else
    {
      return 1;
    }
  }
}

uint64_t EnvironmentValues.effectiveTintColor.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2)
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v1);

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(v1);
    if (!v4)
    {
LABEL_9:
      v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(v1);
      if (!v8)
      {
        return 0;
      }

      v5 = v8[9];

      return v5;
    }

    v3 = v4[9];

    if (!v3)
    {
LABEL_7:
      if (v2)
      {

        v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v1);

        return v6;
      }

      goto LABEL_9;
    }
  }

  v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v3);

  if (!v5)
  {
    goto LABEL_7;
  }

  return v5;
}

Swift::Int Color.Resolved.hashValue.getter(float a1, float a2, float a3, float a4)
{
  Hasher.init(_seed:)();
  Color.Resolved.hash(into:)(a1, a2, a3, a4);
  return Hasher._finalize()();
}

uint64_t closure #1 in closure #1 in closure #7 in closure #1 in PlatformViewChild.updateValue()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v49 = a3;
  v46 = a5;
  v47 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v41 - v9;
  v13 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v11, v12);
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v43 = &v41 - v14;
  v16 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UncheckedSendable(0, a4, v20, v21);
  v50 = *(v22 - 8);
  v51 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  v45 = &v41 - v23;
  closure #1 in closure #1 in closure #6 in closure #1 in PlatformViewChild.updateValue()(a1, v56);
  v25 = v56[0];
  v41 = v56[1];
  v54 = v56[3];
  v55 = v56[2];
  v42 = v57;
  v26 = *(v16 + 16);
  v44 = a4;
  v26(v19, v48, a4);
  UncheckedSendable.init(_:)(v19, a4, v24);
  (*(v8 + 16))(v10, v49, AssociatedTypeWitness);
  UncheckedSendable.init(_:)(v10, AssociatedTypeWitness, v15);
  swift_beginAccess();
  v27 = static RepresentableContextValues.current;
  v28 = qword_1ED527ED0;
  v48 = qword_1ED527ED8;
  v49 = *(&static RepresentableContextValues.current + 1);
  v29 = byte_1ED527EE0;
  outlined copy of RepresentableContextValues?(static RepresentableContextValues.current, *(&static RepresentableContextValues.current + 1), qword_1ED527ED0, qword_1ED527ED8, byte_1ED527EE0);
  *&static RepresentableContextValues.current = v25;
  *(&static RepresentableContextValues.current + 1) = v41;
  v30 = v54;
  v31 = v55;
  qword_1ED527ED0 = v55;
  qword_1ED527ED8 = v54;
  LOBYTE(v24) = v42;
  byte_1ED527EE0 = v42;
  v32 = v48;
  outlined consume of RepresentableContextValues?(v27, *(&v27 + 1), v28, v48, v29);

  v33 = outlined copy of RepresentableContextValues.EnvironmentStorage(v31, v30, v24);
  v34 = v43;
  v35 = v45;
  (*(v46 + 72))(v43, v47, v44, v33);
  v36 = static RepresentableContextValues.current;
  v37 = qword_1ED527ED0;
  v38 = qword_1ED527ED8;
  *&static RepresentableContextValues.current = v27;
  *(&static RepresentableContextValues.current + 1) = v49;
  qword_1ED527ED0 = v28;
  qword_1ED527ED8 = v32;
  v39 = byte_1ED527EE0;
  byte_1ED527EE0 = v29;
  outlined consume of RepresentableContextValues?(v36, *(&v36 + 1), v37, v38, v39);

  outlined consume of RepresentableContextValues.EnvironmentStorage(v55, v54, v24);
  (*(v52 + 8))(v34, v53);
  return (*(v50 + 8))(v35, v51);
}

uint64_t PlatformViewChild.representedViewProvider.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 80)))
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 32);
    v6 = swift_checkMetadataState();
    v5(v6, AssociatedConformanceWitness);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = 0;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = 1;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 56);

  return v9(a2, v8, 1);
}

uint64_t PlatformViewLayoutEngine.init(cache:view:environment:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v13 = *(a1 + 144);
  *(a7 + 128) = *(a1 + 128);
  *(a7 + 144) = v13;
  *(a7 + 160) = *(a1 + 160);
  v14 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v14;
  v15 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v15;
  v16 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v16;
  v17 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v17;
  v18 = type metadata accessor for PlatformViewLayoutEngine(0, a5, a6, a4);
  v19 = v18[9];
  v21 = type metadata accessor for ViewLeafView(0, a5, a6, v20);
  result = (*(*(v21 - 8) + 32))(a7 + v19, a2, v21);
  *(a7 + v18[10]) = a3;
  *(a7 + v18[11]) = v9;
  return result;
}

void specialized PlatformColorProvider.resolve(in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  v6 = static UIKitPlatformColorProvider.safeDefinition;
  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v7 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v7(v10);
    if (CoreColorDependsOnEnvironment(a3, v10[0]))
    {
      v8 = MEMORY[0x193AC38C0]();
      v10[0] = a1;
      v10[1] = a2;
      v6[12](a3, v10);
      objc_autoreleasePoolPop(v8);
    }

    else
    {
      v7(v10);
      v9 = CGColorForCoreColor(LOBYTE(v10[0]), a3);
      if (v9)
      {
        specialized Color.Resolved.init(failableCGColor:)(v9);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

{
  v6 = swift_beginAccess();
  v7 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v6 = swift_beginAccess();
    v7 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      type metadata accessor for PlatformColorDefinition();
      v6 = swift_dynamicCastMetatypeUnconditional();
      v7 = v6;
      static PlatformColorDefinition.appKit = v6;
    }
  }

  v7[10](v13, v6);
  if (CoreColorDependsOnEnvironment(a3, v13[0]))
  {
    v8 = MEMORY[0x193AC38C0]();
    v9 = static PlatformColorDefinition.appKitInternal;
    if (static PlatformColorDefinition.appKitInternal)
    {
      goto LABEL_14;
    }

    swift_beginAccess();
    v9 = static PlatformColorDefinition.appKit;
    if (static PlatformColorDefinition.appKit)
    {
      goto LABEL_14;
    }

    if (CoreColorGetKitColorClass(1))
    {
      swift_getObjCClassMetadata();
      type metadata accessor for NSObject();
      if (swift_dynamicCastMetatype())
      {
        if ([swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
        {
          type metadata accessor for PlatformColorDefinition();
          v9 = swift_dynamicCastMetatypeUnconditional();
          static PlatformColorDefinition.appKit = v9;
LABEL_14:
          v12[0] = a1;
          v12[1] = a2;
          (*(v9 + 12))(a3, v12);
          objc_autoreleasePoolPop(v8);
          return;
        }
      }
    }

    goto LABEL_25;
  }

  v10 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    swift_beginAccess();
    v10 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1))
      {
        goto LABEL_26;
      }

      swift_getObjCClassMetadata();
      type metadata accessor for NSObject();
      if (!swift_dynamicCastMetatype() || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        goto LABEL_26;
      }

      type metadata accessor for PlatformColorDefinition();
      v10 = swift_dynamicCastMetatypeUnconditional();
      static PlatformColorDefinition.appKit = v10;
    }
  }

  (*(v10 + 10))(v12);
  v11 = CGColorForCoreColor(LOBYTE(v12[0]), a3);
  if (v11)
  {
    specialized Color.Resolved.init(failableCGColor:)(v11);
  }
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance HostPreferencesKey(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v3);
  PreferenceValues.combine(with:)(&v3);
}

uint64_t PlatformViewDisplayList.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 24);
  v78 = *(a1 + 16);
  v79 = v6;
  v7 = type metadata accessor for ViewLeafView(255, v78, v6, a4);
  v10 = type metadata accessor for UncheckedSendable(0, v7, v8, v9);
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v68[-v11];
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68[-v17];
  v19 = ++static DisplayList.Version.lastValue;
  Value = AGGraphGetValue();
  v22 = v21;
  v75 = v12;
  v24 = *(v12 + 16);
  v23 = v12 + 16;
  v25 = v18;
  v80 = v24;
  v24(v18, Value, v7);
  if (v22)
  {
    v26 = (2 * ((33 * (v19 >> 16)) ^ v19)) | 1;
    if (!v19)
    {
      LOWORD(v26) = 0;
    }

    *(v5 + 16) = v26;
  }

  v74 = v19;
  type metadata accessor for CGPoint(0);
  v27 = AGGraphGetValue();
  v28 = *v27;
  v29 = v27[1];
  v30 = AGGraphGetValue();
  v31 = v28 - *v30;
  v32 = v29 - v30[1];
  v33 = v5[7];
  v34 = AGGraphGetValue();
  v36 = *v34;
  v35 = v34[1];
  v73 = v23;
  v80(v15, v25, v7);
  v37 = v81;
  UncheckedSendable.init(_:)(v15, v7, v81);
  closure #1 in PlatformViewDisplayList.updateValue()(v37, v78, v79);
  if ((v96[0] & 4) != 0)
  {
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v40 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v70 = v35;
    v71 = v31;
    v72 = v32;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if (v33 != v40)
    {
      v69 = v5[2];
      v45 = v5[4];
      v46 = *(v5 + 5);
      v47 = CurrentAttribute;
      InputValue = AGGraphGetInputValue();
      v49 = *(InputValue + 16);
      v92 = *InputValue;
      *&v93 = v49;
      *v96 = v47;
      *&v96[4] = v47;
      *&v96[12] = vrev64_s32(v46);
      *&v96[8] = v45;
      *&v96[20] = v69;
      *&v96[24] = v33;
      v41 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(-1, 0, v96);
      v42 = v50;
      v43 = v51;
      v44 = v52;
    }

    v53 = *(v5 + 1);
    *v96 = *v5;
    *&v96[16] = v53;
    LOWORD(v97) = *(v5 + 16);
    PlatformViewDisplayList.environment.getter(&v92);
    v54 = v92;
    if (*(&v92 + 1))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v54, &v88);

      v55 = v88;
    }

    else
    {
      v56 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v92);
      if (v56)
      {
        v55 = *(v56 + 72);
      }

      else
      {
        v55 = 0;
      }
    }

    if (v55)
    {
      v57 = v42;
    }

    else
    {
      v57 = v44;
    }

    if (v55)
    {
      v58 = v44;
    }

    else
    {
      v58 = v42;
    }

    v32 = v72 - v41;
    v59 = v42 + v44;
    v31 = v71 - v58;
    v36 = v36 + v59;
    v35 = v70 + v41 + v43;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = v25;
    v61 = *(AssociatedConformanceWitness + 96);
    v62 = swift_checkMetadataState();
    v61(v62, AssociatedConformanceWitness, v41, v58, v43, v57);
  }

  else
  {
    v38 = v25;
  }

  v63 = swift_allocObject();
  *(v63 + 40) = v7;
  *(v63 + 48) = &protocol witness table for ViewLeafView<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v63 + 16));
  v80(boxed_opaque_existential_1, v38, v7);
  v65 = *(v5 + 16);
  v66 = *v5;
  *&v88 = v31;
  *(&v88 + 1) = v32;
  *&v89 = v36;
  *(&v89 + 1) = v35;
  *&v91[1] = 0;
  *(&v90 + 1) = v63 | 0x8000000000000000;
  v91[0] = v65;
  DWORD2(v91[1]) = v66;
  *&v90 = v74;
  v96[0] = 0;
  DisplayList.Item.canonicalize(options:)(v96);
  v94 = v90;
  v95[0] = v91[0];
  *(v95 + 12) = *(v91 + 12);
  v92 = v88;
  v93 = v89;
  v97 = v90;
  v98[0] = v91[0];
  *(v98 + 12) = *(v91 + 12);
  *v96 = v88;
  *&v96[16] = v89;
  outlined init with copy of DisplayList.Item(&v92, &v85);
  DisplayList.init(_:)(v96, &v85);
  v82 = v85;
  v83 = v86;
  v84 = v87;
  AGGraphSetOutputValue();
  v97 = v90;
  v98[0] = v91[0];
  *(v98 + 12) = *(v91 + 12);
  *v96 = v88;
  *&v96[16] = v89;
  outlined destroy of DisplayList.Item(v96);

  (*(v75 + 8))(v38, v7);
  return (*(v76 + 8))(v81, v77);
}

uint64_t sub_18D161988()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t closure #1 in PlatformViewDisplayList.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v12 - v7;
  v10 = type metadata accessor for ViewLeafView(0, a2, a3, v9);
  ViewLeafView.representedViewProvider.getter(v10);
  (*(a3 + 144))(v8, a2, a3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewLeafView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10 | *(v6 + 80) & 0xF8;
  if (v11 <= 7 && ((*(v6 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((-9 - (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10)) | v10) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v16 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = a2 + v7 + 7;
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
    *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);
    v19 = *(v9 + 16);
    swift_unknownObjectRetain();
    v19(v16 + 1, v18, v15);
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + (((v11 | 7) + 16) & ~(v11 | 7)));
  }

  return a1;
}

uint64_t ViewLeafView.updatePlatformView(_:)(void *a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *(v2 + *(a2 + 36));

  return swift_unknownObjectRetain();
}

void *CoreViewSetOpacity(void *result, void *a2, double a3)
{
  if (result)
  {
    if (result == 1)
    {
      return [a2 setAlpha:a3];
    }
  }

  else
  {
    *&a3 = a3;
    return [a2 setOpacity:a3];
  }

  return result;
}

void DisplayList.ViewUpdater.Platform.setFilters(_:of:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = _CAFilterArrayCreate();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    for (i = (a1 + (v7 << 7) - 96); ; i -= 8)
    {
      v10 = i[5];
      v11 = i[3];
      v29 = i[4];
      v30 = v10;
      v12 = i[5];
      v31[0] = i[6];
      *(v31 + 12) = *(i + 108);
      v13 = i[1];
      v26[0] = *i;
      v26[1] = v13;
      v14 = i[3];
      v16 = *i;
      v15 = i[1];
      v27 = i[2];
      v28 = v14;
      v23 = v29;
      v24 = v12;
      v25[0] = i[6];
      *(v25 + 12) = *(i + 108);
      v19 = v16;
      v20 = v15;
      v21 = v27;
      v22 = v11;
      outlined init with copy of GraphicsFilter(v26, &v18);
      v17 = GraphicsFilter.makeCAFilter()();
      v32[4] = v23;
      v32[5] = v24;
      v33[0] = v25[0];
      *(v33 + 12) = *(v25 + 12);
      v32[0] = v19;
      v32[1] = v20;
      v32[2] = v21;
      v32[3] = v22;
      outlined destroy of GraphicsFilter(v32);
      if (v17)
      {
        _CAFilterArrayAppend(v6, v17);
      }

      if (!v8)
      {
        break;
      }

      --v8;
    }
  }

  CoreViewSetFilters((v5 & 3), a2, v6);
}

uint64_t static GlassEffectModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v84 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v80 = a2[2];
  v81 = v8;
  v82 = a2[4];
  v83 = *(a2 + 20);
  v9 = a2[1];
  v78 = *a2;
  v79 = v9;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v11 = AGGraphCreateOffsetAttribute2();

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v81))
  {
    *&v72 = __PAIR64__(v11, OffsetAttribute2);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEffectContainerModifier.Init and conformance GlassEffectContainerModifier.Init();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v62 = v80;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v60 = v78;
    v61 = v79;
    v14 = v80;
    LODWORD(v62) = 0;
    LODWORD(v42) = v12;
    v66 = v78;
    v67 = v79;
    v71 = v83;
    v69 = v81;
    v70 = v82;
    v68 = v62;
    v56 = v62;
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v54 = v78;
    v55 = v79;
    outlined init with copy of _ViewInputs(&v78, &v72);
    outlined init with copy of _ViewInputs(&v66, &v72);
    static GlassEffectContainerModifier._makeView(modifier:inputs:body:)(&v54, a3, &v48);
    v74 = v56;
    v75 = v57;
    v76 = v58;
    v77 = v59;
    v72 = v54;
    v73 = v55;
    outlined destroy of _ViewInputs(&v72);
    LODWORD(v62) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v48, &v60);
      AGSubgraphEndTreeElement();
    }

    v56 = v62;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v54 = v60;
    v55 = v61;
    result = outlined destroy of _ViewInputs(&v54);
    v17 = *(&v48 + 1);
    v16 = v48;
LABEL_21:
    *a5 = v16;
    a5[1] = v17;
    return result;
  }

  v30 = a5;
  *&v72 = __PAIR64__(v11, OffsetAttribute2);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectLocalModifier.Init and conformance GlassEffectLocalModifier.Init();
  v18 = Attribute.init<A>(body:value:flags:update:)();
  v19 = AGSubgraphShouldRecordTree();
  if (v19)
  {
    AGSubgraphBeginTreeElement();
  }

  v62 = v80;
  v63 = v81;
  v64 = v82;
  v65 = v83;
  v60 = v78;
  v61 = v79;
  v28 = v80;
  LODWORD(v62) = 0;
  v66 = v78;
  v67 = v79;
  v71 = v83;
  v69 = v81;
  v70 = v82;
  v68 = v62;
  outlined init with copy of _ViewInputs(&v78, &v72);
  outlined init with copy of _ViewInputs(&v66, &v72);
  static DynamicPropertyCache.fields(of:)(&type metadata for GlassEffectLocalModifier, &v72);
  v20 = v72;
  v21 = v73;
  v22 = DWORD1(v73);
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v59 = v71;
  v54 = v66;
  v55 = v67;
  if (AGTypeGetKind() - 2 <= 3)
  {
    outlined init with copy of _ViewInputs(&v66, &v72);
    LOBYTE(v72) = v21;
    v29 = v18;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v54, v20, *(&v20 + 1), v21 | (v22 << 32), v18, &v72);
    v23 = v72;
    v26 = v73;
    v27 = *(&v72 + 1);
    v24 = BYTE8(v73);
    _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(a3, a4, 0);
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v48 = v54;
    v49 = v55;
    if (v19)
    {
      type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
      outlined init with copy of _ViewInputs(&v48, &v72);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v48, &v72);
    }

    v44 = v50;
    v45 = v51;
    v46 = v52;
    v47 = v53;
    v42 = v48;
    v43 = v49;
    v25 = v50;
    LODWORD(v44) = 0;
    v77 = v53;
    v75 = v51;
    v76 = v52;
    v72 = v48;
    v73 = v49;
    v74 = v44;
    outlined init with copy of _ViewInputs(&v48, v40);
    outlined init with copy of _ViewInputs(&v72, v40);
    _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA21_GlassEffectContainerVyAA15ModifiedContentVyAA01_c9Modifier_O0VyAA0kl5LocalP008_3DF70D9S23D7473F4D189A049B764CFEFLLVGAA0klmP0AULLVGG_Tt2B5(v23, &v72, v31);
    outlined destroy of _ViewInputs(&v72);
    LODWORD(v44) = v25;
    if (v19)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v31, &v42);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v48);
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v41 = v47;
    v40[0] = v42;
    v40[1] = v43;
    outlined destroy of _ViewInputs(v40);
    v16 = v31[0];
    v17 = v31[1];
    if (v24)
    {
      v36 = v56;
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v34 = v54;
      v35 = v55;
      outlined destroy of _ViewInputs(&v34);
      outlined consume of DynamicPropertyCache.Fields.Layout(v20, *(&v20 + 1), v21);
    }

    else
    {
      LOBYTE(v34) = v21;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(v29, v20, *(&v20 + 1), v21, v27, v26, &type metadata for GlassEffectLocalModifier, type metadata accessor for GlassEffectLocalModifier.Type);
      outlined consume of DynamicPropertyCache.Fields.Layout(v20, *(&v20 + 1), v21);
      v36 = v56;
      v37 = v57;
      v38 = v58;
      v39 = v59;
      v34 = v54;
      v35 = v55;
      outlined destroy of _ViewInputs(&v34);
    }

    outlined destroy of _ViewInputs(&v66);
    a5 = v30;
    v32 = v16;
    v33 = v17;
    LODWORD(v62) = v28;
    if (v19)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v32, &v60);
      AGSubgraphEndTreeElement();
      v16 = v32;
      v17 = v33;
    }

    v36 = v62;
    v37 = v63;
    v38 = v64;
    v39 = v65;
    v34 = v60;
    v35 = v61;
    result = outlined destroy of _ViewInputs(&v34);
    goto LABEL_21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v93 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v89 = *(a2 + 32);
  v90 = v7;
  v91 = *(a2 + 64);
  v92 = *(a2 + 80);
  v8 = *(a2 + 16);
  v87 = *a2;
  v88 = v8;
  v9 = v7;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v7) & 1) == 0)
  {
    v17 = *(a2 + 48);
    *&v83[32] = *(a2 + 32);
    v84 = v17;
    v85 = *(a2 + 64);
    v86 = *(a2 + 80);
    v18 = *(a2 + 16);
    *v83 = *a2;
    *&v83[16] = v18;
    return a3();
  }

  v57 = v9;
  v60 = a3;
  v56 = a4;
  AGGraphCreateOffsetAttribute2();
  v10 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v55 = *(v10 + 64);

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v62 = v87;
  v11 = v88;
  v54 = DWORD2(v88);
  swift_beginAccess();
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  v12 = MEMORY[0x1E698D398];
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, TintAdjustmentMode>, &type metadata for EnvironmentValues, &type metadata for TintAdjustmentMode, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<EnvironmentValues, TintAdjustmentMode> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>, &type metadata for EnvironmentValues, MEMORY[0x1E69E6370], v12);
  lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemGlass and conformance GlassEffectItemGlass();
  v13 = Attribute.init<A>(body:value:flags:update:)();
  memset(&v83[8], 0, 40);
  v52 = AGGraphCreateOffsetAttribute2();
  *v83 = __PAIR64__(DWORD2(v91), v52);
  v84 = 0u;
  v85 = 0u;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemRadii and conformance GlassEffectItemRadii();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of GlassEffectItemRadii(v83);
  v64 = v11;
  v14 = *(v11 + 16);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v62, *v83);
  if (v15)
  {
    v16 = *(v15 + 72);
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for PropertyList.Tracker();
  v20 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = MEMORY[0x1E69E7CC8];
  *(v21 + 24) = 0;
  *(v21 + 32) = v22;
  v23 = MEMORY[0x1E69E7CC0];
  *(v21 + 40) = v22;
  *(v21 + 48) = v23;
  *(v21 + 56) = 0;
  *(v20 + 16) = v21;
  v53 = v13;
  *v83 = v13;
  *&v83[4] = v14;
  v83[8] = v16;
  *&v83[16] = v20;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectItemMaterial and conformance GlassEffectItemMaterial();
  v24 = Attribute.init<A>(body:value:flags:update:)();

  *&v83[32] = v89;
  v84 = v90;
  v85 = v91;
  v86 = v92;
  *v83 = v87;
  *&v83[16] = v88;
  v25 = v90;
  *&v75[0] = v90;
  v26 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v87, &v77);

  v27 = *(v25 + 16);
  if (v26 != v27)
  {
    if (v26 >= v27)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (*(v25 + 16 * v26 + 32) == &type metadata for GlassContainer.Item.Key)
    {
      specialized Array.remove(at:)(v26);
      v25 = v84;
    }
  }

  *&v77 = v25;
  v28 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v29 = *(v25 + 16);
  if (v28 == v29)
  {
    goto LABEL_14;
  }

  if (v28 >= v29)
  {
LABEL_27:
    __break(1u);
  }

  if (*(v25 + 16 * v28 + 32) == &type metadata for GlassContainer.DataStorage.Key)
  {
    specialized Array.remove(at:)(v28);
  }

LABEL_14:
  v79 = v89;
  v80 = v90;
  v81 = v91;
  v82 = v92;
  v77 = v87;
  v78 = v88;
  swift_beginAccess();
  v30 = CachedEnvironment.animatedPosition(for:)(&v77);
  swift_endAccess();
  *&v77 = __PAIR64__(HIDWORD(v90), v30);
  v50 = HIDWORD(v90);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
  HIDWORD(v84) = Attribute.init<A>(body:value:flags:update:)();
  v31 = *&v83[32];
  *&v83[32] |= 4u;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v32 = *(swift_dynamicCastClassUnconditional() + 248);

  *&v83[32] = v31 | 0xC;
  LODWORD(v85) = v32;
  DWORD1(v85) = v32;
  *&v77 = __PAIR64__(*(v64 + 16), v24);
  DWORD2(v77) = OffsetAttribute2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectEnvironment and conformance GlassEffectEnvironment();
  v33 = Attribute.init<A>(body:value:flags:update:)();
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(v23);
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v23;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 256;
  *(v35 + 88) = v34;

  *&v83[16] = v35;
  if ((v31 & 0x20) == 0)
  {
    *&v83[32] = v31 | 0x2C;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v62, &v77);
  Strong = swift_weakLoadStrong();
  outlined destroy of WeakBox<GlassContainerCache>(&v77);
  if (Strong)
  {
    if (one-time initialization token for glassEffectBackdropObserver != -1)
    {
      swift_once();
    }

    v37 = static CachedEnvironment.ID.glassEffectBackdropObserver;
    swift_beginAccess();
    v38 = specialized CachedEnvironment.attribute<A>(id:_:)(v37, specialized implicit closure #1 in _GraphInputs.glassEffectBackdropObserver.getter, 0);
    swift_endAccess();
    type metadata accessor for GlassMaterialContext();
    v39 = swift_allocObject();
    *(v39 + 32) = xmmword_18DD85550;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    *(v39 + 16) = *(Strong + 120);
    v79 = v89;
    v80 = v90;
    v81 = v91;
    v82 = v92;
    v77 = v87;
    v78 = v88;

    _ViewInputs.materialSubstrate.getter(v75);
    *(v39 + 24) = v75[0];
    v40 = *(Strong + 120);
    LODWORD(v77) = v38;
    *(&v77 + 1) = v39;
    v78 = v40;
    LODWORD(v79) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

    v41 = Attribute.init<A>(body:value:flags:update:)();

    _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)(v41, v24, v55);
  }

  v75[2] = *&v83[32];
  v75[3] = v84;
  v75[4] = v85;
  v76 = v86;
  v75[0] = *v83;
  v75[1] = *&v83[16];
  v71 = *&v83[32];
  v72 = v84;
  v73 = v85;
  v74 = v86;
  v69 = *v83;
  v70 = *&v83[16];
  v42 = outlined init with copy of _ViewInputs(v75, &v77);
  (v60)(&v67, v42, &v69);
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v77 = v69;
  v78 = v70;
  outlined destroy of _ViewInputs(&v77);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v57) & 1) == 0)
  {
    goto LABEL_25;
  }

  v63 = HIDWORD(v68);
  v61 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v67);
  DWORD2(v69) = 0;
  *&v69 = v54;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectItemID and conformance GlassEffectItemID();
  v59 = Attribute.init<A>(body:value:flags:update:)();
  *&v69 = __PAIR64__(OffsetAttribute2, v59);
  *(&v69 + 1) = __PAIR64__(v51, v53);
  LODWORD(v70) = v52;
  *(&v70 + 4) = v24;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type GlassEffectItemInit and conformance GlassEffectItemInit();
  v66 = Attribute.init<A>(body:value:flags:update:)();
  v43 = v91;
  *&v69 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v43);
  DWORD2(v69) = v50;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGMaTm_0(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
  lazy protocol witness table accessor for type GlassEffectAnchor and conformance GlassEffectAnchor();
  v58 = Attribute.init<A>(body:value:flags:update:)();
  v71 = v89;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v69 = v87;
  v70 = v88;
  swift_beginAccess();
  v44 = CachedEnvironment.animatedPosition(for:)(&v69);
  v71 = v89;
  v72 = v90;
  v73 = v91;
  v74 = v92;
  v69 = v87;
  v70 = v88;
  v45 = CachedEnvironment.animatedCGSize(for:)(&v69);
  swift_endAccess();
  *&v69 = __PAIR64__(v45, v44);
  DWORD2(v69) = v50;
  v46 = Attribute.init<A>(body:value:flags:update:)();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v47 = result;
    v48 = *MEMORY[0x1E698D3F8];
    if ((v61 & 0x100000000) == 0)
    {
      v48 = v61;
    }

    *&v69 = __PAIR64__(v58, v59);
    *(&v69 + 1) = __PAIR64__(v48, v46);
    LODWORD(v70) = v63;
    *(&v70 + 1) = result;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type GlassEffectDataInit and conformance GlassEffectDataInit();
    v49 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v69) = 0;
    PreferencesOutputs.subscript.setter(v66, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    LOBYTE(v69) = 0;
    PreferencesOutputs.subscript.setter(v49, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
    LOBYTE(v69) = 1;
    PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
LABEL_25:
    v71 = *&v83[32];
    v72 = v84;
    v73 = v85;
    v74 = v86;
    v69 = *v83;
    v70 = *&v83[16];
    result = outlined destroy of _ViewInputs(&v69);
    *v56 = v67;
    v56[1] = v68;
    return result;
  }

  __break(1u);
  return result;
}

void sub_18D163320(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.effectiveTintAdjustmentMode.getter(&v3);
  *a2 = v3;
}

void lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform()
{
  if (!lazy protocol witness table cache variable for type ResetPositionTransform and conformance ResetPositionTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResetPositionTransform, &type metadata for ResetPositionTransform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResetPositionTransform and conformance ResetPositionTransform);
  }
}

void lazy protocol witness table accessor for type GlassEffectEnvironment and conformance GlassEffectEnvironment()
{
  if (!lazy protocol witness table cache variable for type GlassEffectEnvironment and conformance GlassEffectEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectEnvironment, &unk_1F0057E78, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectEnvironment and conformance GlassEffectEnvironment);
  }
}

void mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v8);
    v10 = type metadata accessor for DynamicLayoutComputer(0, a4, a5, v9);
    MEMORY[0x1EEE9AC00](v10);
    AGGraphMutateAttribute();
  }
}

unint64_t static GlassEffectGroupModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t *a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v6;
  v21[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v23[0] = *(a2 + 56);
  *(v23 + 12) = *(a2 + 68);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = OffsetAttribute2;
  v22 = v7;
  a3(OffsetAttribute2, v21);
  v19 = 0;
  v20 = 1;
  *&v21[0] = v7;
  result = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v11 = *(v7 + 16);
  if (result != v11)
  {
    if (result >= v11)
    {
      __break(1u);
    }

    if (*(v7 + 16 * result + 32) == &type metadata for GlassContainer.Item.Key)
    {
      v12 = specialized getter of itemTransform #1 in static GlassEffectGroupModifier._makeView(modifier:inputs:body:)(&v19, v9);
      v13 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(*a4);
      v14 = *MEMORY[0x1E698D3F8];
      if ((v13 & 0x100000000) == 0)
      {
        v14 = v13;
      }

      *&v21[0] = __PAIR64__(v14, v12);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [GlassContainer.Item]();
      type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(0, v15, v16, v17);
      lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
      v18 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v21[0]) = 0;
      return PreferencesOutputs.subscript.setter(v18, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    }
  }

  return result;
}

double static GlassEffectIDModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v22 = *a2;
  v23 = v5;
  v24 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  v27 = *(a2 + 60);
  v28 = *(a2 + 76);
  v25 = v6;
  v26 = v7;
  a3(&v20);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA14GlassContainerO4ItemV0I0V_TtB5Tf4dn_n(v6))
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v9 = AGGraphCreateOffsetAttribute2();
    LODWORD(v22) = OffsetAttribute2;
    *(&v22 + 4) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for (_:)();
    lazy protocol witness table accessor for type ItemIDTransform and conformance ItemIDTransform();
    v10 = Attribute.init<A>(body:value:flags:update:)();
    *&v22 = v6;
    v11 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
    v12 = *(v6 + 16);
    if (v11 != v12)
    {
      if (v11 >= v12)
      {
        __break(1u);
      }

      if (*(v6 + 16 * v11 + 32) == &type metadata for GlassContainer.Item.Key)
      {
        v13 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v20);
        v14 = *MEMORY[0x1E698D3F8];
        if ((v13 & 0x100000000) == 0)
        {
          v14 = v13;
        }

        *&v22 = __PAIR64__(v14, v10);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [String](0, &lazy cache variable for type metadata for [GlassContainer.Item], &type metadata for GlassContainer.Item, MEMORY[0x1E69E62F8]);
        type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(0, v15, v16, v17);
        lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
        v18 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v22) = 0;
        PreferencesOutputs.subscript.setter(v18, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
      }
    }
  }

  *a4 = v20;
  result = v21;
  a4[1] = v21;
  return result;
}

void type metadata accessor for AnchorValueBox<UnitRect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type ItemIDTransform and conformance ItemIDTransform()
{
  if (!lazy protocol witness table cache variable for type ItemIDTransform and conformance ItemIDTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for ItemIDTransform, &unk_1F00B8390, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ItemIDTransform and conformance ItemIDTransform);
  }
}

void lazy protocol witness table accessor for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform()
{
  if (!lazy protocol witness table cache variable for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectTransitionModifier.Transform, &unk_1F0063958, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectTransitionModifier.Transform and conformance GlassEffectTransitionModifier.Transform);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for DynamicStackOrientation);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA23DynamicStackOrientationV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v3 = &static DynamicStackOrientation.defaultValue;
  }

  return *v3;
}

unint64_t static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v19 = *a2;
  v20 = v6;
  v21 = a2[2];
  v7 = *(a2 + 6);
  v23[0] = *(a2 + 56);
  *(v23 + 12) = *(a2 + 68);
  v22 = v7;
  a3(a4);
  v17 = 0;
  v18 = 1;
  *&v19 = v7;
  result = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  v9 = *(v7 + 16);
  if (result != v9)
  {
    if (result >= v9)
    {
      __break(1u);
    }

    if (*(v7 + 16 * result + 32) == &type metadata for GlassContainer.Item.Key)
    {
      v10 = specialized getter of transform #1 in static GlassEffectTransitionModifier._makeView(modifier:inputs:body:)(&v17, v5);
      v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(*a4);
      v12 = *MEMORY[0x1E698D3F8];
      if ((v11 & 0x100000000) == 0)
      {
        v12 = v11;
      }

      *&v19 = __PAIR64__(v12, v10);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [GlassContainer.Item]();
      type metadata accessor for PreferenceTransform<GlassContainer.Item.Key>(0, v13, v14, v15);
      lazy protocol witness table accessor for type PreferenceTransform<GlassContainer.Item.Key> and conformance PreferenceTransform<A>();
      v16 = Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v19) = 0;
      return PreferencesOutputs.subscript.setter(v16, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    }
  }

  return result;
}

void lazy protocol witness table accessor for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform()
{
  if (!lazy protocol witness table cache variable for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectGroupModifier.ItemTransform, &unk_1F0088D28, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform);
  }
}

void storeEnumTagSinglePayload for StatefulMaterialProviderBox.Cache(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v12 = 0;
    v13 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = a3 - v8 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v9) = 0;
      }

      else if (v12)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v16 = *(v7 + 56);

      v16(a1, a2);
      return;
    }
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v8 + a2;
    bzero(a1, v9);
    *a1 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t type metadata completion function for StatefulMaterialProviderBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    type metadata accessor for StatefulMaterialProviderBox.Cache(255, result, *(a1 + 208), v3);
    type metadata accessor for Optional();
    result = type metadata accessor for Mutex();
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for StatefulMaterialProviderBox.Cache(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *specialized AnimatableStatefulMaterialProviderBox.init(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - v2;
  (*(v4 + 16))(&v9 - v2, v1);
  return StatefulMaterialProviderBox.init(_:)(v3, v5, v6, v7);
}

uint64_t *StatefulMaterialProviderBox.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 200);
  v8 = type metadata accessor for StatefulMaterialProviderBox.Cache(255, v7, *(*v4 + 208), a4);
  v9 = type metadata accessor for Optional();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = (v4 + *(v6 + 224));
  (*(*(v8 - 8) + 56))(&v17 - v11, 1, 1, v8, v10);
  *v13 = 0;
  v14 = *(type metadata accessor for Mutex() + 28);
  v15 = type metadata accessor for _Cell();
  bzero(v13 + v14, *(*(v15 - 8) + 64));
  _sSpsRi_zrlE10initialize2toyxn_tF(v12, v13 + v14, v9);
  (*(*(v7 - 8) + 32))(v4 + *(*v4 + 216), a1, v7);
  return v4;
}

uint64_t Material.init<A>(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  a3(0);
  swift_allocObject();
  v9 = a4(a1);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v9;
  *(a5 + 8) = 1;
  *(a5 + 12) = 0;
  return result;
}

uint64_t sub_18D164440(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for StatefulMaterialProviderBox.Cache(255, *a1, a1[1], a4);
  type metadata accessor for Optional();
  return type metadata accessor for Mutex();
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>);
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _BlurEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t specialized static RendererEffect._makeView(modifier:inputs:body:)(unsigned int a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(unsigned int *, _OWORD *), uint64_t (*a6)(void, uint64_t, uint64_t (*)(void), uint64_t))
{
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48)) & 1) == 0)
  {
    return a3();
  }

  v15 = a1;
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v12;
  v16[2] = *(a2 + 32);
  outlined init with copy of _GraphInputs(v16, v14);
  a5(&v15, v16);
  outlined destroy of _GraphInputs(v16);
  return a6(v15, a2, a3, a4);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA11_BlurEffectV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect, &type metadata for _BlurEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_BlurEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect, &type metadata for _BlurEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_BlurEffect>, lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect, &type metadata for _BlurEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

uint64_t specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:)@<X0>(unsigned int a1@<W0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_CompositingGroupEffect>, &type metadata for _CompositingGroupEffect, &protocol witness table for _CompositingGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_CompositingGroupEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<HiddenForReuseEffect>, &type metadata for HiddenForReuseEffect, &protocol witness table for HiddenForReuseEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<HiddenForReuseEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlendModeEffect>, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerViewModifier>, &type metadata for _ForegroundLayerViewModifier, &protocol witness table for _ForegroundLayerViewModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerViewModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<CAFilterEffect>, &type metadata for CAFilterEffect, &protocol witness table for CAFilterEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<CAFilterEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendModeEffect>, &type metadata for GraphicsBlendModeEffect, &protocol witness table for GraphicsBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ForegroundLayerLevelViewModifier>, &type metadata for _ForegroundLayerLevelViewModifier, &protocol witness table for _ForegroundLayerLevelViewModifier, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ForegroundLayerLevelViewModifier> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_PremultipliedColorMatrixEffect>, &type metadata for _PremultipliedColorMatrixEffect, &protocol witness table for _PremultipliedColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_PremultipliedColorMatrixEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp2>, &type metadata for _BackdropGroupEffect_temp2, &protocol witness table for _BackdropGroupEffect_temp2, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp2> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<MayNotInsertCALayersEffect>, &type metadata for MayNotInsertCALayersEffect, &protocol witness table for MayNotInsertCALayersEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<MayNotInsertCALayersEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect_temp>, &type metadata for _BackdropGroupEffect_temp, &protocol witness table for _BackdropGroupEffect_temp, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect_temp> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ExtendedBlendModeEffect>, &type metadata for _ExtendedBlendModeEffect, &protocol witness table for _ExtendedBlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ExtendedBlendModeEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_LuminanceToAlphaEffect>, &type metadata for _LuminanceToAlphaEffect, &protocol witness table for _LuminanceToAlphaEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_LuminanceToAlphaEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect2>, &type metadata for _BackdropGroupEffect2, &protocol witness table for _BackdropGroupEffect2, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect2> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BackdropGroupEffect>, &type metadata for _BackdropGroupEffect, &protocol witness table for _BackdropGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BackdropGroupEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<LuminanceCurveEffect>, &type metadata for LuminanceCurveEffect, &protocol witness table for LuminanceCurveEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<LuminanceCurveEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_HueRotationEffect>, &type metadata for _HueRotationEffect, &protocol witness table for _HueRotationEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_HueRotationEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorMatrixEffect>, &type metadata for _ColorMatrixEffect, &protocol witness table for _ColorMatrixEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorMatrixEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ColorInvertEffect>, &type metadata for _ColorInvertEffect, &protocol witness table for _ColorInvertEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ColorInvertEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_SaturationEffect>, &type metadata for _SaturationEffect, &protocol witness table for _SaturationEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_SaturationEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BrightnessEffect>, &type metadata for _BrightnessEffect, &protocol witness table for _BrightnessEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BrightnessEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsBlendMode>, &type metadata for GraphicsBlendMode, &protocol witness table for GraphicsBlendMode, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsBlendMode> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GrayscaleEffect>, &type metadata for _GrayscaleEffect, &protocol witness table for _GrayscaleEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GrayscaleEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_ContrastEffect>, &type metadata for _ContrastEffect, &protocol witness table for _ContrastEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_ContrastEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v8;
  v9 = *(a2 + 17);
  v63 = *(a2 + 16);
  v10 = *(a2 + 1);
  v59 = *a2;
  v60 = v10;
  v41 = a2[9];
  v42 = *(a2 + 20);
  v11 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v11)
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 4);
    v14 = *(a2 + 1);
    v55 = *(a2 + 2);
    v56 = v12;
    v57 = v13;
    v58 = *(a2 + 20);
    v53 = *a2;
    v54 = v14;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v50);
    v9 = CachedEnvironment.animatedPosition(for:)(&v53);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v53);
  }

  v50[2] = v61;
  v50[3] = v62;
  v50[0] = v59;
  v50[1] = v60;
  *&v51 = __PAIR64__(v9, v63);
  *(&v51 + 1) = v41;
  v52 = v42;
  v46 = v61;
  v47 = v62;
  v48 = v51;
  v49 = v42;
  v44 = v59;
  v45 = v60;
  v15 = outlined init with copy of _ViewInputs(v50, &v53);
  a3(v40, v15, &v44);
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v58 = v49;
  v53 = v44;
  v54 = v45;
  outlined destroy of _ViewInputs(&v53);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v46 = v61;
    v47 = v62;
    v44 = v59;
    v45 = v60;
    *&v48 = __PAIR64__(v9, v63);
    *(&v48 + 1) = v41;
    v49 = v42;
    result = outlined destroy of _ViewInputs(&v44);
    *a4 = v40[0];
    a4[1] = v40[1];
    return result;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v21 = *(a2 + 1);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v23;
    v48 = *(a2 + 4);
    v49 = *(a2 + 20);
    v24 = *(a2 + 1);
    v44 = *a2;
    v45 = v24;
    v25 = CachedEnvironment.animatedSize(for:)(&v44);
    swift_endAccess();
    v26 = *(v18 + 16);
    v27 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v40[0]);
    if ((v27 & 0x100000000) == 0)
    {
      v19 = v27;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v28 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v17, v44);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v30 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v17, v44);
    if (v30)
    {
      v31 = *(v30 + 72);
    }

    else
    {
      v31 = 0;
    }

    v32 = *(a2 + 15);
    v33 = *(a2 + 17);
    v34 = *(a2 + 19);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<GraphicsFilter>, &type metadata for GraphicsFilter, &protocol witness table for GraphicsFilter, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<GraphicsFilter> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v44);
  result = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, result);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type _BlurEffect and conformance _BlurEffect()
{
  if (!lazy protocol witness table cache variable for type _BlurEffect and conformance _BlurEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BlurEffect, &type metadata for _BlurEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BlurEffect and conformance _BlurEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _BlurEffect and conformance _BlurEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _BlurEffect, &type metadata for _BlurEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _BlurEffect and conformance _BlurEffect);
  }
}

void type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    v3 = v2;
    lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_ScaleEffect> and conformance DefaultGeometryEffectProvider<A>();
    v6 = type metadata accessor for GeometryEffectDisplayList(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>>);
    }
  }
}

void lazy protocol witness table accessor for type DefaultGeometryEffectProvider<_ScaleEffect> and conformance DefaultGeometryEffectProvider<A>()
{
  if (!lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_ScaleEffect> and conformance DefaultGeometryEffectProvider<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for DefaultGeometryEffectProvider<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for DefaultGeometryEffectProvider);
    swift_getWitnessTable("8E\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DefaultGeometryEffectProvider<_ScaleEffect> and conformance DefaultGeometryEffectProvider<A>);
  }
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryEffectDisplayList<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for GeometryEffectDisplayList<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA06_ScaleD0VG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v74[1] = *(a2 + 16);
  v74[2] = v5;
  v74[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v7;
    v72 = *(a2 + 64);
    v73 = *(a2 + 80);
    v8 = *(a2 + 16);
    v68 = *a2;
    v69 = v8;
    return a3(a1, &v68);
  }

  LODWORD(v68) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12_ScaleEffectV_Tt1B5(&v68, v74);
  v10 = v68;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v66 = *a2;
  v67 = v12;
  v50 = *(a2 + 32);
  v64 = *(a2 + 36);
  v65 = *(a2 + 52);
  v54 = *(a2 + 76);
  v13 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v13;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v14 = *(a2 + 16);
  v68 = *a2;
  v69 = v14;
  outlined init with copy of _ViewInputs(a2, v61);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v68);
  v16 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v16;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v17 = *(a2 + 16);
  v68 = *a2;
  v69 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v19 = *(a2 + 60);
  v47 = v11;
  v48 = v10;
  *&v68 = __PAIR64__(v15, v10);
  *(&v68 + 1) = __PAIR64__(v19, v18);
  LODWORD(v69) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_ScaleEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v68 = __PAIR64__(v23, v22);
  DWORD2(v68) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v50 | 0x1C;
  v61[0] = v66;
  v61[1] = v67;
  *&v62[4] = v64;
  *&v62[20] = v65;
  *v62 = v50 | 0x1C;
  *&v62[28] = v20;
  *v63 = v21;
  *&v63[4] = v21;
  *&v63[8] = v26;
  *&v63[12] = v54;
  *v59 = *v62;
  *&v59[16] = *&v62[16];
  *v60 = *v63;
  *&v60[16] = HIDWORD(v54);
  v57 = v66;
  v58 = v67;
  v28 = outlined init with copy of _ViewInputs(v61, &v68);
  (a3)(v55, v28, &v57);
  v70 = *v59;
  v71 = *&v59[16];
  v72 = *v60;
  v73 = *&v60[16];
  v68 = v57;
  v69 = v58;
  outlined destroy of _ViewInputs(&v68);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v54;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = v20;
  v31 = ++lastIdentity;
  v51 = *&v74[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v33;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v57 = *a2;
    v58 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v57);
    v36 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v36;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v57 = *a2;
    v58 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v57);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v57);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v57 = __PAIR64__(v48, v31);
    *(&v57 + 1) = __PAIR64__(v38, v35);
    *&v58 = __PAIR64__(v43, v47);
    DWORD2(v58) = v40;
    BYTE12(v58) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>>(0);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<FlexStateModifier>> and conformance GeometryEffectDisplayList<A>(&lazy protocol witness table cache variable for type GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>> and conformance GeometryEffectDisplayList<A>, type metadata accessor for GeometryEffectDisplayList<DefaultGeometryEffectProvider<_ScaleEffect>>);
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v54;
    v20 = v53;
LABEL_17:
    v57 = v66;
    v58 = v67;
    *v59 = v27;
    *&v59[4] = v64;
    *&v59[20] = v65;
    *&v59[28] = v20;
    *v60 = v21;
    *&v60[4] = v21;
    *&v60[8] = v26;
    *&v60[12] = v30;
    result = outlined destroy of _ViewInputs(&v57);
    *a4 = v55[0];
    a4[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v74[0], &v57);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v31;
    v45 = Attribute<A>.subscript.modify(&v57, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v45)(&v57, 0, v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA12_ScaleEffectV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    memset(&v10[6], 0, 32);
    v11 = 1;
    v12 = 0;
    v13 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_ScaleEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect()
{
  if (!lazy protocol witness table cache variable for type _ScaleEffect and conformance _ScaleEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ScaleEffect, &type metadata for _ScaleEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ScaleEffect and conformance _ScaleEffect);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ScaleEffect and conformance _ScaleEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ScaleEffect, &type metadata for _ScaleEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ScaleEffect and conformance _ScaleEffect);
  }
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ScaleEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA07DefaultcdE0VyAA06_ScaleD0VG_Tt3B5(v4, v8, a3, a4);
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

void type metadata accessor for GeometryEffectTransform<_TransformEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type GeometryEffectTransform<_ScaleEffect> and conformance GeometryEffectTransform<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectTransform<_ScaleEffect> and conformance GeometryEffectTransform<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectTransform<_ScaleEffect>, lazy protocol witness table accessor for type _ScaleEffect and conformance _ScaleEffect, &type metadata for _ScaleEffect, type metadata accessor for GeometryEffectTransform);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectTransform<_ScaleEffect> and conformance GeometryEffectTransform<A>);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryEffectTransform<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for GeometryEffectTransform<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize()
{
  if (!lazy protocol witness table cache variable for type RoundedSize and conformance RoundedSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for RoundedSize, &type metadata for RoundedSize, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RoundedSize and conformance RoundedSize);
  }
}

void _Glass.Variant.Mix.from.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  outlined copy of _Glass.Variant.Role(v2, v3);
}

void _Glass.variant.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  outlined copy of _Glass.Variant.Role(v2, v3);
}

double outlined consume of _Glass?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined consume of _Glass.Variant.Role(a1, a2);
  }

  return result;
}

uint64_t specialized static _Glass.Variant.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v10 = *a1;
  v11 = v2;
  outlined copy of _Glass.Variant.Role(v10, v2);
  _Glass.Variant.ID.init(_:)(&v10, &v12);
  v8 = v12;
  v9 = v13;
  v10 = v3;
  v11 = v4;
  outlined copy of _Glass.Variant.Role(v3, v4);
  _Glass.Variant.ID.init(_:)(&v10, &v6);
  v10 = v6;
  LOBYTE(v11) = v7;
  LOBYTE(v3) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v8, &v10);
  outlined consume of _Glass.Variant.ID(v10, v11);
  outlined consume of _Glass.Variant.ID(v8, v9);
  return v3 & 1;
}

void _Glass.Variant.ID.init(_:)(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (v3 >> 30)
  {
    v4 = v3 | 0x40;
    if (v3 >> 30 != 1)
    {
      v4 = 0x80;
    }
  }

  else
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[6];
    v10 = a2;
    v11 = swift_allocObject();
    v14 = v5;
    v15 = v6;
    outlined copy of _Glass.Variant.Role(v5, v6);
    outlined copy of _Glass.Variant.Role(v7, v8);
    outlined copy of _Glass.Variant.Role(v5, v6);
    _Glass.Variant.ID.init(_:)(&v14, &v16);
    v12 = v17;
    *(v11 + 16) = v16;
    *(v11 + 24) = v12;
    v14 = v7;
    v15 = v8;
    outlined copy of _Glass.Variant.Role(v7, v8);
    _Glass.Variant.ID.init(_:)(&v14, &v16);
    v13 = v17;
    *(v11 + 32) = v16;
    *(v11 + 40) = v13;
    outlined consume of _Glass.Variant.Role(v5, v6);
    outlined consume of _Glass.Variant.Role(v7, v8);
    *(v11 + 48) = v9;
    outlined consume of _Glass.Variant.Role(v2, v3);
    a2 = v10;
    v4 = 0;
    v2 = v11;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
}

uint64_t sub_18D165CD0()
{
  outlined consume of _Glass.Variant.ID(*(v0 + 16), *(v0 + 24));
  outlined consume of _Glass.Variant.ID(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void outlined consume of _Glass.Variant.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    outlined consume of Material.ID(a1, a2 & 0x3F);
  }

  else if (!(a2 >> 6))
  {
  }
}

void outlined copy of _Glass.Variant.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    outlined copy of Material.ID(a1, a2 & 0x3F);
  }

  else if (!(a2 >> 6))
  {
  }
}

uint64_t getEnumTagSinglePayload for ContentOffsetAdjustmentReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized static _Glass.Variant.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!(v3 >> 6))
  {
    if (v5 < 0x40)
    {
      v7 = *(v2 + 48);
      v8 = *(v2 + 40);
      v9 = *(v2 + 32);
      v10 = *(v2 + 24);
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *(v4 + 32);
      v14 = *(v4 + 40);
      v15 = *(v4 + 48);
      v29 = *(v2 + 16);
      v30 = v10;
      v31 = v9;
      v32 = v8;
      v33 = v7;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      outlined copy of _Glass.Variant.ID(v4, v5);
      outlined copy of _Glass.Variant.ID(v2, v3);
      v6 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v29, &v24);
      goto LABEL_7;
    }

    goto LABEL_32;
  }

  if (v3 >> 6 != 1)
  {
    if (!(v2 | v3 ^ 0x80))
    {
      v20 = (v5 & 0xC0) == 0x80 && v4 == 0;
      if (!v20 || v5 != 128)
      {
        goto LABEL_32;
      }

      outlined consume of _Glass.Variant.ID(*a1, v3);
      v21 = 0;
      goto LABEL_36;
    }

    v17 = v5 & 0xC0;
    if (*(a1 + 8) != 128 || v2 != 1)
    {
      v22 = v17 == 128 && v4 == 2;
      if (!v22 || v5 != 128)
      {
        goto LABEL_32;
      }

      outlined consume of _Glass.Variant.ID(*a1, v3);
      v21 = 2;
LABEL_36:
      outlined consume of _Glass.Variant.ID(v21, 0x80u);
      v16 = 1;
      return v16 & 1;
    }

    v19 = v17 == 128 && v4 == 1;
    if (v19 && v5 == 128)
    {
      outlined consume of _Glass.Variant.ID(*a1, v3);
      v16 = 1;
      outlined consume of _Glass.Variant.ID(1, 0x80u);
      return v16 & 1;
    }

LABEL_32:
    outlined copy of _Glass.Variant.ID(*a2, *(a2 + 8));
    outlined copy of _Glass.Variant.ID(v2, v3);
    outlined consume of _Glass.Variant.ID(v2, v3);
    outlined consume of _Glass.Variant.ID(v4, v5);
    v16 = 0;
    return v16 & 1;
  }

  if ((v5 & 0xC0) != 0x40)
  {
    goto LABEL_32;
  }

  v29 = *a1;
  v30 = v3 & 0x3F;
  v24 = v4;
  v25 = v5 & 0x3F;
  outlined copy of _Glass.Variant.ID(v4, v5);
  outlined copy of _Glass.Variant.ID(v2, v3);
  v6 = specialized static Material.ID.== infix(_:_:)(&v29, &v24);
LABEL_7:
  v16 = v6;
  outlined consume of _Glass.Variant.ID(v2, v3);
  outlined consume of _Glass.Variant.ID(v4, v5);
  return v16 & 1;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_hasGlassEffect33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_hasGlassEffect33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_hasGlassEffect33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V15_hasGlassEffect33_3DF70D9D9D7473F4D189A049B764CFEFLLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for _Glass.Variant.Mix(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x3FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 1073741822);
  }

  if (((*(a1 + 8) & 0x3FFFFFFC | (*(a1 + 8) >> 30)) ^ 0x3FFFFFFFu) >= 0x3FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = (*(a1 + 8) & 0x3FFFFFFC | (*(a1 + 8) >> 30)) ^ 0x3FFFFFFF;
  }

  return (v3 + 1);
}

void GlassEffectEnvironment.value.getter(uint64_t *a3@<X8>)
{
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  v12 = *Value;
  v13 = v5;

  if (*AGGraphGetValue() == 1)
  {
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    v7 = AGGraphGetValue();
    v8 = v7[1];
    if (*(v7 + 8) != 0xFF)
    {
      v9 = *v7;
      swift_retain_n();
      outlined copy of Material?(v9, v8);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(&v12, 1);

      if (v5)
      {
        v10 = v12;
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K15_hasGlassEffect08_3DF70D9R23D7473F4D189A049B764CFEFLLVG_Ttg5(v6, v12);
      }

      else
      {

        v10 = v12;
      }

      outlined copy of Material?(v9, v8);

      outlined copy of Material?(v9, v8);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(&v12, v9, v8 & 0xFFFFFFFF000000FFLL);

      outlined consume of Material?(v9, v8);
      if (v5)
      {
        v6 = v12;
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v10, v12);
        outlined consume of Material?(v9, v8);
        outlined consume of Material?(v9, v8);
      }

      else
      {
        outlined consume of Material?(v9, v8);
        outlined consume of Material?(v9, v8);

        v6 = v12;
      }
    }
  }

  v11 = v13;
  *a3 = v6;
  a3[1] = v11;
}

void lazy protocol witness table accessor for type AnyShape and conformance AnyShape()
{
  if (!lazy protocol witness table cache variable for type AnyShape and conformance AnyShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyShape, &type metadata for AnyShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyShape and conformance AnyShape);
  }
}

{
  if (!lazy protocol witness table cache variable for type AnyShape and conformance AnyShape)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyShape, &type metadata for AnyShape, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyShape and conformance AnyShape);
  }
}

uint64_t AnyShape.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v16 - v12, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v14 = v16[1];
  }

  else
  {
    type metadata accessor for _AnyShapeBox(0, a2, a3, v13);
    (v11)(v8, a1, a2);
    v14 = _AnyShapeBox.__allocating_init(_:)(v8);
  }

  (*(v6 + 8))(a1, a2);
  return v14;
}

uint64_t FontBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 144) - 8) + 32))(v2 + *(*v2 + 160), a1);
  return v2;
}

uint64_t View._glassEffect<A>(_:in:isEnabled:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a3;
  v27 = a2;
  v29 = a7;
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v18 = *(v13 + 24);
  v17 = *(v13 + 32);
  v19 = *(v13 + 40);
  (*(v20 + 16))(v12, v10);
  outlined copy of _Glass.Variant.Role(v14, v15);

  v21 = AnyShape.init<A>(_:)(v12, a4, a6);
  v45[0] = v14;
  v45[1] = v15;
  v46 = v16;
  v47 = v18;
  v48 = v17;
  v49 = v19;
  v50 = v21;
  v22 = v26;
  v37 = v26;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = v28;
  v42 = v45;
  v43 = v27;
  v31 = v26;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v28;
  v24 = type metadata accessor for ModifiedContent(0, v26, &type metadata for GlassEffectModifier, v23);
  v44[0] = a5;
  v44[1] = &protocol witness table for GlassEffectModifier;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v24, v44);
  StaticIf<>.init(_:then:else:)(&type metadata for GlassEnabledPredicate, partial apply for closure #1 in View._glassEffect<A>(_:in:isEnabled:), v36, partial apply for closure #2 in View._glassEffect<A>(_:in:isEnabled:), v30, &type metadata for GlassEnabledPredicate, v24, v22);
  return outlined destroy of GlassEffectConfiguration(v45);
}

void outlined copy of _Glass.Variant.Role(uint64_t a1, unsigned int a2)
{
  if (a2 >> 30 == 1)
  {
    outlined copy of Material.ID(a1, a2);
  }

  else if (!(a2 >> 30))
  {
  }
}

void outlined consume of _Glass.Variant.Role(uint64_t a1, unsigned int a2)
{
  if (a2 >> 30 == 1)
  {
    outlined consume of Material.ID(a1, a2);
  }

  else if (!(a2 >> 30))
  {
  }
}

double destroy for Glass(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  return result;
}

uint64_t initializeWithCopy for GlassEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double outlined copy of _Glass?(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    outlined copy of _Glass.Variant.Role(a1, a2);
  }

  return result;
}

void _Glass.tintColor(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t initializeWithCopy for Glass(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAttributedString.Range.DecodingWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CodableAttributedString.Range.DecodingWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyEquatableBox(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  v12 = _AnyEquatableBox.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t _AnyEquatableBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect> and conformance EnvironmentPropertyKey<A>);
  }
}

void *assignWithCopy for _GlassEffectContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

uint64_t AnchorWriter.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v7 = type metadata accessor for _AnchorWritingModifier(0, a3, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in AnchorWriter.value.getter, v10, v7, AssociatedTypeWitness, a6);
}

uint64_t closure #1 in AnchorWriter.value.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *&v66 = a2;
  v63 = a7;
  v81 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for ObservationTracking._AccessList();
  v69 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v58 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v70 = &v58 - v29;
  v30 = *(a1 + 2);
  LODWORD(v79) = DWORD1(v66);
  *(&v79 + 4) = a3;
  v66 = *a1;
  v31 = Anchor.Source.prepare(geometry:)(&v79, v66);
  v73 = a4;
  v74 = a5;
  v75 = a6;
  v76 = v66;
  v77 = v30;
  v78 = v31;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v32 = static ObservationCenter._current;
  swift_beginAccess();
  v33 = pthread_getspecific(v32[2]);
  if (!v33)
  {
    v34 = swift_slowAlloc();
    pthread_setspecific(v32[2], v34);
    v80 = type metadata accessor for ObservationCenter();
    v32 = v32[3];
    *&v79 = v32;
    outlined init with take of Any(&v79, v34);

    v33 = v34;
  }

  outlined init with copy of Any(v33, &v79);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v35 = v71;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v37 = v69;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    *(v35 + 24) = v32;
    goto LABEL_9;
  }

  v38 = v20;
  v59 = CurrentAttribute;
  *&v66 = v31;
  swift_beginAccess();
  v61 = *(v35 + 24);
  *(v35 + 24) = MEMORY[0x1E69E7CC0];
  v39 = (*(v37 + 56))(v23, 1, 1, v12);
  MEMORY[0x1EEE9AC00](v39);
  v40 = AssociatedTypeWitness;
  *(&v58 - 4) = AssociatedTypeWitness;
  *(&v58 - 3) = partial apply for closure #1 in closure #1 in AnchorWriter.value.getter;
  *(&v58 - 2) = &v72;
  v41 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v62, v41, v40, MEMORY[0x1E69E7288], &v71);
  a3 = *(v64 + 32);
  a3(v70, v27, v40);
  v42 = v67;
  outlined init with take of ObservationTracking._AccessList?(v23, v67);
  outlined init with copy of ObservationTracking._AccessList?(v42, v38);
  if ((*(v37 + 48))(v38, 1, v12) == 1)
  {
    v27 = v12;
    outlined destroy of ObservationTracking._AccessList?(v42);
    v43 = v38;
    goto LABEL_12;
  }

  v20 = v58;
  v64 = *(v37 + 32);
  (v64)(v58, v38, v12);
  v27 = v12;
  (*(v37 + 16))(v65, v20, v12);
  v32 = *(v35 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 24) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v46 = v32[2];
  v45 = v32[3];
  if (v46 >= v45 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v32);
  }

  v32[2] = v46 + 1;
  v47 = v32 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v46;
  v37 = v69;
  (v64)(v47, v65, v27);
  *(v35 + 24) = v32;
  (*(v37 + 8))(v20, v27);
  v40 = AssociatedTypeWitness;
  v43 = v67;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v43);
  a3(v63, v70, v40);
  v48 = *(v35 + 24);
  v49 = *(v48 + 16);
  if (v49)
  {
    v51 = *(v37 + 16);
    v50 = v37 + 16;
    v69 = *(v35 + 24);
    v70 = v51;
    v52 = v48 + ((*(v50 + 64) + 32) & ~*(v50 + 64));
    v53 = *(v50 + 56);
    v54 = (v50 - 8);

    v55 = v59;
    v56 = v60;
    do
    {
      (v70)(v56, v52, v27);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*v54)(v56, v27);
      v52 += v53;
      --v49;
    }

    while (v49);
  }

  *(v35 + 24) = v61;
}

uint64_t Anchor.Source.prepare(geometry:)(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 2);

  v7 = *a1;
  v8 = v4;
  v5 = (*(*a2 + 88))(&v7);

  return v5;
}

uint64_t AnchorBox.prepare(geometry:)(uint64_t *a1)
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v7 = &v11 - v6;
  v8 = *(a1 + 2);
  type metadata accessor for AnchorValueBox(0, v4, v3, v9);
  v11 = *a1;
  v12 = v8;
  (*(v3 + 40))(&v11, v4, v3);
  swift_allocObject();
  return AnchorValueBox.init(_:)(v7);
}

void UnitRect.prepare(geometry:)(int *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  type metadata accessor for CGSize(0);
  v12 = *(a1 + 1);
  Value = AGGraphGetValue();
  v9 = Value[1];
  v10 = v4 * *Value;
  v11 = v6 * *Value;
  v13 = v3;
  v14 = v12;
  CGRect.prepare(geometry:)(&v13, v10, v5 * v9, v11, v7 * v9);
}

void protocol witness for AnchorProtocol.prepare(geometry:) in conformance UnitRect(int *a1@<X0>, void *a2@<X8>)
{
  UnitRect.prepare(geometry:)(a1);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t AnchorValueBox.init(_:)(uint64_t a1)
{
  v3 = *(*v1 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v3, a1, AssociatedTypeWitness);
  return v1;
}

uint64_t type metadata completion function for AnchorValueBox(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double one-time initialization function for root()
{
  qword_1ED532990 = 0;
  result = 0.0;
  static CoordinateSpace.root = 0u;
  unk_1ED532980 = 0u;
  byte_1ED532998 = 2;
  return result;
}

uint64_t AnchorValueBox.convert(to:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = v3;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 2);
  v16 = *(a1 + 1);
  v17 = v13;
  (*(v7 + 16))(&v16 - v8, v1 + *(v10 + 152), AssociatedTypeWitness);
  if (one-time initialization token for root != -1)
  {
    swift_once();
  }

  v18[0] = v11;
  v18[1] = v12;
  v19 = v16;
  v20 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&static CoordinateSpace.root, v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 48))(v9, v5, v4);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

double CGRect.prepare(geometry:)(unsigned int *a1, double a2, double a3, double a4, double a5)
{
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  if (one-time initialization token for root != -1)
  {
    swift_once();
  }

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v11 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = v10 - (*v12 - v8);
  v17.f64[0] = v6;
  v17.f64[1] = v7;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = v11 - (v14 - v9);
  CGRect.convert(to:transform:)(&static CoordinateSpace.root, &v17);

  return v22;
}

__n128 sub_18D168084@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t Anchor.convert(to:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return (*(*a2 + 96))(v4);
}

void closure #1 in ViewGraphHost.convertAnchor<A>(_:)(uint64_t a1, uint64_t a2)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8);
  *&v6[0] = *Value;
  *(&v6[0] + 1) = v4;
  v5 = *(Value + 32);
  v6[1] = *(Value + 16);
  v6[2] = v5;

  Anchor.convert(to:)(v6, a1);
}

uint64_t Layout.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v13 = *a2;
  v14 = v9;
  v15 = v10;
  v16 = v11;
  return (*(a4 + 32))(&v13, a3, a4);
}

double CoreViewRepresentableDynamicPropertyFields.init(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)(a1, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  return result;
}

double View._glassEffectID<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View._glassEffectID<A>(_:in:), v9, MEMORY[0x1E69E73E0], &type metadata for AnyHashable2, v7, v10);
  v10[1] = a2;
  View.modifier<A>(_:)();

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2g5(void *a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(a1, v6);
  if (v5)
  {
  }

  *a2 = v5;
}

void EnvironmentValues.materialBackdropProxy.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE021MaterialBackdropProxyF033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt2g5(v2, a1);
  }
}

uint64_t closure #1 in View._glassEffectID<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return AnyHashable2.init<A>(_:)(v7, a2, a3);
}

double View._glassEffectGroup<A>(id:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a6;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View._glassEffectGroup<A>(id:namespace:), v9, MEMORY[0x1E69E73E0], &type metadata for AnyHashable2, v7, v10);
  v10[1] = a2;
  v11 = 0;
  View.modifier<A>(_:)();

  return result;
}

uint64_t closure #1 in View._glassEffectGroup<A>(id:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return AnyHashable2.init<A>(_:)(v7, a2, a3);
}

uint64_t sub_18D168848(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t Layout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ZStackLayout(a1);
}

{
  return Layout.explicitAlignment(of:in:proposal:subviews:cache:)(a1);
}

{
  return sub_18D3B12D4(a1);
}

double LayoutSubview.place(at:anchor:proposal:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  v13 = *(v8 + 16);
  v24 = *v8;
  v25 = v13;
  v19 = v24;
  v20 = DWORD2(v24);
  v15 = a1;
  LOBYTE(v16) = a2 & 1;
  *&v17 = a3;
  BYTE8(v17) = a4 & 1;
  LayoutProxy.dimensions(in:)(&v15, v21);
  v15 = v21[0];
  v16 = v21[1];
  v17 = v22;
  v18 = v23;
  LayoutSubview.place(at:anchor:dimensions:)(&v15, a5, a6, a7, a8);

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance LayoutProxyCollection(void *result)
{
  if (*result >= *(*(v1 + 8) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t LayoutSubview.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 2);
  v11 = *v4;
  v12 = v5;
  v7 = a1;
  v8 = a2 & 1;
  v9 = a3;
  v10 = a4 & 1;
  return LayoutProxy.size(in:)(&v7);
}

uint64_t LayoutSubview.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = type metadata accessor for _LayoutTrait(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for _LayoutTrait<A>, v6);
  return LayoutProxy.subscript.getter(v6, v6, v7, x8_0);
}

uint64_t LayoutProxy.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = 0;
  if (*(v4 + 8) != *MEMORY[0x1E698D3F8])
  {
    type metadata accessor for ViewList();
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v25);
    v15 = v26;
    v16 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v16 + 56))(&v24, v15, v16);
    v13 = v24;
    v10 = __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v25[0] = v13;
  MEMORY[0x1EEE9AC00](v10);
  *(&v21 - 4) = a2;
  *(&v21 - 3) = a3;
  *(&v21 - 2) = a1;
  type metadata accessor for ViewTraitCollection?();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in LayoutProxy.subscript.getter, (&v21 - 6), MEMORY[0x1E69E73E0], AssociatedTypeWitness, v17, v12);

  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 48);
  if (v19(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v18 + 32))(v23, v12, AssociatedTypeWitness);
  }

  (*(a3 + 16))(a2, a3);
  result = (v19)(v12, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v22 + 8))(v12, v9);
  }

  return result;
}

void type metadata accessor for ViewTraitCollection?()
{
  if (!lazy cache variable for type metadata for ViewTraitCollection?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewTraitCollection?);
    }
  }
}

void type metadata accessor for AnimatablePair<CGFloat, CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v5[0] = MEMORY[0x1E69E7DE0];
    v5[1] = MEMORY[0x1E69E7DE0];
    v5[2] = v2;
    v5[3] = v2;
    v3 = type metadata accessor for AnimatablePair(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for AnimatablePair<CGFloat, CGFloat>);
    }
  }
}

uint64_t specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, uint64_t a2, unint64_t a3, Swift::UInt32 a4, int a5, uint64_t a6)
{
  v7 = v6;

  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  *v16 = a4;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(a6) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v7 + 32) = a6;
  *v7 = a1;
  *(v7 + 8) = a2;
  v15[0] = 1;
  v16[0] = 1;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 88) = 1;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 1;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 1;

  v13 = MEMORY[0x1E69E7CC0];
  *(v7 + 248) = 0;
  *(v7 + 256) = 0;
  *(v7 + 240) = v13;
  *(v7 + 264) = 0;
  *(v7 + 265) = *v15;
  *(v7 + 268) = *&v15[3];
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 289) = *v16;
  *(v7 + 292) = *&v16[3];
  *(v7 + 312) = 0;
  *(v7 + 296) = 0;
  *(v7 + 304) = 0;

  *(v7 + 320) = 0;
  return result;
}

uint64_t outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t GraphicsFilter.isIdentity.getter()
{
  v1 = v0[5];
  v16[4] = v0[4];
  v16[5] = v1;
  v17[0] = v0[6];
  *(v17 + 12) = *(v0 + 108);
  v2 = v0[1];
  v16[0] = *v0;
  v16[1] = v2;
  v3 = v0[3];
  v16[2] = v0[2];
  v16[3] = v3;
  v4 = _s7SwiftUI14GraphicsFilterOWOg(v16);
  v5 = 0;
  switch(v4)
  {
    case 0:
      v5 = *_s7SwiftUI14GraphicsFilterOWOj6_(v16) <= 0.0;
      break;
    case 1:
      v11 = _s7SwiftUI14GraphicsFilterOWOj6_(v16);
      if (*v11 <= 0.0)
      {
        v5 = 1;
      }

      else
      {
        v12 = vorrq_s8(vorrq_s8(vorrq_s8(*(v11 + 16), *(v11 + 48)), vorrq_s8(*(v11 + 32), *(v11 + 64))), vorrq_s8(*(v11 + 80), *(v11 + 96)));
        if (*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *(v11 + 112))
        {
          _ZF = 0;
        }

        else
        {
          _ZF = *(v11 + 120) == 0x80000000;
        }

        v5 = _ZF;
      }

      break;
    case 2:
    case 3:
    case 9:
    case 11:
    case 13:
      v5 = *_s7SwiftUI14GraphicsFilterOWOj6_(v16) == 0.0;
      break;
    case 6:
      _s7SwiftUI14GraphicsFilterOWOj6_(v16);
      v5 = _ColorMatrix.isIdentity.getter();
      break;
    case 7:
    case 8:
      _s7SwiftUI14GraphicsFilterOWOj6_(v16);
      __asm { FMOV            V1.4S, #1.0 }

      v5 = 0;
      break;
    case 10:
    case 12:
      v5 = *_s7SwiftUI14GraphicsFilterOWOj6_(v16) == 1.0;
      break;
    case 14:
      v10 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v16) + 20);
      goto LABEL_7;
    case 16:
      v10 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v16) + 16);
LABEL_7:
      v5 = v10 == 0.0;
      break;
    case 22:
      v14 = _s7SwiftUI14GraphicsFilterOWOj6_(v16);
      v5 = (*(**v14 + 96))();
      break;
    default:
      return v5 & 1;
  }

  return v5 & 1;
}

void *assignWithCopy for ZStack(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

uint64_t assignWithTake for ForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t (*KeyPath.makeGetFunction()())(uint64_t a1)
{
  v1 = *v0;
  v2 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v3)
  {

    return partial apply for closure #2 in KeyPath.makeGetFunction();
  }

  else
  {
    v5 = v2;
    v6 = swift_allocObject();
    v7 = (v1 + *MEMORY[0x1E69E77B0]);
    v6[2] = *v7;
    v6[3] = v7[1];
    v6[4] = v5;
    return partial apply for closure #1 in KeyPath.makeGetFunction();
  }
}

void closure #1 in ForEachState.update(view:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(_BYTE *, __n128), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v75 = a3;
  v76 = a8;
  v74 = a7;
  v78 = a4;
  v79 = a6;
  v72 = a2;
  v80 = a1;
  *&v73 = *a13;
  v18 = v73;
  v19 = *(v73 + 104);
  v77 = *(*(v19 + 8) + 8);
  v20 = *(v73 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v50 - v21;
  v22 = *(v73 + 88);
  v51 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v59 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v58 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - v28;
  v30 = *(v18 + 112);
  v64 = a13;
  v31 = *(v18 + 120);
  *&v32 = *(v73 + 96);
  *&v33 = v20;
  *(&v33 + 1) = v22;
  v73 = v33;
  *(&v32 + 1) = v19;
  v71 = v32;
  v84 = v33;
  v85 = v32;
  v86 = v30;
  v87 = v31;
  v54 = type metadata accessor for ForEachState.EditsBuilder(0, &v84);
  v34 = swift_projectBox();
  *v75 = 1;
  v84 = v73;
  v85 = v71;
  v86 = v30;
  v87 = v31;
  v35 = type metadata accessor for ForEachState.Item(0, &v84);
  MEMORY[0x193ABE750](&v84, a5, v78, v22, v35, v30);
  v83[0] = v84;
  *&v73 = v35;
  type metadata accessor for Optional();
  _ViewInputs.base.modify();

  LOBYTE(v84) = MEMORY[0x193ABF5D0](a5, v79, v22, v30) & 1;
  _ViewInputs.base.modify();
  v53 = v34;
  swift_beginAccess();
  v74 = v20;
  v36 = swift_getAssociatedTypeWitness();
  v75 = UnsafeBufferPointer.baseAddress.getter();
  if (!v75)
  {
    goto LABEL_20;
  }

  v37 = UnsafeBufferPointer.indices.getter();
  if (v37 != v38)
  {
    v39 = v37;
    v40 = v38;
    if (v38 < v37)
    {
      goto LABEL_19;
    }

    v67 = a17;
    v41 = a16;
    v56 = a15;
    v52 = a14;
    v63 = a12;
    *&v71 = v36;
    v72 = a9;
    v42 = *v64;
    v62 = *(*v64 + 232);
    v61 = *(v42 + 240);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v80 = a10;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v65 = a11;
    swift_beginAccess();
    v70 = (v69 + 2);
    *&v71 = v71 - 8;
    v60 = (v69 + 3);
    v55 = (v51 + 16);
    v57 = v40;
    v66 = a16;
    v68 = v69 + 1;
    v69 = (v51 + 8);
    do
    {
      if (v39 >= v40)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v76(&v75[*(*v71 + 72) * v39]);
      (*v70)(v81, v41, AssociatedTypeWitness);
      if (!*(v80 + 16) && !*(v65 + 16))
      {
        (*v68)(v81, AssociatedTypeWitness);
        (*v69)(v29, v22);
        return;
      }

      MEMORY[0x193ABE750](v82, v29, v78, v22, v73, v30);
      v47 = v82[0];
      if (v82[0] && (*(v63 + 16) = v39, v48 = *(*v47 + 192), swift_beginAccess(), (*v60)(v47 + v48, v81, AssociatedTypeWitness), swift_endAccess(), v49 = v64, *(v47 + *(*v47 + 208)) = *(v64 + v62), *(v47 + *(*v47 + 200)) = v39, *(v47 + *(*v47 + 216)) = *(v49 + v61), --*(v80 + 16), LOBYTE(v48) = *(v47 + *(*v47 + 240)), , (v48 & 1) == 0))
      {
        *(v52 + 16) = v39;
        if ((MEMORY[0x193ABF5D0](v29, v79, v22, v30) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if ((MEMORY[0x193ABF5D0](v29, v79, v22, v30) & 1) == 0)
      {
        swift_beginAccess();
        ForEachState.EditsBuilder.appendInsert(atOffset:)(v39, v54);
        swift_endAccess();
LABEL_15:
        (*v68)(v81, AssociatedTypeWitness);
        v41 = v66;
        v45 = v69;
        goto LABEL_6;
      }

      (*v55)(v59, v29, v22);
      swift_beginAccess();
      type metadata accessor for Set();
      v43 = v30;
      v44 = v58;
      Set.insert(_:)();
      swift_endAccess();
      v45 = v69;
      v46 = v44;
      v30 = v43;
      v40 = v57;
      (*v69)(v46, v22);
      (*v68)(v81, AssociatedTypeWitness);
      v41 = v66;
      --*(v65 + 16);
LABEL_6:
      ++v39;
      dispatch thunk of Collection.formIndex(after:)();
      (*v45)(v29, v22);
    }

    while (v40 != v39);
  }
}

uint64_t *assignWithCopy for LayoutGestureBox.Value(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyStyleContextType(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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