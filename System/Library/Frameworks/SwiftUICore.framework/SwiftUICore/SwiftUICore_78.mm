void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA7CapsuleVAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Capsule, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Capsule, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Capsule, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Capsule, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Capsule, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Capsule, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Capsule, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Capsule, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Capsule, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA7CapsuleV6_InsetVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<Capsule._Inset>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<Capsule._Inset>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0;
    *(v32 + 128) = v8;
    *(v32 + 24) = 0;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA6CircleV6_InsetVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<Circle._Inset>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<Circle._Inset>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<Circle._Inset>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0;
    *(v32 + 128) = v8;
    *(v32 + 24) = 0;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Circle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<Circle._Inset>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Circle._Inset>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA024PartialContainerRelativeC0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  LODWORD(v67) = 0;
  HIDWORD(v67) = *MEMORY[0x1E698D3F8];
  v62 = *MEMORY[0x1E698D3F8];
  v65 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v65) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    v61 = a5;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v75 = *(a2 + 2);
    v76 = v13;
    v77 = *(a2 + 4);
    LODWORD(v78) = *(a2 + 20);
    v14 = *(a2 + 1);
    v73 = *a2;
    v74 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v73);
    v16 = *(a2 + 3);
    v75 = *(a2 + 2);
    v76 = v16;
    v77 = *(a2 + 4);
    LODWORD(v78) = *(a2 + 20);
    v17 = *(a2 + 1);
    v73 = *a2;
    v74 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v73);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v73);
    v21 = v19;
    if (v20)
    {
      v22 = *(v20 + 72);
    }

    else
    {
      v22 = 0;
    }

    v57 = v22;
    v58 = *(a2 + 17);
    v59 = *(a2 + 19);
    v60 = *(a2 + 15);
    *&v73 = a4;
    *(&v73 + 1) = __PAIR64__(a1, v9);
    *&v74 = __PAIR64__(OffsetAttribute2, a3);
    *(&v74 + 1) = __PAIR64__(v18, v15);
    *&v75 = __PAIR64__(v60, v58);
    *(&v75 + 1) = __PAIR64__(v59, v19);
    LOBYTE(v76) = v22;
    WORD1(v76) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v73 = a4;
    *(&v73 + 1) = __PAIR64__(a1, v9);
    *&v74 = __PAIR64__(OffsetAttribute2, a3);
    *(&v74 + 1) = __PAIR64__(v18, v15);
    *&v75 = __PAIR64__(v60, v58);
    *(&v75 + 1) = __PAIR64__(v59, v21);
    LOBYTE(v76) = v57;
    WORD1(v76) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v73, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>);
    LOBYTE(v68) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v61;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v75 = *(a2 + 2);
    v76 = v24;
    v77 = v25;
    LODWORD(v78) = *(a2 + 20);
    v73 = *a2;
    v74 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v73);
    v28 = *(a2 + 3);
    v75 = *(a2 + 2);
    v76 = v28;
    v77 = *(a2 + 4);
    LODWORD(v78) = *(a2 + 20);
    v29 = *(a2 + 1);
    v73 = *a2;
    v74 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v73);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<PartialContainerRelativeShape>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA024PartialContainerRelativeC0VGGSgWOi0_(&v73);
    v33 = v86;
    *(v32 + 248) = v85;
    v34 = v87;
    v35 = v88;
    *(v32 + 264) = v33;
    *(v32 + 280) = v34;
    *(v32 + 296) = v35;
    v36 = v82;
    *(v32 + 184) = v81;
    *(v32 + 200) = v36;
    v37 = v84;
    *(v32 + 216) = v83;
    *(v32 + 232) = v37;
    v38 = v78;
    *(v32 + 120) = v77;
    *(v32 + 136) = v38;
    v39 = v80;
    *(v32 + 152) = v79;
    *(v32 + 168) = v39;
    v40 = v74;
    *(v32 + 56) = v73;
    *(v32 + 72) = v40;
    v41 = v76;
    *(v32 + 88) = v75;
    *(v32 + 104) = v41;
    *(v32 + 328) = 0u;
    *(v32 + 344) = 0u;
    *(v32 + 312) = 0u;
    *(v32 + 360) = v8;
    *(v32 + 24) = 0;
    *(v32 + 368) = 0u;
    *(v32 + 384) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v42 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v43 = *(v42 + 208);

    swift_beginAccess();
    *(v32 + 24) = v43;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v44 = v65;
    v68 = v65;
    v45 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v46 = *(v65 + 16);
    if (v45 != v46)
    {
      if (v45 >= v46)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v65 + 16 * v45 + 32) == &type metadata for ViewRespondersKey)
      {
        v68 = __PAIR64__(a3, a1);
        v69 = v27;
        v70 = v30;
        v71 = v31;
        v72 = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v44 = v65;
        v47 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v68) = 0;
        PreferencesOutputs.subscript.setter(v47, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v44) & 1) == 0)
    {
      goto LABEL_16;
    }

    v48 = v44;
    v49 = *(a2 + 16);
    v50 = AGGraphCreateOffsetAttribute2();
    v68 = __PAIR64__(v49, v31);
    v69 = v50;
    v70 = a1;
    v71 = v62;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v51 = Attribute.init<A>(body:value:flags:update:)();
    v68 = v48;
    v52 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v52 == v46)
    {
      goto LABEL_16;
    }

    if (v52 < v46)
    {
      if (*(v65 + 16 * v52 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v68) = v51;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v68) = 0;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v66;
      a5[1] = v67;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v73);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v62)
  {
    LODWORD(v68) = v9;
    v55 = Attribute<A>.subscript.modify(&v73, Attribute);
    v56 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v68);
    (v55)(&v73, 0, v56);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA018DefaultGlassEffectC0VAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<DefaultGlassEffectShape, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA22UnevenRoundedRectangleVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = v8;
    *(v32 + 24) = 0;
    *(v32 + 160) = 0u;
    *(v32 + 176) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA22UnevenRoundedRectangleV6_InsetVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<UnevenRoundedRectangle._Inset>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    *(v32 + 168) = v8;
    *(v32 + 24) = 0;
    *(v32 + 176) = 0u;
    *(v32 + 192) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA017ImplicitContainerC0VAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<ImplicitContainerShape, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<ImplicitContainerShape, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<ImplicitContainerShape, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<ImplicitContainerShape, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<ImplicitContainerShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<ImplicitContainerShape, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<ImplicitContainerShape, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA017ContainerRelativeC0VAA010ForegroundS0VG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<ContainerRelativeShape, ForegroundStyle>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<ContainerRelativeShape, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<ContainerRelativeShape, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<ContainerRelativeShape, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<ContainerRelativeShape, ForegroundStyle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA017ContainerRelativeC0V6_InsetVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<ContainerRelativeShape._Inset>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<ContainerRelativeShape._Inset>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0;
    *(v32 + 128) = v8;
    *(v32 + 24) = 0;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA19ConcentricRectangleVG_Tt5B5(unsigned int a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    __src[2] = *(a2 + 2);
    __src[3] = v13;
    __src[4] = *(a2 + 4);
    LODWORD(__src[5]) = *(a2 + 20);
    v14 = *(a2 + 1);
    __src[0] = *a2;
    __src[1] = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(__src);
    v16 = *(a2 + 3);
    __src[2] = *(a2 + 2);
    __src[3] = v16;
    __src[4] = *(a2 + 4);
    LODWORD(__src[5]) = *(a2 + 20);
    v17 = *(a2 + 1);
    __src[0] = *a2;
    __src[1] = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(__src);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, *&__src[0]);
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&__src[0] = a4;
    *(&__src[0] + 1) = __PAIR64__(a1, v9);
    *&__src[1] = __PAIR64__(OffsetAttribute2, a3);
    *(&__src[1] + 1) = __PAIR64__(v18, v15);
    *&__src[2] = __PAIR64__(v49, v50);
    *(&__src[2] + 1) = __PAIR64__(v51, v19);
    LOBYTE(__src[3]) = v21;
    WORD1(__src[3]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&__src[0] = a4;
    *(&__src[0] + 1) = __PAIR64__(a1, v9);
    *&__src[1] = __PAIR64__(OffsetAttribute2, a3);
    *(&__src[1] + 1) = __PAIR64__(v18, v15);
    *&__src[2] = __PAIR64__(v49, v50);
    *(&__src[2] + 1) = __PAIR64__(v51, v22);
    LOBYTE(__src[3]) = v48;
    WORD1(__src[3]) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(__src, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>);
    LOBYTE(v58) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    __src[2] = *(a2 + 2);
    __src[3] = v24;
    __src[4] = v25;
    LODWORD(__src[5]) = *(a2 + 20);
    __src[0] = *a2;
    __src[1] = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(__src);
    v28 = *(a2 + 3);
    __src[2] = *(a2 + 2);
    __src[3] = v28;
    __src[4] = *(a2 + 4);
    LODWORD(__src[5]) = *(a2 + 20);
    v29 = *(a2 + 1);
    __src[0] = *a2;
    __src[1] = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(__src);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<ConcentricRectangle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA19ConcentricRectangleVGGSgWOi0_(__src);
    memcpy((v32 + 56), __src, 0x190uLL);
    *(v32 + 456) = 0u;
    *(v32 + 472) = 0u;
    *(v32 + 488) = 0u;
    *(v32 + 504) = v8;
    *(v32 + 24) = 0;
    *(v32 + 512) = 0u;
    *(v32 + 528) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    v58 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        v58 = __PAIR64__(a3, a1);
        v59 = v27;
        v60 = v30;
        v61 = v31;
        v62 = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v58) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    v58 = __PAIR64__(v40, v31);
    v59 = v41;
    v60 = a1;
    v61 = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    v58 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v58) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v58) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, __src);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v52)
  {
    LODWORD(v58) = v9;
    v46 = Attribute<A>.subscript.modify(__src, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(&v58);
    (v46)(__src, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA18EllipticalGradientVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, EllipticalGradient>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, EllipticalGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0;
    *(v32 + 160) = v8;
    *(v32 + 24) = 0;
    *(v32 + 168) = 0u;
    *(v32 + 184) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, EllipticalGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, EllipticalGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, EllipticalGradient>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, EllipticalGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, EllipticalGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, EllipticalGradient>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA08AnimatedC0VyAA16RoundedRectangleV6_InsetVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>>, type metadata accessor for ShapeStyledResponderData<AnimatedShape<RoundedRectangle._Inset>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = v8;
    *(v32 + 24) = 0;
    *(v32 + 160) = 0u;
    *(v32 + 176) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA15AngularGradientVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, AngularGradient>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, AngularGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0;
    *(v32 + 160) = v8;
    *(v32 + 24) = 0;
    *(v32 + 168) = 0u;
    *(v32 + 184) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, AngularGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, AngularGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, AngularGradient>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, AngularGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, AngularGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, AngularGradient>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14RadialGradientVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, RadialGradient>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, RadialGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0;
    *(v32 + 160) = v8;
    *(v32 + 24) = 0;
    *(v32 + 168) = 0u;
    *(v32 + 184) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, RadialGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, RadialGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, RadialGradient>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, RadialGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, RadialGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, RadialGradient>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA12MeshGradientVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, MeshGradient>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, MeshGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    *(v32 + 168) = 0;
    *(v32 + 176) = v8;
    *(v32 + 24) = 0;
    *(v32 + 184) = 0u;
    *(v32 + 200) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, MeshGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, MeshGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, MeshGradient>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, MeshGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, MeshGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, MeshGradient>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

__n128 protocol witness for static Rule.initialValue.getter in conformance Image.Resolved.MakeRepresentableContext@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI33PlatformImageRepresentableContextVSgWOi0_(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v8[12];
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

double protocol witness for Rule.value.getter in conformance Image.Resolved.MakeRepresentableContext@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[3];
  v5 = *Value;
  v4 = Value[1];
  v24 = Value[2];
  v25 = v3;
  v22 = v5;
  v23 = v4;
  v6 = Value[7];
  v8 = Value[4];
  v7 = Value[5];
  v28 = Value[6];
  v29 = v6;
  v26 = v8;
  v27 = v7;
  v10 = Value[9];
  v9 = Value[10];
  v11 = Value[8];
  *(v32 + 11) = *(Value + 171);
  v31 = v10;
  v32[0] = v9;
  v30 = v11;
  v12 = MEMORY[0x1E69E6720];
  type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
  outlined init with copy of Image.Resolved(&v22, &v21);
  v13 = *AGGraphGetValue();
  type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, v12);

  v14 = *AGGraphGetValue();
  v15 = v31;
  *(a1 + 128) = v30;
  *(a1 + 144) = v15;
  *(a1 + 160) = v32[0];
  *(a1 + 171) = *(v32 + 11);
  v16 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v16;
  v17 = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v17;
  v18 = v23;
  *a1 = v22;
  *(a1 + 16) = v18;
  v19 = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = v19;
  *(a1 + 192) = v13;
  *(a1 + 200) = v14;

  return result;
}

double static Image.Resolved.defaultTransition.getter@<D0>(uint64_t a1@<X8>)
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

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v3 = &static ContentTransition.identity;
      goto LABEL_14;
    }
  }

  else if (static Semantics.forced < v2)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for interpolate != -1)
  {
    swift_once();
  }

  v3 = &static ContentTransition.interpolate;
