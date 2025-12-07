uint64_t static _LayoutRoot._makeView(root:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(a2 + 48);
  v18[2] = *(a2 + 32);
  v18[3] = v11;
  v18[4] = *(a2 + 64);
  v19 = *(a2 + 80);
  v12 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v12;
  v17[1] = v10;
  v13 = type metadata accessor for _LayoutRoot(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v13, v14, v15);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _LayoutRoot._makeView(root:inputs:body:), a5, v17);
  return (*(a6 + 88))(v17, v18, a3, a4, a5, a6);
}

uint64_t outlined init with copy of WeakBox<GlassContainerCache>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for GlassEffectBackdropObserver?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined destroy of HoverEffectContext?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for [LayoutDirection](0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t MergedElements.makeElements(from:inputs:indirectMap:body:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = *(a3 + 16);
  v62 = *a3;
  v63 = v10;
  v64 = *(a3 + 32);
  v11 = *(a3 + 48);
  v61[0] = *(a3 + 56);
  v12 = a10 >> 1;
  *(v61 + 12) = *(a3 + 68);
  if (a10 >> 1 == a9)
  {
    v13 = 1;
    v50 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v14 = *(v50 + 2);
    if (v14 == 1)
    {
      v27 = *(v50 + 4);
      v28 = *(v50 + 5);

      *a1 = v27;
      a1[1] = v28;
    }

    else if (v14)
    {
      v49 = v13;
      v29 = v11;
      *&v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
      v30 = v51;
      v31 = v50 + 40;
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        *&v51 = v30;
        v34 = *(v30 + 16);
        v35 = *(v30 + 24);

        if (v34 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v34 + 1, 1);
          v30 = v51;
        }

        v31 += 4;
        *(v30 + 16) = v34 + 1;
        v36 = v30 + 16 * v34;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        --v14;
      }

      while (v14);
      *&v51 = v30;
      *(&v51 + 1) = MEMORY[0x1E69E7CC0];
      *v52 = 0;
      v37 = *(v29 + 16);
      if (v37)
      {

        v38 = (v29 + 40);
        do
        {
          static PreferenceKey.visitKey<A>(_:)(&v51, *(v38 - 1), &type metadata for MultiPreferenceCombinerVisitor, *v38, &protocol witness table for MultiPreferenceCombinerVisitor);
          v38 += 2;
          --v37;
        }

        while (v37);
      }

      else
      {
      }

      v39 = MEMORY[0x1E698D3F8];
      v40 = *v52;
      v41 = *(&v51 + 1);

      v42 = v40 | (*v39 << 32);
      *a1 = v41;
      a1[1] = v42;

      v13 = v49;
    }

    else
    {

      *a1 = 0;
      a1[1] = 0;
    }

    return v13 & 1;
  }

  else
  {
    if (a9 <= v12)
    {
      v15 = a10 >> 1;
    }

    else
    {
      v15 = a9;
    }

    v16 = v15 - a9;
    v17 = a8 + 72 * a9;
    v18 = ~a9 + v12;
    v50 = MEMORY[0x1E69E7CC0];
    while (v16)
    {
      v19 = v18;
      outlined init with copy of _ViewListOutputs(v17, &v59);
      *&v52[9] = *(v60 + 9);
      v51 = v59;
      *v52 = v60[0];
      if (BYTE8(v60[1]))
      {
        goto LABEL_34;
      }

      outlined init with take of AnyTrackedValue(&v51, v56);
      v20 = v57;
      v21 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v51 = v62;
      *v52 = v63;
      *&v52[16] = v64;
      v53 = v11;
      v54[0] = v61[0];
      *(v54 + 12) = *(v61 + 12);
      v13 = (*(v21 + 16))(v55, a2, &v51, a4, a5, a6, v20, v21);
      v22 = v55[0];
      if (v55[0])
      {
        v23 = v55[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v25 = *(v50 + 2);
        v24 = *(v50 + 3);
        if (v25 >= v24 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v50);
        }

        *(v50 + 2) = v25 + 1;
        v26 = &v50[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = v23;
      }

      __swift_destroy_boxed_opaque_existential_1(v56);
      if (v13)
      {
        --v16;
        v17 += 72;
        v18 = v19 - 1;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    __break(1u);
LABEL_34:
    outlined destroy of _ViewListOutputs.Views(&v51);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout()
{
  if (!lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _FrameLayout, &type metadata for _FrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout)
  {
    swift_getWitnessTable("}v$b", &type metadata for _FrameLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _FrameLayout and conformance _FrameLayout);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5Tm(uint64_t a1, Swift::Int hashValue, uint64_t (*a3)(uint64_t))
{
  BloomFilter.init(hashValue:)(hashValue);
  result = a3(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void lazy protocol witness table accessor for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<_VStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _PaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryLayoutComputer<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for UnaryLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryLayoutComputer<_PaddingLayout> and conformance UnaryLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>()
{
  if (!lazy protocol witness table cache variable for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>)
  {
    type metadata accessor for UnaryLayoutComputer<IgnoresAutomaticPaddingLayout>(255, &lazy cache variable for type metadata for UnaryChildGeometry<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryChildGeometry);
    swift_getWitnessTable(protocol conformance descriptor for UnaryChildGeometry<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type UnaryChildGeometry<_PaddingLayout> and conformance UnaryChildGeometry<A>);
  }
}

void lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout()
{
  if (!lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _PaddingLayout, &type metadata for _PaddingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout);
  }
}

{
  if (!lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for _PaddingLayout, &type metadata for _PaddingLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _PaddingLayout and conformance _PaddingLayout);
  }
}

uint64_t specialized static PrimitiveSpacer._makeView(view:inputs:)@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  v20 = 0;
  v21 = v5;
  v6 = *a2;
  v7 = *(a2 + 9);
  if ((v7 & 2) != 0)
  {
    if ((v7 & 4) != 0)
    {
      v10 = (*(a2 + 9) & 8) == 0;
    }

    else
    {
      v9 = a1;
      v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA23DynamicStackOrientationV_Tt2g5(*a2);
      a1 = v9;
      v10 = 2;
    }

    LODWORD(v22) = a1;
    BYTE4(v22) = v10;
    DWORD2(v22) = v5;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>, &type metadata for Spacer, &protocol witness table for Spacer);
    lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(&lazy protocol witness table cache variable for type SpacerLayoutComputer<Spacer> and conformance SpacerLayoutComputer<A>, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>, &type metadata for Spacer, &protocol witness table for Spacer);
    v5 = Attribute.init<A>(body:value:flags:update:)();
    v8 = 128;
    v20 = 128;
    v21 = v5;
  }

  else
  {
    v8 = 0;
  }

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(v6);
  if (result)
  {
    v13 = result;
    v14 = v12;
    v15 = *(a2 + 3);
    v24 = *(a2 + 2);
    v25 = v15;
    v26 = *(a2 + 4);
    v27 = *(a2 + 20);
    v16 = *(a2 + 1);
    v22 = *a2;
    v23 = v16;
    result = (*(v12 + 8))(&v22, result, v12);
    if (result)
    {
      v17 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v17;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v18 = *(a2 + 1);
      v22 = *a2;
      v23 = v18;
      result = (*(v14 + 16))(&v22, &v19, v13, v14);
      v8 = v20;
      v5 = v21;
    }
  }

  *a3 = v19;
  *(a3 + 8) = v8;
  *(a3 + 12) = v5;
  return result;
}

void type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for SpacerLayoutComputer(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Spacer@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static PrimitiveSpacer._makeView(view:inputs:)(v3, v7, a3);
}

void lazy protocol witness table accessor for type SpacerLayoutComputer<ConditionalSpacer> and conformance SpacerLayoutComputer<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    type metadata accessor for SpacerLayoutComputer<ConditionalSpacer>(255, a2, a3, a4);
    swift_getWitnessTable(protocol conformance descriptor for SpacerLayoutComputer<A>, v5);
    atomic_store(v6, a1);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020SpacerRepresentationV033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE020SpacerRepresentationV033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.SpacerRepresentationKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance SpacerLayoutComputer<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for SpacerLayoutComputer<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for ForEachState(void *a1)
{
  v19 = &unk_18DE17D40;
  v20 = MEMORY[0x1E69E5CE0] + 64;
  v21 = &unk_18DE17D58;
  v22 = &unk_18DE17D58;
  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  type metadata accessor for ForEach(255, &v13);
  result = type metadata accessor for Optional();
  if (v8 <= 0x3F)
  {
    v23 = *(result - 8) + 64;
    v24 = "\b";
    v9 = MEMORY[0x1E69E5CE8] + 64;
    v25 = &unk_18DE17D70;
    v26 = MEMORY[0x1E69E5CE8] + 64;
    v10 = MEMORY[0x1E69E5D08] + 64;
    v27 = MEMORY[0x1E69E5D08] + 64;
    v28 = MEMORY[0x1E69E5CE8] + 64;
    v11 = a1[15];
    v13 = v2;
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v18 = v11;
    result = type metadata accessor for ForEachState.LazyEdits(319, &v13);
    if (v12 <= 0x3F)
    {
      v29 = *(result - 8) + 64;
      v30 = v10;
      v31 = v10;
      v32 = v10;
      v33 = MEMORY[0x1E69E5D00] + 64;
      v34 = &unk_18DE17D88;
      v35 = MEMORY[0x1E69E5D00] + 64;
      v36 = &unk_18DE17D88;
      v37 = v9;
      v38 = v9;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for ForEachState.LazyEdits(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  result = type metadata accessor for ForEachState.EditsBuilder(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    v6 = &unk_18DE17E68;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void type metadata accessor for _ViewListOutputs?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18D05DA3C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t protocol witness for UnaryViewGenerator.makeView(inputs:indirectMap:) in conformance BodyUnaryViewGenerator(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

void static ForEach<>._makeViewList(view:inputs:)(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v67 = *a1;
  static ForEach<>.makeForEachViewList(view:inputs:)(&v67, a2, a3, a4, a5, a6, a7, a8, &v69);
  if (BYTE8(v71) == 0xFF)
  {
    v59 = a9;
    outlined destroy of _ViewListOutputs?(&v69);
    *&v69 = a3;
    *(&v69 + 1) = a4;
    *&v70 = a5;
    *(&v70 + 1) = a6;
    *&v71 = a7;
    *(&v71 + 1) = a8;
    type metadata accessor for ForEachState(0, &v69);
    v18 = a7;
    outlined init with copy of _ViewListInputs(a2, &v69);
    v19 = swift_allocObject();
    v20 = ForEachState.init(inputs:)(&v69);
    v63 = &v57;
    v67 = v17;
    v68 = v19;
    MEMORY[0x1EEE9AC00](v20);
    *&v69 = a3;
    *(&v69 + 1) = a4;
    *&v70 = a5;
    *(&v70 + 1) = a6;
    *&v71 = v18;
    *(&v71 + 1) = a8;
    v21 = type metadata accessor for ForEachState.Info(0, &v69);
    v22 = a4;
    v23 = a2;
    v54[2] = v21;
    v60 = a3;
    *&v69 = a3;
    *(&v69 + 1) = v22;
    v64 = v22;
    *&v61 = a5;
    *&v70 = a5;
    *(&v70 + 1) = a6;
    *(&v61 + 1) = a6;
    *&v62 = v18;
    *&v71 = v18;
    *(&v71 + 1) = a8;
    *(&v62 + 1) = a8;
    v55 = type metadata accessor for ForEachState.Info.Init(0, &v69);
    swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.Info.Init, v55);
    v56 = v24;
    v25 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v67, partial apply for closure #1 in Attribute.init<A>(_:), v54, v55, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);

    v27 = v69;
    *(v19 + 160) = v69;
    *(v19 + 164) = 0;
    v63 = v23;
    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*v23);
    v29 = static WeakAttribute.== infix(_:_:)();
    if ((v29 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (one-time initialization token for evictByDefault != -1)
    {
      v29 = swift_once();
    }

    if (static ForEachEvictionInput.evictByDefault != 1)
    {
      v37 = *(&v62 + 1);
      v35 = *(&v61 + 1);
      v36 = v61;
      v34 = v60;
    }

    else
    {
LABEL_6:
      v30 = specialized static GraphHost.currentHost.getter();
      v58 = v27;
      v31 = v30;
      swift_beginAccess();
      v32 = *(v31 + 64);

      v57 = v54;
      v65[0] = v19;
      v65[1] = v28;
      v66 = v32;
      MEMORY[0x1EEE9AC00](v33);
      v34 = v60;
      *&v69 = v60;
      *(&v69 + 1) = v64;
      v35 = *(&v61 + 1);
      v36 = v61;
      v70 = v61;
      v37 = *(&v62 + 1);
      v71 = v62;
      v38 = type metadata accessor for ForEachState.Evictor(0, &v69);
      v54[-2] = v38;
      swift_getWitnessTable(protocol conformance descriptor for ForEachState<A, B, C>.Evictor, v38);
      v54[-1] = v39;
      type metadata accessor for _ViewListOutputs?(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      v41 = v40;

      v42 = v38;
      v27 = v58;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v65, closure #1 in Attribute.init<A>(_:)partial apply, &v54[-4], v42, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v43);

      v29 = AGGraphSetFlags();
    }

    v46 = v59;
    v64 = v54;
    v65[0] = v27;
    MEMORY[0x1EEE9AC00](v29);
    *&v69 = v34;
    *(&v69 + 1) = v47;
    *&v70 = v36;
    *(&v70 + 1) = v35;
    *&v71 = v48;
    *(&v71 + 1) = v37;
    v49 = type metadata accessor for ForEachList.Init(0, &v69);
    v54[-2] = v49;
    swift_getWitnessTable(protocol conformance descriptor for ForEachList<A, B, C>.Init, v49);
    v54[-1] = v50;
    type metadata accessor for Attribute<ViewList>(0);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v65, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15, &v54[-4], v49, MEMORY[0x1E69E73E0], v51, MEMORY[0x1E69E7410], v52);
    v53 = v69;
    *(v19 + 168) = v69;
    *(v19 + 172) = 0;

    *v46 = v53;
    *(v46 + 8) = 0;
    *(v46 + 40) = 1;
    *(v46 + 48) = v63[6];
    *(v46 + 56) = 0;
    *(v46 + 64) = 1;
  }

  else
  {
    v44 = v72;
    *(a9 + 32) = v71;
    *(a9 + 48) = v44;
    *(a9 + 64) = v73;
    v45 = v70;
    *a9 = v69;
    *(a9 + 16) = v45;
  }
}

double static ForEach<>.makeForEachViewList(view:inputs:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a2;
  v11 = *a1;
  v45 = *a1;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v12 = type metadata accessor for ForEach(255, &v40);
  type metadata accessor for _GraphValue(0, v12, v13, v14);
  v16 = type metadata accessor for ForEachSubviewCollection(255, a5, a8, v15);
  swift_getWitnessTable(protocol conformance descriptor for ForEachSubviewCollection<A>, v16);
  v18 = v17;
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  v40 = v16;
  v41 = &type metadata for Subview.ID;
  v42 = a5;
  v43 = v18;
  v44 = v19;
  v20 = type metadata accessor for ForEach(255, &v40);
  type metadata accessor for _GraphValue(0, v20, v21, v22);
  v23 = swift_dynamicCast();
  if (v23)
  {
    MEMORY[0x1EEE9AC00](v23);
    LODWORD(v40) = v25;
    v26 = partial apply for closure #1 in static ForEach<>.makeForEachViewList(view:inputs:);
  }

  else
  {
    v45 = v11;
    v27 = type metadata accessor for ForEachSectionCollection(255, a5, a8, v24);
    swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, v27, v38);
    v29 = v28;
    lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
    v40 = v27;
    v41 = &type metadata for SectionConfiguration.ID;
    v42 = a5;
    v43 = v29;
    v44 = v30;
    v31 = type metadata accessor for ForEach(255, &v40);
    type metadata accessor for _GraphValue(0, v31, v32, v33);
    v34 = swift_dynamicCast();
    if (!v34)
    {
      result = 0.0;
      *a9 = 0u;
      *(a9 + 16) = 0u;
      *(a9 + 32) = 0;
      *(a9 + 40) = 255;
      *(a9 + 48) = 0;
      *(a9 + 56) = 0;
      *(a9 + 64) = 0;
      return result;
    }

    MEMORY[0x1EEE9AC00](v34);
    LODWORD(v40) = v35;
    v26 = partial apply for closure #2 in static ForEach<>.makeForEachViewList(view:inputs:);
  }

  _GraphValue.subscript.getter(v26, &type metadata for AnyView, &v45);
  v36 = v45;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA03AnyD0V_Tt3B5(v36, v38, a9);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA03AnyD0V_Tt3B5(v36, v38, a9);
  }

  return result;
}

void lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID()
{
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for Subview.ID, &type metadata for Subview.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for Subview.ID, &type metadata for Subview.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Subview.ID and conformance Subview.ID);
  }
}

uint64_t closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:)(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of _ViewListInputs(a2, v24);
  v13 = *a2;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v13, v23);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v25 |= v15;
  MEMORY[0x1EEE9AC00](v14);
  LODWORD(v23) = a3;
  v16 = type metadata accessor for _VariadicView.Tree(255, a4, a5, *(a6 + 8));
  type metadata accessor for _GraphValue(0, v16, v17, v18);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static _VariadicView.Tree<>._makeViewList(view:inputs:), a5, &v22);
  v19 = v22;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v21 = v19;
  (*(a7 + 32))(&v21, v24, a5, a7);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v19, a5, a7);
  return outlined destroy of _ViewListInputs(v24);
}

void lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID()
{
  if (!lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionConfiguration.ID, &type metadata for SectionConfiguration.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionConfiguration.ID, &type metadata for SectionConfiguration.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionConfiguration.ID and conformance SectionConfiguration.ID);
  }
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for IsInGlassEffectContainer)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t outlined destroy of WeakBox<GlassContainerCache>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for GlassEffectBackdropObserver?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC14GlassContainerO8ItemDataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, &type metadata for ViewIdentity, &type metadata for GlassContainer.ItemData);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 48);
  *v18 = *(a1 + 32);
  *&v18[16] = v4;
  *&v18[32] = *(a1 + 64);
  v5 = *v18;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v18);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v18, v17, &lazy cache variable for type metadata for (ViewIdentity, GlassContainer.ItemData), &type metadata for ViewIdentity, &type metadata for GlassContainer.ItemData);
    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v5;
    v9 = v3[7] + 40 * result;
    v10 = *&v18[8];
    v11 = *&v18[24];
    *(v9 + 32) = *&v18[40];
    *v9 = v10;
    *(v9 + 16) = v11;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v18, v17, &lazy cache variable for type metadata for (ViewIdentity, GlassContainer.ItemData), &type metadata for ViewIdentity, &type metadata for GlassContainer.ItemData);
    v15 = v8[1];
    *v18 = *v8;
    *&v18[16] = v15;
    *&v18[32] = v8[2];
    v5 = *v18;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v18);
    v8 += 3;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for _GraphInputs.GlassContainerCacheKey)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.GlassContainerCacheKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE019GlassContainerCacheV033_7521D6231838360D8883796B4320212FLLV_Tt0B5(v4, v11[0]);
  if (!v5 || (outlined init with copy of WeakBox<GlassContainerCache>(v5 + 72, v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), v6 = AGCompareValues(), result = outlined destroy of WeakBox<GlassContainerCache>(v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox), !v6))
  {
    outlined init with copy of WeakBox<GlassContainerCache>(a2, v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.GlassContainerCacheKey>, &type metadata for _GraphInputs.GlassContainerCacheKey, &protocol witness table for _GraphInputs.GlassContainerCacheKey, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    outlined init with copy of WeakBox<GlassContainerCache>(v11, v9 + 72, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);

    value = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.GlassContainerCacheKey, 0, v8).value;
    outlined destroy of WeakBox<GlassContainerCache>(v11, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
    *a1 = value;
  }

  return result;
}