LABEL_14:
  v4 = *(v3 + 14);
  v5 = *(v3 + 12);
  v6 = *(v3 + 2);
  v7 = *v3;
  *a1 = *v3;
  *(a1 + 12) = v5;
  *(a1 + 8) = v6;
  v8 = *(v3 + 13);
  *(a1 + 13) = v8;
  *(a1 + 14) = v4;
  return outlined copy of ContentTransition.Storage(v7, v6 | (v5 << 32), v8);
}

uint64_t protocol witness for StatefulRule.updateValue() in conformance ResolvedImageLayoutComputer()
{
  Value = AGGraphGetValue();
  v1 = Value[3];
  v3 = *Value;
  v2 = Value[1];
  v21[2] = Value[2];
  v21[3] = v1;
  v21[0] = v3;
  v21[1] = v2;
  v4 = Value[7];
  v6 = Value[4];
  v5 = Value[5];
  v21[6] = Value[6];
  v21[7] = v4;
  v21[4] = v6;
  v21[5] = v5;
  v8 = Value[9];
  v7 = Value[10];
  v9 = Value[8];
  *(v22 + 11) = *(Value + 171);
  v21[9] = v8;
  v22[0] = v7;
  v21[8] = v9;
  v10 = Value[9];
  v31 = Value[8];
  v32 = v10;
  v33[0] = Value[10];
  *(v33 + 11) = *(Value + 171);
  v11 = Value[5];
  v27 = Value[4];
  v28 = v11;
  v12 = Value[7];
  v29 = Value[6];
  v30 = v12;
  v13 = Value[1];
  v23 = *Value;
  v24 = v13;
  v14 = Value[3];
  v25 = Value[2];
  v26 = v14;
  v19[8] = v31;
  v19[9] = v32;
  v20[0] = v33[0];
  *(v20 + 11) = *(v33 + 11);
  v19[4] = v27;
  v19[5] = v28;
  v19[6] = v29;
  v19[7] = v30;
  v19[0] = v23;
  v19[1] = v24;
  v19[2] = v25;
  v19[3] = v14;
  v17 = v19;
  outlined init with copy of Image.Resolved(v21, v18);
  specialized StatefulRule<>.update<A>(modify:create:)(_s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFyqd__zXEfU_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0, v16, _s14AttributeGraph12StatefulRuleP7SwiftUIAD14LayoutComputerV5ValueRtzrlE6update2toyqd___tAD0G6EngineRd__lFqd__yXEfU0_AD013ResolvedImagegH033_A3C1DB6976F54697C11EFA754256BBD1LLV_AD0mngL0AMLLVTG5TA_0);
  return outlined destroy of Image.Resolved(v21);
}

uint64_t Image.Resolved.resolve(in:)@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

double Image.Resolved.resolveNamedImage(in:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for ImageProvider.resolve(in:) in conformance Image.Resolved@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

double protocol witness for ImageProvider.resolveNamedImage(in:) in conformance Image.Resolved@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA06_ShapeC0VyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVG_Tt0t2g5Tm(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8) | *(a2 + 32);
  *(result + 8) = 0;
  if ((v3 & 0x80) != 0 && *(result + 12) == *MEMORY[0x1E698D3F8])
  {
    v3 &= ~0x80u;
  }

  if ((v3 & 0xFFFFFEFF) != 0)
  {
    result = AGSubgraphShouldRecordTree();
    if (result)
    {
      if ((v3 & 4) != 0)
      {
        result = AGSubgraphAddTreeValue();
        if ((v3 & 8) == 0)
        {
LABEL_8:
          if ((v3 & 0x10) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }

      else if ((v3 & 8) == 0)
      {
        goto LABEL_8;
      }

      type metadata accessor for CGPoint(0);
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x10) == 0)
      {
LABEL_9:
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }

LABEL_15:
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x20) == 0)
      {
LABEL_10:
        if ((v3 & 0x40) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }

LABEL_16:
      swift_beginAccess();
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x40) == 0)
      {
LABEL_11:
        if ((v3 & 0x80) == 0)
        {
          return result;
        }

LABEL_18:
        result = *(v2 + 12);
        if (result != *MEMORY[0x1E698D3F8])
        {
          return AGSubgraphAddTreeValue();
        }

        __break(1u);
        return result;
      }

LABEL_17:
      result = AGSubgraphAddTreeValue();
      if ((v3 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  return result;
}

BOOL specialized static Image.LayoutMetrics.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

void lazy protocol witness table accessor for type LeafLayoutComputer<Image.Resolved> and conformance LeafLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type LeafLayoutComputer<Image.Resolved> and conformance LeafLayoutComputer<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for LeafLayoutComputer<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for LeafLayoutComputer);
    swift_getWitnessTable("]", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type LeafLayoutComputer<Image.Resolved> and conformance LeafLayoutComputer<A>);
  }
}

void lazy protocol witness table accessor for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init()
{
  if (!lazy protocol witness table cache variable for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentTransitionEffect.Init, &type metadata for ContentTransitionEffect.Init, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentTransitionEffect.Init and conformance ContentTransitionEffect.Init);
  }
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>);
  }
}

void lazy protocol witness table accessor for type Image.Resolved and conformance Image.Resolved()
{
  if (!lazy protocol witness table cache variable for type Image.Resolved and conformance Image.Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.Resolved, &type metadata for Image.Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.Resolved and conformance Image.Resolved);
  }
}

__n128 __swift_memcpy187_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 171) = *(a2 + 171);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

double destroy for Image.NamedResolved(void *a1)
{

  v2 = a1[2];
  if (v2 >= 2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for Image.NamedResolved(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);

  if (v5 >= 2)
  {
    v6 = v5;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  return a1;
}

uint64_t assignWithCopy for Image.NamedResolved(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 >= 2)
  {
    if (v5 >= 2)
    {
      *(a1 + 16) = v5;
      v7 = v5;

      goto LABEL_8;
    }

    v5 = *(a2 + 16);
    goto LABEL_6;
  }

  if (v5 < 2)
  {
LABEL_6:
    *(a1 + 16) = v5;
    goto LABEL_8;
  }

  *(a1 + 16) = v5;
  v6 = v5;
LABEL_8:
  v8 = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = v8;
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for Image.NamedResolved(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 >= 2)
  {
    if (v6 >= 2)
    {
      *(a1 + 16) = v6;

      goto LABEL_6;
    }
  }

  *(a1 + 16) = v6;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 30) = *(a2 + 30);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for Image.NamedResolved(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Image.NamedResolved(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Image.Resolved.UpdateData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>()
{
  if (!lazy protocol witness table cache variable for type ToOptional<ContentShapePathData> and conformance ToOptional<A>)
  {
    type metadata accessor for ContentShapePathData?(255, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
    swift_getWitnessTable(protocol conformance descriptor for ToOptional<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ToOptional<ContentShapePathData> and conformance ToOptional<A>);
  }
}

void type metadata accessor for ContentShapePathData?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double _s7SwiftUI33PlatformImageRepresentableContextVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0x1FFFFFFFCLL;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return result;
}

double _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA024PartialContainerRelativeC0VGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<PartialContainerRelativeShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<ContainerRelativeShape._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ContainerRelativeShape._Inset>, lazy protocol witness table accessor for type ContainerRelativeShape._Inset and conformance ContainerRelativeShape._Inset, &type metadata for ContainerRelativeShape._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ContainerRelativeShape._Inset>>);
    }
  }
}

double _s7SwiftUI24ShapeStyledResponderDataVyAA08AnimatedC0VyAA19ConcentricRectangleVGGSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<ConcentricRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<Circle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Circle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Circle._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Circle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Circle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Circle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Circle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Circle._Inset>, lazy protocol witness table accessor for type Circle._Inset and conformance Circle._Inset, &type metadata for Circle._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Circle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<Ellipse._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Ellipse._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Ellipse._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Ellipse._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Ellipse._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Ellipse._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Ellipse._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Ellipse._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Ellipse._Inset>, lazy protocol witness table accessor for type Ellipse._Inset and conformance Ellipse._Inset, &type metadata for Ellipse._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Ellipse._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Capsule._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, &type metadata for Capsule._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<RoundedRectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Rectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Rectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Rectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<Rectangle._Inset>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Rectangle._Inset>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<Rectangle._Inset>, lazy protocol witness table accessor for type Rectangle._Inset and conformance Rectangle._Inset, &type metadata for Rectangle._Inset);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<Rectangle._Inset>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<UnevenRoundedRectangle>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderData<AnimatedShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<AnyShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    v4 = type metadata accessor for ShapeStyledResponderData(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderData<AnimatedShape<AnyShape>>);
    }
  }
}

void type metadata accessor for ContentResponderPathDataRule<AnimatedShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<AnyShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    v4 = type metadata accessor for ContentResponderPathDataRule(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ContentResponderPathDataRule<AnimatedShape<AnyShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledResponderFilter<AnimatedShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<AnyShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    v4 = type metadata accessor for ShapeStyledResponderFilter(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledResponderFilter<AnimatedShape<AnyShape>>);
    }
  }
}

void type metadata accessor for ShapeStyledDisplayList<AnimatedShape<AnyShape>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<AnyShape>>)
  {
    type metadata accessor for AnimatedShape<PartialContainerRelativeShape>(255, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    v4 = type metadata accessor for ShapeStyledDisplayList(a1, v2, &protocol witness table for AnimatedShape<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ShapeStyledDisplayList<AnimatedShape<AnyShape>>);
    }
  }
}

void lazy protocol witness table accessor for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>()
{
  if (!lazy protocol witness table cache variable for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ContentResponderPathDataRule<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ContentResponderPathDataRule);
    swift_getWitnessTable(protocol conformance descriptor for ContentResponderPathDataRule<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ContentResponderPathDataRule<StyledTextContentView> and conformance ContentResponderPathDataRule<A>);
  }
}

void lazy protocol witness table accessor for type ShapeStyledResponderFilter<StyledTextContentView> and conformance ShapeStyledResponderFilter<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledResponderFilter<StyledTextContentView> and conformance ShapeStyledResponderFilter<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledResponderFilter<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView, type metadata accessor for ShapeStyledResponderFilter);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledResponderFilter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledResponderFilter<StyledTextContentView> and conformance ShapeStyledResponderFilter<A>);
  }
}

void lazy protocol witness table accessor for type ContentResponderPathDataRule<_ShapeSet.Wrapper> and conformance ContentResponderPathDataRule<A>()
{
  if (!lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeSet.Wrapper> and conformance ContentResponderPathDataRule<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ContentResponderPathDataRule<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ContentResponderPathDataRule);
    swift_getWitnessTable(protocol conformance descriptor for ContentResponderPathDataRule<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeSet.Wrapper> and conformance ContentResponderPathDataRule<A>);
  }
}

void lazy protocol witness table accessor for type ShapeStyledResponderFilter<_ShapeSet.Wrapper> and conformance ShapeStyledResponderFilter<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeSet.Wrapper> and conformance ShapeStyledResponderFilter<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledResponderFilter<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ShapeStyledResponderFilter);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledResponderFilter<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeSet.Wrapper> and conformance ShapeStyledResponderFilter<A>);
  }
}

void lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeSet.Wrapper> and conformance ShapeStyledDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeSet.Wrapper> and conformance ShapeStyledDisplayList<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ShapeStyledDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyledDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeSet.Wrapper> and conformance ShapeStyledDisplayList<A>);
  }
}

void lazy protocol witness table accessor for type ContentResponderPathDataRule<Image.Resolved> and conformance ContentResponderPathDataRule<A>()
{
  if (!lazy protocol witness table cache variable for type ContentResponderPathDataRule<Image.Resolved> and conformance ContentResponderPathDataRule<A>)
  {
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(255, &lazy cache variable for type metadata for ContentResponderPathDataRule<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for ContentResponderPathDataRule);
    swift_getWitnessTable(protocol conformance descriptor for ContentResponderPathDataRule<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ContentResponderPathDataRule<Image.Resolved> and conformance ContentResponderPathDataRule<A>);
  }
}

uint64_t assignWithTake for Image.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a1 + 128);
  *(a1 + 106) = *(a2 + 106);
  if (v7 >> 1 != 0xFFFFFFFF)
  {
    v8 = *(a2 + 128);
    if (v8 >> 1 != 0xFFFFFFFF)
    {
      v10 = *(a2 + 136);
      v11 = *(a1 + 112);
      v12 = *(a1 + 120);
      v13 = *(a1 + 136);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v8;
      *(a1 + 136) = v10;
      outlined consume of AccessibilityImageLabel(v11, v12, v7, v13);
      goto LABEL_11;
    }

    outlined destroy of AccessibilityImageLabel(a1 + 112);
  }

  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v14 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  return a1;
}

uint64_t PlatformImageRepresentableContext.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

__n128 PlatformImageRepresentableContext.image.setter(uint64_t a1)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v15[0] = v1[10];
  *(v15 + 11) = *(v1 + 171);
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined destroy of Image.Resolved(v14);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  v1[10] = *(a1 + 160);
  *(v1 + 171) = *(a1 + 171);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v13;
  return result;
}

void (*_ViewInputs.requestedImageRepresentation.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedImageRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedImageRepresentation.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019ImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedImageRepresentation.modify;
}

double PlatformNamedImageRepresentableContext.environment.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

void PlatformNamedImageRepresentableContext.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

double key path setter for _ViewInputs.requestedImageRepresentation : _ViewInputs(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *, __n128))
{
  v7 = *a1;
  v8 = a1[1];

  (a5)(a2, v7, v8, &v10);

  return result;
}

void (*_ViewInputs.requestedNamedImageRepresentation.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE024NamedImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedNamedImageRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedNamedImageRepresentation.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE024NamedImageRepresentationF033_9FE4F19E3F2D6B2A0FD05C040386BBC3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedNamedImageRepresentation.modify;
}

void _ViewInputs.requestedImageRepresentation.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *, __n128))
{
  v5 = *a1;
  v7 = **a1;
  v6 = (*a1)[1];

  if (a2)
  {
    v8 = v5 + 2;
  }

  else
  {
    v8 = v5 + 3;
  }

  (a3)(v5[4], v7, v6, v8);

  free(v5);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t assignWithTake for PlatformImageRepresentableContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a1 + 128);
  *(a1 + 106) = *(a2 + 106);
  if (v7 >> 1 != 0xFFFFFFFF)
  {
    v8 = *(a2 + 128);
    if (v8 >> 1 != 0xFFFFFFFF)
    {
      v10 = *(a2 + 136);
      v11 = *(a1 + 112);
      v12 = *(a1 + 120);
      v13 = *(a1 + 136);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v8;
      *(a1 + 136) = v10;
      outlined consume of AccessibilityImageLabel(v11, v12, v7, v13);
      goto LABEL_11;
    }

    outlined destroy of AccessibilityImageLabel(a1 + 112);
  }

  v9 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v9;
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v14 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformImageRepresentableContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformImageRepresentableContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 120) = 0;
      *(result + 128) = 2 * ~a2;
      *(result + 136) = 0;
    }
  }

  return result;
}

double destroy for PlatformNamedImageRepresentableContext(void *a1)
{

  return result;
}

void *assignWithTake for PlatformNamedImageRepresentableContext(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t ScrollTarget.init(rect:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = a8;
  *(a4 + 32) = result;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3 & 1;
  return result;
}

void ScrollTarget.rect.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ScrollTarget.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 32) = result;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3 & 1;
  return result;
}

void ScrollTarget.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*v1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *v1;
  }

  MEMORY[0x193AC11E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x193AC11E0](*&v10);
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  Width = CGRectGetWidth(v14);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x193AC11E0](*&Width);
  v15.origin.x = v2;
  v15.origin.y = v3;
  v15.size.width = v4;
  v15.size.height = v5;
  Height = CGRectGetHeight(v15);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  MEMORY[0x193AC11E0](*&Height);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    UnitPoint.hash(into:)(v6, v7);
  }
}

BOOL static ScrollTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else if ((v7 & 1) == 0 && v2 == v5 && v3 == v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int ScrollTarget.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  ScrollTarget.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScrollTarget()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  ScrollTarget.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrollTarget(uint64_t a1)
{
  Hasher.init(_seed:)();
  ScrollTarget.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ScrollTarget(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else if ((v7 & 1) == 0 && v2 == v5 && v3 == v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

Swift::Int ScrollTargetRole.Role.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void static ScrollTargetRole.Key.reduce(value:nextValue:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = a2();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v5);

  *a1 = v5;
}

void protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ScrollTargetRole.Key(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v5);
  v3 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v5);

  *a1 = v5;
}

uint64_t ScrollTargetRole.SetLayout.init(role:collection:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollTargetRole.SetLayout@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *v1;
  result = swift_allocObject();
  *(result + 16) = closure #1 in ScrollTargetRole.SetLayout.value.getterpartial apply;
  *(result + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout [ScrollTargetRole.Role : [ScrollableCollection]]) -> ();
  a1[1] = result;
  return result;
}

double key path setter for _GraphInputs.scrollTargetRole : _GraphInputs(int *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(a2, v3);

  return result;
}

void (*_GraphInputs.scrollTargetRole.modify(uint64_t *a1))(uint64_t ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v5);
  *(v4 + 32) = 0;
  return _GraphInputs.scrollTargetRole.modify;
}

void _GraphInputs.scrollTargetRole.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ScrollTargetRoleKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.ScrollTargetRoleKey.defaultValue;
  return result;
}

double key path setter for _GraphInputs.scrollTargetRemovePreference : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(a2, v3);

  return result;
}

void (*_GraphInputs.scrollTargetRemovePreference.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.scrollTargetRemovePreference.modify;
}

uint64_t (*Transaction._scrollToRequiresCompleteVisibility.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction._scrollToRequiresCompleteVisibility.modify;
}

double key path setter for Transaction._scrollToRequiresCompleteVisibility : Transaction(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(a2, v3);

  return result;
}

double Transaction._scrollToRequiresCompleteVisibility.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(v1, a1);

  return result;
}

void (*Transaction.scrollToRequiresCompleteVisibility.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.scrollToRequiresCompleteVisibility.modify;
}

void _GraphInputs.scrollTargetRemovePreference.modify(uint64_t a1, char a2, void (*a3)(void, uint64_t, void *, __n128))
{
  v5 = *a1;
  v6 = *(*a1 + 40);

  if (a2)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
    v7 = v6;
  }

  (a3)(v5[2], v7, v8);

  free(v5);
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a3, char a4, uint64_t *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = v6; ; v6 = i)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(*(a1 + 56) + 8 * v16);
    LOBYTE(v37[0]) = *(*(a1 + 48) + v16);
    v37[1] = v17;

    (a2)(&v38, v37);

    v18 = v39;
    if (!v39)
    {
LABEL_22:
      outlined consume of Set<EventID>.Iterator._Variant(a1);

      return;
    }

    v19 = v38;
    v20 = *v40;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_24;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a4 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }

      v22 = v27;
    }

    v29 = (v13 - 1) & v13;
    if (v26)
    {
      v12 = *v40;
      v37[0] = *(*(*v40 + 56) + 8 * v22);

      specialized Array.append<A>(contentsOf:)(v18);
      *(*(v12 + 56) + 8 * v22) = v37[0];
    }

    else
    {
      v30 = *v40;
      v30[(v22 >> 6) + 8] |= 1 << v22;
      *(v30[6] + v22) = v19;
      *(v30[7] + 8 * v22) = v18;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v30[2] = v33;
    }

    a4 = 1;
    v11 = v14;
    v9 = v29;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void lazy protocol witness table accessor for type ScrollTarget and conformance ScrollTarget()
{
  if (!lazy protocol witness table cache variable for type ScrollTarget and conformance ScrollTarget)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollTarget, &type metadata for ScrollTarget, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollTarget and conformance ScrollTarget);
  }
}

uint64_t keypath_get_6Tm@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE34ScrollToRequiresCompleteVisibility019_D49197C3D3C61F0DA0X12CF1D72D0077ALLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t *assignWithCopy for ScrollTargetConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t *assignWithTake for ScrollTargetConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollTargetConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for ScrollTargetConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double DerivedUnaryLayout.sizeThatFits(in:context:child:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v25 = v11;
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v22 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = a1[2];
  LOBYTE(a1) = *(a1 + 24);
  LODWORD(v13) = *(a3 + 2);
  v22 = *(a2 + 2);
  v23 = v13;
  (*(a5 + 32))(a4, a5, v12);
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = a1;
  v28 = *a2;
  v29 = v22;
  v26 = *a3;
  v27 = v23;
  v18 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(AssociatedConformanceWitness + 56))(&v30, &v28, &v26, v18, AssociatedConformanceWitness);
  (*(v25 + 8))(v14, v18);
  return v20;
}

uint64_t DerivedUnaryLayout.spacing(in:child:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v18 - v12;
  v14 = *(a1 + 2);
  v15 = *(a2 + 2);
  (*(a4 + 32))(a3, a4, v11);
  v21 = *a1;
  v22 = v14;
  v19 = *a2;
  v20 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(&v21, &v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t DerivedUnaryLayout.placement(of:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v15 - v10;
  v12 = *(a1 + 2);
  (*(a4 + 32))(a3, a4, v9);
  v17 = *a1;
  v18 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v17, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

double DerivedUnaryLayout.layoutPriority(child:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v11 = *(a1 + 2);
  (*(a3 + 32))(a2, a3, v8);
  v15 = *a1;
  v16 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 64))(&v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v13;
}

uint64_t DerivedUnaryLayout.ignoresAutomaticPadding(child:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v11 = *(a1 + 2);
  (*(a3 + 32))(a2, a3, v8);
  v15 = *a1;
  v16 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(AssociatedConformanceWitness + 72))(&v15, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v13 & 1;
}

double Transaction.glassTransitionSettings.getter@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a1, v5);
  if (v7)
  {
    static GlassContainer.TransitionSettings.default.getter(a2);
  }

  else
  {
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
    result = *&v6;
    a2[2] = v6;
  }

  return result;
}