void *static GlassEffectContainerModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v111 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v107 = a2[2];
  v108 = v7;
  v9 = a2[3];
  v109 = a2[4];
  v10 = a2[1];
  v105 = *a2;
  v106 = v10;
  v102 = v9;
  v101 = v107;
  v103 = a2[4];
  v11 = *a1;
  v110 = *(a2 + 20);
  v104 = *(a2 + 20);
  v99 = v105;
  v100 = v8;
  v12 = v9;
  *&v91[0] = v9;
  v13 = &type metadata for GlassContainer.Item.Key;
  v14 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.Item.Key);
  outlined init with copy of _ViewInputs(&v105, &v93);

  v15 = *(v12 + 2);
  if (v14 == v15)
  {
    goto LABEL_4;
  }

  if (v14 >= v15)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*&v12[16 * v14 + 32] != &type metadata for GlassContainer.Item.Key)
  {
LABEL_4:
    if (v15 < v14)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 >= *(v12 + 3) >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15 + 1, 1, v12);
      *&v102 = v12;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v14, v14, 1, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
    *&v102 = v12;
  }

  *&v93 = v12;
  v13 = &type metadata for GlassContainer.DataStorage.Key;
  v17 = PreferenceKeys._index(of:)(&type metadata for GlassContainer.DataStorage.Key);

  v18 = *(v12 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_20;
    }

    if (*&v12[16 * v17 + 32] == &type metadata for GlassContainer.DataStorage.Key)
    {
      goto LABEL_17;
    }
  }

  if (v18 < v17)
  {
    goto LABEL_33;
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  if (!v19 || v18 >= *(v12 + 3) >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19, v18 + 1, 1, v12);
    *&v102 = v12;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);
  *&v102 = v12;
LABEL_17:
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24IsInGlassEffectContainerV_Tt2g5(&v99, 1);

  LODWORD(v93) = 2143289344;
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GlassEffectBackdropObserver();
  v20 = swift_allocObject();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_weakInit();

  *(v20 + 24) = 0;
  *(v20 + 24) = AGCreateWeakAttribute();
  v95 = v107;
  v96 = v108;
  v97 = v109;
  v98 = v110;
  v93 = v105;
  v94 = v106;
  type metadata accessor for GlassContainerCache();
  swift_allocObject();
  outlined init with copy of _ViewInputs(&v105, v91);

  v13 = GlassContainerCache.init(observer:inputs:)(v21, &v93);
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(v52, v51);

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v99, v51);

  outlined destroy of WeakBox<GlassContainerCache>(v52);

  outlined destroy of WeakBox<GlassContainerCache>(v51);
  v91[2] = v101;
  v91[3] = v102;
  v91[4] = v103;
  v92 = v104;
  v91[0] = v99;
  v91[1] = v100;
  v87 = v101;
  v88 = v102;
  v89 = v103;
  v90 = v104;
  v85 = v99;
  v86 = v100;
  v22 = outlined init with copy of _ViewInputs(v91, &v93);
  a3(&v48, v22, &v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  outlined destroy of _ViewInputs(&v93);
  a3 = v48;
  a4 = v49;
  v23 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(v48);
  if ((v23 & 0x100000000) != 0 || (v24 = v23, v25 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO11DataStorageV0I0V_TtB5(a3), (v25 & 0x100000000) != 0))
  {

    v87 = v101;
    v88 = v102;
    v89 = v103;
    v90 = v104;
    v85 = v99;
    v86 = v100;
    result = outlined destroy of _ViewInputs(&v85);
    goto LABEL_31;
  }

  v26 = v25;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v28 = v106;
  swift_beginAccess();
  v29 = *(v28 + 16);
  *&v85 = __PAIR64__(v24, OffsetAttribute2);
  *(&v85 + 1) = __PAIR64__(v29, v26);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type UpdatedContainerStorage and conformance UpdatedContainerStorage();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v87 = v107;
  v88 = v108;
  v89 = v109;
  v90 = v110;
  v85 = v105;
  v86 = v106;
  swift_weakInit();
  swift_weakAssign();
  outlined init with copy of WeakBox<GlassContainerCache>(v47, v46);
  outlined init with copy of _ViewInputs(&v105, &v79);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(&v85, v46);

  outlined destroy of WeakBox<GlassContainerCache>(v47);

  outlined destroy of WeakBox<GlassContainerCache>(v46);
  if (one-time initialization token for materialBackdropProxy != -1)
  {
    goto LABEL_36;
  }

LABEL_20:
  v30 = static CachedEnvironment.ID.materialBackdropProxy;
  swift_beginAccess();
  v31 = specialized CachedEnvironment.attribute<A>(id:_:)(v30, specialized implicit closure #1 in _GraphInputs.materialBackdropProxy.getter, 0);
  swift_endAccess();
  Description = v13[7].Description;
  *&v79 = __PAIR64__(v31, v11);
  *(&v79 + 1) = Description;
  *&v80 = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ContainerStorageView.Init and conformance ContainerStorageView.Init();

  v33 = Attribute.init<A>(body:value:flags:update:)();

  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v71 = v81;
  v72 = v82;
  v73 = v83;
  v74 = v84;
  v69 = v79;
  v70 = v80;
  v35 = v81;
  LODWORD(v71) = 0;
  LODWORD(v61[0]) = v33;
  v75[0] = v79;
  v75[1] = v80;
  v76 = v84;
  v75[3] = v82;
  v75[4] = v83;
  v75[2] = v71;
  v65 = v71;
  v66 = v82;
  v67 = v83;
  v68 = v84;
  v63 = v79;
  v64 = v80;
  outlined init with copy of _ViewInputs(&v79, v77);
  outlined init with copy of _ViewInputs(v75, v77);
  static ContainerStorageView._makeView(view:inputs:)(&v63, &v44);
  v77[2] = v65;
  v77[3] = v66;
  v77[4] = v67;
  v78 = v68;
  v77[0] = v63;
  v77[1] = v64;
  outlined destroy of _ViewInputs(v77);
  LODWORD(v71) = v35;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(&v44, &v69);
    AGSubgraphEndTreeElement();
  }

  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  outlined destroy of _ViewInputs(&v63);
  v57 = MEMORY[0x1E69E7CC0];
  v58 = 0;
  v53 = a3;
  v54 = a4;
  v55 = v44;
  v56 = v45;
  v36 = v108;
  v37 = *(v108 + 16);
  if (v37)
  {

    v38 = (v36 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v53, *(v38 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v38, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v38 += 2;
      --v37;
    }

    while (v37);
  }

  else
  {
  }

  v40 = v57;
  v41 = v58;

  v48 = v40;
  v49 = v41;
  LOBYTE(v61[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.Item.Key, &protocol witness table for GlassContainer.Item.Key);
  LOBYTE(v61[0]) = 1;
  PreferencesOutputs.subscript.setter(0x100000000uLL, &type metadata for GlassContainer.DataStorage.Key, &protocol witness table for GlassContainer.DataStorage.Key);

  v59[2] = v87;
  v59[3] = v88;
  v59[4] = v89;
  v60 = v90;
  v59[0] = v85;
  v59[1] = v86;
  outlined destroy of _ViewInputs(v59);
  v61[2] = v101;
  v61[3] = v102;
  v61[4] = v103;
  v62 = v104;
  v61[0] = v99;
  v61[1] = v100;
  result = outlined destroy of _ViewInputs(v61);
  a3 = v48;
  a4 = v49;
LABEL_31:
  v42 = v50;
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 12) = v42;
  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24IsInGlassEffectContainerV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for IsInGlassEffectContainer);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24IsInGlassEffectContainerV_Tt0B5(v4, v7);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<IsInGlassEffectContainer>, &type metadata for IsInGlassEffectContainer, &protocol witness table for IsInGlassEffectContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInGlassEffectContainer, 0, v6);
  }

  return result;
}

uint64_t closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a4 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = 0;
    *(a4 + 12) = result;
  }

  else
  {
    v8 = _GraphValue.init(_:)(result, &v14);
    v9 = *(a1 + 48);
    v12[2] = *(a1 + 32);
    v12[3] = v9;
    v12[4] = *(a1 + 64);
    v13 = *(a1 + 80);
    v10 = *(a1 + 16);
    v12[0] = *a1;
    v12[1] = v10;
    v11 = MEMORY[0x1EEE9AC00](v8);
    return (*(*(a3 + 8) + 32))(&v14, v12, partial apply for closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:), v11);
  }

  return result;
}

uint64_t closure #1 in static _LayoutRoot._makeView(root:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _LayoutRoot(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, _OWORD *))
{
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v5 = a2[2];
  v12 = *MEMORY[0x1E698D3F8];
  v22 = v5;
  v13 = MEMORY[0x1E69E7CD0];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  swift_weakInit();
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v9[0] = v20;
  v9[1] = v21;
  v9[2] = v22;
  v10 = 0;
  v11 = 0;
  v6 = outlined init with copy of _GraphInputs(&v20, &v8);
  a3(v6, v9);
  return outlined destroy of _ViewListInputs(v9);
}