double *GlassContainer.TransitionSettings.resolvedTransitionAnimation(in:update:)(uint64_t *a1, char a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  if (a2)
  {
    v9 = *a1;
    v10 = a1[1];
    v7 = *(v2 + 16);
    if (v10)
    {

      v11 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v9);
    }

    else
    {
      v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*a1);
    }

    if (v11 == 2)
    {
      v12 = *&v9;
      v13 = *&v10;
      v15 = 2;
      if (!EnvironmentValues.accessibilitySettingEnabled(_:)(&v15))
      {
        goto LABEL_5;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v5 = -v3;
  if (v3 >= 0.0)
  {
    v5 = v3;
  }

  v6 = sqrt(v4 * v4 + v3 * v5);
  Spring.init(duration:bounce:)(6.28318531 / v6, 0.0);
  v3 = v12;
  v4 = v13;
  v7 = v14;
LABEL_5:
  v12 = v3;
  v13 = v4;
  v14 = v7;
  return specialized static Animation.spring(_:blendDuration:)(&v12, 0.0);
}

uint64_t Transaction.shouldUseGlassAnimation.getter(void *a1)
{
  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (v2)
  {
    v3 = v2[9];
  }

  else
  {
    v3 = 0;
  }

  if (one-time initialization token for default == -1)
  {
    if (!v3)
    {
LABEL_9:
      v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a1);
      return v6 & 1;
    }
  }

  else
  {
    swift_once();
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v4 = *(*v3 + 104);

  LOBYTE(v4) = v4(v5);

  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = 1;
  return v6 & 1;
}

double GlassContainer.TransitionSettings.spring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.TransitionSettings.spring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleUpSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleUpSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleDownHeightSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleDownHeightSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleDownWidthSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.scaleDownWidthSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.transitionBlurSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.ScalePulseSettings.transitionBlurSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = result;
  return result;
}

__n128 static GlassContainer.ScalePulseSettings.defaultValue.getter@<Q0>(uint64_t a1@<X8>)
{
  Spring.init(duration:bounce:)(0.5, 0.3);
  Spring.init(duration:bounce:)(0.35, 0.6);
  Spring.init(duration:bounce:)(0.5, 0.5);
  *&v2 = v16;
  *(&v2 + 1) = v12;
  v9 = v2;
  Spring.init(duration:bounce:)(0.5, 0.6);
  __asm { FMOV            V2.2D, #16.0 }

  *a1 = vdupq_n_s64(0x3FF3333333333333uLL);
  *(a1 + 16) = _Q2;
  *(a1 + 32) = v15;
  *(a1 + 48) = v9;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = 0x3FC147AE147AE148;
  *(a1 + 88) = v10;
  *(a1 + 104) = v11;
  result = v15;
  *(a1 + 112) = xmmword_18DDAA030;
  *(a1 + 128) = v15;
  *(a1 + 144) = v16;
  return result;
}

double GlassContainer.TranslationKickSettings.offsetSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.TranslationKickSettings.offsetSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

double GlassContainer.TranslationKickSettings.returnSpring.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

double GlassContainer.TranslationKickSettings.returnSpring.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

void static GlassContainer.TransitionSettings.default.getter(_OWORD *a2@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v24.receiver = swift_getObjCClassFromMetadata();
  v24.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v11 = objc_msgSendSuper2(&v24, sel_rootSettings);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GlassContainerPTSettings();
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition);

    GlassContainerTransitionPTSettings.transition.getter(&v21);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    if (one-time initialization token for enableAdjustments != -1)
    {
      v19 = v22;
      v20 = v21;
      v18 = v23;
      swift_once();
      v16 = v18;
      v15 = v19;
      v14 = v20;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v14 = v21;
      v17 = &qword_18DDAA000;
      v15 = vld1q_dup_f64(v17);
      v15.f64[0] = v22.f64[0];
      v16 = xmmword_18DDACA70;
    }

    *a2 = v14;
    a2[1] = v15;
    a2[2] = v16;
  }

  else
  {
    __break(1u);
  }
}

void static GlassContainer.AppearanceSettings.match.getter(uint64_t *a2@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v18.receiver = swift_getObjCClassFromMetadata();
  v18.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v11 = objc_msgSendSuper2(&v18, sel_rootSettings);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GlassContainerPTSettings();
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_appearance);

    v14 = *&v13[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_scale];
    v15 = *&v13[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleWidth];
    v16 = *&v13[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_maxPointScaleHeight];
    v17 = *&v13[OBJC_IVAR____TtC7SwiftUI34GlassContainerAppearancePTSettings_blurRadius];

    if (one-time initialization token for enableAdjustments != -1)
    {
      swift_once();
    }

    if (!enableAdjustments)
    {
      v17 = 10.0;
      v15 = 16.0;
      v14 = 0x3FC999999999999ALL;
      v16 = 16.0;
    }

    *a2 = v14;
    a2[1] = v15;
    a2[2] = v16;
    a2[3] = v17;
  }

  else
  {
    __break(1u);
  }
}

double static GlassContainer.AppearanceSettings.materialize.getter@<D0>(uint64_t a2@<X8>)
{
  static GlassContainer.AppearanceSettings.match.getter(&v12);
  result = v14;
  *a2 = 0x3FF3333333333333;
  *(a2 + 8) = v13;
  *(a2 + 24) = result;
  return result;
}

__n128 GlassContainer.AppearanceSettings.reduceMotion(_:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 24);
  if (a1)
  {
    v3 = 1.0;
  }

  *a2 = v3;
  result = *(v2 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  return result;
}

void static GlassContainer.ScalePulseSettings.default.getter(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, __n128 a7@<Q4>, __n128 a8@<Q5>, __n128 a9@<Q6>, __n128 a10@<Q7>)
{
  type metadata accessor for GlassContainerPTDomain();
  v58.receiver = swift_getObjCClassFromMetadata();
  v58.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v11 = objc_msgSendSuper2(&v58, sel_rootSettings);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GlassContainerPTSettings();
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(&v47);
    v14 = v47;
    _Q7 = v48;
    v16 = v49;
    v17 = v50;
    v18 = v51;
    v19 = v52;
    v20 = v53;
    v21 = v54;
    v22 = v55;
    v23 = v56;
    v24 = v57;
    if (one-time initialization token for enableAdjustments != -1)
    {
      v40 = v49;
      v42 = v56;
      v37 = v52;
      v38 = v51;
      v34 = v53;
      v35 = v54;
      v32 = v48;
      v33 = v47;
      swift_once();
      _Q7 = v32;
      v14 = v33;
      v20 = v34;
      v21 = v35;
      v19 = v37;
      v18 = v38;
      v16 = v40;
      v23 = v42;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v41 = v47;
      v24 = v48;
      Spring.init(duration:bounce:)(0.35, 0.6);
      v39 = v47;
      v17 = v48;
      Spring.init(duration:bounce:)(0.5, 0.5);
      v25 = &unk_18DDA9FF8;
      v26 = vld1q_dup_f64(v25);
      v26.f64[0] = v46;
      v36 = v26;
      Spring.init(duration:bounce:)(0.5, 0.6);
      v19 = v36;
      v18 = v45;
      v16 = v39;
      v23 = v41;
      v27 = &unk_18DDAA008;
      v21 = vld1q_dup_f64(v27);
      v21.f64[0] = v44;
      v20 = v43;
      v14 = vdupq_n_s64(0x3FF3333333333333uLL);
      __asm { FMOV            V7.2D, #16.0 }

      v22 = 10.0;
    }

    *a2 = v14;
    *(a2 + 16) = _Q7;
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 56) = v18;
    *(a2 + 72) = v19;
    *(a2 + 88) = v20;
    *(a2 + 104) = v21;
    *(a2 + 120) = v22;
    *(a2 + 128) = v23;
    *(a2 + 144) = v24;
  }

  else
  {
    __break(1u);
  }
}

void static GlassContainer.TranslationKickSettings.default.getter(uint64_t a2@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v35.receiver = swift_getObjCClassFromMetadata();
  v35.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v11 = objc_msgSendSuper2(&v35, sel_rootSettings);
  if (v11)
  {
    v12 = v11;
    type metadata accessor for GlassContainerPTSettings();
    v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_translationKick);

    GlassContainerTranslationKickPTSettings.translationKick.getter(&v30);
    v14 = v30;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    if (one-time initialization token for enableAdjustments != -1)
    {
      v25 = v31;
      v27 = v30;
      v22 = v33;
      v23 = v32;
      swift_once();
      v17 = v22;
      v16 = v23;
      v15 = v25;
      v14 = v27;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.3, 0.0);
      v26 = v30;
      v19 = &unk_18DDAA010;
      v20 = vld1q_dup_f64(v19);
      v20.f64[0] = v31.f64[0];
      v24 = v20;
      Spring.init(duration:bounce:)(0.6, 0.2);
      v15 = v24;
      v14 = v26;
      v16 = v28;
      v21 = &unk_18DDAA018;
      v17 = vld1q_dup_f64(v21);
      v17.f64[0] = v29;
      v18 = 6.0;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 64) = v18;
  }

  else
  {
    __break(1u);
  }
}

__n128 GlassContainer.SettingsOverride.transition.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 GlassContainer.SettingsOverride.transition.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = v2;
  return result;
}

__n128 GlassContainer.SettingsOverride.appearance.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  result = *(v1 + 56);
  v4 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 GlassContainer.SettingsOverride.appearance.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v4;
  *(v1 + 88) = v2;
  return result;
}

__n128 GlassContainer.SettingsOverride.scalePulse.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  *(a1 + 96) = *(v1 + 192);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 224);
  *(a1 + 137) = *(v1 + 233);
  v3 = *(v1 + 144);
  *(a1 + 32) = *(v1 + 128);
  *(a1 + 48) = v3;
  v4 = *(v1 + 176);
  *(a1 + 64) = *(v1 + 160);
  *(a1 + 80) = v4;
  result = *(v1 + 96);
  v6 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v6;
  return result;
}

__n128 GlassContainer.SettingsOverride.scalePulse.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  v1[12] = *(a1 + 96);
  v1[13] = v2;
  v1[14] = *(a1 + 128);
  *(v1 + 233) = *(a1 + 137);
  v3 = *(a1 + 48);
  v1[8] = *(a1 + 32);
  v1[9] = v3;
  v4 = *(a1 + 80);
  v1[10] = *(a1 + 64);
  v1[11] = v4;
  result = *a1;
  v6 = *(a1 + 16);
  v1[6] = *a1;
  v1[7] = v6;
  return result;
}

__n128 GlassContainer.SettingsOverride.translationKick.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 304);
  *(a1 + 32) = *(v1 + 288);
  *(a1 + 48) = v2;
  v3 = *(v1 + 272);
  *a1 = *(v1 + 256);
  *(a1 + 16) = v3;
  result = *(v1 + 313);
  *(a1 + 57) = result;
  return result;
}

__n128 GlassContainer.SettingsOverride.translationKick.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 288) = *(a1 + 32);
  *(v1 + 304) = v2;
  *(v1 + 313) = *(a1 + 57);
  result = *(a1 + 16);
  *(v1 + 256) = *a1;
  *(v1 + 272) = result;
  return result;
}

double GlassContainer.SettingsOverride.init()@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(v4);
  *&v3[119] = v4[7];
  *&v3[103] = v4[6];
  *&v3[55] = v4[3];
  *&v3[39] = v4[2];
  *&v3[135] = v5[0];
  *&v3[144] = *(v5 + 9);
  *&v3[71] = v4[4];
  *&v3[87] = v4[5];
  *&v3[7] = v4[0];
  *&v3[23] = v4[1];
  *(a1 + 185) = *&v3[96];
  *(a1 + 201) = *&v3[112];
  *(a1 + 217) = *&v3[128];
  *(a1 + 233) = *&v3[144];
  *(a1 + 121) = *&v3[32];
  *(a1 + 137) = *&v3[48];
  *(a1 + 153) = *&v3[64];
  *(a1 + 169) = *&v3[80];
  *(a1 + 89) = *v3;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 105) = *&v3[16];
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 328) = 1;
  return result;
}

double key path setter for Transaction.useDefaultGlassContainerAnimation : Transaction(char *a1, Swift::UInt *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a2, v3);

  return result;
}

double Transaction.useDefaultGlassContainerAnimation.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v1, a1);

  return result;
}

void (*Transaction.useDefaultGlassContainerAnimation.modify(uint64_t *a1))(Swift::UInt ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.useDefaultGlassContainerAnimation.modify;
}

void Transaction.useDefaultGlassContainerAnimation.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v1[2], v2);

  free(v1);
}

double key path setter for Transaction.glassContainerSettingsOverride : Transaction(void *__src, Swift::UInt *a2)
{
  memcpy(__dst, __src, 0x149uLL);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2B5(a2, __dst);

  return result;
}