void *static Layout.makeLayoutView(root:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, ValueMetadata *a5@<X4>, unint64_t a6@<X5>, void *x8_0@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v10 = a2[1];
  v11 = a2[3];
  v73 = a2[2];
  v74 = v11;
  v75 = a2[4];
  v12 = a2[1];
  v71 = *a2;
  v72 = v12;
  v65 = v71;
  v66 = v10;
  v13 = *a1;
  v76 = *(a2 + 20);
  v33 = v13;
  v67 = v73;
  v14 = *(a6 + 8);
  v15 = *(v14 + 48);
  outlined init with copy of _GraphInputs(&v71, v63);
  v15(&v33, &v65, a5, v14);
  v77[0] = v65;
  v77[1] = v66;
  v77[2] = v67;
  outlined destroy of _GraphInputs(v77);
  v16 = DWORD1(v73);
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  if (a5 == &type metadata for AnyLayout)
  {
    v20 = DWORD1(v73) & 0xFFFFFFF3;
    DWORD1(v67) = DWORD1(v73) & 0xFFFFFFF3;
    LODWORD(v61[0]) = v33;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(&v71, v63);
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties();
    v22 = Attribute.init<A>(body:value:flags:update:)();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v65, v22);

    v19 = 0;
    v31 = 0;
    v18 = 2;
  }

  else
  {
    v17 = *(a6 + 24);
    outlined init with copy of _ViewInputs(&v71, v63);
    v17(v63, a5, a6);
    v18 = v63[0];
    v19 = BYTE1(v63[0]);
    v31 = BYTE2(v63[0]);
    if (LOBYTE(v63[0]) == 2)
    {
      v20 = v16 & 0xFFFFFFF3;
      DWORD1(v67) = v20;
      v21 = *MEMORY[0x1E698D3F8];

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v65, v21);
    }

    else
    {
      if (v63[0])
      {
        v20 = v16 & 0xFFFFFFF3 | 4;
      }

      else
      {
        v20 = v16 | 0xC;
      }

      DWORD1(v67) = v20;
    }
  }

  v23 = v65;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v23, *&v63[0]);
  if (v24)
  {
    if ((*(v24 + 72) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_11:
      if ((v20 & 0x800) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v23, *&v63[0]);
  if (v27)
  {
    v28 = *(v27 + 72) | 0x4000;
  }

  else
  {
    v28 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v65, v28);

  if ((v20 & 0x800) == 0)
  {
LABEL_12:
    DWORD1(v67) = v20;
  }

LABEL_13:
  v61[2] = v67;
  v61[3] = v68;
  v61[4] = v69;
  v62 = v70;
  v61[0] = v65;
  v61[1] = v66;
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v54 = v65;
  v55 = v66;
  v25 = outlined init with copy of _ViewInputs(v61, v63);
  a3(v60, v25, &v54);
  v63[2] = v56;
  v63[3] = v57;
  v63[4] = v58;
  v64 = v59;
  v63[0] = v54;
  v63[1] = v55;
  outlined destroy of _ViewInputs(v63);
  outlined init with copy of _ViewListOutputs.Views(v60, v52);
  if (v53)
  {
    v26 = v52[0];
    if (*(&v52[0] + 1))
    {
      LODWORD(v54) = v52[0];
      *(&v54 + 1) = *(&v52[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v26 = Attribute.init<A>(body:value:flags:update:)();
    }

    v48 = v67;
    v49 = v68;
    v50 = v69;
    v46 = v65;
    v47 = v66;
    v42 = v67;
    v43 = v68;
    v44 = v69;
    v38[0] = v33;
    v51 = v70;
    v45 = v70;
    v40 = v65;
    v41 = v66;
    LOBYTE(v39[0]) = v18;
    BYTE1(v39[0]) = v19;
    BYTE2(v39[0]) = v31;
    outlined init with copy of _ViewInputs(&v46, &v54);
    static Layout.makeDynamicView(root:inputs:properties:list:)(v38, &v40, v26, a5, a6, x8_0);

    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v54 = v40;
    v55 = v41;
    outlined destroy of _ViewInputs(&v54);
  }

  else
  {
    outlined init with take of _ViewList_Elements(v52, v39);
    v48 = v67;
    v49 = v68;
    v50 = v69;
    v46 = v65;
    v47 = v66;
    v42 = v67;
    v43 = v68;
    v44 = v69;
    if ((v20 & 0x800) != 0)
    {
      v37 = v33;
      v51 = v70;
      v45 = v70;
      v40 = v65;
      v41 = v66;
      v34 = v18;
      v35 = v19;
      v36 = v31;
      v56 = v73;
      v57 = v74;
      v58 = v75;
      v59 = v76;
      v54 = v71;
      v55 = v72;
      outlined init with copy of _ViewInputs(&v46, v38);
      v29 = _ViewListOutputs.makeAttribute(viewInputs:)(&v54);
      static Layout.makeDynamicView(root:inputs:properties:list:)(&v37, &v40, v29, a5, a6, x8_0);
    }

    else
    {
      v38[0] = v33;
      v51 = v70;
      v45 = v70;
      v40 = v65;
      v41 = v66;
      LOBYTE(v37) = v18;
      BYTE1(v37) = v19;
      BYTE2(v37) = v31;
      outlined init with copy of _ViewInputs(&v46, &v54);
      static Layout.makeStaticView(root:inputs:properties:list:)(v38, &v40, &v37, v39, a5, a6, x8_0);
    }

    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v54 = v40;
    v55 = v41;
    outlined destroy of _ViewInputs(&v54);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  outlined destroy of _ViewListOutputs(v60);
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v54 = v65;
  v55 = v66;
  return outlined destroy of _ViewInputs(&v54);
}

uint64_t type metadata completion function for AnchorBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy()
{
  if (!lazy protocol witness table cache variable for type ConcentricProxy and conformance ConcentricProxy)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricProxy, &unk_1F00614B0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricProxy and conformance ConcentricProxy);
  }
}

uint64_t static ConcentricEdgePaddingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v69 = *a2;
  v8 = *(a2 + 2);
  v53 = *(a2 + 3);
  v9 = *(a2 + 9);
  v54 = *(a2 + 8);
  v67 = *(a2 + 40);
  v10 = *(a2 + 15);
  v68 = *(a2 + 14);
  v11 = *(a2 + 16);
  v12 = *(a2 + 18);
  v13 = *(a2 + 76);
  if ((v9 & 0x22) == 0)
  {
    return (a3)();
  }

  v44 = *(a2 + 17);
  v46 = v13;
  v43 = a5;
  v47 = a6;
  v48 = a3;
  v49 = a4;
  v50 = a7;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v15 = *MEMORY[0x1E698D3F8];
  *&v55 = __PAIR64__(v12, v11);
  v45 = v12;
  *(&v55 + 1) = __PAIR64__(v14, v10);
  v56 = v15;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricProxy and conformance ConcentricProxy();
  v41 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for containerShape != -1)
  {
    swift_once();
  }

  v16 = static CachedEnvironment.ID.containerShape;
  swift_beginAccess();
  v17 = specialized CachedEnvironment.attribute<A>(id:_:)(v16, closure #1 in _GraphInputs.containerShape.getter, 0);
  swift_endAccess();
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v42 = v10;
  v18 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v19 = specialized CachedEnvironment.attribute<A>(id:_:)(v18, key path getter for EnvironmentValues.defaultPadding : EnvironmentValues, 0);
  swift_endAccess();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v20 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v22 = swift_endAccess();
  v23 = v7;
  *&v55 = __PAIR64__(v17, v7);
  *(&v55 + 1) = __PAIR64__(v21, v19);
  v56 = __PAIR64__(v15, v41);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v43;
  v25 = v47;
  v39 = type metadata accessor for ConcentricEdgePaddingModifier.EdgePadding(0, v43, v47, v26);
  swift_getWitnessTable(protocol conformance descriptor for ConcentricEdgePaddingModifier<A>.EdgePadding, v39);
  v40 = v27;
  type metadata accessor for Attribute<EdgeInsets>(0, &lazy cache variable for type metadata for Attribute<EdgeInsets>, &type metadata for EdgeInsets, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v55, closure #1 in Attribute.init<A>(_:)partial apply, v38, v39, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  v30 = v52[0];
  type metadata accessor for ConcentricEdgePaddingModifier(0, v24, v25, v31);
  v51 = v23;
  v55 = v69;
  v56 = v8;
  v57 = v53;
  v58 = v54;
  v59 = v9;
  v60 = v67;
  v61 = v68;
  v62 = v42;
  v63 = v11;
  v64 = v44;
  v65 = v45;
  v66 = v46;
  v32 = static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(v52, v30, &v51, &v55, v48);
  v33 = v52[0];
  v34 = v52[1];
  MEMORY[0x1EEE9AC00](v32);
  v38[0] = v24;
  v38[1] = v25;
  LODWORD(v39) = v35;
  BYTE4(v39) = BYTE4(v35) & 1;
  MEMORY[0x1EEE9AC00](v35);
  result = AGGraphMutateAttribute();
  v37 = v50;
  *v50 = v33;
  v37[1] = v34;
  return result;
}

void *static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:)(int *a1, uint64_t a2, char a3, void (*a4)(uint64_t, __int128 *), uint64_t a5, uint64_t a6, ValueMetadata *a7, uint64_t a8)
{
  v13 = *(a2 + 48);
  v14 = *(a2 + 16);
  v33 = *(a2 + 32);
  v34 = v13;
  v15 = *(a2 + 48);
  v35 = *(a2 + 64);
  v16 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v16;
  v28 = v33;
  v29 = v15;
  v30 = *(a2 + 64);
  v17 = *a1;
  v36 = *(a2 + 80);
  v31 = *(a2 + 80);
  v26 = v32[0];
  v27 = v14;
  outlined init with copy of _ViewInputs(v32, &v43);
  PreferencesInputs.remove<A>(_:)(a7, a7, a8);
  v39[2] = v28;
  v39[3] = v29;
  v39[4] = v30;
  v40 = v31;
  v39[0] = v26;
  v39[1] = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v43 = v26;
  v44 = v27;
  v18 = outlined init with copy of _ViewInputs(v39, v41);
  a4(v18, &v43);
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v41[0] = v43;
  v41[1] = v44;
  outlined destroy of _ViewInputs(v41);
  v37 = v34;
  v38 = DWORD2(v34);
  v24 = v34;
  v25 = DWORD2(v34);
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v21 = v17;
  v22 = a3;
  v23 = v32;
  outlined init with copy of PreferencesInputs(&v37, &v43);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)(&v24, a7, partial apply for implicit closure #1 in static _AnchorWritingModifier.makeView(modifier:inputs:animated:body:), v20, a7, a8);

  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v43 = v26;
  v44 = v27;
  return outlined destroy of _ViewInputs(&v43);
}

unint64_t static ViewModifier.makeConcentricLayout(padding:modifier:inputs:body:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, __int128 *))
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 48);
  v44 = *(a4 + 32);
  v45 = v7;
  v8 = *(a4 + 48);
  *v46 = *(a4 + 64);
  v9 = *(a4 + 16);
  v43[0] = *a4;
  v43[1] = v9;
  v41 = v43[0];
  v42 = v9;
  v40[0] = *(a4 + 36);
  *&v46[16] = *(a4 + 80);
  *(v40 + 12) = v8;
  v10 = v44;
  v11 = *&v46[4];
  v12 = *&v46[12];
  outlined init with copy of _ViewInputs(v43, &v34);
  v13 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  *&v34 = __PAIR64__(v13, a2);
  swift_weakInit();

  v35 = 0u;
  v36 = 0u;
  LOBYTE(v37) = 1;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ConcentricPaddingUpdater(&v34);
  AGGraphSetFlags();
  *&v34 = __PAIR64__(a2, *v46);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type ConcentricPosition and conformance ConcentricPosition();
  v14 = Attribute.init<A>(body:value:flags:update:)();
  *&v34 = __PAIR64__(a2, *&v46[8]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ConcentricSize and conformance ConcentricSize();
  v15 = Attribute.init<A>(body:value:flags:update:)();
  v16 = v10 | 0x18;
  v31[0] = v41;
  v31[1] = v42;
  *v32 = v10 | 0x18;
  *&v32[16] = *(v40 + 12);
  *&v32[4] = v40[0];
  *v33 = v14;
  *&v33[4] = v11;
  *&v33[8] = v15;
  *&v33[12] = v12;
  *v29 = *v32;
  *&v29[16] = *&v32[16];
  *v30 = *v33;
  *&v30[16] = HIDWORD(v12);
  v27 = v41;
  v28 = v42;
  v17 = outlined init with copy of _ViewInputs(v31, &v34);
  a5(&v24, v17, &v27);
  v36 = *v29;
  v37 = *&v29[16];
  v38 = *v30;
  v39 = *&v30[16];
  v34 = v27;
  v35 = v28;
  outlined destroy of _ViewInputs(&v34);
  LODWORD(a5) = v26;
  v19 = *MEMORY[0x1E698D3F8];
  if ((BYTE4(v44) & 2) != 0)
  {
    *&v27 = __PAIR64__(v26, v13);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ConcentricLayoutComputer and conformance ConcentricLayoutComputer();
    v21 = Attribute.init<A>(body:value:flags:update:)();
    v20 = v25 | 0x80;
  }

  else
  {
    v20 = v25;
    v21 = v26;
  }

  v22 = a5 == v19;
  if (v22)
  {
    a5 = 0;
  }

  else
  {
    a5 = a5;
  }

  v27 = v41;
  v28 = v42;
  *v29 = v16;
  *&v29[4] = v40[0];
  *&v29[16] = *(v40 + 12);
  *v30 = v14;
  *&v30[4] = v11;
  *&v30[8] = v15;
  *&v30[12] = v12;
  outlined destroy of _ViewInputs(&v27);
  *a1 = v24;
  *(a1 + 8) = v20;
  *(a1 + 12) = v21;
  return a5 | (v22 << 32);
}

uint64_t one-time initialization function for containerShape(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.containerShape = result;
  return result;
}

uint64_t one-time initialization function for defaultPadding(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.defaultPadding = result;
  return result;
}

void type metadata accessor for Attribute<EdgeInsets>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ConcentricEdgePaddingModifier<A>.EdgePadding(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ConcentricEdgePaddingModifier<A>.EdgePadding, a1);

  return static AsyncAttribute.flags.getter();
}

void lazy protocol witness table accessor for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater()
{
  if (!lazy protocol witness table cache variable for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricPaddingUpdater, &unk_1F00613D0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricPaddingUpdater and conformance ConcentricPaddingUpdater);
  }
}

uint64_t initializeWithCopy for ConcentricPaddingUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_weakCopyInit();
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void lazy protocol witness table accessor for type ConcentricPosition and conformance ConcentricPosition()
{
  if (!lazy protocol witness table cache variable for type ConcentricPosition and conformance ConcentricPosition)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricPosition, &unk_1F0061350, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricPosition and conformance ConcentricPosition);
  }
}

void lazy protocol witness table accessor for type ConcentricSize and conformance ConcentricSize()
{
  if (!lazy protocol witness table cache variable for type ConcentricSize and conformance ConcentricSize)
  {
    swift_getWitnessTable(protocol conformance descriptor for ConcentricSize, &unk_1F00612D0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ConcentricSize and conformance ConcentricSize);
  }
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for LazyState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for LazyState.Storage(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LazyState.Storage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t LazyState.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *(a5 + *(type metadata accessor for LazyState(0, a3, a3, a4) + 28)) = 0;
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for LazyState.Storage(0, a3, v9, v10);

  return swift_storeEnumTagMultiPayload();
}

void *initializeWithCopy for LazyState(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 1)
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1, a2);
    v11 = 1;
  }

  else
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;

    v11 = 0;
  }

  *(a1 + v5) = v11;
  *((a1 + v5 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for LazyState(unsigned __int8 *a1, uint64_t a2)
{
  if (*(*(*(a2 + 16) - 8) + 64) <= 0x10uLL)
  {
    v2 = 16;
  }

  else
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_18;
  }

  if (v2 <= 3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = *a1;
  }

  else if (v5 == 2)
  {
    v6 = *a1;
  }

  else if (v5 == 3)
  {
    v6 = *a1 | (a1[2] << 16);
  }

  else
  {
    v6 = *a1;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_18:
  if (v3 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))(a1);
  }

  else
  {
  }
}

uint64_t type metadata completion function for _ValueActionModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _AnimationModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Binding.init(value:location:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a2;
  *a5 = 0;
  a5[1] = a2;
  v8 = *(v7 + 88);
  v9 = type metadata accessor for Binding(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 32);

  return v10(v11, a1, v8);
}

uint64_t View.environment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EnvironmentObjectKey.init()();
  KeyPath = swift_getKeyPath();
  v10 = a1;
  View.environment<A>(_:_:)(KeyPath, &v10, a2, a4);
}

uint64_t sub_18D061C98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 24), a1, a2, a4);
  *a3 = result;
  return result;
}

__n128 sub_18D061D04(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

SwiftUI::LocalizedStringKey __swiftcall LocalizedStringKey.init(stringLiteral:)(SwiftUI::LocalizedStringKey stringLiteral)
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  stringLiteral.arguments._rawValue = v1;
  stringLiteral.hasFormatting = v2;
  return stringLiteral;
}

uint64_t Text.init(_:tableName:bundle:comment:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for LocalizedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  return result;
}

uint64_t PreferencesInputs.makeIndirectOutputs()@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v2 = *v1;
  v26 = MEMORY[0x1E69E7CC0];
  v27 = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    v23 = *MEMORY[0x1E698D3F8];

    v4 = 0;
    v5 = (v2 + 40);
    v6 = v3;
    v21 = v2;
    v22 = v3;
    while (v4 < v6)
    {
      if (v3 == v4)
      {
        goto LABEL_15;
      }

      v7 = *(v5 - 1);
      v8 = *v5;
      if (AGGraphGetCurrentAttribute() == v23)
      {
        v9 = AGSubgraphGetCurrent();
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        v11 = AGSubgraphGetGraph();
      }

      else
      {
        v11 = AGGraphGetAttributeGraph();
      }

      if (!AGGraphGetContext())
      {
        goto LABEL_16;
      }

      ++v4;

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24 = &v20;
      v13 = *(AssociatedTypeWitness - 8);
      v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v16 = &v20 - v15;
      (*(v8 + 16))(v7, v8, v14);
      v25[0] = 6;
      GraphHost.intern<A>(_:for:id:)(v16, v7, v25, AssociatedTypeWitness);

      (*(v13 + 8))(v16, AssociatedTypeWitness);
      LODWORD(v16) = AGGraphCreateIndirectAttribute2();
      swift_beginAccess();
      PreferencesOutputs.appendPreference<A>(key:value:)(v7, v16, v7, v8);
      swift_endAccess();
      v3 = v22;
      v6 = *(v21 + 16);
      v5 += 2;
      if (v4 == v6)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

LABEL_13:

    result = swift_beginAccess();
    v18 = v27;
    v19 = v20;
    *v20 = v26;
    *(v19 + 2) = v18;
  }

  return result;
}

uint64_t PreferencesOutputs.appendPreference<A>(key:value:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a4;
  *(v12 + 48) = a2;
  *v4 = v8;
  return result;
}

unint64_t PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v7 = v6;
  v47 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 8);
  v42 = *a1;
  v12 = v42;
  v14 = PreferenceKeys._index(of:)(a5);
  v15 = *(v42 + 16);
  v39[2] = a4;
  if (v14 == v15)
  {
    goto LABEL_4;
  }

  if (v14 >= v15)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v42 + 16 * v14 + 32) == a5)
  {
    v27 = a3();
    v28 = PreferencesOutputs.subscript.getter(a5, a5, a6);
    v39[1] = v39;
    v29 = *MEMORY[0x1E698D3F8];
    if ((v28 & 0x100000000) == 0)
    {
      v29 = v28;
    }

    v40 = v27;
    v42 = __PAIR64__(v29, v27);
    MEMORY[0x1EEE9AC00](v28);
    v39[0] = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v36 = type metadata accessor for PreferenceTransform(0, a5, a6, v30);
    swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, v36);
    v37 = v31;
    v32 = type metadata accessor for Attribute();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v42, partial apply for closure #1 in Attribute.init<A>(_:), &v34, v36, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
    LOBYTE(v42) = 0;
    PreferencesOutputs.subscript.setter(v41, a5, a5, a6);
    v16 = 0;
  }

  else
  {
LABEL_4:
    v40 = 0;
    v16 = 1;
  }

  result = (*(a6 + 40))(a5, a6);
  if ((result & 1) == 0)
  {
    return result;
  }

  v42 = v12;
  result = PreferenceKeys._index(of:)(&type metadata for HostPreferencesKey);
  v18 = *(v12 + 16);
  if (result == v18)
  {
    return result;
  }

  if (result >= v18)
  {
LABEL_19:
    __break(1u);
  }

  if (*(v12 + 16 * result + 32) == &type metadata for HostPreferencesKey)
  {
    v19 = v40;
    if (v16)
    {
      v19 = a3();
    }

    v20 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA04HostcI0V_TtB5(*v7);
    v21 = *MEMORY[0x1E698D3F8];
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;
    }

    ++static HostPreferencesKey.nodeId;
    v42 = __PAIR64__(v13, v19);
    v43 = v21;
    v44 = 0;
    v45 = 0;
    v46 = static HostPreferencesKey.nodeId;
    MEMORY[0x1EEE9AC00](v20);
    v23 = type metadata accessor for HostPreferencesTransform(0, a5, a6, v22);
    v37 = v23;
    swift_getWitnessTable(protocol conformance descriptor for HostPreferencesTransform<A>, v23);
    v38 = v24;
    type metadata accessor for Attribute<PreferenceValues>();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v42, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_8, &AssociatedTypeWitness, v23, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
    LOBYTE(v42) = 0;
    return PreferencesOutputs.subscript.setter(v41, &type metadata for HostPreferencesKey, &protocol witness table for HostPreferencesKey);
  }

  return result;
}

uint64_t type metadata completion function for _PreferenceWritingModifier(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id _ConditionalContent.Container.init(content:provider:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v10 = type metadata accessor for _ConditionalContent.Container(0, v14);
  v11 = *(a5 - 8);
  (*(v11 + 16))(&a7[*(v10 + 52)], a2, a5);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v13 = result;
    result = (*(v11 + 8))(a2, a5);
    *&a7[*(v10 + 56)] = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Container(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _ConditionalContent.Info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _ConditionalContent.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeWithCopy for _ConditionalContent.Container(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 32) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 4) & ~v6;
  v8 = (a2 + v6 + 4) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = v11;
  v12 = v11;
  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalContent<A, B>.Container<A1>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.Container<A1>, a1);

  return static AsyncAttribute.flags.getter();
}