double Transaction.glassContainerSettingsOverride.setter(void *__src)
{
  memcpy(__dst, __src, 0x149uLL);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2B5(v1, __dst);

  return result;
}

void (*Transaction.glassContainerSettingsOverride.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x420uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 1032) = v1;
  v5 = *v1;
  *(v4 + 1040) = *v1;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(v5, (v4 + 672));
  *(v4 + 1048) = 0;
  return Transaction.glassContainerSettingsOverride.modify;
}

void Transaction.glassContainerSettingsOverride.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 129);
  if (a2)
  {
    memcpy(*a1, v2 + 84, 0x149uLL);

    v4 = v3;
    v5 = v2;
  }

  else
  {
    memcpy(v2 + 42, v2 + 84, 0x149uLL);

    v5 = v2 + 42;
    v4 = v3;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2B5(v4, v5);

  free(v2);
}

double protocol witness for static TransactionKey.defaultValue.getter in conformance Transaction.GlassContainerSettingsOverrideKey@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(v4);
  *&v3[119] = v4[7];
  *&v3[103] = v4[6];
  *&v3[55] = v4[3];
  *&v3[39] = v4[2];
  *&v3[135] = v5[0];
  *&v3[144] = *(v5 + 9);
  *&v3[71] = v4[4];
  *&v3[87] = v4[5];
  *&v3[7] = v4[0];
  *&v3[23] = v4[1];
  *(a1 + 185) = *&v3[96];
  *(a1 + 201) = *&v3[112];
  *(a1 + 217) = *&v3[128];
  *(a1 + 233) = *&v3[144];
  *(a1 + 121) = *&v3[32];
  *(a1 + 137) = *&v3[48];
  *(a1 + 153) = *&v3[64];
  *(a1 + 169) = *&v3[80];
  *(a1 + 89) = *v3;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1;
  *(a1 + 105) = *&v3[16];
  *(a1 + 320) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 328) = 1;
  return result;
}

int8x16_t Transaction.glassAppearanceSettings(fallback:)@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, int8x16_t *a3@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a2, v9);
  if (v10)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  v5 = vdupq_n_s64(v4);
  result = vbslq_s8(v5, v8, *&v9[9]);
  *a3 = vbslq_s8(v5, v7, *&v9[7]);
  a3[1] = result;
  return result;
}

double Transaction.glassScalePulseSettings.getter@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a1, v19);
  v17[6] = v26;
  v17[7] = v27;
  *v18 = v28[0];
  *&v18[9] = *(v28 + 9);
  v17[2] = v22;
  v17[3] = v23;
  v17[4] = v24;
  v17[5] = v25;
  v17[0] = v20;
  v17[1] = v21;
  v3 = _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v17);
  if (v3 == 1)
  {
    static GlassContainer.ScalePulseSettings.default.getter(v3, a2, v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v13 = v27;
    *(a2 + 96) = v26;
    *(a2 + 112) = v13;
    *(a2 + 128) = v28[0];
    *(a2 + 144) = *&v28[1];
    v14 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v14;
    v15 = v25;
    *(a2 + 64) = v24;
    *(a2 + 80) = v15;
    result = *&v20;
    v16 = v21;
    *a2 = v20;
    *(a2 + 16) = v16;
  }

  return result;
}

__n128 Transaction.glassTranslationKickSettings.getter@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE030GlassContainerSettingsOverrideF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(a1, v5);
  if (v7)
  {
    static GlassContainer.TranslationKickSettings.default.getter(a2);
  }

  else
  {
    v4 = v5[19];
    *(a2 + 32) = v5[18];
    *(a2 + 48) = v4;
    *(a2 + 64) = v6;
    result = v5[17];
    *a2 = v5[16];
    *(a2 + 16) = result;
  }

  return result;
}

void one-time initialization function for enableAdjustments()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 prototypeSettingsEnabled];

    enableAdjustments = v2;
  }

  else
  {
    __break(1u);
  }
}

id GlassContainerPTSettings.init(defaultValues:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition;
  type metadata accessor for GlassContainerTransitionPTSettings();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_appearance;
  type metadata accessor for GlassContainerAppearancePTSettings();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse;
  type metadata accessor for GlassContainerScalePulsePTSettings();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_translationKick;
  type metadata accessor for GlassContainerTranslationKickPTSettings();
  *&v0[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for GlassContainerPTSettings();
  return objc_msgSendSuper2(&v6, sel_initWithDefaultValues);
}

double GlassContainerTransitionPTSettings.transition.getter@<D0>(uint64_t a1@<X8>)
{
  Spring.init(duration:bounce:)(0.5, 0.3);
  v3 = OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor;
  Spring.init(duration:bounce:)(*(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springDuration) / *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor), *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springBounce) / *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor));
  v4 = *(v1 + v3);
  v5 = *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_delayFactor) / v4;
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_minDelay) / v4;
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_maxDelay);
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v5;
  result = v7 / v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 / v4;
  return result;
}

Swift::Void __swiftcall GlassContainerTransitionPTSettings.setDefaultValues()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GlassContainerTransitionPTSettings();
  objc_msgSendSuper2(&v4, sel_setDefaultValues);
  Spring.init(duration:bounce:)(0.5, 0.3);
  v1 = -v2;
  if (v2 >= 0.0)
  {
    v1 = v2;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springDuration] = 6.28318531 / sqrt(v3 * v3 + v2 * v1);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_delayFactor] = 0x3FD999999999999ALL;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_minDelay] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_maxDelay] = 0x3FC999999999999ALL;
}

id GlassContainerTransitionPTSettings.init(defaultValues:)()
{
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_springBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_delayFactor] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_minDelay] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_maxDelay] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassContainerTransitionPTSettings();
  return objc_msgSendSuper2(&v2, sel_initWithDefaultValues);
}

void GlassContainerScalePulsePTSettings.scalePulse.getter(uint64_t a2@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v24.receiver = swift_getObjCClassFromMetadata();
  v24.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v12 = objc_msgSendSuper2(&v24, sel_rootSettings);
  if (v12)
  {
    v13 = v12;
    type metadata accessor for GlassContainerPTSettings();
    v14 = *(*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition) + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor) * *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_speedFactor);
    Spring.init(duration:bounce:)(0.5, 0.3);
    Spring.init(duration:bounce:)(0.35, 0.6);
    Spring.init(duration:bounce:)(0.5, 0.5);
    Spring.init(duration:bounce:)(0.5, 0.6);
    v20 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleHeight);
    v21 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleWidth);
    v19 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleWidth);
    v15 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleHeight);
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringBounce) / v14);
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringBounce) / v14);
    v16 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightDelay) / v14;
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringBounce) / v14);
    v17 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurRadius);
    v18 = *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthDelay) / v14;
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringDuration) / v14);

    *a2 = v21;
    *(a2 + 8) = v20;
    *(a2 + 16) = v19;
    *(a2 + 24) = v15;
    *(a2 + 32) = v22;
    *(a2 + 48) = v23;
    *(a2 + 56) = v22;
    *(a2 + 72) = v23;
    *(a2 + 80) = v16;
    *(a2 + 88) = v22;
    *(a2 + 104) = v23;
    *(a2 + 112) = v18;
    *(a2 + 120) = v17;
    *(a2 + 128) = v22;
    *(a2 + 144) = v23;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall GlassContainerScalePulsePTSettings.setDefaultValues()()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for GlassContainerScalePulsePTSettings();
  objc_msgSendSuper2(&v11, sel_setDefaultValues);
  Spring.init(duration:bounce:)(0.5, 0.3);
  Spring.init(duration:bounce:)(0.35, 0.6);
  Spring.init(duration:bounce:)(0.5, 0.5);
  Spring.init(duration:bounce:)(0.5, 0.6);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleWidth] = 0x3FF3333333333333;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleHeight] = 0x3FF3333333333333;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleWidth] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleHeight] = 0x4030000000000000;
  v1 = -v9;
  if (v9 >= 0.0)
  {
    v1 = v9;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringDuration] = 6.28318531 / sqrt(v10 * v10 + v9 * v1);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightDelay] = 0x3FC147AE147AE148;
  v2 = -v7;
  if (v7 >= 0.0)
  {
    v2 = v7;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringDuration] = 6.28318531 / sqrt(v8 * v8 + v7 * v2);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthDelay] = 0x3FC5C28F5C28F5C3;
  v3 = -v5;
  if (v5 >= 0.0)
  {
    v3 = v5;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringDuration] = 6.28318531 / sqrt(v6 * v6 + v5 * v3);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurRadius] = 0x4024000000000000;
  v4 = -v9;
  if (v9 >= 0.0)
  {
    v4 = v9;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringDuration] = 6.28318531 / sqrt(v10 * v10 + v9 * v4);
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringBounce] = Spring.bounce.getter();
}

id GlassContainerScalePulsePTSettings.init(defaultValues:)()
{
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_speedFactor] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleWidth] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxScaleHeight] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleWidth] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_maxPointScaleHeight] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleUpSpringBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightSpringBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownHeightDelay] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthSpringBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_scaleDownWidthDelay] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurRadius] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI34GlassContainerScalePulsePTSettings_transitionBlurSpringBounce] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassContainerScalePulsePTSettings();
  return objc_msgSendSuper2(&v2, sel_initWithDefaultValues);
}

void GlassContainerTranslationKickPTSettings.translationKick.getter(uint64_t a2@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v21.receiver = swift_getObjCClassFromMetadata();
  v21.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v12 = objc_msgSendSuper2(&v21, sel_rootSettings);
  if (v12)
  {
    v13 = v12;
    type metadata accessor for GlassContainerPTSettings();
    v14 = *(*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_transition) + OBJC_IVAR____TtC7SwiftUI34GlassContainerTransitionPTSettings_speedFactor);
    Spring.init(duration:bounce:)(0.3, 0.0);
    Spring.init(duration:bounce:)(0.6, 0.2);
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringBounce) / v14);
    v15 = *(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetDelay) / v14;
    Spring.init(duration:bounce:)(*(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringDuration) / v14, *(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringBounce) / v14);

    v16 = *(v10 + OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnDelay);
    v17 = OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_kickFactor;
    *a2 = v19;
    v18 = *(v10 + v17);
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
    *(a2 + 56) = v16 / v14;
    *(a2 + 64) = v18;
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall GlassContainerTranslationKickPTSettings.setDefaultValues()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GlassContainerTranslationKickPTSettings();
  objc_msgSendSuper2(&v7, sel_setDefaultValues);
  Spring.init(duration:bounce:)(0.3, 0.0);
  Spring.init(duration:bounce:)(0.6, 0.2);
  v1 = -v5;
  if (v5 >= 0.0)
  {
    v1 = v5;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringDuration] = 6.28318531 / sqrt(v6 * v6 + v5 * v1);
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetDelay] = 0x3FAEB851EB851EB8;
  v2 = -v3;
  if (v3 >= 0.0)
  {
    v2 = v3;
  }

  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringDuration] = 6.28318531 / sqrt(v4 * v4 + v3 * v2);
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringBounce] = Spring.bounce.getter();
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnDelay] = 0x3FC70A3D70A3D70ALL;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_kickFactor] = 0x4018000000000000;
}

id GlassContainerTranslationKickPTSettings.init(defaultValues:)()
{
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetSpringBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_offsetDelay] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringDuration] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnSpringBounce] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_returnDelay] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI39GlassContainerTranslationKickPTSettings_kickFactor] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassContainerTranslationKickPTSettings();
  return objc_msgSendSuper2(&v2, sel_initWithDefaultValues);
}

id GlassContainerPTDomain.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL specialized static GlassContainer.ScalePulseSettings.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))))) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[8].f64[0] == a2[8].f64[0];
  if (a1[8].f64[1] != a2[8].f64[1])
  {
    v3 = 0;
  }

  return a1[9].f64[0] == a2[9].f64[0] && v3;
}

uint64_t specialized static GlassContainer.SettingsOverride.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) == *(a2 + 56))
    {
      v4 = *(a2 + 88);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) != 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  v64 = v2;
  v65 = v3;
  v6 = *(a1 + 208);
  v7 = *(a1 + 176);
  v57 = *(a1 + 192);
  v58 = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a1 + 208);
  *v59 = *(a1 + 224);
  *&v59[9] = *(a1 + 233);
  v11 = *(a1 + 144);
  v12 = *(a1 + 112);
  v54 = *(a1 + 128);
  *v55 = v11;
  v13 = *(a1 + 144);
  v14 = *(a1 + 176);
  *&v55[16] = *(a1 + 160);
  v56 = v14;
  v15 = *(a1 + 112);
  v52 = *(a1 + 96);
  v53 = v15;
  *(v61 + 9) = *(a2 + 233);
  v16 = *(a2 + 192);
  v17 = *(a2 + 224);
  v60[7] = *(a2 + 208);
  v61[0] = v17;
  v18 = *(a2 + 128);
  v19 = *(a2 + 160);
  v20 = *(a2 + 176);
  v60[3] = *(a2 + 144);
  v60[4] = v19;
  v60[5] = v20;
  v60[6] = v16;
  v60[0] = v8;
  v60[1] = v9;
  v60[2] = v18;
  v62[6] = v57;
  v62[7] = v10;
  v63[0] = *(a1 + 224);
  *(v63 + 9) = *(a1 + 233);
  v62[2] = v54;
  v62[3] = v13;
  v62[4] = *&v55[16];
  v62[5] = v7;
  v62[0] = v52;
  v62[1] = v12;
  if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(v62) == 1)
  {
    v23 = *(a2 + 208);
    v49 = *(a2 + 192);
    v50 = v23;
    v51[0] = *(a2 + 224);
    *(v51 + 9) = *(a2 + 233);
    v24 = *(a2 + 144);
    v46 = *(a2 + 128);
    *v47 = v24;
    v25 = *(a2 + 176);
    *&v47[16] = *(a2 + 160);
    v48 = v25;
    v26 = *(a2 + 112);
    v44 = *(a2 + 96);
    v45 = v26;
    if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(&v44) != 1)
    {
      return 0;
    }
  }

  else
  {
    v27 = *(a1 + 208);
    v42[6] = *(a1 + 192);
    v42[7] = v27;
    v43[0] = *(a1 + 224);
    *(v43 + 9) = *(a1 + 233);
    v28 = *(a1 + 144);
    v42[2] = *(a1 + 128);
    v42[3] = v28;
    v29 = *(a1 + 176);
    v42[4] = *(a1 + 160);
    v42[5] = v29;
    v30 = *(a1 + 112);
    v42[0] = *(a1 + 96);
    v42[1] = v30;
    v31 = *(a2 + 208);
    v49 = *(a2 + 192);
    v50 = v31;
    v51[0] = *(a2 + 224);
    *(v51 + 9) = *(a2 + 233);
    v32 = *(a2 + 144);
    v46 = *(a2 + 128);
    *v47 = v32;
    v33 = *(a2 + 176);
    *&v47[16] = *(a2 + 160);
    v48 = v33;
    v34 = *(a2 + 112);
    v44 = *(a2 + 96);
    v45 = v34;
    if (_s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(&v44) == 1 || !specialized static GlassContainer.ScalePulseSettings.== infix(_:_:)(v42, v60))
    {
      return 0;
    }
  }

  v35 = *(a1 + 304);
  v54 = *(a1 + 288);
  *v55 = v35;
  *&v55[9] = *(a1 + 313);
  v36 = *(a1 + 272);
  v52 = *(a1 + 256);
  v53 = v36;
  v37 = *(a2 + 304);
  v58 = *(a2 + 288);
  *v59 = v37;
  *&v59[9] = *(a2 + 313);
  v38 = *(a2 + 272);
  v56 = *(a2 + 256);
  v57 = v38;
  if (v55[24])
  {
    if ((v59[24] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v39 = *(a1 + 304);
    v46 = *(a1 + 288);
    *v47 = v39;
    *&v47[9] = *(a1 + 313);
    v40 = *(a1 + 272);
    v44 = *(a1 + 256);
    v45 = v40;
    if ((v59[24] & 1) != 0 || !specialized static GlassContainer.TranslationKickSettings.== infix(_:_:)(&v44, &v56))
    {
      return 0;
    }
  }

  return 1;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.ScalePulseSettings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlassContainer.ScalePulseSettings(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
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

  *(result + 152) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.TranslationKickSettings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlassContainer.TranslationKickSettings(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.SettingsOverride(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 329))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlassContainer.SettingsOverride(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 329) = v3;
  return result;
}

void specialized static GlassContainerPTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDACA80;
  v1 = MEMORY[0x193ABEC20](0x697469736E617254, 0xEA00000000006E6FLL);
  v2 = MEMORY[0x193ABEC20](0x697469736E617274, 0xEA00000000006E6FLL);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 childSettingsKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTDrillDownRow, 0x1E69C6610);
  *(v0 + 56) = v5;
  *(v0 + 32) = v4;
  v6 = MEMORY[0x193ABEC20](0x6E61726165707041, 0xEA00000000006563);
  v7 = MEMORY[0x193ABEC20](0x6E61726165707061, 0xEA00000000006563);
  v8 = [v3 rowWithTitle:v6 childSettingsKeyPath:v7];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v0 + 88) = v5;
  *(v0 + 64) = v8;
  v9 = MEMORY[0x193ABEC20](0x755020656C616353, 0xEB0000000065736CLL);
  v10 = MEMORY[0x193ABEC20](0x6C7550656C616373, 0xEA00000000006573);
  v11 = [v3 rowWithTitle:v9 childSettingsKeyPath:v10];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 120) = v5;
  *(v0 + 96) = v11;
  v12 = MEMORY[0x193ABEC20](0x74616C736E617254, 0xEF6B63694B6E6F69);
  v13 = MEMORY[0x193ABEC20](0x74616C736E617274, 0xEF6B63694B6E6F69);
  v14 = [v3 rowWithTitle:v12 childSettingsKeyPath:v13];

  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = objc_opt_self();
  *(v0 + 152) = v5;
  *(v0 + 128) = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v15 sectionWithRows_];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18DDA6EB0;
  v19 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v20 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD76F10);
  v21 = [objc_opt_self() rowWithTitle:v20 action:v19];

  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v18 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTButtonRow, 0x1E69C65E8);
  *(v18 + 32) = v21;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v15 sectionWithRows_];

  if (v23)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18DDAB4C0;
    v25 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection, 0x1E69C6690);
    *(v24 + 32) = v17;
    *(v24 + 88) = v25;
    *(v24 + 56) = v25;
    *(v24 + 64) = v23;
    v26 = v17;
    v27 = v23;
    v28 = MEMORY[0x193ABEC20](0xD00000000000001BLL, 0x800000018DD76F30);
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v15 moduleWithTitle:v28 contents:v29];

    return;
  }

LABEL_15:
  __break(1u);
}

void specialized static GlassContainerTransitionPTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  v0[1] = xmmword_18DDAC2E0;
  v1 = MEMORY[0x193ABEC20](0x6146206465657053, 0xEC000000726F7463);
  v2 = MEMORY[0x193ABEC20](0x6361466465657073, 0xEB00000000726F74);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = [v4 between:0.1 and:4.0];

  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v38, v0 + 2);
  v6 = MEMORY[0x193ABEC20](0x4420676E69727053, 0xEF6E6F6974617275);
  v7 = MEMORY[0x193ABEC20](0x7544676E69727073, 0xEE006E6F69746172);
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = [v8 between:0.1 and:5.0];

  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v37, v0 + 4);
  v10 = MEMORY[0x193ABEC20](0x4220676E69727053, 0xED000065636E756FLL);
  v11 = MEMORY[0x193ABEC20](0x6F42676E69727073, 0xEC00000065636E75);
  v12 = [v3 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = [v12 between:0.1 and:5.0];

  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v36, v0 + 6);
  v14 = MEMORY[0x193ABEC20](0x61462079616C6544, 0xEC000000726F7463);
  v15 = MEMORY[0x193ABEC20](0x63614679616C6564, 0xEB00000000726F74);
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = [v16 between:0.0 and:2.0];

  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v35, v0 + 8);
  v18 = MEMORY[0x193ABEC20](0x616C6544206E694DLL, 0xE900000000000079);
  v19 = MEMORY[0x193ABEC20](0x79616C65446E696DLL, 0xE800000000000000);
  v20 = [v3 rowWithTitle:v18 valueKeyPath:v19];

  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = [v20 between:0.0 and:2.0];

  if (!v21)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v34, v0 + 10);
  v22 = MEMORY[0x193ABEC20](0x616C65442078614DLL, 0xE900000000000079);
  v23 = MEMORY[0x193ABEC20](0x79616C654478616DLL, 0xE800000000000000);
  v24 = [v3 rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v25 = [v24 between:0.0 and:2.0];

  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = objc_opt_self();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v33, v0 + 12);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v26 sectionWithRows_];

  if (v28)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_18DDA6EB0;
    *(v29 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection, 0x1E69C6690);
    *(v29 + 32) = v28;
    v30 = v28;
    v31 = MEMORY[0x193ABEC20](0x697469736E617254, 0xEA00000000006E6FLL);
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v26 moduleWithTitle:v31 contents:v32];

    return;
  }

LABEL_27:
  __break(1u);
}

void specialized static GlassContainerAppearancePTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  v0[1] = xmmword_18DDACA80;
  v1 = MEMORY[0x193ABEC20](0x656C616353, 0xE500000000000000);
  v2 = MEMORY[0x193ABEC20](0x656C616373, 0xE500000000000000);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = [v4 between:0.1 and:2.0];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v28, v0 + 2);
  v6 = MEMORY[0x193ABEC20](0x6E696F502078614DLL, 0xEF68746469572074);
  v7 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD766A0);
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = [v8 between:0.0 and:100.0];

  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v27, v0 + 4);
  v10 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD76EF0);
  v11 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD766C0);
  v12 = [v3 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = [v12 between:0.0 and:100.0];

  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v26, v0 + 6);
  v14 = MEMORY[0x193ABEC20](0x6461522072756C42, 0xEB00000000737569);
  v15 = MEMORY[0x193ABEC20](0x6964615272756C62, 0xEA00000000007375);
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = [v16 between:0.0 and:50.0];

  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = objc_opt_self();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v25, v0 + 8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 sectionWithRows_];

  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18DDA6EB0;
    *(v21 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection, 0x1E69C6690);
    *(v21 + 32) = v20;
    v22 = v20;
    v23 = MEMORY[0x193ABEC20](0x6E61726165707041, 0xEA00000000006563);
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v18 moduleWithTitle:v23 contents:v24];

    return;
  }

LABEL_19:
  __break(1u);
}

void specialized static GlassContainerScalePulsePTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  v0[1] = xmmword_18DDACA90;
  v1 = MEMORY[0x193ABEC20](0x6146206465657053, 0xEC000000726F7463);
  v2 = MEMORY[0x193ABEC20](0x6361466465657073, 0xEB00000000726F74);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_36;
  }

  v5 = [v4 between:0.1 and:4.0];

  if (!v5)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v88, v0 + 2);
  v6 = MEMORY[0x193ABEC20](0x6C6163532078614DLL, 0xEF68746469572065);
  v7 = MEMORY[0x193ABEC20](0x656C61635378616DLL, 0xED00006874646957);
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v9 = [v8 between:1.0 and:2.0];

  if (!v9)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v87, v0 + 4);
  v10 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD76D50);
  v11 = MEMORY[0x193ABEC20](0x656C61635378616DLL, 0xEE00746867696548);
  v12 = [v3 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v13 = [v12 between:1.0 and:2.0];

  if (!v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v86, v0 + 6);
  v14 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD76D70);
  v15 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD766A0);
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = [v16 between:1.0 and:50.0];

  if (!v17)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v85, v0 + 8);
  v18 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76D90);
  v19 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD766C0);
  v20 = [v3 rowWithTitle:v18 valueKeyPath:v19];

  if (!v20)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v21 = [v20 between:1.0 and:50.0];

  if (!v21)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v84, v0 + 10);
  v22 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD76DB0);
  v23 = MEMORY[0x193ABEC20](0xD000000000000015, 0x800000018DD767A0);
  v24 = [v3 rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v25 = [v24 between:0.1 and:5.0];

  if (!v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v83, v0 + 12);
  v26 = MEMORY[0x193ABEC20](0x705520656C616353, 0xEF65636E756F4220);
  v27 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD767C0);
  v28 = [v3 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = [v28 between:0.0 and:5.0];

  if (!v29)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v82, v0 + 14);
  v30 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD76DD0);
  v31 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD767E0);
  v32 = [v3 rowWithTitle:v30 valueKeyPath:v31];

  if (!v32)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v33 = [v32 between:0.1 and:5.0];

  if (!v33)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v81, v0 + 16);
  v34 = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD76DF0);
  v35 = MEMORY[0x193ABEC20](0xD00000000000001BLL, 0x800000018DD76800);
  v36 = [v3 rowWithTitle:v34 valueKeyPath:v35];

  if (!v36)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v37 = [v36 between:0.0 and:5.0];

  if (!v37)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v80, v0 + 18);
  v38 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD76E10);
  v39 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76820);
  v40 = [v3 rowWithTitle:v38 valueKeyPath:v39];

  if (!v40)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v41 = [v40 between:0.0 and:2.0];

  if (!v41)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v79, v0 + 20);
  v42 = MEMORY[0x193ABEC20](0xD000000000000019, 0x800000018DD76E30);
  v43 = MEMORY[0x193ABEC20](0xD00000000000001CLL, 0x800000018DD76840);
  v44 = [v3 rowWithTitle:v42 valueKeyPath:v43];

  if (!v44)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v45 = [v44 between:0.1 and:5.0];

  if (!v45)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v78, v0 + 22);
  v46 = MEMORY[0x193ABEC20](0xD000000000000017, 0x800000018DD76E50);
  v47 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD76860);
  v48 = [v3 rowWithTitle:v46 valueKeyPath:v47];

  if (!v48)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v49 = [v48 between:0.0 and:5.0];

  if (!v49)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v77, v0 + 24);
  v50 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76E70);
  v51 = MEMORY[0x193ABEC20](0xD000000000000013, 0x800000018DD76880);
  v52 = [v3 rowWithTitle:v50 valueKeyPath:v51];

  if (!v52)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v53 = [v52 between:0.0 and:2.0];

  if (!v53)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v76, v0 + 26);
  v54 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76E90);
  v55 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD768A0);
  v56 = [v3 rowWithTitle:v54 valueKeyPath:v55];

  if (!v56)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v57 = [v56 between:0.0 and:50.0];

  if (!v57)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v75, v0 + 28);
  v58 = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD76EB0);
  v59 = MEMORY[0x193ABEC20](0xD00000000000001CLL, 0x800000018DD768C0);
  v60 = [v3 rowWithTitle:v58 valueKeyPath:v59];

  if (!v60)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v61 = [v60 between:0.0 and:5.0];

  if (!v61)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v74, v0 + 30);
  v62 = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD76ED0);
  v63 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD768E0);
  v64 = [v3 rowWithTitle:v62 valueKeyPath:v63];

  if (!v64)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v65 = [v64 between:0.0 and:5.0];

  if (!v65)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v66 = objc_opt_self();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v73, v0 + 32);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v68 = [v66 sectionWithRows_];

  if (v68)
  {
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_18DDA6EB0;
    *(v69 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection, 0x1E69C6690);
    *(v69 + 32) = v68;
    v70 = v68;
    v71 = MEMORY[0x193ABEC20](0x755020656C616353, 0xEB0000000065736CLL);
    v72 = Array._bridgeToObjectiveC()().super.isa;

    [v66 moduleWithTitle:v71 contents:v72];

    return;
  }

LABEL_67:
  __break(1u);
}

void specialized static GlassContainerTranslationKickPTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  v0[1] = xmmword_18DDACAA0;
  v1 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76CB0);
  v2 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76B40);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = [v4 between:0.1 and:5.0];

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v43, v0 + 2);
  v6 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76CD0);
  v7 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD76B60);
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = [v8 between:0.0 and:5.0];

  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v42, v0 + 4);
  v10 = MEMORY[0x193ABEC20](0x442074657366664FLL, 0xEC00000079616C65);
  v11 = MEMORY[0x193ABEC20](0x654474657366666FLL, 0xEB0000000079616CLL);
  v12 = [v3 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [v12 between:0.0 and:5.0];

  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v41, v0 + 6);
  v14 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76CF0);
  v15 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76B80);
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = [v16 between:0.1 and:5.0];

  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v40, v0 + 8);
  v18 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76D10);
  v19 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD76BA0);
  v20 = [v3 rowWithTitle:v18 valueKeyPath:v19];

  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = [v20 between:0.0 and:5.0];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v39, v0 + 10);
  v22 = MEMORY[0x193ABEC20](0x44206E7275746552, 0xEC00000079616C65);
  v23 = MEMORY[0x193ABEC20](0x65446E7275746572, 0xEB0000000079616CLL);
  v24 = [v3 rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = [v24 between:0.0 and:2.0];

  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v38, v0 + 12);
  v26 = MEMORY[0x193ABEC20](0x636146206B63694BLL, 0xEB00000000726F74);
  v27 = MEMORY[0x193ABEC20](0x746361466B63696BLL, 0xEA0000000000726FLL);
  v28 = [v3 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 between:1.0 and:10.0];

  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = objc_opt_self();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v37, v0 + 14);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 sectionWithRows_];

  if (v32)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18DDA6EB0;
    *(v33 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection, 0x1E69C6690);
    *(v33 + 32) = v32;
    v34 = v32;
    v35 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD76D30);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v30 moduleWithTitle:v35 contents:v36];

    return;
  }

LABEL_31:
  __break(1u);
}

CGFloat _OffsetEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D2>, CGFloat a3@<D3>)
{
  CGAffineTransformMakeTranslation(&v7, a2, a3);
  result = v7.a;
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *a1 = *&v7.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 (*_OffsetEffect.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

double (*protocol witness for Animatable.animatableData.modify in conformance _OffsetEffect(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return CGPoint.animatableData.modify;
}

void View.repeatingOffset(from:to:animation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v19 = 0;
  v20 = 257;
  v11 = *(*a1 + 144);
  lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  v13 = v11(&v19, &type metadata for RepeatAnimation, v12);
  v15 = type metadata accessor for ModifiedContent(0, a2, &type metadata for _OffsetEffect, v14);
  v18[0] = a3;
  v18[1] = &protocol witness table for _OffsetEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v18);
  v17 = v16;
  default argument 1 of View.appearanceAnimation<A>(animation:strategy:modifier:)(&v19);
  View.appearanceAnimation<A>(animation:strategy:modifier:)(v13, partial apply for closure #1 in View.repeatingOffset(from:to:animation:), a2, v15, a3, v17, x8_0);
}

SwiftUI::OffsetTransition __swiftcall OffsetTransition.init(_:)(SwiftUI::OffsetTransition result)
{
  *v1 = result.offset.width;
  v1[1] = result.offset.height;
  return result;
}

uint64_t static AnyTransition.offset(_:)(double a1, double a2)
{
  type metadata accessor for TransitionBox<OffsetTransition>(0, &lazy cache variable for type metadata for TransitionBox<OffsetTransition>, lazy protocol witness table accessor for type OffsetTransition and conformance OffsetTransition, &type metadata for OffsetTransition, type metadata accessor for TransitionBox);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

int8x16_t OffsetTransition.body(content:phase:)@<Q0>(char a1@<W1>, int8x16_t *a2@<X8>)
{
  v3 = vdup_n_s32(a1 == 1);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(*v2, vcgezq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *a2 = result;
  return result;
}

void OffsetTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDA6EB0;
    v7 = v6;
    v8 = v5;
    *(v4 + 32) = 3;
    *(v4 + 36) = v7;
    *(v4 + 40) = 0;
    *(v4 + 44) = v8;
    *(v4 + 48) = 0;
    *(v4 + 52) = 0x3F80000000000000;
    *(v4 + 60) = 3;
    v3 = 1;
  }

  outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
}

uint64_t _OffsetEffect.encode(to:)(uint64_t result, double a2, double a3)
{
  v3 = result;
  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v6 = *(v3 + 8);
    v7 = *(v3 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v11 = a2;
      v10 = a3;
      v7 = result;
    }

    else
    {
      v10 = a3;
      v11 = a2;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
    *(v3 + 24) = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 8) = v6 + 1;
      CGSize.encode(to:)(v3, v11, v10);
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _OffsetEffect@<X0>(void *a1@<X8>, unint64_t a2@<X0>)
{
  result = specialized _OffsetEffect.init(from:)(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance OffsetPosition(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation()
{
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for RepeatAnimation, &type metadata for RepeatAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for RepeatAnimation, &type metadata for RepeatAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }
}

{
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    swift_getWitnessTable(protocol conformance descriptor for RepeatAnimation, &type metadata for RepeatAnimation, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }
}

void lazy protocol witness table accessor for type OffsetTransition and conformance OffsetTransition()
{
  if (!lazy protocol witness table cache variable for type OffsetTransition and conformance OffsetTransition)
  {
    swift_getWitnessTable(protocol conformance descriptor for OffsetTransition, &type metadata for OffsetTransition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type OffsetTransition and conformance OffsetTransition);
  }
}

double outlined consume of _Transition_ContentTransition.Result(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t specialized _OffsetEffect.init(from:)(unint64_t result)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (1)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        goto LABEL_39;
      }

      result = v3[3];
      if (result)
      {
        v6 = v3[4];
        if (v4 < v6)
        {
          goto LABEL_9;
        }

        if (v6 < v4)
        {
          goto LABEL_40;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_40:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_9:
      v7 = result & 7;
      if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        break;
      }

      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v4 = v3[1] + result;
          if (v5 < v4)
          {
            goto LABEL_40;
          }

          v3[1] = v4;
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_40;
          }

          v4 = v3[1] + 4;
          if (v5 < v4)
          {
            goto LABEL_40;
          }

          v3[1] = v4;
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          goto LABEL_32;
        }

        if (v7 != 1)
        {
          goto LABEL_40;
        }

        v4 = v3[1] + 8;
        if (v5 < v4)
        {
          goto LABEL_40;
        }

        v3[1] = v4;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_40;
    }

    v1 = v3[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
      v1 = isUniquelyReferenced_nonNull_native;
    }

    v10 = *(v1 + 16);
    v9 = *(v1 + 24);
    if (v10 >= v9 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v1);
      v1 = isUniquelyReferenced_nonNull_native;
    }

    *(v1 + 16) = v10 + 1;
    *(v1 + 8 * v10 + 32) = v5;
    v3[5] = v1;
    result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v11 = v3[1] + result;
    if (v5 < v11)
    {
      goto LABEL_40;
    }

    v3[2] = v11;
    specialized CGPoint.init(from:)(v3);
    v1 = v3[5];
    if (!*(v1 + 16))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v12 = *(v1 + 16);
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
      v12 = *(result + 16);
      if (!v12)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        v3[3] = 0;
        return result;
      }
    }

    v13 = v12 - 1;
    v5 = *(v1 + 8 * v13 + 32);
    *(v1 + 16) = v13;
    v3[5] = v1;
    v3[2] = v5;
LABEL_32:
    v4 = v3[1];
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v16 = *(result + 16);
  if (v16)
  {
    v14 = v16 - 1;
    v15 = *(result + 8 * v14 + 32);
    *(result + 16) = v14;
    v3[5] = result;
    v3[2] = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static _AnyAnimatableData.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v2);
}

_OWORD *_AnyAnimatableData.value.setter(_OWORD *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return outlined init with take of Any(a1, (v1 + 8));
}

uint64_t static _AnyAnimatableData.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for ZeroVTable();
  a1[4] = MEMORY[0x1E69E7CA8] + 8;
  *a1 = result;
  return result;
}

uint64_t static _AnyAnimatableData.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 88))(a1 + 8, a2 + 1) & 1;
  }

  else
  {
    return 0;
  }
}