void destroy for _ConditionalContent.Container(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 4) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = *((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t TupleTypeDescription.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TypeConformance(255, a2, a3, v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = Array.init()();
  v52 = v14;
  result = AGTupleCount();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v46 = result;
    if (result)
    {
      v39 = a4;
      v17 = 0;
      v44 = (v9 + 16);
      v45 = 0x800000018DD790C0;
      v43 = (v9 + 8);
      *&v16 = 136446210;
      v40 = v16;
      v18 = v46;
      v41 = v11;
      v42 = a2;
      do
      {
        v19 = AGTupleElementType();
        static ProtocolDescriptor.conformance(of:)(v19, a2, a3, &v48);
        v20 = v48;
        if (v48)
        {
          v21 = v49;
          v48 = v17;
          v49 = v20;
          v50 = v21;
          type metadata accessor for Array();
          result = Array.append(_:)();
        }

        else
        {
          v48 = 0;
          v49 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v48 = 0x65646E6920746120;
          v49 = 0xEA00000000002078;
          v51 = v17;
          v22 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v22);

          MEMORY[0x193ABEDD0](0x2065707974202CLL, 0xE700000000000000);
          v23 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v23);

          v24 = v48;
          v25 = v49;
          v48 = 0xD000000000000015;
          v49 = v45;
          MEMORY[0x193ABEDD0](v24, v25);

          v26 = v49;
          v47 = v48;
          if (one-time initialization token for unlocatedIssuesLog != -1)
          {
            swift_once();
          }

          v27 = __swift_project_value_buffer(v8, static Log.unlocatedIssuesLog);
          swift_beginAccess();
          (*v44)(v11, v27, v8);

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = v8;
            v31 = a3;
            v32 = swift_slowAlloc();
            v33 = TupleTypeMetadata2;
            v34 = a1;
            v35 = swift_slowAlloc();
            v48 = v35;
            *v32 = v40;
            *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v26, &v48);
            _os_log_impl(&dword_18D018000, v28, v29, "%{public}s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v35);
            v36 = v35;
            a1 = v34;
            TupleTypeMetadata2 = v33;
            MEMORY[0x193AC4820](v36, -1, -1);
            v37 = v32;
            a3 = v31;
            v8 = v30;
            v11 = v41;
            a2 = v42;
            MEMORY[0x193AC4820](v37, -1, -1);
          }

          (*v43)(v11, v8);

          v18 = v46;
        }

        ++v17;
      }

      while (v18 != v17);
      v14 = v52;
      a4 = v39;
    }

    *a4 = v14;
  }

  return result;
}

void lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys()
{
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for PreferenceKeys, &type metadata for PreferenceKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for PreferenceKeys, &type metadata for PreferenceKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for PreferenceKeys, &type metadata for PreferenceKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for PreferenceKeys, &type metadata for PreferenceKeys, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }
}

uint64_t partial apply for closure #1 in PreferenceCombiner.init(attributes:)@<X0>(uint64_t *a2@<X8>)
{
  result = AGCreateWeakAttribute();
  *a2 = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of isDebuggerAttached()
{
  v10 = *MEMORY[0x1E69E9840];
  type metadata accessor for _ContiguousArrayStorage<Int32>();
  bzero(v9, 0x288uLL);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDACA80;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v8 = 648;
  v1 = sysctl((v0 + 32), 4u, v9, &v8, 0, 0);

  if (!v1)
  {
    return (v9[33] >> 3) & 1;
  }

  v2 = static os_log_type_t.error.getter();
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18DDA6EB0;
  v4 = MEMORY[0x193ABE310]();
  v5 = MEMORY[0x1E69E7358];
  *(v3 + 56) = MEMORY[0x1E69E72F0];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  type metadata accessor for OS_os_log();
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v2, &dword_18D018000, v6, "sysctl(3) failed: %{errno}d", 27, 2, v3);

  return 0;
}

uint64_t one-time initialization function for isDebuggerAttached()
{
  result = closure #1 in variable initialization expression of isDebuggerAttached();
  isDebuggerAttached = result & 1;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Int32>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int32>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int32>);
    }
  }
}

uint64_t one-time initialization function for default()
{
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<DefaultAnimation>, lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation, &type metadata for DefaultAnimation);
  result = swift_allocObject();
  static Animation.default = result;
  return result;
}

{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  static ResolvedGradient.ColorSpace.default = v2;
  return result;
}

void type metadata accessor for InternalAnimationBox<BezierAnimation>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for InternalAnimationBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation()
{
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultAnimation, &type metadata for DefaultAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultAnimation, &type metadata for DefaultAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultAnimation, &type metadata for DefaultAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultAnimation, &type metadata for DefaultAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultAnimation and conformance DefaultAnimation);
  }
}

void instantiation function for generic protocol witness table for DefaultAnimation(uint64_t a1)
{
  lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type DefaultAnimation and conformance DefaultAnimation();
  *(a1 + 8) = v2;
}

uint64_t type metadata completion function for AnimationBox(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 104), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<AnimationKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<AnimationKey> and conformance TransactionPropertyKey<A>);
  }
}

uint64_t withAnimation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v10, a1);

  withTransaction<A>(_:_:)(v8, a2, a3, a4);
}

uint64_t withTransaction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v5 = type metadata accessor for Error();
  return _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v9, partial apply for closure #1 in withTransaction<A>(_:_:), v7, &type metadata for Transaction, v5, a4, MEMORY[0x1E69E7288], &v8);
}

uint64_t closure #1 in withTransaction<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  _threadTransactionData();
  v10 = one-time initialization token for v5;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v11)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  v12 = _setThreadTransactionData();
  a2(v12);
  _setThreadTransactionData();

  if (v7)
  {
    *a5 = v7;
  }

  return result;
}

Swift::Void __swiftcall ViewGraphGeometryObservers.removeAll()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewGraphGeometryObservers.Observer(255, v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
}

uint64_t ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v9 = *(a5 + 16);
  v8 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v19 - v13;
  if (a2)
  {
    ViewGraphGeometryObservers.removeAll()();
  }

  (*(v11 + 16))(v14, a1, AssociatedTypeWitness, v12);
  type metadata accessor for ViewGraphGeometryObservers.Observer(0, v9, v8, v15);
  swift_allocObject();
  v21 = ViewGraphGeometryObservers.Observer.init(callback:)(v20, a4, v16, v17);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();

  return Dictionary.subscript.setter();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t Bindable<A>.subscript.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  swift_unknownObjectRetain();

  return Binding.init<A>(_:keyPath:isolation:)(v5, a1, 0, 0, a2);
}

uint64_t ObjectLocation.get()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>, uint64_t a5@<X2>, uint64_t a6@<X3>, uint64_t a7@<X4>)
{
  ObjectLocation.checkIsolation()(a1, a2, a5, a6, a7, a3);
  v13 = a1;
  swift_unknownObjectRetain();
  v10 = swift_readAtKeyPath();
  (*(*(a3 - 8) + 16))(a4);
  v10(v12, 0);
  return swift_unknownObjectRelease();
}

uint64_t ObjectLocation.checkIsolation()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();

  if (a3)
  {
    if (v12 == a3)
    {
      result = pthread_main_np();
      if (!result)
      {
        v24 = a2;
        type metadata accessor for ReferenceWritableKeyPath();

        v14 = String.init<A>(describing:)();
        v16 = v15;
        if (one-time initialization token for runtimeIssuesLog != -1)
        {
          swift_once();
        }

        v17 = static Log.runtimeIssuesLog;
        Logger.init(_:)();

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v24 = v21;
          *v20 = 136315138;
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v24);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_18D018000, v18, v19, "%s is isolated to the main actor. Accessing it via Binding from a different actor will cause undefined behaviors, and potential data races; This warning will become a runtime crash in a future version of SwiftUI.", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x193AC4820](v21, -1, -1);
          MEMORY[0x193AC4820](v20, -1, -1);
        }

        else
        {
        }

        return (*(v9 + 8))(v11, v8);
      }
    }
  }

  return result;
}

uint64_t Binding.init<A>(_:keyPath:isolation:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (*a2 + *MEMORY[0x1E69E6F98]);
  v11 = v10[1];
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - v12;
  swift_unknownObjectRetain();
  v14 = *v10;
  swift_unknownObjectRetain();

  ObjectLocation.get()(a1, a2, v11, v13, a3, a4, v14);
  v16 = type metadata accessor for ObjectLocation(255, v14, v11, v15);
  swift_getWitnessTable(protocol conformance descriptor for ObjectLocation<A, B>, v16);
  type metadata accessor for LocationBox(0, v16, v17, v18);
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v19 = LocationBox.__allocating_init(_:)(v23);
  Binding.init(value:location:)(v13, v19, v20, v21, a5);
  swift_unknownObjectRelease_n();

  return swift_unknownObjectRelease_n();
}

void lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor()
{
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OpacityColor, &type metadata for Color.OpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OpacityColor, &type metadata for Color.OpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OpacityColor, &type metadata for Color.OpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OpacityColor and conformance Color.OpacityColor);
  }
}

uint64_t AnchorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

__n128 one-time initialization function for white(__n128 a1, uint64_t a2, __n128 **a3)
{
  type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v4 = swift_allocObject();
  result = a1;
  v4[1] = a1;
  v4[2].n128_u32[0] = 2143289344;
  *a3 = v4;
  return result;
}

void lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider()
{
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedColorProvider, &type metadata for ResolvedColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedColorProvider, &type metadata for ResolvedColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvedColorProvider, &type metadata for ResolvedColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvedColorProvider and conformance ResolvedColorProvider);
  }
}

void one-time initialization function for thin()
{
  dword_1ED5240C4 = 0;
  static Material.thin = 1;
  byte_1ED5240C0 = 3;
}

uint64_t static Material.thin.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for thin != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = static Material.thin;
  v3 = dword_1ED5240C4;
  *a1 = static Material.thin;
  v4 = byte_1ED5240C0;
  *(a1 + 8) = byte_1ED5240C0;
  *(a1 + 12) = v3;

  return outlined copy of Material.ID(v2, v4);
}

uint64_t Color.opacity(_:)(uint64_t a1, double a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return v4;
}

void lazy protocol witness table accessor for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>);
  }
}

uint64_t Transaction.disablesAnimations.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<DisablesAnimationsKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>);
    }
  }
}

uint64_t type metadata completion function for SubscriptionLifetime.Connection(uint64_t a1)
{
  result = type metadata accessor for CombineIdentifier();
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

uint64_t ObservedObjectPropertyBox.update(property:phase:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = pthread_main_np();
  v7 = *(a3 + 16);
  if (!v6)
  {
    v8 = _typeName(_:qualified:)();
    v10 = v9;
    v11 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v12 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_18D018000, v12, v11, "Updating ObservedObject<%s> from background threads will cause undefined behavior; make sure to update it from the main thread.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x193AC4820](v14, -1, -1);
      MEMORY[0x193AC4820](v13, -1, -1);
    }

    else
    {
    }
  }

  closure #1 in ObservedObjectPropertyBox.update(property:phase:)(a1, v3, v7, *(a3 + 24));
  v16 = AGGraphGetWeakValue() != 0;
  result = v16 & v17;
  v19 = v3[2];
  if (result == 1)
  {
    v3[2] = ++v19;
  }

  *a1 = v19;
  return result;
}

uint64_t closure #1 in ObservedObjectPropertyBox.update(property:phase:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v26 - v7;
  v9 = *(a1 + 8);
  v10 = one-time initialization token for v6;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v11)
  {
LABEL_7:
    v12 = AssociatedTypeWitness != type metadata accessor for ObservableObjectPublisher();
    v13 = a2[3];
    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v12 = 0;
  v13 = a2[3];
  if (!v13)
  {
LABEL_13:
    v28 = *a2;

    dispatch thunk of ObservableObject.objectWillChange.getter();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = type metadata accessor for AttributeInvalidatingSubscriber(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AttributeInvalidatingSubscriber<A>, v21);
    v24 = v23;
    swift_getWitnessTable(protocol conformance descriptor for AttributeInvalidatingSubscriber<A>, v21, WitnessTable);
    SubscriptionLifetime.subscribe<A>(subscriber:to:)(&v28, v8, v21, v24);

    (*(v27 + 8))(v8, AssociatedTypeWitness);

    goto LABEL_14;
  }

LABEL_11:
  if (v9 != v13)
  {
    goto LABEL_13;
  }

  v18 = SubscriptionLifetime.isUninitialized.getter(v14, v15, v16, v17);

  if (v18 || v12)
  {
    goto LABEL_13;
  }

LABEL_14:
  a2[3] = v9;
  return swift_unknownObjectRelease();
}

_BYTE *initializeWithCopy for SubscriptionLifetime.StateType(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = ((v6 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a2 + v9);
  if (v10 >= 2 && v9 != 0)
  {
    v10 = *a2 + 2;
  }

  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    v16 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = (&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v16;
    v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v19 + 24);
    *(v18 + 24) = v20;
    *(v18 + 32) = *(v19 + 32);
    v21 = **(v20 - 8);

    v21(v18, v19, v20);
    *((v18 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
    __dst[v9] = 1;
    return __dst;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    v13 = (&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    *((v13 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    __dst[v9] = 0;

    return __dst;
  }

  return memcpy(__dst, a2, v9 | 1);
}

void *sub_18D0651EC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

_DWORD *destroy for SubscriptionLifetime.StateType(_DWORD *result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  v4 = (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 8;
  v6 = ((v4 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = *(result + v6);
  if (v8 >= 2 && v7 != 0)
  {
    v8 = *result + 2;
  }

  if (v8 == 1)
  {
    v10 = result;
    (*(v2 + 8))();

    return __swift_destroy_boxed_opaque_existential_1(((((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  }

  else if (!v8)
  {
    (*(v2 + 8))();
  }

  return result;
}

uint64_t SubscriptionLifetime.subscribe<A>(subscriber:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v70 = a1;
  v71 = a2;
  v78 = *MEMORY[0x1E69E9840];
  v5 = *v4;
  v67 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 88);
  v76[0] = *(v5 + 80);
  v8 = v76[0];
  v76[1] = v10;
  v62 = v10;
  v76[2] = v9;
  v77 = v11;
  v61 = v11;
  v12 = type metadata accessor for SubscriptionLifetime.Connection(0, v76);
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v55 - v13;
  v15 = type metadata accessor for SubscriptionLifetime.StateType(0, v8, v9, v14);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v55 - v22;
  v23 = v5;
  v25 = v24;
  v26 = *(v23 + 104);
  swift_beginAccess();
  v27 = *(v25 + 16);
  v58 = v26;
  v27(v19, &v4[v26], v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v65 = v12;
  v66 = v9;
  v60 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    v29 = v67;
    v30 = MEMORY[0x1E69E6530];
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v55 - 48, "to subscriber subscription subscriptionID ");
    v72 = v8;
    v73 = type metadata accessor for AnyCancellable();
    v74 = type metadata accessor for Subscription();
    v75 = v30;
    v31 = *(swift_getTupleTypeMetadata() + 64);
    v32 = v68;
    (*(v20 + 32))(v68, v19, v8);
    v33 = outlined init with take of AnyTrackedValue(&v19[v31], v76);
    MEMORY[0x1EEE9AC00](v33);
    v34 = v71;
    *(&v55 - 4) = v8;
    *(&v55 - 3) = v34;
    *(&v55 - 4) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v32, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v55 - 6), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v35);
    v36 = v20;
    if (v72 == 1)
    {
      (*(v20 + 8))(v68, v8);

      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    v56 = v15;
    v39 = v4;
    v40 = v29;
    AnyCancellable.cancel()();
    __swift_project_boxed_opaque_existential_1(v76, v77);
    dispatch thunk of Cancellable.cancel()();

    v57 = v36;
    v41 = v8;
    (*(v36 + 8))(v68, v8);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    v57 = v20;
    v38 = v15;
    v39 = v4;
    v40 = v67;
    v41 = v8;
    v42 = *(v25 + 8);
    v56 = v38;
    v42(v19);
  }

  v43 = *(v39 + 2);
  *(v39 + 2) = v43 + 1;
  v68 = *(v40 + 16);
  v44 = v62;
  (v68)(v7, v70, v62);

  SubscriptionLifetime.Connection.init(parent:downstream:subscriptionID:)(v45, v7, v43, v44, v61, v69);
  type metadata accessor for AnyCancellable();
  v46 = v41;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v48 = *(TupleTypeMetadata3 + 48);
  v49 = *(TupleTypeMetadata3 + 64);
  v50 = v59;
  (*(v57 + 16))(v59, v71, v46);
  (v68)(v7, v70, v44);
  *&v50[v48] = AnyCancellable.__allocating_init<A>(_:)();
  *&v50[v49] = v43;
  v51 = v56;
  swift_storeEnumTagMultiPayload();
  v52 = v58;
  swift_beginAccess();
  (*(v60 + 40))(&v39[v52], v50, v51);
  swift_endAccess();
  v53 = v65;
  swift_getWitnessTable(protocol conformance descriptor for SubscriptionLifetime<A>.Connection<A1>, v65);
  v54 = v69;
  Publisher.subscribe<A>(_:)();
  return (*(v64 + 8))(v54, v53);
}

uint64_t SubscriptionLifetime.Connection.init(parent:downstream:subscriptionID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  CombineIdentifier.init()();
  v12 = *(v11 + 88);
  v15[0] = *(v11 + 80);
  v15[1] = a4;
  v15[2] = v12;
  v15[3] = a5;
  v13 = type metadata accessor for SubscriptionLifetime.Connection(0, v15);
  swift_weakInit();
  swift_weakAssign();

  result = (*(*(a4 - 8) + 32))(a6 + *(v13 + 56), a2, a4);
  *(a6 + *(v13 + 60)) = a3;
  return result;
}

unsigned __int8 *assignWithTake for SubscriptionLifetime.StateType(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = __dst[v11];
  if (v12 >= 2 && v11 != 0)
  {
    v12 = *__dst + 2;
  }

  if (v12 == 1)
  {
    (*(v6 + 8))(__dst, v5);

    __swift_destroy_boxed_opaque_existential_1((((&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
  }

  else if (!v12)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v14 = __src[v11];
  if (v11)
  {
    v15 = v14 >= 2;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v14 = *__src + 2;
  }

  if (v14 == 1)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v18 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v19 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v21;
    v22 = *(v21 + 16);
    *(v20 + 32) = *(v21 + 32);
    *v20 = v23;
    *(v20 + 16) = v22;
    *((v20 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 1;
    return __dst;
  }

  if (!v14)
  {
    (*(v6 + 32))(__dst, __src, v5);
    v16 = (&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v17 = (&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    __dst[v11] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v11 | 1);
}

uint64_t initializeWithCopy for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakCopyInit();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 16))(v13, v14);
  *((*(v11 + 48) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 48) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CombineIdentifier();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = (*(v7 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_weakTakeInit();
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v12 + 8 + v9) & ~v12;
  v14 = (v12 + 8 + v8) & ~v12;
  (*(v10 + 32))(v13, v14);
  *((*(v11 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8) = *((*(v11 + 32) + 7 + v14) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t SubscriptionLifetime.Connection.receive(subscription:)(void *a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (SubscriptionLifetime.shouldAcceptSubscription(_:for:)(a1, *(v2 + *(a2 + 60)), v8, v6, v7))
    {
      dispatch thunk of Subscriber.receive(subscription:)();
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      static Subscribers.Demand.unlimited.getter();
      dispatch thunk of Subscription.request(_:)();
    }
  }

  return result;
}

uint64_t SubscriptionLifetime.shouldAcceptSubscription(_:for:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = type metadata accessor for SubscriptionLifetime.StateType(0, v9, *(*v5 + 88), a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = *(v8 + 104);
  swift_beginAccess();
  (*(v11 + 16))(v16, v5 + v20, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v11 + 8))(v16, v10);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    v33 = v13;
    v31 = type metadata accessor for AnyCancellable();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v22 = *&v16[*(TupleTypeMetadata3 + 64)];
    v23 = *(v36 + 32);
    v34 = *&v16[*(TupleTypeMetadata3 + 48)];
    v35 = v19;
    v32 = v23;
    v24 = v23();
    if (v22 == a2)
    {
      MEMORY[0x1EEE9AC00](v24);
      strcpy(&v30 - 48, "to subscriber subscription subscriptionID ");
      v37 = v9;
      v38 = v31;
      v39 = type metadata accessor for Subscription();
      v40 = MEMORY[0x1E69E6530];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v26 = TupleTypeMetadata[12];
      v36 = a2;
      v27 = TupleTypeMetadata[16];
      v31 = TupleTypeMetadata[20];
      v28 = v33;
      (v32)(v33, v35, v9);
      *&v28[v26] = v34;
      outlined init with copy of AnyTrackedValue(a1, &v28[v27]);
      *&v28[v31] = v36;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      (*(v11 + 40))(v5 + v20, v28, v10);
      swift_endAccess();
      return 1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();

    (*(v36 + 8))(v35, v9);
  }

  return 0;
}

unint64_t type metadata accessor for Subscription()
{
  result = lazy cache variable for type metadata for Subscription;
  if (!lazy cache variable for type metadata for Subscription)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Subscription);
  }

  return result;
}

uint64_t destroy for SubscriptionLifetime.Connection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombineIdentifier();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = (a1 + *(v5 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_weakDestroy();
  v7 = *(*(a2 + 24) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t AttributeInvalidatingSubscriber.receive(subscription:)(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for AttributeInvalidatingSubscriber.StateType(0, *(v3 + 80), *(v3 + 88), v4);
  v6 = *(v5 - 8);
  (*(v6 + 16))(v9, v1 + 4, v5);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Cancellable.cancel()();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    outlined init with copy of AnyTrackedValue(a1, v8);
    swift_beginAccess();
    (*(v6 + 40))(v1 + 4, v8, v5);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    static Subscribers.Demand.unlimited.getter();
    return dispatch thunk of Subscription.request(_:)();
  }
}

__n128 initializeWithCopy for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
  }

  return result;
}

__n128 assignWithTake for AttributeInvalidatingSubscriber.StateType(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t specialized static ObservedObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(a1, a2, a4, a5, a6);
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v13 = type metadata accessor for ObservedObject(0, a4, a6, v12);
    v14 = 3;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v10, a4, a5, a2, &v14, v13, a4);
  }

  return result;
}

uint64_t *initializeWithCopy for ObservedObjectPropertyBox(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v9 = specialized static GraphHost.currentHost.getter();
  v10 = AGCreateWeakAttribute();
  v11 = specialized ObservedObjectPropertyBox.init(host:invalidation:)(v9, v10, a3, a5);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v22[0] = v11;
  v22[1] = v13;
  v22[2] = v15;
  v22[3] = v17;
  v19 = type metadata accessor for ObservedObjectPropertyBox(0, a3, a5, v18);
  swift_getWitnessTable(protocol conformance descriptor for ObservedObjectPropertyBox<A>, v19);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v22, a2, v19, v20);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t specialized ObservedObjectPropertyBox.init(host:invalidation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  SubscriptionLifetime.__allocating_init()();
  type metadata accessor for AttributeInvalidatingSubscriber(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  return specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(a1, a2);
}

uint64_t SubscriptionLifetime.__allocating_init()()
{
  v0 = swift_allocObject();
  SubscriptionLifetime.init()(v0, v1, v2, v3);
  return v0;
}

uint64_t **SubscriptionLifetime.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v4[2] = 0;
  type metadata accessor for SubscriptionLifetime.StateType(0, *(v5 + 80), *(v5 + 88), a4);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t specialized AttributeInvalidatingSubscriber.__allocating_init(host:attribute:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  swift_weakAssign();
  *(v3 + 24) = a2;
  return v3;
}

uint64_t specialized static StateObject._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v20 = 0;
  v10 = specialized static ObservedObject.makeBoxAndSignal<A>(in:container:fieldOffset:)(&v19, 0, a4, a5, a6);
  v17 = v19;
  v18 = v20;
  v12 = type metadata accessor for StateObject.Box(0, a4, a6, v11);
  swift_getWitnessTable(protocol conformance descriptor for StateObject<A>.Box, v12, v17, v18, 0, 0);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(&v17, a2, v12, v13);
  swift_unknownObjectRelease();
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v16 = type metadata accessor for StateObject(0, a4, a6, v15);
    LODWORD(v17) = 6;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v10, a4, a5, a2, &v17, v16, a4);
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItem.SelectionContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t type metadata completion function for SubscriptionLifetime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SubscriptionLifetime.StateType(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for SubscriptionLifetime.StateType(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v5 = &v4;
    swift_getTupleTypeLayout();
    v6 = &v3;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

Swift::Void __swiftcall EnvironmentValues.configureForRoot()()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  static Locale.current.getter();
  v11 = *(v2 + 16);
  v11(v7, v10, v1);
  v12 = *v0;
  v11(v4, v7, v1);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v0, v4);

  v13 = *(v2 + 8);
  v13(v4, v1);
  if (v0[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v12, *v0);
  }

  v13(v7, v1);
  v13(v10, v1);
}

uint64_t ViewGraphGeometryObservers.stopObserving(proposal:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewGraphGeometryObservers.Observer(255, v3, v2, v4);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
}

void one-time initialization function for zero()
{
  static _ProposedSize.zero = 0;
  byte_1EAB0C548 = 0;
  qword_1EAB0C550 = 0;
  byte_1EAB0C558 = 0;
}

void one-time initialization function for infinity()
{
  static _ProposedSize.infinity = 0x7FF0000000000000;
  byte_1EAB10040 = 0;
  qword_1EAB10048 = 0x7FF0000000000000;
  byte_1EAB10050 = 0;
}

uint64_t initializeWithCopy for ContentPathObservers.Observer(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t getEnumTagSinglePayload for Binding(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

uint64_t CachedEnvironment.attribute<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(v3 + 1);
  v6 = (v5 + 32);
  v7 = *(v5 + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 2;
    v9 = *v6;
    v6 += 2;
    if (v9 == v4)
    {
      return *(v8 - 2);
    }
  }

  v23 = *v3;
  v24 = a2;
  v25 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v19[2] = v11;
  v20 = type metadata accessor for Map();
  swift_getWitnessTable(MEMORY[0x1E698D3A8], v20);
  v21 = v12;
  v13 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, partial apply for closure #1 in Attribute.init<A>(_:), v19, v20, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  v10 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  if (v16 >= v15 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
  }

  *(v5 + 2) = v16 + 1;
  v17 = &v5[16 * v16];
  *(v17 + 4) = v4;
  *(v17 + 10) = v10;
  *(v3 + 1) = v5;
  return v10;
}

void *EnvironmentValues.isLuminanceReduced.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t ViewRendererHost.isRootHost.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))(a1);
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t outlined init with copy of Logger?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Logger?(uint64_t a1, uint64_t a2)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Logger?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s2os6LoggerVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s2os6LoggerVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s2os6LoggerVSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void storeEnumTagSinglePayload for Binding(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t one-time initialization function for v6_4()
{
  result = swiftUI_v6_4_os_versions();
  static Semantics.v6_4 = HIDWORD(result);
  return result;
}

uint64_t StoredLocation.init(initialValue:host:signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = specialized StoredLocation.init(initialValue:host:signal:)(a1, a2, a3);

  (*(*(*(v5 + 232) - 8) + 8))(a1);
  return v6;
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_5(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CustomAttributeWriter(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t one-time initialization function for toolbar()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.toolbar);
  v5 = __swift_project_value_buffer(v1, static Log.toolbar);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD836C0);
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    Logger.init(subsystem:category:)();
    v9 = type metadata accessor for Logger();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return outlined init with take of Logger?(v3, v5);
}

uint64_t static ViewModifier.makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[3];
  v76 = a2[2];
  v77 = v12;
  v78 = a2[4];
  v79 = *(a2 + 20);
  v13 = a2[1];
  v74 = *a2;
  v75 = v13;
  static DynamicPropertyCache.fields(of:)(a5, &v80);
  v14 = v80;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  v68 = v74;
  v69 = v75;
  v30 = DWORD1(v81);
  v31 = v11;
  LODWORD(v54) = v11;
  v62 = v80;
  v33 = *(&v80 + 1);
  v34 = v81;
  LOBYTE(v63) = v81;
  DWORD1(v63) = DWORD1(v81);
  outlined init with copy of _ViewInputs(&v74, &v80);
  static ViewModifier.makeBody(modifier:inputs:fields:)(v60, &v80, &v54, &v68, &v62, a5, a6);
  v15 = v60[0];
  v29 = v80;
  v32 = v81;
  v17 = type metadata accessor for _ViewModifier_Content(0, a5, a6, v16);
  *&v80 = a3;
  *(&v80 + 1) = a4;
  LOBYTE(v81) = 0;
  v20 = type metadata accessor for BodyInput(0, v17, v18, v19);
  _ViewInputs.append<A, B>(_:to:)(&v80, v20, v20, &type metadata for BodyInputElement, &protocol witness table for BodyInput<A>, &protocol witness table for BodyInputElement);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = v70;
  v83 = v71;
  v84 = v72;
  v85 = v73;
  v80 = v68;
  v81 = v69;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v56 = v82;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  v54 = v80;
  v55 = v81;
  v61 = v85;
  v23 = v82;
  LODWORD(v56) = 0;
  LODWORD(v42) = v15;
  v60[0] = v80;
  v60[1] = v81;
  v60[3] = v83;
  v60[4] = v84;
  v60[2] = v56;
  v50 = v56;
  v51 = v83;
  v52 = v84;
  v53 = v85;
  v48 = v80;
  v49 = v81;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v80, &v62);
  outlined init with copy of _ViewInputs(v60, &v62);
  v25(v37, &v42, &v48, AssociatedTypeWitness, AssociatedConformanceWitness);
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v67 = v53;
  v62 = v48;
  v63 = v49;
  outlined destroy of _ViewInputs(&v62);
  LODWORD(v56) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v37, &v54);
    AGSubgraphEndTreeElement();
  }

  v50 = v56;
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v48 = v54;
  v49 = v55;
  outlined destroy of _ViewInputs(&v48);
  v26 = v37[0];
  v27 = v37[1];
  if (v32)
  {
    v44 = v70;
    v45 = v71;
    v46 = v72;
    v47 = v73;
    v42 = v68;
    v43 = v69;
    outlined destroy of _ViewInputs(&v42);
  }

  else
  {
    v41 = v29;
    v36 = v31;
    v38[0] = v14;
    v38[1] = v33;
    v39 = v34;
    v40 = v30;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v36, v38, a5);
    v44 = v70;
    v45 = v71;
    v46 = v72;
    v47 = v73;
    v42 = v68;
    v43 = v69;
    outlined destroy of _ViewInputs(&v42);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v14, v33, v34);
  *a7 = v26;
  a7[1] = v27;
  return result;
}

void *static _ViewModifier_Content._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v8 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v8;
  v9 = type metadata accessor for _ViewModifier_Content(0, a3, a4, a4);
  v13 = v6;
  return static ViewModifierContentProvider.providerMakeView(view:inputs:)(v11, v9, a5, &protocol witness table for _ViewModifier_Content<A>);
}

unint64_t type metadata accessor for CorePlatformProvidersDefinition.Type()
{
  result = lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type;
  if (!lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type)
  {
    type metadata accessor for CorePlatformProvidersDefinition();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CorePlatformProvidersDefinition.Type);
  }

  return result;
}

void *initializeWithCopy for _AppearanceActionModifier(void *a1, void *a2)
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

  return a1;
}

void *destroy for _AppearanceActionModifier(void *result)
{
  v1 = result;
  if (*result)
  {
  }

  if (v1[2])
  {
  }

  return result;
}

uint64_t EnvironmentValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EnvironmentObjectKey(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentObjectKey<A>, v4);
  EnvironmentValues.subscript.getter(v4, v4, v5);
  return v7;
}

{
  return specialized EnvironmentValues.subscript.getter(a2, a2, a3, a4);
}

{
  return specialized EnvironmentValues.subscript.getter(a2, a2, a3, a4);
}

{
  return EnvironmentValues.subscript.getter(a2, a2, a3, a4);
}

{
  return EnvironmentValues.subscript.getter(a2, a2, a3, a4);
}

uint64_t specialized EnvironmentValues.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return EnvironmentValues.subscript.getter(a1, a1, a3, a4);
}

{
  result = EnvironmentValues.subscript.getter(a1, a1, a3, a4);
  if (!result)
  {
    _StringGuts.grow(_:)(118);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD77650);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v5);

    MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD77670);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v6);

    MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD776A0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized EnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized EnvironmentValues.subscript.setter(a1, a2, a2, a4);
}

{
  v7 = a1;
  v4 = type metadata accessor for EnvironmentObjectKey(0, a3, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentObjectKey<A>, v4);
  return specialized EnvironmentValues.subscript.setter(&v7, v4, v4, v5);
}

{
  return specialized EnvironmentValues.subscript.setter(a1, a3, a3, a4);
}

{
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    return (*(v9 + 16))(a2, v4, a1, a3, *(a4 + 8));
  }

  v11 = *(a4 + 8);

  return EnvironmentValues.setValue<A>(_:for:)(a1, a2, a3, v11);
}

uint64_t static Optional<A>._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t x3_0@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v9 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v10 = type metadata accessor for Optional();
      static Optional.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v31);
      v28 = v31;
      v29 = v32;
      v30 = v33;
      v27 = v8;
      v11 = a2[3];
      v23 = a2[2];
      v24 = v11;
      v25 = a2[4];
      v26 = *(a2 + 20);
      v12 = a2[1];
      v21 = *a2;
      v22 = v12;
      v20 = x3_0;
      swift_getWitnessTable(protocol conformance descriptor for <A> A?, v10, &v20);
      static DynamicView.makeDynamicView(metadata:view:inputs:)(&v28, &v27, &v21, v10, v13, a4);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v28);
    }
  }

  else if (static Semantics.forced < v9)
  {
    goto LABEL_7;
  }

  v15 = type metadata accessor for Optional();
  LODWORD(v31) = v8;
  v16 = a2[3];
  v23 = a2[2];
  v24 = v16;
  v25 = a2[4];
  v26 = *(a2 + 20);
  v17 = a2[1];
  v21 = *a2;
  v22 = v17;
  v19 = x3_0;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, v15, &v19);
  return static View.makeImplicitRoot(view:inputs:)(&v31, &v21, v15, v18, a4);
}

uint64_t static _AppearanceActionModifier._makeViewList(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v7 = swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    v7 = dyld_program_sdk_at_least();
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (static Semantics.forced >= v6)
  {
LABEL_9:
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks();
    v7 = Attribute.init<A>(body:value:flags:update:)();
    v5 = v7;
  }

LABEL_10:
  a3(v7, a2);
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v5, a2);
}

void lazy protocol witness table accessor for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks()
{
  if (!lazy protocol witness table cache variable for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks)
  {
    swift_getWitnessTable(protocol conformance descriptor for _AppearanceActionModifier.MergedCallbacks, &unk_1F008CEB0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _AppearanceActionModifier.MergedCallbacks and conformance _AppearanceActionModifier.MergedCallbacks);
  }
}

void *destroy for AppearanceEffect(void *result)
{
  v2 = result[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return result;
    }

    v3 = result;

    result = v3;
  }

  if (result[3])
  {
  }

  return result;
}

uint64_t static _AppearanceActionModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *))
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  v5 = *(a2 + 6);
  v12 = *(a2 + 28);
  v13 = *(a2 + 44);
  v14 = *(a2 + 60);
  v15 = *(a2 + 76);
  v6 = *MEMORY[0x1E698D3F8];
  *&v20[0] = __PAIR64__(v5, v4);
  *(&v20[0] + 1) = 1;
  v20[1] = 0uLL;
  WORD4(v21) = 0;
  *&v21 = 0;
  HIDWORD(v21) = 0;
  v22 = v6;
  v16 = v20[0];
  v17 = 0uLL;
  v18 = v21;
  v19 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AppearanceEffect(v20);
  v7 = AGGraphSetFlags();
  v11 = v5;
  return a3(v7, &v9);
}

void lazy protocol witness table accessor for type AppearanceEffect and conformance AppearanceEffect()
{
  if (!lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for AppearanceEffect, &type metadata for AppearanceEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AppearanceEffect and conformance AppearanceEffect);
  }
}