void *static _AnyAnimatableData.+= infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 96))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);

    return outlined init with copy of _AnyAnimatableData(a2, a1);
  }

  return result;
}

void *static _AnyAnimatableData.+ infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 96))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);

    return outlined init with copy of _AnyAnimatableData(a2, a3);
  }

  return result;
}

uint64_t static _AnyAnimatableData.- infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 104))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);
    outlined init with copy of _AnyAnimatableData(a2, a3);
    return (*(*a3 + 112))(a3 + 1);
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _AnyAnimatableData@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 96))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);

    return outlined init with copy of _AnyAnimatableData(a2, a3);
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _AnyAnimatableData@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);

  return specialized static _AnyAnimatableData.-= infix(_:_:)(a3, a2);
}

uint64_t static VTable.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t static VTable.negate(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  outlined init with take of Any(a1, v11);
  swift_dynamicCast();
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  *(a1 + 24) = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v3 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
}

float _ColorMonochromeEffect.resolve(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v14 = *a1;
  v8 = (*(*a2 + 112))(&v14);
  v9 = a5;
  *a3 = v8;
  *(a3 + 4) = v10;
  result = a4;
  *(a3 + 8) = v12;
  *(a3 + 12) = v13;
  *(a3 + 16) = v9;
  *(a3 + 20) = result;
  return result;
}

float32x4_t _ColorMonochromeEffect._Resolved.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v3 = v1[1].i64[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v4 = v8;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  result = vmulq_f32(v4, v5);
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

void _ColorMonochromeEffect._Resolved.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v9 = v2;
    swift_once();
    v3.i64[0] = 0x3C0000003C000000;
    v3.i64[1] = 0x3C0000003C000000;
    v2 = v9;
  }

  v8 = vmulq_f32(v2, v3);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8.f32[0];
    v6 = v8.i32[2];
    v5 = v8.i32[1];
    v7 = v8.i32[3];
  }

  else
  {
    v11 = 2;
    v10 = v8;
    v4 = ResolvedGradient.ColorSpace.convertOut(_:)(&v10);
  }

  *v1 = v4;
  *(v1 + 4) = v5;
  *(v1 + 8) = v6;
  *(v1 + 12) = v7;
}

void (*_ColorMonochromeEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i64[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = vmulq_f32(v6, v7);
  return _ColorMonochromeEffect._Resolved.animatableData.modify;
}

void _ColorMonochromeEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 56;
  if (a2)
  {
    v3 = 32;
  }

  v4 = v2 + v3;
  *v4 = *(v2 + 80);
  *(v4 + 16) = *(v2 + 96);
  _ColorMonochromeEffect._Resolved.animatableData.setter(v2 + v3);

  free(v2);
}

double _ColorMonochromeEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  *(&v9 + 4) = vrev64_s32(v1[1]);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ColorMonochromeEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  *(&v9 + 4) = vrev64_s32(v1[1]);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _ColorMonochromeEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  _ColorMonochromeEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ColorMonochromeEffect._Resolved(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ColorMonochromeEffect._Resolved.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

float protocol witness for EnvironmentalModifier.resolve(in:) in conformance _ColorMonochromeEffect@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v13 = *a1;
  v7 = (*(**&v4 + 112))(&v13);
  v8 = v6;
  *a2 = v7;
  *(a2 + 4) = v9;
  result = v5;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v8;
  *(a2 + 20) = result;
  return result;
}

void lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved()
{
  if (!lazy protocol witness table cache variable for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ColorMonochromeEffect._Resolved, &type metadata for _ColorMonochromeEffect._Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved);
  }
}

void lazy protocol witness table accessor for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

uint64_t *assignWithCopy for _ColorMonochromeEffect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for _ColorMonochromeEffect(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t Gesture.simultaneously<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return SimultaneousGesture.init(_:_:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t SimultaneousGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for SimultaneousGesture(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t SimultaneousGesture.Value.first.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t SimultaneousGesture.Value.first.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t SimultaneousGesture.Value.second.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SimultaneousGesture.Value.second.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SimultaneousGesture.Value.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v15 = *(type metadata accessor for SimultaneousGesture.Value(0, v18) + 52);
  swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

double static SimultaneousGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int32x2_t *a7@<X8>)
{
  v10 = a3;
  v86 = a7;
  v131 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = a2[2];
  v13 = a2[4];
  v14 = a2[5];
  v128 = a2[3];
  v129 = v13;
  v130 = v14;
  v15 = *a2;
  v126 = a2[1];
  v127 = v12;
  v16 = *(a2 + 12);
  v124 = *(a2 + 104);
  v125 = v15;
  v17 = *(a2 + 30);
  v111 = a3;
  v112 = a4;
  v113 = a5;
  v114 = a6;
  LODWORD(v96) = v11;
  LODWORD(v104) = v11;
  *&v115 = a3;
  *(&v115 + 1) = a4;
  *&v116 = a5;
  *(&v116 + 1) = a6;
  v92 = type metadata accessor for SimultaneousGesture(255, &v115);
  type metadata accessor for _GraphValue(0, v92, v18, v19);
  _GraphValue.subscript.getter(partial apply for closure #1 in static SimultaneousGesture._makeGesture(gesture:inputs:), v10, v102);
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v115 = v125;
  v116 = v126;
  v87 = v16;
  v121 = v16;
  v122 = v124;
  v123 = v17;
  v20 = (*(a5 + 32))(&v108, v102, &v115, v10, a5);
  v98 = v10;
  LODWORD(v100) = v17;
  if ((v17 & 8) != 0)
  {
    v20 = swift_conformsToProtocol2();
    if (!v20 || !v10)
    {
      _gestureModifierProtocolDescriptor();
      v22 = swift_conformsToProtocol();
      v117 = v127;
      v118 = v128;
      v119 = v129;
      v120 = v130;
      v115 = v125;
      v116 = v126;
      if (v22)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      LOBYTE(v102[0]) = v23;
      v121 = v87;
      v122 = v124;
      v123 = v100;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v27 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v25, v26);
      v28 = _GestureOutputs.debugData.getter();
      v107[0] = 1;
      v10 = v98;
      v20 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v98, v102, 0x100000000, &v115, v28 | ((HIDWORD(v28) & 1) << 32), 0x100000000, v27);
    }
  }

  *&v21 = v108;
  v99 = v21;
  v97 = v109;
  v95 = v110;
  MEMORY[0x1EEE9AC00](v20);
  v82 = v10;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  LODWORD(v104) = v96;
  _GraphValue.subscript.getter(partial apply for closure #2 in static SimultaneousGesture._makeGesture(gesture:inputs:), a4, v102);
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v115 = v125;
  v116 = v126;
  v121 = v87;
  v122 = v124;
  v123 = v100;
  v29 = (*(a6 + 32))(&v108, v102, &v115, a4, a6);
  if ((v100 & 8) != 0)
  {
    v29 = swift_conformsToProtocol2();
    if (!v29 || !a4)
    {
      _gestureModifierProtocolDescriptor();
      v31 = swift_conformsToProtocol();
      v117 = v127;
      v118 = v128;
      v119 = v129;
      v120 = v130;
      v115 = v125;
      v116 = v126;
      if (v31)
      {
        v32 = 2;
      }

      else
      {
        v32 = 1;
      }

      LOBYTE(v102[0]) = v32;
      v121 = v87;
      v122 = v124;
      v123 = v100;
      v33 = swift_getAssociatedTypeWitness();
      v36 = type metadata accessor for _GestureOutputs(0, v33, v34, v35);
      v37 = _GestureOutputs.debugData.getter();
      v107[0] = 1;
      v29 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a4, v102, 0x100000000, &v115, v37 | ((HIDWORD(v37) & 1) << 32), 0x100000000, v36);
    }
  }

  *&v30 = v108;
  v96 = v109;
  v93 = v110;
  v90 = v30;
  v108 = vzip1_s32(*&v99, v108);
  MEMORY[0x1EEE9AC00](v29);
  *&v115 = v98;
  *(&v115 + 1) = a4;
  *&v116 = a5;
  *(&v116 + 1) = a6;
  v38 = a4;
  v39 = type metadata accessor for SimultaneousGesture.Value(255, &v115);
  v82 = type metadata accessor for GesturePhase(0, v39, v40, v41);
  *&v115 = v98;
  *(&v115 + 1) = v38;
  v94 = v38;
  *&v116 = a5;
  *(&v116 + 1) = a6;
  v83 = type metadata accessor for SimultaneousPhase(0, &v115);
  swift_getWitnessTable(protocol conformance descriptor for SimultaneousPhase<A, B>, v83);
  v84 = v42;
  v43 = type metadata accessor for Attribute();
  v44 = 0;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v108, partial apply for closure #1 in Attribute.init<A>(_:), v81, v83, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v45);
  _GestureOutputs.init(phase:)(v115, &v108);
  if ((v100 & 8) != 0)
  {
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    v115 = v125;
    v116 = v126;
    v107[0] = 4;
    v121 = v87;
    v122 = v124;
    v123 = v100;
    v104 = v99;
    v105 = v97;
    v106 = v95;
    v46 = swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs(0, v46, v47, v48);
    v49 = _GestureOutputs.debugData.getter();
    v102[0] = v90;
    v102[1] = v96;
    v103 = v93;
    v50 = swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs(0, v50, v51, v52);
    v53 = _GestureOutputs.debugData.getter();
    v56 = type metadata accessor for _GestureOutputs(0, v39, v54, v55);
    v101 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v92, v107, 0x100000000, &v115, v49 | ((HIDWORD(v49) & 1) << 32), v53 | ((HIDWORD(v53) & 1) << 32), v56);
  }

  v57 = *(v87 + 16);
  v58 = v97;
  if (v57)
  {
    LODWORD(v92) = *MEMORY[0x1E698D3F8];

    v91 = v99;
    v60 = (v59 + 40);
    v88 = a5;
    v89 = a6;
    v61 = v96;
    do
    {
      v100 = v44;
      v63 = *(v60 - 1);
      v62 = *v60;
      *&v115 = v58;
      DWORD2(v115) = v95;
      v64 = PreferencesOutputs.subscript.getter(v63, v63, v62);
      v65 = v92;
      v66 = v57;
      if ((v64 & 0x100000000) != 0)
      {
        v67 = v92;
      }

      else
      {
        v67 = v64;
      }

      *&v115 = v61;
      DWORD2(v115) = v93;
      v68 = PreferencesOutputs.subscript.getter(v63, v63, v62);
      *&v99 = &v86;
      if ((v68 & 0x100000000) != 0)
      {
        v69 = v65;
      }

      else
      {
        v69 = v68;
      }

      v104 = __PAIR64__(v69, v67);
      v105 = __PAIR64__(v90, v91);
      MEMORY[0x1EEE9AC00](v68);
      v82 = swift_getAssociatedTypeWitness();
      *&v115 = v98;
      *(&v115 + 1) = v94;
      *&v116 = v63;
      *(&v116 + 1) = v88;
      *&v117 = v89;
      *(&v117 + 1) = v62;
      v70 = type metadata accessor for SimultaneousPreference(0, &v115);
      v83 = v70;
      swift_getWitnessTable(protocol conformance descriptor for SimultaneousPreference<A, B, C>, v70);
      v84 = v71;
      v72 = v66;
      v73 = type metadata accessor for Attribute();
      v74 = v70;
      v61 = v96;
      v44 = v100;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v104, closure #1 in Attribute.init<A>(_:)partial apply, v81, v74, MEMORY[0x1E69E73E0], v73, MEMORY[0x1E69E7410], v75);
      v76 = v115;
      swift_beginAccess();
      LOBYTE(v104) = 0;
      PreferencesOutputs.subscript.setter(v76, v63, v63, v62);
      v58 = v97;
      swift_endAccess();
      v60 += 2;
      v57 = v72 - 1;
    }

    while (v57);
  }

  else
  {
  }

  swift_beginAccess();
  v77 = v109;
  v78 = v110;
  result = *&v108;
  v80 = v86;
  *v86 = v108;
  v80[1] = v77;
  v80[2].i32[0] = v78;
  return result;
}