uint64_t initializeWithCopy for AppearanceEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *(a2 + 24);
      *v4 = *v5;
      *(a1 + 24) = v7;
      goto LABEL_9;
    }

    v8 = *(a2 + 16);
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
  }

  else
  {
    *v4 = *v5;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    v10 = *(a2 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

LABEL_9:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = (a4)(0, a2, a3);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t static _BackgroundModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v12;
  v21[4] = *(a2 + 64);
  v22 = *(a2 + 80);
  v13 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v13;
  v20[1] = v11;
  v14 = type metadata accessor for _BackgroundModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:), a5, v20);
  v17 = v20[0];
  v19[1] = v11;
  _GraphValue.subscript.getter(partial apply for closure #2 in static _BackgroundModifier._makeView(modifier:inputs:body:), &type metadata for Alignment, v19);
  return makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(v17, v19[0], v21, a3, 1, a5, a6, a7);
}

uint64_t closure #2 in static _BackgroundModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _BackgroundModifier(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v10, &type metadata for Alignment, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceTransform<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t PreferenceCombiner.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Attribute();
  v5 = type metadata accessor for Array();
  v6 = type metadata accessor for WeakAttribute();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PreferenceCombiner.init(attributes:), v11, v5, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

  *a4 = v9;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceCombiner<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreferenceCombiner<A>, a1);

  return static AsyncAttribute.flags.getter();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t EnvironmentValues.legibilityWeight.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, char *a3@<X8>)
{
  v5 = *v3;
  if (v3[1])
  {

    a1(v5);
  }

  else
  {
    result = a2(*v3);
    if (result)
    {
      v8 = *(result + 72);
    }

    else
    {
      v8 = 2;
    }

    *a3 = v8;
  }

  return result;
}

void *specialized static Environment._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  v7 = type metadata accessor for EnvironmentBox(0, a4, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-v9];
  v11 = *(a3 + 16);
  swift_beginAccess();
  if (a4 == &type metadata for EnvironmentValues)
  {
    v15 = *(v11 + 16);
    type metadata accessor for PropertyList.Tracker();
    v16 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, v17, v18, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = MEMORY[0x1E69E7CC8];
    *(v20 + 24) = 0;
    *(v20 + 32) = v21;
    v22 = MEMORY[0x1E69E7CC0];
    *(v20 + 40) = v21;
    *(v20 + 48) = v22;
    *(v20 + 56) = 0;
    *(v16 + 16) = v20;
    LODWORD(v24) = v15;
    v25 = xmmword_18DD85550;
    v26 = 0;
    v27 = v16;
    specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(&v24, a2);
    return outlined destroy of FullEnvironmentBox(&v24);
  }

  else
  {
    v12 = *(v11 + 16);
    *(v10 + 1) = 0;
    (*(a4[-1].Description + 7))(&v10[*(v7 + 32)], 1, 1, a4);
    v10[*(v7 + 36)] = 0;
    *v10 = v12;
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentBox<A>, v7);
    _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v10, a2, v7, v13);
    return (*(v8 + 8))(v10, v7);
  }
}

_DWORD *initializeWithCopy for EnvironmentBox(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((v6 + v9 + 8) & ~v9);
  v11 = ((v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8)) & ~v9);
  v12 = *(v8 + 48);

  if (v12(v11, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy(v10, v11, v15);
  }

  else
  {
    (*(v8 + 16))(v10, v11, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  if (v13)
  {
    v18 = v14;
  }

  else
  {
    v18 = v14 + 1;
  }

  *(v10 + v18) = *(v11 + v18);
  return a1;
}

uint64_t destroy for EnvironmentBox(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = v3 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t type metadata completion function for EnvironmentBox(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BoxVTable(0, a3, a4, a4);
  UnsafeHeterogeneousBuffer.append<A>(_:vtable:)(a1, v8, a3, &v9);
  if (!*v4)
  {
    goto LABEL_9;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(*v4 + v10 + 12) = *(*v4 + v10 + 12) & 0x80000000 | a2;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t static BoxVTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 136);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

void type metadata accessor for Attribute<EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for Attribute<EnvironmentValues>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
    }
  }
}

uint64_t static _EnvironmentKeyWritingModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x1E69E9840];
  type metadata accessor for _EnvironmentKeyWritingModifier(255, a3, a3, a4);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v12 = type metadata accessor for ChildEnvironment(0, a3, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  LODWORD(a1) = *a1;
  v16 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v16) = *(v16 + 16);
  v19 = type metadata accessor for _EnvironmentKeyWritingModifier(0, a3, v17, v18);
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  ChildEnvironment.init(modifier:env:oldModifier:)(a1, v16, v9, a3, v15);
  v26 = v12;
  swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, v12);
  v27 = v20;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v25, v12, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  (*(v13 + 8))(v15, v12);
  return _GraphInputs.environment.setter(v24[3]);
}

uint64_t type metadata accessor for ChildEnvironment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ChildEnvironment);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ChildEnvironment);
}

void storeEnumTagSinglePayload for _EnvironmentKeyWritingModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

_DWORD *initializeWithCopy for ChildEnvironment(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 4;
  v10 = ((v4 + v9) & ~(v8 | 7));
  v11 = ((v5 + v9) & ~(v8 | 7));
  v12 = ~v8;
  v13 = *(v7 + 64);
  v14 = v8 + 8;
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v15 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (v15 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v10 = *v11;
    v16 = *(v7 + 16);

    v16((v10 + v14) & v12, (v11 + v14) & v12, v6);
    return a1;
  }

  if (!(*(v7 + 48))((v11 + v14) & v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v10, v11, (v14 & ~v8) + v13);
  return a1;
}

{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 16))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  *((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ChildEnvironment<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, a1);

  return static AsyncAttribute.flags.getter();
}

{
  swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void *sub_18D06AB98(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t type metadata completion function for ChildEnvironment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyWritingModifier(255, *(a1 + 16), a3, a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double base witness table accessor for _AttributeBody in ChildEnvironment<A>(uint64_t a1)
{
  return swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, a1);
}

{
  return swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, a1);
}

uint64_t ChildEnvironment.init(modifier:env:oldModifier:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = *(type metadata accessor for ChildEnvironment(0, a4, a3, a4) + 32);
  type metadata accessor for _EnvironmentKeyWritingModifier(255, a4, v9, v10);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v8], a3, v11);
}

uint64_t destroy for ChildEnvironment(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v4 | 7) + 4) & ~(v4 | 7));
  v6 = ~v4;
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v5 + v4 + 8) & v6);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v5;
  if (*v5 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v5 + v4 + 8) & v6, v2);
  }

  return result;
}

uint64_t specialized static State._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v17[0] = AGCreateWeakAttribute();
  v17[1] = 0;
  v11 = type metadata accessor for StatePropertyBox(0, a4, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for StatePropertyBox<A>, v11);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v17, a2, v11, v12);
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v16 = type metadata accessor for State(0, a4, v14, v15);
    LODWORD(v17[0]) = 1;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(v8, a4, a5, a2, v17, v16, a4);
  }

  return result;
}

uint64_t StatePropertyBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[1];
  v12 = v11 == 0;
  v13 = v11;
  if (!v11)
  {
    if (*(a1 + *(type metadata accessor for State(0, v5, v7, v8) + 28)) && (type metadata accessor for StoredLocation(0, v5, v14, v15), (v16 = swift_dynamicCastClass()) != 0))
    {
      v13 = v16;
      v3[1] = v16;
    }

    else
    {
      (*(v6 + 16))(v10, a1, v5);
      type metadata accessor for StoredLocation(0, v5, v17, v18);
      v19 = specialized static GraphHost.currentHost.getter();
      v13 = specialized StoredLocation.__allocating_init(initialValue:host:signal:)(v10, v19, *v3);

      (*(v6 + 8))(v10, v5);
      v3[1] = v13;
    }
  }

  WeakValue = AGGraphGetWeakValue();
  v22 = v21 & 1;
  StoredLocationBase.updateValue.getter(v10);
  (*(v6 + 40))(a1, v10, v5);
  v25 = *(type metadata accessor for State(0, v5, v23, v24) + 28);

  *(a1 + v25) = v13;
  if (WeakValue)
  {
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    v12 = (v11 == 0) | StoredLocationBase.wasRead.getter();
  }

  return v12 & 1;
}

uint64_t State.getValue(forReading:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + *(a2 + 28));
  if (!v6)
  {
LABEL_8:
    v9 = *(*(*(a2 + 16) - 8) + 16);

    return v9(a3, v3);
  }

  v8 = one-time initialization token for sharedGraph;

  if (v8 != -1)
  {
    swift_once();
  }

  if (AGGraphGetCounter())
  {
    if (a1)
    {
      (*(*v6 + 104))(1);
    }

    goto LABEL_8;
  }

  (*(*v6 + 120))();
}

uint64_t StoredLocationBase.updateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  StoredLocationBase.$data.getter(&v11);
  v4 = v11;
  v5 = *(v3 + 168);
  v8 = *(type metadata accessor for StoredLocationBase.Data(0, v5, v6, v7) - 8);
  v9 = (*(v8 + 80) + 20) & ~*(v8 + 80);
  os_unfair_lock_lock(v4 + 4);
  closure #1 in StoredLocationBase.updateValue.getter(v4 + v9, v5, a1);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v4 + 4);
}

uint64_t StoredLocationBase.$data.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v6 = type metadata accessor for StoredLocationBase.Data(255, *(v3 + 168), v4, v5);
  type metadata accessor for AtomicBox(0, v6, v7, v8);
  return AtomicBox.projectedValue.getter(a1);
}

uint64_t closure #1 in StoredLocationBase.updateValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v16[3] = *(a1 + *(type metadata accessor for StoredLocationBase.Data(0, a2, v10, v11) + 28));
  v12 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v12);
  Collection.first.getter();
  v13 = *(a2 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, a2) != 1)
  {
    return (*(v13 + 32))(a3, v9, a2);
  }

  (*(v13 + 16))(a3, a1, a2);
  result = (v14)(v9, 1, a2);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t StoredLocationBase.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v7 = type metadata accessor for StoredLocationBase.Data(0, *(v3 + 168), v5, v6);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 20) & ~*(v8 + 80);

  os_unfair_lock_lock(v4 + 4);
  (*(v8 + 16))(a1, v4 + v9, v7);
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v4 + 4);
}

uint64_t type metadata completion function for _ShapeView(uint64_t a1)
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

void instantiation function for generic protocol witness table for Rectangle(uint64_t a1)
{
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = v2;
}

{
  lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  *(a1 + 8) = v2;
}

void lazy protocol witness table accessor for type Rectangle and conformance Rectangle()
{
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle, &type metadata for Rectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle, &type metadata for Rectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }
}

{
  if (!lazy protocol witness table cache variable for type Rectangle and conformance Rectangle)
  {
    swift_getWitnessTable(protocol conformance descriptor for Rectangle, &type metadata for Rectangle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Rectangle and conformance Rectangle);
  }
}

uint64_t initializeWithCopy for AccessibilityAttachment(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 280);
  v16 = *(a2 + 288);
  *(a1 + 280) = v15;
  *(a1 + 288) = v16;

  v17 = v16;
  return a1;
}

uint64_t one-time initialization function for largeTitle(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.TextStyleProvider>, lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, type metadata accessor for FontBox);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 17) = 4;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *a3 = result;
  return result;
}

void type metadata accessor for FontBox<Font.TextStyleProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Font.TextStyleProvider and conformance Font.TextStyleProvider()
{
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.TextStyleProvider, &type metadata for Font.TextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.TextStyleProvider and conformance Font.TextStyleProvider);
  }
}

uint64_t EnvironmentValues.accentColor.setter(uint64_t a1)
{
  specialized EnvironmentValues.accentColor.setter(a1);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017SystemColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(Swift::UInt *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(v4, v9);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SystemColorSchemeKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemColorSchemeKey>, &type metadata for SystemColorSchemeKey, &protocol witness table for SystemColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SystemColorSchemeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016RedactionReasonsV033_18671928047E57F039DC339288B6FAFBLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t EnvironmentBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v119 = a3;
  v4 = *(a3 + 16);
  v5 = type metadata accessor for Optional();
  v112 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = v98 - v9;
  v116 = type metadata accessor for ObservationTracking._AccessList();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v109 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v110 = v98 - v12;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v106 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v107 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v98 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v113 = v98 - v19;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v104 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v98 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v117 = v98 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v108 = v98 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v120 = v98 - v31;
  v34 = type metadata accessor for Environment.Content(0, v4, v32, v33);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v111 = v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = (v98 - v39);
  (*(v35 + 16))(v98 - v39, a1, v34, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v35 + 8))(v40, v34);
    return 0;
  }

  v100 = v35;
  v101 = v34;
  v118 = v20;
  v105 = v5;
  v102 = v7;
  v99 = a1;
  v42 = *v40;
  v43 = v121;
  Value = AGGraphGetValue();
  v45 = Value[1];
  v126[0] = *Value;
  v126[1] = v45;
  v47 = v46 & 1;
  v127 = v46 & 1;
  v48 = *(v43 + 8);
  *&v124 = v42;
  v98[2] = v42;
  if (!v48)
  {

LABEL_10:
    v50 = v116;
    v127 = 1;
    *(v121 + 8) = v42;
    goto LABEL_11;
  }

  v123 = v48;
  type metadata accessor for KeyPath();

  swift_retain_n();

  v49 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v49 & 1) == 0)
  {

    goto LABEL_10;
  }

  v50 = v116;
  if (!v47 && (*(v121 + *(v119 + 36)) & 1) == 0)
  {
    v51 = *(v112 + 16);
LABEL_26:
    v82 = v105;
    v90 = v118;
    goto LABEL_29;
  }

LABEL_11:
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v52 = static ObservationCenter._current;
  swift_beginAccess();
  v53 = pthread_getspecific(v52[2]);
  v54 = v118;
  if (!v53)
  {
    v55 = swift_slowAlloc();
    pthread_setspecific(v52[2], v55);
    v125 = type metadata accessor for ObservationCenter();
    *&v124 = v52[3];
    outlined init with take of Any(&v124, v55);

    v53 = v55;
  }

  outlined init with copy of Any(v53, &v124);
  type metadata accessor for ObservationCenter();
  v56 = swift_dynamicCast();
  v98[1] = v98;
  v103 = v122;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v98[-2] = v126;
  v98[-1] = v42;
  v58 = v114;
  v59 = (*(v114 + 56))(v17, 1, 1, v50, v57);
  MEMORY[0x1EEE9AC00](v59);
  v98[-4] = v4;
  v98[-3] = partial apply for closure #1 in EnvironmentBox.update(property:phase:);
  v98[-2] = &v98[-4];
  v60 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), &v98[-6], v106, v60, v4, MEMORY[0x1E69E7288], &v124);
  v106 = 0;
  v61 = *(v54 + 32);
  v61(v117, v25, v4);
  v62 = v113;
  outlined init with take of ObservationTracking._AccessList?(v17, v113);
  v63 = v107;
  outlined init with copy of ObservationTracking._AccessList?(v62, v107);
  v64 = (*(v58 + 48))(v63, 1, v50);
  v65 = v115;
  if (v64 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v62);
    v76 = v63;
  }

  else
  {
    v66 = *(v58 + 32);
    v67 = v110;
    v66(v110, v63, v50);
    (*(v58 + 16))(v109, v67, v50);
    v68 = v103;
    swift_beginAccess();
    v69 = *(v68 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v68 + 24) = v69;
    v98[0] = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69[2] + 1, 1, v69);
      *(v68 + 24) = v69;
    }

    v72 = v69[2];
    v71 = v69[3];
    if (v72 >= v71 >> 1)
    {
      v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v69);
    }

    v69[2] = v72 + 1;
    v73 = v114;
    v74 = v69 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v114 + 72) * v72;
    v75 = v116;
    (v98[0])(v74, v109, v116);
    *(v103 + 24) = v69;
    (*(v73 + 8))(v110, v75);
    v65 = v115;
    v76 = v113;
  }

  outlined destroy of ObservationTracking._AccessList?(v76);
  v77 = v108;
  v61(v108, v117, v4);

  v61(v120, v77, v4);
  v78 = v119;
  v79 = v121;
  *(v121 + *(v119 + 36)) = v64 != 1;
  v80 = *(v78 + 32);
  v81 = v112;
  v51 = *(v112 + 16);
  v82 = v105;
  v51(v65, v79 + v80, v105);
  v83 = v118;
  if ((*(v118 + 48))(v65, 1, v4) == 1)
  {
    v84 = v65;
    v85 = *(v81 + 8);
    v17 = ((v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v85(v84, v82);
  }

  else
  {
    v86 = v104;
    v87 = (v61)(v104, v65, v4);
    MEMORY[0x1EEE9AC00](v87);
    v88 = v120;
    v98[-4] = v4;
    v98[-3] = v88;
    LODWORD(v98[-2]) = 3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v86, partial apply for closure #1 in compareValues<A>(_:_:options:), &v98[-6], v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v89);
    v17 = *(v83 + 8);
    (v17)(v86, v4);
    if (v122)
    {
      (v17)(v120, v4);
      v127 = 0;
      goto LABEL_26;
    }

    v85 = *(v112 + 8);
    v17 = ((v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v82 = v105;
  }

  v91 = v121;
  v85((v121 + v80), v82);
  v61((v91 + v80), v120, v4);
  v90 = v118;
  (*(v118 + 56))(v91 + v80, 0, 1, v4);
LABEL_29:
  v92 = v102;
  v51(v102, v121 + *(v119 + 32), v82);
  v93 = (*(v90 + 48))(v92, 1, v4);
  v94 = v101;
  v95 = v100;
  if (v93 != 1)
  {

    v96 = v111;
    (*(v90 + 32))(v111, v92, v4);
    swift_storeEnumTagMultiPayload();
    (*(v95 + 40))(v99, v96, v94);
    v41 = v127;

    return v41;
  }

  __break(1u);
  result = outlined destroy of ObservationTracking._AccessList?(v17);
  __break(1u);
  return result;
}

uint64_t closure #1 in EnvironmentBox.update(property:phase:)(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

unsigned __int8 *assignWithTake for Environment(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
  }

  v13 = a2[v7];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    *a1 = *a2;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t ChildEnvironment.updateValue()(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v39 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v7 = type metadata accessor for _EnvironmentKeyWritingModifier(255, v4, v5, v6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v18 = *(v17 + 48);
  Value = AGGraphGetValue();
  v21 = v20;
  v46 = *(v7 - 8);
  (*(v46 + 16))(v16, Value, v7);
  v43 = v1;
  v44 = v16;
  v16[v18] = v21 & 1;
  v22 = AGGraphGetValue();
  v23 = v22[1];
  v48 = *v22;
  v49 = v23;
  v50 = v24 & 1;
  v41 = a1;
  if (v24)
  {

    goto LABEL_7;
  }

  if (v21)
  {
    MEMORY[0x1EEE9AC00](v22);
    v34 = v44;
    *(&v36 - 2) = v42;
    *(&v36 - 1) = v34;
    v45 = type metadata accessor for Optional();

    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in implicit closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), (&v36 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v35, v47);
    if (LOBYTE(v47[0]) == 2 || (v47[0] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!AGGraphGetOutputValue())
  {
LABEL_7:
    v26 = *(v9 + 16);
    v27 = v40;
    v25 = v44;
    v26(v40, v44, TupleTypeMetadata2);
    v37 = v9;
    v45 = TupleTypeMetadata2;
    v28 = *(v46 + 8);

    v28(v27, v7);
    v26(v11, v25, v45);
    (*(v39 + 16))(v38, &v11[*(v7 + 28)], v42);
    v28(v11, v7);
    swift_setAtWritableKeyPath();

    v47[0] = v48;
    v47[1] = v49;

    AGGraphSetOutputValue();

    TupleTypeMetadata2 = v45;
    v9 = v37;

    v29 = *(v41 + 32);
    v30 = type metadata accessor for Optional();
    v31 = v43;
    (*(*(v30 - 8) + 8))(v43 + v29, v30);
    v26(v27, v25, TupleTypeMetadata2);
    v32 = v46;
    (*(v46 + 32))(v31 + v29, v27, v7);
    (*(v32 + 56))(v31 + v29, 0, 1, v7);
    return (*(v9 + 8))(v25, TupleTypeMetadata2);
  }

  v25 = v44;
  return (*(v9 + 8))(v25, TupleTypeMetadata2);
}

{
  v2 = v1;
  v50 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  Value = AGGraphGetValue();
  v13 = v12;
  v15 = *Value;
  v14 = Value[1];
  v47 = v15;
  v48 = v14;
  v49 = v12 & 1;

  v40 = a1;
  v19 = ChildEnvironment.modifier.getter(a1, v16, v17, v18);

  v20 = swift_readAtKeyPath();
  v39 = v5;
  v38 = *(v5 + 16);
  v38(v10);
  v20(v46, 0);

  v43 = v4;
  v44 = v2;
  v45 = v10;
  v23 = type metadata accessor for _EnvironmentKeyTransformModifier(0, v4, v21, v22);
  v24 = Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in ChildEnvironment.updateValue(), v42, v23, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  if ((v13 & 1) != 0 || (MEMORY[0x1EEE9AC00](v24), *(&v37 - 2) = v4, *(&v37 - 1) = v10, type metadata accessor for Optional(), _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in implicit closure #1 in ChildEnvironment.updateValue(), (&v37 - 4), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v25, v46), LOBYTE(v46[0]) == 2) || (v46[0] & 1) != 0 || (v46[0] = *(v2 + *(v40 + 36)), type metadata accessor for WritableKeyPath(), type metadata accessor for Optional(), , _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in implicit closure #3 in ChildEnvironment.updateValue(), v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v26, &v41), , v41 == 2) || (v41 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v28 = v10;
    v29 = v10;
    v30 = v19;
    v31 = v38;
    (v38)(v7, v28, v4);
    swift_setAtWritableKeyPath();
    v46[0] = v47;
    v46[1] = v48;

    AGGraphSetOutputValue();

    v32 = v40;
    v33 = *(v40 + 32);
    v34 = type metadata accessor for Optional();
    (*(*(v34 - 8) + 8))(v2 + v33, v34);
    v31(v2 + v33, v29, v4);
    v27 = v39;
    (*(v39 + 56))(v2 + v33, 0, 1, v4);
    v35 = *(v32 + 36);

    *(v2 + v35) = v30;
    v10 = v29;
  }

  else
  {

    v27 = v39;
  }

  return (*(v27 + 8))(v10, v4);
}

uint64_t getEnumTagSinglePayload for _EnvironmentKeyWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2g5@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(a1, v6);
  if (result)
  {
    v5 = *(result + 72);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void _GraphInputs.interfaceIdiom.getter(void *a1@<X8>)
{
  v3 = *v1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v3, v11);
  if (v4 && (v8 = v4, (v9 = *(v4 + 72)) != 0))
  {
    v10 = *(v8 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, v5, v6, v7);
    v10 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  *a1 = v9;
  a1[1] = v10;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24WithinAccessibilityRotorV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA24WithinAccessibilityRotorV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for WithinAccessibilityRotor)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void *static ViewModifier<>._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v31 = *(a2 + 32);
  v32 = v10;
  v12 = *(a2 + 48);
  v33 = *(a2 + 64);
  v13 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v13;
  v26 = v31;
  v27 = v12;
  v28 = *(a2 + 64);
  v14 = *a1;
  v34 = *(a2 + 80);
  v29 = *(a2 + 80);
  v24 = v30[0];
  v25 = v11;
  LODWORD(v37[0]) = v14;
  v15 = *(a7 + 8);
  outlined init with copy of _ViewInputs(v30, v39);
  v15(v37, &v24, a5, a7);
  v35[2] = v26;
  v35[3] = v27;
  v35[4] = v28;
  v36 = v29;
  v35[0] = v24;
  v35[1] = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v18 = v24;
  v19 = v25;
  v16 = outlined init with copy of _ViewInputs(v35, v39);
  a3(v16, &v18);
  v37[2] = v20;
  v37[3] = v21;
  v37[4] = v22;
  v38 = v23;
  v37[0] = v18;
  v37[1] = v19;
  outlined destroy of _ViewInputs(v37);
  v39[2] = v26;
  v39[3] = v27;
  v39[4] = v28;
  v40 = v29;
  v39[0] = v24;
  v39[1] = v25;
  return outlined destroy of _ViewInputs(v39);
}

uint64_t type metadata completion function for StaticIf(uint64_t a1)
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

uint64_t static ViewModifier<>._makeViewList(modifier:inputs:body:)(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  outlined init with copy of _ViewListInputs(a2, v14);
  v13 = v10;
  v11 = (*(a7 + 8))(&v13, v14, a5, a7);
  a3(v11, v14);
  return outlined destroy of _ViewListInputs(v14);
}

uint64_t _ViewInputs.scrapeableParentID.setter(unsigned int *a1)
{
  v2 = *a1;
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA05_ViewD0VAAE18ScrapeableParentID010_0EC4D15D4T21D8FD0340271BA6BA4D1B4LLV_Ttg5();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE18ScrapeableParentID010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV_Tt2B5(v1, v2);
}

double AccessibilityProperties.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 224) = v7[6];
  *(a1 + 240) = v2;
  *(a1 + 256) = v7[8];
  *(a1 + 272) = v8;
  v3 = v7[3];
  *(a1 + 160) = v7[2];
  *(a1 + 176) = v3;
  v4 = v7[5];
  *(a1 + 192) = v7[4];
  *(a1 + 208) = v4;
  result = *v7;
  v6 = v7[1];
  *(a1 + 128) = v7[0];
  *(a1 + 144) = v6;
  *(a1 + 280) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t static AccessibilityAttachment.properties(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AccessibilityProperties(a1, v8);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v9);
  v3 = v9[7];
  *(a2 + 224) = v9[6];
  *(a2 + 240) = v3;
  *(a2 + 256) = v9[8];
  *(a2 + 272) = v10;
  v4 = v9[3];
  *(a2 + 160) = v9[2];
  *(a2 + 176) = v4;
  v5 = v9[5];
  *(a2 + 192) = v9[4];
  *(a2 + 208) = v5;
  v6 = v9[1];
  *(a2 + 128) = v9[0];
  *(a2 + 144) = v6;
  *(a2 + 280) = MEMORY[0x1E69E7CC8];
  *(a2 + 288) = 0;
  return outlined assign with take of AccessibilityProperties(v8, a2);
}

uint64_t initializeWithCopy for AccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  return a1;
}

double _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

uint64_t destroy for PlatformItem.AccessibilityContent(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }
}

uint64_t assignWithTake for AccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = (a1 + 64);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) != 1)
  {
    v11 = *(a2 + 240);
    if (v11 != 1)
    {
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v11;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
      goto LABEL_15;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
  }

  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v14;
  v15 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v15;
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  return a1;
}

uint64_t destroy for TextVariantsStorage.Variant(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
}

void destroy for AccessibilityAttachment(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  v3 = a1[36];
}

uint64_t initializeWithCopy for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t _VariadicView.Tree.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = *(a3 - 8);
  (*(v13 + 16))(a6, a1, a3);
  type metadata accessor for _VariadicView.Tree(0, a3, a4, a5);
  a2();
  v11 = *(v13 + 8);

  return v11(a1, a3);
}

BOOL _ViewInputs.isScrapeable.getter()
{
  v1 = *(v0 + 36);
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(v0 + 48)))
  {
    return (v1 & 0x2000) == 0;
  }

  return 0;
}

uint64_t destroy for MakeViewRoot(void *a1)
{
}

uint64_t static View.makeImplicitRoot(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a2[3];
  v31[2] = a2[2];
  v31[3] = v10;
  v31[4] = a2[4];
  v32 = *(a2 + 20);
  v11 = a2[1];
  v31[0] = *a2;
  v31[1] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = v9;
  v13 = a2[3];
  v25 = a2[2];
  v26 = v13;
  v27 = a2[4];
  LODWORD(v28) = *(a2 + 20);
  v14 = a2[1];
  v23 = *a2;
  v24 = v14;
  *(&v28 + 1) = partial apply for closure #1 in static View.makeImplicitRoot(view:inputs:);
  v29 = v12;
  v30 = 0;
  v15 = *&v31[0];
  outlined init with copy of _ViewInputs(v31, v21);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v15);
  result = (*(v16 + 8))(&v23, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v18 = *(&v29 + 1);
  if (*(&v29 + 1))
  {
    v19 = v30;
    v20 = HIDWORD(v30);
    v21[4] = v27;
    v21[5] = v28;
    v21[6] = v29;
    v22 = v30;
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;

    outlined destroy of MakeViewRoot(v21);

    *a5 = v18;
    *(a5 + 8) = v19;
    *(a5 + 12) = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MakeViewRoot.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[3];
  v11 = v3[1];
  v50 = v3[2];
  v51 = v10;
  v12 = v3[3];
  v52 = v3[4];
  v13 = v3[1];
  v49[0] = *v3;
  v49[1] = v13;
  v58 = v50;
  v59 = v12;
  v60 = v3[4];
  v53 = *(v3 + 20);
  v61 = *(v3 + 20);
  v56 = v49[0];
  v57 = v11;
  v15 = *(v14 + 24);
  outlined init with copy of _ViewInputs(v49, v54);
  v15(a2, a3);
  LOBYTE(v43) = 1;
  v16 = _ViewInputs.intern<A>(_:id:)(v9, &v43, a2);
  (*(v7 + 8))(v9, a2);
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v55 = v61;
  v54[0] = v56;
  v54[1] = v57;
  outlined destroy of _ViewInputs(v54);
  v17 = v3[3];
  v58 = v3[2];
  v59 = v17;
  v60 = v3[4];
  v61 = *(v3 + 20);
  v18 = v3[1];
  v56 = *v3;
  v57 = v18;
  v46 = v17;
  v47 = v60;
  v44 = v18;
  v45 = v58;
  v48 = v61;
  v43 = v56;
  outlined init with copy of _ViewInputs(&v56, v41);
  v19 = *(a3 + 8);
  v20 = *(v19 + 8);
  v21 = *(v20 + 8);

  v22 = v21(a2, v20);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v22);

  _GraphValue.init(_:)(v16, &v35);
  v37[2] = v45;
  v37[3] = v46;
  v37[4] = v47;
  v38 = v48;
  v37[0] = v43;
  v37[1] = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v29 = v43;
  v30 = v44;
  v23 = *(v3 + 11);
  v24 = v4[12];
  v25 = *(v19 + 32);
  outlined init with copy of _ViewInputs(v37, v41);
  v25(v36, &v35, &v29, v23, v24, a2, v19);
  v39[2] = v31;
  v39[3] = v32;
  v39[4] = v33;
  v40 = v34;
  v39[0] = v29;
  v39[1] = v30;
  outlined destroy of _ViewInputs(v39);
  v41[2] = v45;
  v41[3] = v46;
  v41[4] = v47;
  v42 = v48;
  v41[0] = v43;
  v41[1] = v44;
  outlined destroy of _ViewInputs(v41);
  v26 = v36[0];
  v27 = v36[1];

  v4[13] = v26;
  v4[14] = v27;
  return result;
}

uint64_t closure #1 in static View.makeImplicitRoot(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _ViewInputs.implicitRootBodyInputs.getter(v10);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v9 = a3;
  (*(a5 + 32))(&v9, v10, a4, a5);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(a3, a4, a5);
  return outlined destroy of _ViewListInputs(v10);
}

uint64_t static _ConditionalContent<>._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>)
{
  v13 = *a1;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v14 = static Semantics_v2.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v16 = type metadata accessor for _ConditionalContent(0, a3, a4, v15);
      static _ConditionalContent.makeConditionalMetadata<A>(_:)(a3, a4, &type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v37);
      v34 = v37;
      v35 = v38;
      v36 = v39;
      v33 = v13;
      v17 = *(a2 + 48);
      v29 = *(a2 + 32);
      v30 = v17;
      v31 = *(a2 + 64);
      v32 = *(a2 + 80);
      v18 = *(a2 + 16);
      v27 = *a2;
      v28 = v18;
      v26[0] = a6;
      v26[1] = a7;
      swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v16, v26);
      static DynamicView.makeDynamicView(metadata:view:inputs:)(&v34, &v33, &v27, v16, v19, a5);
      outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v34);
    }
  }

  else if (static Semantics.forced < v14)
  {
    goto LABEL_7;
  }

  v21 = type metadata accessor for _ConditionalContent(0, a3, a4, v15);
  LODWORD(v37) = v13;
  v22 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v22;
  v31 = *(a2 + 64);
  v32 = *(a2 + 80);
  v23 = *(a2 + 16);
  v27 = *a2;
  v28 = v23;
  v25[0] = a6;
  v25[1] = a7;
  swift_getWitnessTable(protocol conformance descriptor for <> _ConditionalContent<A, B>, v21, v25);
  return static View.makeImplicitRoot(view:inputs:)(&v37, &v27, v21, v24, a5);
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<_VStackLayout> and conformance DynamicLayoutComputer<A>);
  }
}

uint64_t specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

{
  result = swift_beginAccess();
  if ((*(a3 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v5);
    return AGGraphMutateAttribute();
  }

  return result;
}

uint64_t partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1, uint64_t a2)
{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

{
  return specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:)(a1, a2, v2);
}

void *closure #1 in makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v35 = a1[2];
  v36 = v8;
  v37 = a1[4];
  v38 = *(a1 + 20);
  v9 = a1[1];
  v33 = *a1;
  v34 = v9;
  _GraphValue.init(_:)(a2, &v16);
  v10 = v16;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v23 = v33;
  v24 = v34;
  v12 = v35;
  LODWORD(v25) = 0;
  v15 = v10;
  v29[0] = v33;
  v29[1] = v34;
  v30 = v38;
  v29[3] = v36;
  v29[4] = v37;
  v29[2] = v25;
  v19 = v25;
  v20 = v36;
  v21 = v37;
  v22 = v38;
  v17 = v33;
  v18 = v34;
  v13 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v33, v31);
  outlined init with copy of _ViewInputs(v29, v31);
  v13(&v15, &v17, a3, a4);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v32 = v22;
  v31[0] = v17;
  v31[1] = v18;
  outlined destroy of _ViewInputs(v31);
  LODWORD(v25) = v12;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a5, &v23);
    AGSubgraphEndTreeElement();
  }

  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v17 = v23;
  v18 = v24;
  return outlined destroy of _ViewInputs(&v17);
}

void lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery()
{
  if (!lazy protocol witness table cache variable for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery)
  {
    swift_getWitnessTable(protocol conformance descriptor for SecondaryLayerGeometryQuery, &type metadata for SecondaryLayerGeometryQuery, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(Swift::UInt *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ImplicitRootType);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt0B5(v6, v10) || (type metadata accessor for ImageStyleProtocol.Type(0, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot.Type, &lazy cache variable for type metadata for _VariadicView_AnyImplicitRoot, &protocol descriptor for _VariadicView_AnyImplicitRoot), result = AGCompareValues(), !result))
  {
    v8 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ImplicitRootType>, &type metadata for ImplicitRootType, &protocol witness table for ImplicitRootType, type metadata accessor for TypedElement);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ImplicitRootType, 0, v8);
  }

  return result;
}

double protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _ZStackLayout@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static Alignment.center;
  *a1 = static Alignment.center;
  return result;
}

void *_s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v51 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(a2 + 9);
  v10 = a2[3];
  v11 = a2[4];
  v40 = a2[2];
  v41 = v10;
  v42 = v11;
  v43 = *(a2 + 20);
  v12 = a2[1];
  v38 = *a2;
  v39 = v12;
  DWORD1(v40) = v9 & 0xFFFFFFF3;
  v44 = v8;
  v13 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v45);
  outlined init with copy of PropertyList(&v44, &v45);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v38, v13);
  outlined destroy of PropertyList(&v44);
  v14 = v38;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v45);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v14, v45);
  if (v18)
  {
    v19 = *(v18 + 72) | 0x4000;
  }

  else
  {
    v19 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v38, v19);

  if ((v9 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v40) = v9 & 0xFFFFFFF3;
  }

LABEL_5:
  v34[2] = v40;
  v34[3] = v41;
  v34[4] = v42;
  v35 = v43;
  v34[0] = v38;
  v34[1] = v39;
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v45 = v38;
  v46 = v39;
  v16 = outlined init with copy of _ViewInputs(v34, v36);
  a3(v33, v16, &v45);
  v36[2] = v47;
  v36[3] = v48;
  v36[4] = v49;
  v37 = v50;
  v36[0] = v45;
  v36[1] = v46;
  outlined destroy of _ViewInputs(v36);
  outlined init with copy of _ViewListOutputs.Views(v33, v31);
  if (v32)
  {
    v17 = v31[0];
    if (*(&v31[0] + 1))
    {
      LODWORD(v45) = v31[0];
      *(&v45 + 1) = *(&v31[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v17 = Attribute.init<A>(body:value:flags:update:)();
    }

    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v45 = v38;
    v46 = v39;
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(v6, &v45, v17, a4);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v31, v24);
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v45 = v38;
    v46 = v39;
    if ((v9 & 0x800) != 0)
    {
      v20 = a2[3];
      v27 = a2[2];
      v28 = v20;
      v29 = a2[4];
      v30 = *(a2 + 20);
      v21 = a2[1];
      v25 = *a2;
      v26 = v21;
      v22 = _ViewListOutputs.makeAttribute(viewInputs:)(&v25);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA07_ZStackC0V_Tt2t4B5(v6, &v45, v22, a4);
    }

    else
    {
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5(v6, &v45, 65538, v24, a4);
    }

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  outlined destroy of _ViewListOutputs(v33);
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v25 = v38;
  v26 = v39;
  return outlined destroy of _ViewInputs(&v25);
}

void *protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance _ZStackLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
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
  return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B5(v4, v8, a3, a4);
}

uint64_t makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 48);
  v12 = *(a3 + 16);
  v77 = *(a3 + 32);
  v78 = v11;
  v13 = *(a3 + 48);
  v79 = *(a3 + 64);
  v14 = *(a3 + 16);
  v75 = *a3;
  v76 = v14;
  v71 = v77;
  v72 = v13;
  v73 = *(a3 + 64);
  v80 = *(a3 + 80);
  v15 = WORD2(v77);
  v74 = *(a3 + 80);
  v69 = v75;
  v70 = v12;
  if ((WORD2(v77) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v75, v67);
    specialized _GraphInputs.pushScope<A>(id:)(0);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v75, v67);
  }

  v65[2] = v71;
  v65[3] = v72;
  v65[4] = v73;
  v66 = v74;
  v65[0] = v69;
  v65[1] = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v59 = v69;
  v60 = v70;
  v16 = outlined init with copy of _ViewInputs(v65, v67);
  a4(v51, v16, &v59);
  v67[2] = v61;
  v67[3] = v62;
  v67[4] = v63;
  v68 = v64;
  v67[0] = v59;
  v67[1] = v60;
  outlined destroy of _ViewInputs(v67);
  v17 = *&v51[0];
  v18 = DWORD2(v51[0]);
  v44 = HIDWORD(v51[0]);
  v55 = v77;
  v56 = v78;
  v57 = v79;
  v58 = v80;
  v53 = v75;
  v54 = v76;
  if ((v15 & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(&v75, &v59);
    specialized _GraphInputs.pushScope<A>(id:)(1);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    outlined init with copy of _ViewInputs(&v75, &v59);
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_12;
    }
  }

  v19 = *MEMORY[0x1E698D3F8];
  if ((a2 & 0x100000000) != 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v20 = a2;
  }

  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v21 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v22 = specialized CachedEnvironment.attribute<A>(id:_:)(v21, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  *&v59 = __PAIR64__(v22, v20);
  *(&v59 + 1) = __PAIR64__(DWORD2(v79), v79);
  *&v60 = __PAIR64__(v19, v44);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v57) = AGGraphCreateOffsetAttribute2();
  LODWORD(v21) = v55;
  DWORD2(v57) = AGGraphCreateOffsetAttribute2();
  LODWORD(v55) = v21 | 0x18;
LABEL_12:
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v23 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v23)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (dyld_program_sdk_at_least())
  {
LABEL_20:

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v53, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  }

LABEL_21:
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v59 = v53;
  v60 = v54;
  v24 = closure #1 in makeSecondaryLayerView<A>(secondaryLayer:alignment:inputs:body:flipOrder:)(&v59, a1, a6, a7, v51);
  v25 = *&v51[0];
  v26 = DWORD2(v51[0]);
  if ((v15 & 0x20) != 0)
  {
    MEMORY[0x1EEE9AC00](v24);
    v28 = MEMORY[0x1EEE9AC00](v27);
    v42 = LODWORD(v28);
    AGGraphMutateAttribute();
    v26 = v42;
  }

  if (a5)
  {
    v29 = v25;
  }

  else
  {
    v29 = v17;
  }

  v30 = v26;
  if (a5)
  {
    v31 = v26;
  }

  else
  {
    v31 = v18;
  }

  if (a5)
  {
    v32 = v17;
  }

  else
  {
    v32 = v25;
  }

  if (a5)
  {
    v30 = v18;
  }

  v49 = MEMORY[0x1E69E7CC0];
  v50 = 0;
  v45 = v29;
  v46 = v31;
  v47 = v32;
  v48 = v30;
  v33 = v78;
  v34 = *(v78 + 16);
  if (v34)
  {

    v35 = (v33 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v45, *(v35 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v35, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v35 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {
  }

  v51[2] = v55;
  v51[3] = v56;
  v51[4] = v57;
  v52 = v58;
  v51[0] = v53;
  v51[1] = v54;
  outlined destroy of _ViewInputs(v51);
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v59 = v69;
  v60 = v70;
  outlined destroy of _ViewInputs(&v59);
  *(a8 + 12) = v44;
  v36 = v49;
  v37 = v50;

  *a8 = v36;
  *(a8 + 8) = v37;
  return result;
}

uint64_t one-time initialization function for v4()
{
  result = swiftUI_v4_0_os_versions();
  static Semantics.v4 = HIDWORD(result);
  return result;
}

uint64_t type metadata completion function for ContentResponderHelper(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(uint64_t a1)
{
  result = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
  v3 = *(a1 + 16);
  if (result == v3)
  {
    return 0;
  }

  if (result < v3)
  {
    return *(a1 + 16 * result + 32) == &type metadata for ContentShapePathData;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TypesettingConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for TypesettingConfiguration;
  if (!type metadata singleton initialization cache for TypesettingConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *static Optional.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, void *x8_0@<X8>)
{
  v8 = type metadata accessor for Optional();
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(v8, partial apply for closure #1 in static Optional.makeConditionalMetadata<A>(_:), a3, a4, &v10);
  return ConditionalMetadata.init(_:)(&v10, x8_0);
}

uint64_t static Optional<A>._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for Optional();
  static Optional.makeConditionalMetadata<A>(_:)(&type metadata for ViewDescriptor, &protocol witness table for ViewDescriptor, &v17);
  v14 = v17;
  v15 = v18;
  v16 = v19;
  v13 = v8;
  v12 = x3_0;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, v9, &v12);
  static DynamicView.makeDynamicViewList(metadata:view:inputs:)(&v14, &v13, a2, v9, v10, a4);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v14);
}

uint64_t closure #1 in static Optional.makeConditionalMetadata<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a1;
  static ConditionalTypeDescriptor.descriptor(type:constructor:)(a1, partial apply for closure #1 in static ConditionalTypeDescriptor.descriptor(type:), a2, a3, v10);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = swift_allocObject();
  result = type metadata accessor for Optional();
  *(v8 + 16) = result;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *a4 = v8 | 0x4000000000000000;
    a4[1] = 0;
    a4[2] = v7 + 1;
  }

  return result;
}

void lazy protocol witness table accessor for type _ViewList_Group.Init and conformance _ViewList_Group.Init()
{
  if (!lazy protocol witness table cache variable for type _ViewList_Group.Init and conformance _ViewList_Group.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ViewList_Group.Init, &type metadata for _ViewList_Group.Init, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ViewList_Group.Init and conformance _ViewList_Group.Init);
  }
}

void type metadata accessor for _ContiguousArrayStorage<Attribute<ViewList>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>)
  {
    type metadata accessor for TimelineSchedule?(255, &lazy cache variable for type metadata for Attribute<ViewList>, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E698D388]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>);
    }
  }
}

uint64_t Optional<A>.childInfo(metadata:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v13[2] = *(a3 + 16);
  v13[3] = a4;
  v14 = *a2;
  v15 = v7;
  v16 = v8;
  type metadata accessor for (Any.Type, UniqueID?)(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, partial apply for closure #1 in Optional<A>.childInfo(metadata:), v13, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  result = v17;
  v12 = v19;
  *a1 = v18;
  *(a1 + 8) = v12;
  return result;
}

unint64_t closure #1 in Optional<A>.childInfo(metadata:)@<X0>(uint64_t a1@<X0>, unint64_t *a3@<X8>, uint64_t x1_0@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for ConditionalMetadata<ViewDescriptor>(0, x1_0, a4, a5);
  v9 = v8;
  v10 = type metadata accessor for Optional();
  result = ConditionalMetadata.childInfo<A>(ptr:emptyType:)((a3 + 1), a1, &type metadata for EmptyView, v9, v10);
  *a3 = result;
  return result;
}

uint64_t Optional<A>.makeChildViewList(metadata:view:inputs:)(__int128 *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v12[2] = *(a4 + 16);
  v12[3] = a5;
  v13 = *a1;
  v14 = v9;
  v15 = v10;
  v16 = a2;
  v17 = a3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, partial apply for closure #1 in Optional<A>.makeChildViewList(metadata:view:inputs:), v12, a4, MEMORY[0x1E69E73E0], &type metadata for _ViewListOutputs, MEMORY[0x1E69E7410], a8);
}

uint64_t partial apply for closure #1 in Optional<A>.makeChildViewList(metadata:view:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  v7 = type metadata accessor for Optional();
  return ConditionalMetadata<>.makeViewList<A>(ptr:view:inputs:)(a1, v5, v6, v7, a2);
}

uint64_t protocol witness for ViewList.applyNodes(from:style:list:transform:to:) in conformance _ViewList_Group(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t *, uint64_t *))
{
  v8 = *a4;
  v9 = *(a4 + 8);
  v10 = *v5;
  v17 = *a2;
  v15[0] = v10;
  v16 = 2;
  v13 = v8;
  v14 = v9;

  v11 = a5(a1, &v17, v15, &v13);
  outlined destroy of _ViewList_Node(v15);
  return v11 & 1;
}

uint64_t mergeStatic #1 (from:to:) in static _ViewListOutputs.concat(_:inputs:)@<X0>(unint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_37;
  }

  v38 = a6;
  if (v7 == 1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*(a3 + 16) > a1)
      {
        v14 = a3 + 72 * a1;
        outlined init with copy of _ViewListOutputs(v14 + 32, &v41);
        *&v40[9] = *&v42[9];
        v39 = v41;
        *v40 = *v42;
        if ((v42[24] & 1) == 0)
        {
          outlined init with take of AnyTrackedValue(&v39, &v46);
          outlined init with take of AnyTrackedValue(&v46, &v39);
          v12 = *(v14 + 88);
          LOBYTE(v13) = *(v14 + 96);
          goto LABEL_26;
        }

        outlined destroy of _ViewListOutputs.Views(&v39);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  if (!v7)
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    *&v40[8] = &type metadata for EmptyViewListElements;
    *&v40[16] = &protocol witness table for EmptyViewListElements;
    goto LABEL_26;
  }

  if (a2 < a1)
  {
    goto LABEL_39;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(a3 + 16);
  if (v16 < a1 || v16 < a2)
  {
    goto LABEL_42;
  }

  v17 = a3 + 32;
  *&v40[8] = &unk_1F0084390;
  *&v40[16] = &protocol witness table for MergedElements;
  v18 = swift_allocObject();
  *&v39 = v18;
  v18[2] = a3;
  v18[3] = v17;
  v18[4] = a1;
  v18[5] = (2 * a2) | 1;
  if (a1 == a2)
  {

    v12 = 0;
    LOBYTE(v13) = 0;
    goto LABEL_26;
  }

  if (a1 >= a2)
  {
LABEL_43:
    __break(1u);
  }

  v19 = 72 * a1;
  outlined init with copy of _ViewListOutputs(v17 + 72 * a1, &v41);

  v12 = 0;
  v20 = ~a1 + a2;
  v21 = v19 + a3 + 104;
  do
  {
    v22 = *(&v43 + 1);
    v13 = v44;
    outlined destroy of _ViewListOutputs(&v41);
    if (v13)
    {
      v12 = 0;
      goto LABEL_20;
    }

    v23 = __OFADD__(v12, v22);
    v12 += v22;
    if (v23)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_20:
    if (!v20)
    {
      goto LABEL_26;
    }

    outlined init with copy of _ViewListOutputs(v21, &v41);
    --v20;
    v21 += 72;
  }

  while (!v13);
  while (1)
  {
    outlined destroy of _ViewListOutputs(&v41);
    if (!v20)
    {
      break;
    }

    outlined init with copy of _ViewListOutputs(v21, &v41);
    v21 += 72;
    --v20;
  }

  v12 = 0;
  LOBYTE(v13) = 1;
LABEL_26:
  outlined init with copy of AnyTrackedValue(&v39, v45);
  swift_beginAccess();
  v24 = a4;
  v25 = *(a4 + 16);
  v26 = *(a5 + 56) & 3;
  if (*(a5 + 37))
  {
    v29 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(*a5);
    Attribute = AGWeakAttributeGetAttribute();
    v28 = Attribute == *MEMORY[0x1E698D3F8];
    if (Attribute == *MEMORY[0x1E698D3F8])
    {
      v27 = 0;
    }

    else
    {
      v27 = v29;
    }
  }

  else
  {
    v27 = 0;
    v28 = 1;
  }

  v47 = &unk_1F0084288;
  lazy protocol witness table accessor for type BaseViewList and conformance BaseViewList();
  v48 = v31;
  v32 = swift_allocObject();
  *&v46 = v32;
  *&v43 = 0;
  BYTE8(v43) = 0;
  outlined init with copy of AnyTrackedValue(v45, &v41);
  *&v42[24] = v25;

  *&v43 = MEMORY[0x1E69E7CD0];
  BYTE8(v43) = 0;
  v44 = MEMORY[0x1E69E7CC0];
  if (v26 == 1)
  {
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA013CanTransitiondG0V_Tt0g5(1);
  }

  if (!v28)
  {
    _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA32_DisplayList_StableIdentityScopeV_Tt0g5(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  v33 = v43;
  *(v32 + 48) = *&v42[16];
  *(v32 + 64) = v33;
  *(v32 + 80) = v44;
  v34 = *v42;
  *(v32 + 16) = v41;
  *(v32 + 32) = v34;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  v35 = Attribute.init<A>(body:value:flags:update:)();
  __swift_destroy_boxed_opaque_existential_1(&v46);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  result = swift_beginAccess();
  v37 = *(v24 + 16) + 1;
  *(v24 + 16) = v37;
  *v38 = v35;
  *(v38 + 8) = 0;
  *(v38 + 40) = 1;
  *(v38 + 48) = v37;
  *(v38 + 56) = v12;
  *(v38 + 64) = v13;
  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    type metadata accessor for _ContiguousArrayStorage<CustomRecursiveStringConvertible>(255, &lazy cache variable for type metadata for Attribute<ViewList>, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList, MEMORY[0x1E698D388]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>));
    }
  }
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
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(list: ViewList, attribute: Attribute<ViewList>)>, type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)(0);
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
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element>, type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(0);
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
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyedAnimatableArray<Int, _AnyAnimatableData>.Element>, type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for KeyedAnimatableArray<Int, _AnyAnimatableData>.Element(0);
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
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AbstractHomogeneousCollection, precedingElementCount: Int)>, type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (AbstractHomogeneousCollection, precedingElementCount: Int)(0);
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
    type metadata accessor for _ContiguousArrayStorage<(String, String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158]);
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
    type metadata accessor for _ContiguousArrayStorage<(label: String, value: Double)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (label: String, value: Double), MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], "label value ");
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
    type metadata accessor for _ContiguousArrayStorage<(name: String, value: String)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(0, &lazy cache variable for type metadata for (name: String, value: String), MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], "name value ");
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
    type metadata accessor for _ContiguousArrayStorage<(String, Double)>(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, Double), MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}