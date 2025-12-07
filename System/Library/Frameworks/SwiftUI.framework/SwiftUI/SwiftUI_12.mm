uint64_t outlined destroy of Subview?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<Subview?, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VStack<LabeledContentStyleConfiguration.Content> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<LabeledContentStyleConfiguration.Content> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<LabeledContentStyleConfiguration.Content> and conformance VStack<A>)
  {
    type metadata accessor for VStack<LabeledContentStyleConfiguration.Content>(255, &lazy cache variable for type metadata for VStack<LabeledContentStyleConfiguration.Content>, &type metadata for LabeledContentStyleConfiguration.Content, &protocol witness table for LabeledContentStyleConfiguration.Content, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable(MEMORY[0x1E6981870], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<LabeledContentStyleConfiguration.Content> and conformance VStack<A>);
  }

  return result;
}

void specialized Environment.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x100) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2;

    outlined copy of Environment<ListItemTint?>.Content(a1, a2, 1);
  }

  else
  {
    outlined copy of Environment<ListItemTint?>.Content(a1, a2, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F4F0, &v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<ListItemTint?>.Content(a1, a2, 0);
  }
}

{
  if ((a2 & 0x100) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    outlined copy of Environment<CGFloat?>.Content(a1, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F550, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(a1, a2, 0);
  }
}

{
  if ((a2 & 0x100) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    outlined copy of Environment<CGFloat?>.Content(a1, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000018CD3F370, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(a1, a2, 0);
  }
}

{
  if ((a2 & 0x100) != 0)
  {
    *a3 = a1;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    outlined copy of Environment<CGFloat?>.Content(a1, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C7974536E6F6349, 0xE900000000000065, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(a1, a2, 0);
  }
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LabelGroupStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelGroupStyleConfiguration.Content, &type metadata for LabelGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LabelGroupStyleConfiguration.Content, &type metadata for LabelGroupStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content);
  }

  return result;
}

uint64_t sub_18BE31DEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v6[0] = &type metadata for LabelGroupStyleConfiguration.Content;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle();
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

unint64_t lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle;
  if (!lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabelGroupStyle, &type metadata for ResolvedLabelGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle;
  if (!lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedLabelGroupStyle, &type metadata for ResolvedLabelGroupStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedLabelGroupStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type LabelGroupStyleModifier<BodyLabelGroupStyle> and conformance LabelGroupStyleModifier<A>(double a1)
{
  result = lazy protocol witness table cache variable for type LabelGroupStyleModifier<BodyLabelGroupStyle> and conformance LabelGroupStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelGroupStyleModifier<BodyLabelGroupStyle> and conformance LabelGroupStyleModifier<A>)
  {
    type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(255, &lazy cache variable for type metadata for LabelGroupStyleModifier<BodyLabelGroupStyle>, &type metadata for BodyLabelGroupStyle, &protocol witness table for BodyLabelGroupStyle, type metadata accessor for LabelGroupStyleModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelGroupStyleModifier<A>, v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelGroupStyleModifier<BodyLabelGroupStyle> and conformance LabelGroupStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LabelGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for ReorderPosition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE322E8(uint64_t *a1, double a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, a3);
  type metadata accessor for LabelGroupChildEnvironmentModifier(255, v3, v4, v5);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>, &type metadata for LabelPlatformItemListFlags, &protocol witness table for LabelPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getOpaqueTypeConformance2();
  v11[1] = &protocol witness table for LabelGroupChildEnvironmentModifier<A>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v11);
  v10[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  swift_getWitnessTable(v8, v7, v10);
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for <<opaque return type of MappedViewElement.view>>.0)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of MappedViewElement.view>>.0);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LabelGroupStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<LabelGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content, &type metadata for LabelGroupStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LabeledContentStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _LabeledContentStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _LabeledContentStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance TitleAndContentLayout(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, char a5, uint64_t a6, char a7, int *a8, uint64_t a9)
{
  v10 = a5 & 1;
  v11 = a7 & 1;
  if (*(v9 + 25))
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | *(v9 + 24);
  if (*(v9 + 26))
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = 0;
  }

  TitleAndContentLayout.sizeThatFits(proposal:subviews:cache:)(a4, v10, a6, v11, a8, *v9, *(v9 + 8), *(v9 + 16), a9, v13 | v14);
}

void TitleAndContentLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, double a6, double a7, double a8, uint64_t a9, int a10)
{
  v15 = *a5;
  v16 = *(a5 + 1);
  v17 = *(a5 + 16);
  v18 = *(a5 + 17);
  LODWORD(v74) = *a5;
  *(&v74 + 1) = v16;
  LOBYTE(v75) = v17;
  BYTE1(v75) = v18;
  v19 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v20 = LayoutSubviews.endIndex.getter();
  if (v19 < 0 || v20 < v19)
  {
    goto LABEL_27;
  }

  if (!v19)
  {
    return;
  }

  if (v19 != 2)
  {
    if (v19 == 1)
    {
      LODWORD(v74) = v15;
      *(&v74 + 1) = v16;
      LOBYTE(v75) = v17;
      BYTE1(v75) = v18;
      LayoutSubviews.subscript.getter();
      v73 = a2 & 1;
      LayoutSubview.sizeThatFits(_:)();
      return;
    }

    goto LABEL_28;
  }

  v62 = a10;
  LayoutSubviews.subscript.getter();
  v65 = a3;
  v66 = DWORD2(v69);
  v67 = DWORD1(v69);
  LODWORD(v74) = v15;
  LOBYTE(v75) = v17;
  BYTE1(v75) = v18;
  LayoutSubviews.subscript.getter();
  v61 = v69;
  v63 = v70;
  v64 = HIDWORD(v69);
  LOBYTE(v74) = a2 & 1;
  LayoutSubview.dimensions(in:)();
  v21 = v74;
  v60 = HIDWORD(v69);
  LOBYTE(v74) = a2 & 1;
  v22 = v21;
  LayoutSubview.dimensions(in:)();
  v23 = v74;
  v24 = static VerticalAlignment.firstTextBaseline.getter();
  *&v74 = v22;
  v25 = MEMORY[0x18D004E20](v24);
  if (v26 & 1) != 0 || (v27 = *&v25, v28 = static VerticalAlignment.lastTextBaseline.getter(), *&v74 = v22, *(&v74 + 1) = v16, v29 = COERCE_DOUBLE(MEMORY[0x18D004E20](v28)), (v30) || vabdd_f64(v27, v29) >= 0.5 || (v31 = static VerticalAlignment.firstTextBaseline.getter(), *&v74 = v23, *(&v74 + 1) = v16, v32 = MEMORY[0x18D004E20](v31), (v33) || (v34 = *&v32, v35 = static VerticalAlignment.lastTextBaseline.getter(), *&v74 = v23, *(&v74 + 1) = v16, v36 = COERCE_DOUBLE(MEMORY[0x18D004E20](v35)), (v37) || vabdd_f64(v34, v36) >= 0.5)
  {
    v38 = v70;
    v39 = a1;
    v40 = DWORD2(v69);
    v41 = DWORD1(v69);
    v42 = v69;
    v43 = v70;
    v44 = static VerticalAlignment.center.getter();
  }

  else
  {
    v38 = v70;
    v39 = a1;
    v40 = DWORD2(v69);
    v41 = DWORD1(v69);
    v42 = v69;
    v43 = v70;
    v44 = static VerticalAlignment.firstTextBaseline.getter();
  }

  v58 = v44;
  v74 = v69;
  LOBYTE(v75) = v43;
  *&v69 = __PAIR64__(v41, v42);
  *(&v69 + 1) = __PAIR64__(HIDWORD(v69), v40);
  LOBYTE(v70) = v38;
  v73 = a4 & 1;
  if (TitleAndContentLayout.useHorizontalLayout(_:_:proposal:)(a6, &v74, &v69, v39, a2 & 1, v65, a4 & 1, v62 & 0x10101))
  {
    *&v69 = __PAIR64__(v67, v61);
    *(&v69 + 1) = __PAIR64__(v64, v66);
    LOBYTE(v70) = v63;
    static ProposedViewSize.unspecified.getter();
    LOBYTE(v74) = v45 & 1;
    LayoutSubview.dimensions(in:)();
    v46 = v74;
    v47 = v75;
    v48 = v77;
    v59 = v76;
    *&v69 = __PAIR64__(v41, v42);
    *(&v69 + 1) = __PAIR64__(v60, v40);
    LOBYTE(v70) = v38;
    static ProposedViewSize.unspecified.getter();
    LOBYTE(v74) = v49 & 1;
    LayoutSubview.dimensions(in:)();
    v50 = v74;
    v51 = v75;
    v53 = v76;
    v52 = v77;
    if (a2)
    {
      v54 = INFINITY;
    }

    else
    {
      v54 = *&v39;
    }

    v74 = v46;
    v75 = v47;
    v76 = v59;
    v77 = v48;
    ViewDimensions.width.getter();
    v56 = v55;
    v69 = v50;
    v70 = v51;
    v71 = v53;
    v72 = v52;
    ViewDimensions.width.getter();
    if (v56 + v57 + a6 <= v54)
    {
      v74 = v46;
      v75 = v47;
      v76 = v59;
      v77 = v48;
      v69 = v50;
      v70 = v51;
      v71 = v53;
      v72 = v52;
      TitleAndContentLayout.horizontalLayoutSize(_:_:alignment:)(&v74, a6, &v69, v58, v62 & 0x10101);
    }

    else
    {
      v74 = v50;
      v75 = v51;
      v76 = v53;
      v77 = v52;
      ViewDimensions.width.getter();
      *&v69 = __PAIR64__(v67, v61);
      *(&v69 + 1) = __PAIR64__(v64, v66);
      LOBYTE(v70) = v63;
      LOBYTE(v74) = 0;
      LayoutSubview.dimensions(in:)();
      v69 = v50;
      v70 = v51;
      v71 = v53;
      v72 = v52;
      TitleAndContentLayout.horizontalLayoutSize(_:_:alignment:)(&v74, a6, &v69, v58, v62 & 0x10101);
    }
  }

  else
  {
    *&v74 = __PAIR64__(v67, v61);
    *(&v74 + 1) = __PAIR64__(v64, v66);
    LOBYTE(v75) = v63;
    LOBYTE(v69) = a2 & 1;
    LayoutSubview.sizeThatFits(_:)();
    *&v74 = __PAIR64__(v41, v42);
    *(&v74 + 1) = __PAIR64__(v60, v40);
    LOBYTE(v75) = v38;
    LOBYTE(v69) = a2 & 1;
    LayoutSubview.sizeThatFits(_:)();
  }
}

uint64_t closure #1 in LabelGroup.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelGroupChildEnvironmentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelGroupChildEnvironmentModifier<A>, a5);

  return MEMORY[0x1EEDE0CC0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static LabelGroupChildEnvironmentModifier._makeViewInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14[0] = *a1;
  type metadata accessor for LabelGroupChildEnvironmentModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  v7 = _GraphValue.value.getter();
  v8 = *(a2 + 16);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v14[0] = v7;
  v14[1] = v9;
  v16 = type metadata accessor for LabelGroupChildEnvironmentModifier.ChildEnvironment(0, a3, a4, v10);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelGroupChildEnvironmentModifier<A>.ChildEnvironment, v16);
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v14, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v15, v16, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return _GraphInputs.environment.setter();
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SwipeActions.Key@<X0>(__int128 *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v15 = a1;
    swift_once();
    a1 = v15;
  }

  v1 = xmmword_1EAB09A10;
  v17[10] = xmmword_1EAB09A20;
  v17[11] = xmmword_1EAB09A30;
  v2 = xmmword_1EAB09A30;
  v3 = xmmword_1EAB09A40;
  v17[12] = xmmword_1EAB09A40;
  v17[13] = xmmword_1EAB09A50;
  v4 = xmmword_1EAB099E0;
  v5 = xmmword_1EAB099D0;
  v17[6] = xmmword_1EAB099E0;
  v17[7] = xmmword_1EAB099F0;
  v6 = xmmword_1EAB099F0;
  v7 = xmmword_1EAB09A00;
  v17[8] = xmmword_1EAB09A00;
  v17[9] = xmmword_1EAB09A10;
  v8 = xmmword_1EAB099A0;
  v9 = xmmword_1EAB09990;
  v17[2] = xmmword_1EAB099A0;
  v17[3] = xmmword_1EAB099B0;
  v10 = xmmword_1EAB099B0;
  v11 = xmmword_1EAB099C0;
  v17[4] = xmmword_1EAB099C0;
  v17[5] = xmmword_1EAB099D0;
  v12 = static SwipeActions.Key.defaultValue;
  v17[0] = static SwipeActions.Key.defaultValue;
  v17[1] = xmmword_1EAB09990;
  a1[10] = xmmword_1EAB09A20;
  a1[11] = v2;
  v13 = xmmword_1EAB09A50;
  a1[12] = v3;
  a1[13] = v13;
  a1[6] = v4;
  a1[7] = v6;
  a1[8] = v7;
  a1[9] = v1;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v5;
  *a1 = v12;
  a1[1] = v9;
  return outlined init with copy of SwipeActions.Value(v17, &v16);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double destroy for SwipeActions.Value(void *a1)
{
  if (a1[3])
  {

    if (a1[5])
    {
    }

    if (a1[8])
    {

      v3 = a1[10];
      if (v3)
      {
        if (v3 == 1)
        {
          goto LABEL_10;
        }
      }

      if (a1[12])
      {
      }
    }
  }

LABEL_10:
  if (a1[17])
  {

    if (a1[19])
    {
    }

    if (a1[22])
    {

      v4 = a1[24];
      if (v4)
      {
        if (v4 == 1)
        {
          return result;
        }
      }

      if (a1[26])
      {
      }
    }
  }

  return result;
}

void *static AccessibilityLabeledContentLabelModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v21[3] = *(a1 + 48);
  v21[4] = v7;
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v22 = *(a1 + 80);
  v21[1] = v8;
  v21[2] = v6;
  *&v15 = *(a1 + 48);
  DWORD2(v15) = *(a1 + 56);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return (a2)();
  }

  v9 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v9;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v10 = *(a1 + 16);
  v15 = *a1;
  v16 = v10;
  a2(&v13);
  lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation();
  result = PropertyList.subscript.getter();
  if (v15 != *MEMORY[0x1E698D3F8])
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v12, v21, v13, v14);
    result = PreferencesOutputs.subscript.setter();
  }

  *a3 = v13;
  a3[1] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabeledContentLabelModifier.Transform, &unk_1EFFC8958, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform);
  }

  return result;
}

uint64_t LabelGroupChildEnvironmentModifier.ChildEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = type metadata accessor for LabelGroupChildEnvironmentModifier(0, a2, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v30 - v17;
  v33 = a1;
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(a5);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(a2, a3, v19, v15);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(a2, a3, v20, v12);
  v21 = *&v12[*(v9 + 36)];
  v22 = *(v10 + 8);
  v34 = v10 + 8;
  v35 = v22;
  v22(v12, v9);
  (*(a3 + 32))(v21, a2, a3);
  v23 = *(a2 - 8);
  v31 = *(v23 + 8);
  v32 = v23 + 8;
  v31(v15, a2);
  v30 = a5;
  v25 = *a5;
  v24 = a5[1];
  v38 = v25;
  v39 = v24;
  swift_getAssociatedConformanceWitness();

  v37 = 0;
  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  (*(v36 + 8))(v18, AssociatedTypeWitness);
  EnvironmentValues.defaultForegroundStyle.setter();
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(a2, a3, v26, v15);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(a2, a3, v27, v12);
  v28 = *&v12[*(v9 + 36)];
  v35(v12, v9);
  (*(a3 + 24))(v28, a2, a3);
  v31(v15, a2);
  return EnvironmentValues.defaultFont.setter();
}

uint64_t _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter@<X0>(void *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = v5;
  a2[1] = v4;
}

uint64_t LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for LabelGroupChildEnvironmentModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t LabelGroupStyleModifier.styleBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0(255, v5);
  v6 = *(a1 + 16);
  v27 = *(a1 + 24);
  v28 = v6;
  type metadata accessor for LabelGroupChildEnvironmentModifier(255, v6, v27, v7);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>, &type metadata for LabelPlatformItemListFlags, &protocol witness table for LabelPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v9 = type metadata accessor for ModifiedContent();
  v36[0] = swift_getOpaqueTypeConformance2();
  v36[1] = &protocol witness table for LabelGroupChildEnvironmentModifier<A>;
  v10 = MEMORY[0x1E697E858];
  v35[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v36);
  v35[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  WitnessTable = swift_getWitnessTable(v10, v9, v35, v9);
  v31 = &type metadata for LabelGroupStyleConfiguration.Content;
  v32 = v9;
  v33 = &protocol witness table for LabelGroupStyleConfiguration.Content;
  v34 = WitnessTable;
  v26[1] = MEMORY[0x1E6981180];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - v18;
  (*(v3 + 16))(v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a1, v17);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = v28;
  *(v21 + 24) = v22;
  (*(v3 + 32))(v21 + v20, v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v23 = swift_checkMetadataState();
  View.enumerated<A>(_:)();

  v31 = &type metadata for LabelGroupStyleConfiguration.Content;
  v32 = v23;
  v33 = &protocol witness table for LabelGroupStyleConfiguration.Content;
  v34 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v13 + 8);
  v24(v15, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_18BE33EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for LabelGroupStyleModifier(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in LabelGroupStyleModifier.styleBody(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(type metadata accessor for LabelGroupStyleModifier(0, v6, *(v3 + 24), a2) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in LabelGroupStyleModifier.styleBody(configuration:)(a1, v8, v6, a3);
}

double View.transformPlatformItemList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = type metadata accessor for PlatformItemListTransformModifier(0, a5, a7, a4);

  MEMORY[0x18D00A570](v11, a4, v9, a6);

  return result;
}

BOOL TitleAndContentLayout.useHorizontalLayout(_:_:proposal:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  result = (a8 >> 8) & 1;
  if ((a8 & 0x100) == 0 && (a8 & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.dimensions(in:)();
    if (a5)
    {
      v12 = INFINITY;
    }

    else
    {
      v12 = *&a4;
    }

    static ProposedViewSize.unspecified.getter();
    LayoutSubview.dimensions(in:)();
    ViewDimensions.width.getter();
    v14 = v13;
    ViewDimensions.width.getter();
    v16 = v15;

    return v14 + v16 + a1 <= v12;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

uint64_t _LabeledContentStyleModifier.styleBody(configuration:)(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15[-v11];
  v16 = *a1;
  (*(v3 + 24))(&v16, v4, v3, v10);
  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, AssociatedTypeWitness);
}

uint64_t sub_18BE3449C(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    }
  }
}

void type metadata accessor for FocusGroupIdentifier?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for RootEntityGestureResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

double View.platformItemSelector(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  View.transformPlatformItemList<A>(_:_:)(v13, a5, v13, a2, a6, a3, a7);

  return result;
}

unint64_t protocol witness for LabelGroupStyle_v0.foregroundStyle(at:) in conformance BodyLabelGroupStyle@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (result > 2)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = dword_18CDB9ACC[result];
  }

  return result;
}

uint64_t protocol witness for LabelGroupStyle_v0.font(at:) in conformance BodyLabelGroupStyle(uint64_t a1)
{
  if (a1 == 2)
  {
    return static Font.footnote.getter();
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      return static Font.body.getter();
    }

    return static Font.footnote.getter();
  }

  return static Font.subheadline.getter();
}

double TitleAndContentLayout.horizontalLayoutSize(_:_:alignment:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, int a5)
{
  ViewDimensions.width.getter();
  v11 = v7;
  ViewDimensions.width.getter();
  v10 = v8;
  if ((a5 & 0x10000) != 0)
  {
    ViewDimensions.height.getter();
  }

  else
  {
    MEMORY[0x18D004E70](a4);
    MEMORY[0x18D004E70](a4);
    ViewDimensions.height.getter();
    MEMORY[0x18D004E70](a4);
    ViewDimensions.height.getter();
    MEMORY[0x18D004E70](a4);
  }

  return v11 + v10 + a2;
}

void protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance TitleAndContentLayout(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, uint64_t a8, char a9, uint64_t a10, char a11, int *a12, uint64_t a13)
{
  v14 = a9 & 1;
  v15 = a11 & 1;
  if (*(v13 + 25))
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | *(v13 + 24);
  if (*(v13 + 26))
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0;
  }

  TitleAndContentLayout.placeSubviews(in:proposal:subviews:cache:)(a8, v14, a10, v15, a12, a1.n128_f64[0], a2.n128_f64[0], a3.n128_f64[0], a4.n128_f64[0], *v13, *(v13 + 8), *(v13 + 16), a13, v17 | v18);
}

void TitleAndContentLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12, uint64_t a13, int a14)
{
  v23 = *a5;
  v24 = *(a5 + 1);
  v25 = *(a5 + 16);
  v26 = *(a5 + 17);
  LODWORD(v74) = *a5;
  *(&v74 + 1) = v24;
  LOBYTE(v75) = v25;
  BYTE1(v75) = v26;
  v27 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v28 = LayoutSubviews.endIndex.getter();
  if (v27 < 0 || v28 < v27)
  {
    goto LABEL_29;
  }

  if (!v27)
  {
    return;
  }

  if (v27 != 2)
  {
    if (v27 == 1)
    {
      LODWORD(v74) = v23;
      *(&v74 + 1) = v24;
      LOBYTE(v75) = v25;
      BYTE1(v75) = v26;
      LayoutSubviews.subscript.getter();
      static UnitPoint.topLeading.getter();
      v73 = a2 & 1;
      LayoutSubview.place(at:anchor:proposal:)();
      return;
    }

    goto LABEL_30;
  }

  LayoutSubviews.subscript.getter();
  LODWORD(v74) = v23;
  *(&v74 + 1) = v24;
  LOBYTE(v75) = v25;
  BYTE1(v75) = v26;
  LayoutSubviews.subscript.getter();
  v66 = DWORD1(v70);
  v68 = v70;
  v69 = DWORD2(v70);
  v29 = v70;
  v62 = v71;
  LOBYTE(v74) = a2 & 1;
  LayoutSubview.dimensions(in:)();
  v30 = v75;
  v31 = v76;
  v64 = HIDWORD(v70);
  v65 = v71;
  LayoutSubview.dimensions(in:)();
  v32 = static VerticalAlignment.firstTextBaseline.getter();
  v60 = *(&v76 + 1);
  v33 = MEMORY[0x18D004E20](v32);
  v61 = v74;
  if (v34 & 1) != 0 || (v35 = *&v33, v36 = static VerticalAlignment.lastTextBaseline.getter(), v37 = COERCE_DOUBLE(MEMORY[0x18D004E20](v36)), (v38) || vabdd_f64(v35, v37) >= 0.5 || (v39 = static VerticalAlignment.firstTextBaseline.getter(), *(&v74 + 1) = v24, v40 = MEMORY[0x18D004E20](v39), (v41) || (v42 = *&v40, v43 = static VerticalAlignment.lastTextBaseline.getter(), *(&v74 + 1) = v24, v44 = COERCE_DOUBLE(MEMORY[0x18D004E20](v43)), (v45) || vabdd_f64(v42, v44) >= 0.5)
  {
    v46 = static VerticalAlignment.center.getter();
  }

  else
  {
    v46 = static VerticalAlignment.firstTextBaseline.getter();
  }

  v59 = v46;
  v74 = v70;
  LOBYTE(v75) = v71;
  v47 = DWORD1(v70);
  v73 = a4 & 1;
  if (TitleAndContentLayout.useHorizontalLayout(_:_:proposal:)(a10, &v74, &v70, a1, a2 & 1, a3, a4 & 1, a14 & 0x10101))
  {
    *&v70 = __PAIR64__(v47, v68);
    *(&v70 + 1) = __PAIR64__(v64, v69);
    LOBYTE(v71) = v65;
    v73 = a4 & 1;
    LayoutSubview.dimensions(in:)();
    if (!(a2 & 1 | ((~a1 & 0x7FF0000000000000) == 0)))
    {
      v70 = v74;
      v71 = v75;
      v72 = v76;
      ViewDimensions.width.getter();
    }

    LOBYTE(v70) = a2 & 1;
    v73 = a4 & 1;
    LayoutSubview.dimensions(in:)();
    v48 = v70;
    v49 = v71;
    v50 = v72;
    if (a2)
    {
      v52 = *(&v74 + 1);
      v51 = v74;
      v53 = v75;
      v54 = v76;
    }

    else
    {
      ViewDimensions.width.getter();
      v56 = v55;
      v52 = *(&v74 + 1);
      v51 = v74;
      v58 = v75;
      v63 = v76;
      ViewDimensions.width.getter();
      if (v56 + v57 >= *&a1)
      {
LABEL_25:
        v70 = v48;
        v71 = v49;
        v72 = v50;
        MEMORY[0x18D004E70](v59);
        *&v70 = v51;
        *(&v70 + 1) = v52;
        v71 = v58;
        v72 = v63;
        MEMORY[0x18D004E70](v59);
        v70 = v29;
        LOBYTE(v71) = v62;
        v81.origin.x = a6;
        v81.origin.y = a7;
        v81.size.width = a8;
        v81.size.height = a9;
        CGRectGetMinX(v81);
        v82.origin.x = a6;
        v82.origin.y = a7;
        v82.size.width = a8;
        v82.size.height = a9;
        CGRectGetMinY(v82);
        static UnitPoint.topLeading.getter();
        v73 = a4 & 1;
        LayoutSubview.place(at:anchor:proposal:)();
        *&v70 = __PAIR64__(v66, v68);
        *(&v70 + 1) = __PAIR64__(v64, v69);
        LOBYTE(v71) = v65;
        v83.origin.x = a6;
        v83.origin.y = a7;
        v83.size.width = a8;
        v83.size.height = a9;
        CGRectGetMaxX(v83);
        v84.origin.x = a6;
        v84.origin.y = a7;
        v84.size.width = a8;
        v84.size.height = a9;
        CGRectGetMinY(v84);
        static UnitPoint.topTrailing.getter();
        v73 = a4 & 1;
        LayoutSubview.place(at:anchor:proposal:)();

        goto LABEL_26;
      }

      v70 = v48;
      v71 = v49;
      v72 = v50;
      ViewDimensions.width.getter();
      LOBYTE(v70) = 0;
      v73 = a4 & 1;
      LayoutSubview.dimensions(in:)();

      v52 = *(&v70 + 1);
      v51 = v70;
      v53 = v71;
      v54 = v72;
    }

    v63 = v54;
    v58 = v53;
    goto LABEL_25;
  }

  v74 = v29;
  LOBYTE(v75) = v62;
  v77.origin.x = a6;
  v77.origin.y = a7;
  v77.size.width = a8;
  v77.size.height = a9;
  CGRectGetMinX(v77);
  v78.origin.x = a6;
  v78.origin.y = a7;
  v78.size.width = a8;
  v78.size.height = a9;
  CGRectGetMinY(v78);
  static UnitPoint.topLeading.getter();
  LOBYTE(v70) = a2 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
  *&v70 = __PAIR64__(v47, v68);
  *(&v70 + 1) = __PAIR64__(v64, v69);
  LOBYTE(v71) = v65;
  v79.origin.x = a6;
  v79.origin.y = a7;
  v79.size.width = a8;
  v79.size.height = a9;
  CGRectGetMinX(v79);
  v80.origin.x = a6;
  v80.origin.y = a7;
  v80.size.width = a8;
  v80.size.height = a9;
  CGRectGetMinY(v80);
  *&v74 = v61;
  *(&v74 + 1) = v24;
  v75 = v30;
  *&v76 = v31;
  *(&v76 + 1) = v60;
  ViewDimensions.height.getter();
  static UnitPoint.topLeading.getter();
  LOBYTE(v74) = a2 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
LABEL_26:
}

unint64_t lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented()
{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromIsPresented, &type metadata for PresentationMode.FromIsPresented, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromIsPresented, &type metadata for PresentationMode.FromIsPresented, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PresentationMode.FromIsPresented, &type metadata for PresentationMode.FromIsPresented, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

UISplitViewControllerColumn_optional __swiftcall UISplitViewController.column(forViewController:)(UIViewController *forViewController)
{
  if ([v1 style])
  {
    v3 = [v1 viewControllerForColumn_];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();

      if (v5 && v5 == forViewController)
      {
        v11 = UISplitViewControllerColumnPrimary;
        v10 = 0;
        goto LABEL_25;
      }
    }
  }

  if ([v1 style] && (v7 = objc_msgSend(v1, sel_viewControllerForColumn_, 2)) != 0 && (v8 = v7, objc_opt_self(), v9 = swift_dynamicCastObjCClass(), v8, v9) && v9 == forViewController)
  {
    v10 = 0;
    v11 = UISplitViewControllerColumnSecondary;
  }

  else
  {
    if (![v1 style] || (v12 = objc_msgSend(v1, sel_viewControllerForColumn_, 1)) == 0 || (v13 = v12, objc_opt_self(), v14 = swift_dynamicCastObjCClass(), v13, !v14) || v14 != forViewController)
    {
      if ([v1 style])
      {
        v15 = [v1 viewControllerForColumn_];
        if (v15)
        {
          v16 = v15;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
            v17 = forViewController;
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              v10 = 0;
              v11 = UISplitViewControllerColumnCompact;
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }

      v11 = UISplitViewControllerColumnPrimary;
      v10 = 1;
      goto LABEL_25;
    }

    v10 = 0;
    v11 = UISplitViewControllerColumnSupplementary;
  }

LABEL_25:
  result.value = v11;
  result.is_nil = v10;
  return result;
}

double ScrollViewAdjustedSafeArea.value.getter(unint64_t a1, uint64_t a2)
{
  v2 = *AGGraphGetValue();
  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    AGGraphGetValue();
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    if (Axis.Set.contains(_:)())
    {
      EdgeInsets.subscript.getter();
      EdgeInsets.subscript.setter();
    }

    if (Axis.Set.contains(_:)())
    {
      EdgeInsets.subscript.getter();
      EdgeInsets.subscript.setter();
    }
  }

  return v2;
}

double ScrollViewContentFrame.value.getter@<D0>(uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a3;
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v7 = Value[1];
  v15 = *Value;
  v16 = v7;
  MEMORY[0x18D00B390]();
  CGSize.inset(by:)();
  if (*MEMORY[0x1E698D3F8] == v4)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = *(AGGraphGetValue() + 8);
  }

  v14[0] = v8;
  v14[1] = v9;
  v10 = AGGraphGetValue();
  static ScrollViewUtilities.contentFrame(in:contentComputer:axes:)(v14, *v10);

  v11 = AGGraphGetValue();
  MEMORY[0x18D00BD30](*v11);
  v12 = v16;
  *a4 = v15;
  a4[1] = v12;
  result = *&v17;
  a4[2] = v17;
  return result;
}

double MainThreadRequiringScrollPhase.value.getter(uint64_t a1)
{
  v4 = a1;
  v2[1] = a1;
  MainThreadRequiringScrollPhase.state.getter(v3);
  if (ScrollPhaseState.phase.getter() > 2u)
  {
    return MainThreadRequiringScrollPhase.time.getter(v2);
  }

  return result;
}

__n128 MainThreadRequiringScrollPhase.state.getter@<Q0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  *a2 = *Value;
  result = *(Value + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI19PinnedBarPortalViewCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>(0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v16 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id HostingScrollView.PlatformGroupContainer.init(frame:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBounds] = 0;
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableFillerBounds] = 0;
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBorder] = 0;
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__environmentPixelLength] = 0;
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem] = 0;
  v13.receiver = v6;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t ScrollViewAdjustedState.resetIfNeeded(state:reason:)(uint64_t *a1, char *a2)
{
  v5 = *(v2 + 116);
  v6 = *AGGraphGetValue() >> 1;
  if (v5 == v6 && AGGraphGetOutputValue())
  {
    return 0;
  }

  v8 = ScrollViewAdjustedState.initialPositionOffset()();
  if (v10)
  {
    v8 = ScrollViewAdjustedState.initialOffset()(v8);
    v9 = v11;
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  *a1 = v8;
  a1[1] = v9;
  *a2 = v12;
  if (v5 != v6)
  {
    *(v2 + 116) = *AGGraphGetValue() >> 1;
    *(v2 + 112) = 0;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  return 1;
}

void *ScrollViewAdjustedBehaviorProperties.updateValue()()
{
  v1 = v0;
  v40 = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollViewAdjustedBehaviorProperties(v0, &v23);
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = lazy protocol witness table accessor for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties();
  MEMORY[0x18D000B40](&unk_1F001A390, v3, v4);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined destroy of ScrollViewAdjustedBehaviorProperties(&v23);
  if (!*(&v31 + 1))
  {
    v10 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(v0 + 24, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v10);
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 81) = 0u;
    LOWORD(v23) = 0;
    BYTE2(v23) = 0;
    return AGGraphSetOutputValue();
  }

  v37 = v32;
  v38 = v33;
  v39 = v34;
  v35 = v30;
  v36 = v31;
  AGGraphGetValue();
  v6 = v5;
  outlined init with copy of ResolvedScrollBehavior(&v35, &v30);
  v7 = MEMORY[0x1E69E6720];
  outlined init with copy of ScrollPosition?(v1 + 24, v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of ScrollPosition?(&v30, &v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v7);
  outlined init with copy of ScrollPosition?(v29, v27, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v7);
  if (v26)
  {
    outlined init with copy of ScrollPosition?(&v23, v22, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    if (v28)
    {
      v8 = specialized static ResolvedScrollBehavior.== infix(_:_:)(v22, v27);

      outlined destroy of AccessibilityRelationshipScope.Key(v27);
      v9 = MEMORY[0x1E69E6720];
      outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
      outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v9);
      outlined destroy of AccessibilityRelationshipScope.Key(v22);
      outlined destroy of ResolvedScrollBehavior?(&v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v9);
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v13);
    outlined destroy of AccessibilityRelationshipScope.Key(v22);
  }

  else
  {

    v12 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v12);
    if (!v28)
    {
      outlined destroy of ResolvedScrollBehavior?(&v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
      v8 = 1;
      goto LABEL_10;
    }
  }

  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(&v23);
  v8 = 0;
LABEL_10:
  v14 = *AGGraphGetValue();
  v15 = *(v1 + 96);
  if (v6)
  {

    v16 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if ((v8 & ~v16 & 1) == 0 || v14 != v15)
    {
      goto LABEL_16;
    }
  }

  else if (!v8 || v14 != v15)
  {
LABEL_16:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v17 = v23;
    v18 = v24;
    v19 = *(&v36 + 1);
    v20 = v37;
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    v23 = v17;
    v24 = v18;
    v25 = v14;
    v21 = *(v20 + 16);

    v21(&v30, &v23, v19, v20);
    LOWORD(v23) = v30;
    BYTE2(v23) = BYTE2(v30);
    AGGraphSetOutputValue();

    goto LABEL_17;
  }

LABEL_17:

  *(v1 + 96) = v14;
  outlined destroy of ResolvedScrollBehavior?(v1 + 24, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of ResolvedScrollBehavior(&v35, v1 + 24);
  return outlined destroy of AccessibilityRelationshipScope.Key(&v35);
}

uint64_t closure #1 in ScrollViewAdjustedBehaviorProperties.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of ScrollViewAdjustedBehaviorProperties(a1, &v14);
  type metadata accessor for ScrollEnvironmentStorage(0);
  v3 = *AGGraphGetValue();

  outlined destroy of ScrollViewAdjustedBehaviorProperties(&v14);
  swift_getKeyPath();
  v12 = v3;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v3 + 16, &v12);
  swift_getKeyPath();
  *&v10 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, &v10, type metadata accessor for ScrollEnvironmentTransform?);
  if (v11)
  {
    outlined init with take of ScrollEnvironmentTransform(&v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(&v12, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  outlined init with copy of ScrollPosition?(&v13, a2, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  return outlined destroy of ScrollEnvironmentProperties(&v12);
}

uint64_t assignWithCopy for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = (a1 + 48);
  v6 = (a2 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v5)
    {
      v7 = *(a2 + 56);
      *(a1 + 48) = v5;
      *(a1 + 56) = v7;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  else if (v5)
  {
    v8 = *(a2 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v10 = (a1 + 80);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  v12 = (a2 + 80);
  v11 = *(a2 + 80);
  if (v9)
  {
    if (v11)
    {
      v13 = *(a2 + 88);
      *(a1 + 80) = v11;
      *(a1 + 88) = v13;

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(a1 + 80);
      v15 = *(a2 + 96);
      *v10 = *v12;
      *(a1 + 96) = v15;
    }
  }

  else if (v11)
  {
    v14 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v14;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v16 = *v12;
    *(a1 + 96) = *(a2 + 96);
    *v10 = v16;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

Swift::Void __swiftcall UIScrollView.updateDeceleration(_:)(SwiftUI::ScrollDecelerationRate a1)
{
  v2 = *a1.role;
  v3 = MEMORY[0x1E69DE3A0];
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v3 = MEMORY[0x1E69DE3A8];
    v4 = 0;
  }

  v5 = v2 >= 2;
  v6 = MEMORY[0x1E69DE3A0];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DE3A8];
  }

  if (*a1.role <= 2u)
  {
    v7 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
  }

  [v1 setDecelerationRate_];

  [v1 setPagingEnabled_];
}

uint64_t getEnumTagSinglePayload for ScrollEnvironmentProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

id specialized HostingScrollView.PlatformContainer.init(scrollView:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper;
  type metadata accessor for PlatformSafeAreaHelper();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 1;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 1;
  *&v2[v5] = v6;
  v2[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_isInitialSafeAreaUpdate] = 1;
  v7 = &v2[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets];
  v8 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v7 = v8;
  v7[1] = v8;
  *&v2[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView] = a1;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview_];
  swift_unknownObjectWeakAssign();

  return v10;
}

void type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>);
    }
  }
}

uint64_t outlined destroy of HostingScrollViewUpdateContext?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for HostingScrollViewUpdateContext?, &type metadata for HostingScrollViewUpdateContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #6 in static SystemScrollView._makeView(view:inputs:)(uint64_t a1)
{
  result = PreferencesOutputs.subscript.getter();
  v3 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v3 = result;
  }

  *(a1 + 12) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewLayoutComputer, &unk_1F0019870, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewLayoutComputer, &unk_1F0019870, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer);
  }

  return result;
}

uint64_t sub_18BE36C40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

unint64_t lazy protocol witness table accessor for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView()
{
  result = lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView;
  if (!lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdatedHostingScrollView, &unk_1EFF89408, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView);
  }

  return result;
}

uint64_t destroy for UpdatedHostingScrollView(void *a1)
{

  if (a1[11])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }
}

uint64_t initializeWithCopy for UpdatedHostingScrollView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    v6 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v7;
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;
  *(a1 + 168) = *(a2 + 168);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v10;
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  v11 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v13;
  v14 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v16;
  v17 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v17;
  v18 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v18;
  v19 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v19;
  *(a1 + 553) = *(a2 + 553);
  v20 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v20;
  *(a1 + 512) = *(a2 + 512);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition;
  if (!lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewResponderPosition, &unk_1F0019980, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponderSize and conformance ScrollViewResponderSize()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize;
  if (!lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewResponderSize, &unk_1F00198F8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponder and conformance ScrollViewResponder()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder;
  if (!lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewResponder, &unk_1F0019A08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakCopyInit();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

double destroy for ScrollViewResponder(uint64_t a1)
{

  swift_weakDestroy();

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewDisplayList and conformance ScrollViewDisplayList()
{
  result = lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList;
  if (!lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewDisplayList, &unk_1EFF89708, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList);
  }

  return result;
}

uint64_t implicit closure #4 in static SystemScrollView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, &parameter_flags_34);
  lazy protocol witness table accessor for type ContentScrollViewProvider and conformance ContentScrollViewProvider();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = *a2;
  if (!*a2)
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for [ContentScrollViewBox](255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

double MakeHostingScrollView.init(inputs:outputs:layoutState:phaseState:prefetchState:containerSize:hasScrollPosition:viewGraph:)@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char a7@<W6>, uint64_t a9@<X8>)
{
  v16 = a1[3];
  v24 = a1[2];
  v25 = v16;
  v26 = a1[4];
  v27 = *(a1 + 20);
  v17 = a1[1];
  v22 = *a1;
  v23 = v17;
  v18 = *a2;
  swift_weakInit();
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *a9 = a3;
  *(a9 + 4) = a4;
  *(a9 + 8) = a5;
  *(a9 + 12) = a6;
  outlined init with copy of _GraphInputs(&v22, v21);
  outlined destroy of _ViewInputs(&v22);
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  v19 = _GraphInputs.pixelLength.getter();
  outlined destroy of _GraphInputs(&v22);
  *(a9 + 16) = v19;
  *(a9 + 20) = a7;
  *(a9 + 21) = 0;
  *(a9 + 24) = v18;
  *(a9 + 32) = a2[1];
  swift_weakAssign();

  return result;
}

uint64_t initializeWithCopy for MakeHostingScrollView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  swift_weakCopyInit();
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for MakeHostingScrollView(uint64_t a1)
{

  swift_weakDestroy();

  v2 = *(a1 + 56);
}

unint64_t lazy protocol witness table accessor for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer()
{
  result = lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer;
  if (!lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UpdatedScrollViewContainer, &unk_1F0019BF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame()
{
  result = lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame;
  if (!lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewDisplayListFrame, &unk_1F0019B50, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame);
  }

  return result;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ContentScrollViewProvider and conformance ContentScrollViewProvider()
{
  result = lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider;
  if (!lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentScrollViewProvider, &unk_1F00196B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollGeometryProvider, &unk_1F0019AC8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollGeometryProvider, &type metadata for ScrollGeometryProvider, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider);
  }

  return result;
}

uint64_t ScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for SystemScrollViewContainer(0, v7, *(a1 + 24), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13 - 8];
  outlined init with copy of ScrollViewConfiguration(v5 + *(a1 + 36), v18);
  outlined init with take of ScrollViewConfiguration(v18, v11);
  closure #1 in ScrollView.body.getter(v5, v7);
  swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, v8);
}

uint64_t static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  closure #1 in static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)(1, a3, a4, a4);
  AGGraphCreateOffsetAttribute2();
  v4 = *AGGraphGetValue();
  EnvironmentValues.nearestScrollableAxes.setter();
  v5 = EnvironmentValues.allScrollableAxes.modify();
  *v6 |= v4;
  return v5(&v8, 0);
}

void type metadata accessor for [ScrollableCollection](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in ScrollEnvironmentStorage.transform.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentTransform?(a2, a1 + 280);
  return swift_endAccess();
}

uint64_t closure #1 in static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier(0, a2, a3, a4);
  v5 = MEMORY[0x1E6980D08];
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_13, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

void *specialized static ResetContentMarginModifier.makeEnvironment(modifier:environment:)(uint64_t a1, void *a2)
{
  result = AGGraphGetValue();
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {

    for (i = 32; ; ++i)
    {
      if (*(v4 + i) > 1u)
      {
        if (*(v4 + i) != 2)
        {
          MEMORY[0x18D007050](&v15, v6);
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>, &unk_1EFFABFA0, &protocol witness table for EnvironmentValues.ToolbarMarginKey);
          v11 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>;
          v12 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>;
          v13 = &unk_1EFFABFA0;
          v14 = &protocol witness table for EnvironmentValues.ToolbarMarginKey;
          goto LABEL_12;
        }

        MEMORY[0x18D007050](&v15, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>;
        v9 = &unk_1EFFABFC0;
        v10 = &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>, &unk_1EFFABFC0, &protocol witness table for EnvironmentValues.ScrollIndicatorContentMarginKey);
        v11 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      else if (*(v4 + i))
      {
        MEMORY[0x18D007050](&v15, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>;
        v9 = &type metadata for EnvironmentValues.ScrollContentContentMarginKey;
        v10 = &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>, &type metadata for EnvironmentValues.ScrollContentContentMarginKey, &protocol witness table for EnvironmentValues.ScrollContentContentMarginKey);
        v11 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      else
      {
        MEMORY[0x18D007050](&v15, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>;
        v9 = &unk_1EFFAC000;
        v10 = &protocol witness table for EnvironmentValues.AutomaticContentMarginKey;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>, &unk_1EFFAC000, &protocol witness table for EnvironmentValues.AutomaticContentMarginKey);
        v11 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      v12 = v8;
      v13 = v9;
      v14 = v10;
LABEL_12:
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(v11, v12, v13, v14);

      PropertyList.subscript.setter();
      if (a2[1])
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }

      if (!--v5)
      {
      }
    }
  }

  return result;
}

uint64_t outlined assign with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResolvedScrollBehavior?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ScrollViewDefaultAnchors.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);

  v7 = *AGGraphGetValue();
  if (v6 == 1)
  {

    ScrollViewDefaultAnchors.defaultValue(axes:)(v7);
    v4 = v8;
    v5 = v9;
  }

  if (!AGGraphGetOutputValue() || (, , v10 = static ScrollAnchorStorage.== infix(_:_:)(), , , (v10 & 1) == 0) || v7 != *(v1 + 33))
  {
    AGGraphSetOutputValue();
  }

  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  *(v1 + 33) = v7;
  return result;
}

void ScrollViewDefaultAnchors.defaultValue(axes:)(uint64_t a1)
{
  v1 = a1;
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && v1 == 3)
  {
LABEL_3:

    static UnitPoint.topLeading.getter();
    return;
  }

  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    if (v1 != 1)
    {
      if (v1 == 3)
      {

        static UnitPoint.center.getter();
        return;
      }

      goto LABEL_14;
    }
  }

  else if (v1 != 1)
  {
    if (v1 == 3)
    {
      goto LABEL_3;
    }

LABEL_14:

    static UnitPoint.top.getter();
    return;
  }

  static UnitPoint.leading.getter();
}

void *static ScrollViewUtilities.contentFrame(in:contentComputer:axes:)(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  v6 = *a1;
  _ProposedSize.init(_:)();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.width.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.height.getter();
  }

  _ProposedSize.init(width:height:)();
  if (v5)
  {
    if (!v6)
    {
      static LayoutComputer.defaultValue.getter();
    }

    LayoutComputer.sizeThatFits(_:)();

    Axis.Set.contains(_:)();
    Axis.Set.contains(_:)();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0 || (Axis.Set.contains(_:)() & 1) == 0)
  {
    Axis.Set.contains(_:)();
    Axis.Set.contains(_:)();
  }

  ViewSize.init(_:proposal:)();
  return ViewFrame.init(origin:size:)();
}

void ContentScrollViewProvider.updateValue()()
{
  v15 = *MEMORY[0x1E69E9840];
  type metadata accessor for HostingScrollView();
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *AGGraphGetValue();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = 0;
  swift_unknownObjectWeakAssign();
  v10[16] = v5;
  v6 = v4;
  v11 = AGCreateWeakAttribute();
  v12 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();

  v13 = v7;
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, &parameter_flags_34);
  if (AGGraphGetOutputValue() && (v3 & 1) == 0 && *(v0 + 20) == v5)
  {
    outlined destroy of ContentScrollViewBox(v10);
  }

  else
  {
    outlined init with copy of ContentScrollViewBox(v10, v9);
    v8 = swift_allocObject();
    outlined init with take of ContentScrollViewBox(v9, v8 + 16);
    AGGraphSetOutputValue();

    outlined destroy of ContentScrollViewBox(v10);
  }

  *(v0 + 20) = v5;
}

uint64_t sub_18BE3864C()
{
  MEMORY[0x18D011290](v0 + 16);
  MEMORY[0x18D011290](v0 + 24);

  return swift_deallocObject();
}

_BYTE *MakeHostingScrollView.makeScrollView()(uint64_t a1)
{
  v2 = v1;
  v4 = AGCreateWeakAttribute();
  v5 = AGCreateWeakAttribute();
  v6 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();
  v8 = objc_allocWithZone(type metadata accessor for ScrollViewHelper());
  v9 = ScrollViewHelper.init(layoutState:phaseState:prefetchState:containerSize:axes:)(v4, 0, v5, 0, v6, 0, v7, 0, 0);
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = *(v2 + 20);
  v10 = *(a1 + 16);
  v11 = objc_allocWithZone(type metadata accessor for HostingScrollView());
  v34 = v9;
  v12 = HostingScrollView.init(viewType:helper:)(v10, v34);
  v13 = AGSubgraphGetCurrent();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = *(v15 + 24);
    v17 = v12;
    v18 = v16;
  }

  else
  {
    v19 = v12;
    v18 = 0;
  }

  AGSubgraphSetCurrent();

  PreferencesOutputs.subscript.getter();
  PreferencesOutputs.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for FocusableBorder?, MEMORY[0x1E697E768], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder();
  Attribute.init<A>(body:value:flags:update:)();
  v20 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host;
  v21 = *&v12[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
  v22 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBounds;
  swift_beginAccess();
  v23 = v21;
  *&v21[v22] = AGCreateWeakAttribute();
  swift_endAccess();

  v24 = *&v12[v20];
  v25 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableFillerBounds;
  swift_beginAccess();
  v26 = v24;
  *&v24[v25] = AGCreateWeakAttribute();
  swift_endAccess();

  v27 = *&v12[v20];
  v28 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBorder;
  swift_beginAccess();
  v29 = v27;
  *&v27[v28] = AGCreateWeakAttribute();
  swift_endAccess();

  v30 = *&v12[v20];
  v31 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__environmentPixelLength;
  swift_beginAccess();
  v32 = v30;
  *&v30[v31] = AGCreateWeakAttribute();
  swift_endAccess();

  swift_weakLoadStrong();
  swift_weakAssign();

  AGSubgraphSetCurrent();

  return v34;
}

uint64_t ScrollViewAdjustedState.updateValue()()
{
  v42 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = Value[2];
  v40[1] = Value[1];
  v40[2] = v5;
  v40[0] = v4;
  v6 = Value[3];
  v7 = Value[4];
  v8 = Value[5];
  *(v41 + 12) = *(Value + 92);
  v40[4] = v7;
  v41[0] = v8;
  v40[3] = v6;
  v9 = Value[1];
  v34 = *Value;
  v35 = v9;
  v10 = Value[2];
  v11 = Value[3];
  *(v39 + 12) = *(Value + 92);
  v12 = Value[5];
  v38 = Value[4];
  v39[0] = v12;
  v36 = v10;
  v37 = v11;
  v13 = v2 & (*&v39[1] == 0x8000000000000000);
  v14 = v40[0];
  v27 = 5;
  outlined init with copy of SystemScrollLayoutState(v40, &v28);
  v15 = ScrollViewAdjustedState.resetIfNeeded(state:reason:)(&v34, &v27);
  v16 = ScrollViewAdjustedState.adjustOffsetIfNeeded(state:stateChanged:reason:)(&v34, v3 & 1, &v27);
  v17 = v34;
  if (*(&v34 + 1) != *(&v14 + 1) || *&v34 != *&v14)
  {
    v19 = v27;
    if (v27 != 5)
    {
      v20 = DWORD2(v41[1]);
      v21 = *(v0 + 120);
      v13 = 1;
      swift_beginAccess();
      v22 = (*(v21 + 16) + 1);
      *(v21 + 16) = v22;
      outlined consume of SystemScrollLayoutState.ContentOffsetMode(*&v39[1]);
      *&v39[1] = v19;
      if (v20 != -1)
      {
        if (v20)
        {
          v22 = merge32(_:_:)(v20, v22);
        }

        DWORD2(v39[1]) = v22;
        if (v22 != -1)
        {
          v23 = v19 + 1;
          if (v22)
          {
            v23 = merge32(_:_:)(v22, v23);
          }

          DWORD2(v39[1]) = v23;
        }

        v13 = 1;
      }
    }
  }

  v24 = v3 | v15;
  v25 = *(v0 + 104) == *(&v17 + 1) && *(v0 + 96) == *&v17;
  if (!v25 && v13)
  {
    *(v0 + 96) = v17;
  }

  if ((AGGraphGetOutputValue() == 0) | v16 & 1 | v24 & 1)
  {
    v32 = v38;
    v33[0] = v39[0];
    *(v33 + 12) = *(v39 + 12);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    AGGraphSetOutputValue();
  }

  v32 = v38;
  v33[0] = v39[0];
  *(v33 + 12) = *(v39 + 12);
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  return outlined destroy of SystemScrollLayoutState(&v28);
}

uint64_t outlined init with copy of SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v4;
  v5 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 80) = *(a1 + 80);
  v6 = *(a1 + 96);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v6);
  *(a2 + 96) = v6;
  *(a2 + 104) = *(a1 + 104);
  return a2;
}

double ScrollViewRTLAlignmentAdjustment.value.getter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  static Semantics.v6.getter();
  v3 = 0.0;
  if (isLinkedOnOrAfter(_:)())
  {
    AGGraphGetValue();
    if ((Axis.Set.contains(_:)() & 1) != 0 && *AGGraphGetValue() == 1)
    {
      AGGraphGetValue();

      ScrollAnchorStorage.alignment.getter();
      v5 = v4;

      if (v5 == 0.0)
      {
        AGGraphGetValue();
        ViewSize.width.getter();
        v7 = v6;
        AGGraphGetValue();
        ViewSize.width.getter();
        if (v7 < v8)
        {
          return v8 - v7;
        }
      }
    }
  }

  return v3;
}

void ScrollViewAlignmentAdjustment.value.getter(unint64_t a1, unint64_t a2)
{
  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v2 = *AGGraphGetValue();
    AGGraphGetValue();

    ScrollAnchorStorage.alignment.getter();

    if (v2)
    {
      UnitPoint.subscript.getter();
      if (v3 != 0.0)
      {
        AGGraphGetValue();
        ViewSize.subscript.getter();
        v5 = v4;
        AGGraphGetValue();
        ViewSize.subscript.getter();
        if (v5 < v6)
        {
          UnitPoint.subscript.getter();
        }
      }
    }

    if ((v2 & 2) != 0)
    {
      UnitPoint.subscript.getter();
      if (v7 != 0.0)
      {
        AGGraphGetValue();
        ViewSize.subscript.getter();
        v9 = v8;
        AGGraphGetValue();
        ViewSize.subscript.getter();
        if (v9 < v10)
        {
          UnitPoint.subscript.getter();
        }
      }
    }
  }
}

id ScrollViewHelper.init(layoutState:phaseState:prefetchState:containerSize:axes:)(unint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, unint64_t a5, char a6, unint64_t a7, char a8, char a9)
{
  v60 = __PAIR64__(a4, a2);
  ObjectType = swift_getObjectType();
  v13 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v14 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v15 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v16 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v17 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v17 = 257;
  *(v17 + 21) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 67) = 0u;
  *(v17 + 44) = 4;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v17 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v18);
  v17[112] = 0;
  v17[120] = 0;
  *(v17 + 16) = 0;
  *(v17 + 68) = 0;
  v17[144] = 0;
  *(v17 + 19) = 0;
  *(v17 + 158) = 0;
  v17[166] = 1;
  *(v17 + 167) = 0u;
  *(v17 + 183) = 0u;
  v17[199] = 0;
  static EdgeInsets.zero.getter();
  *(v17 + 25) = v19;
  *(v17 + 26) = v20;
  *(v17 + 27) = v21;
  *(v17 + 28) = v22;
  v23 = static EdgeInsets.zero.getter();
  *(v17 + 29) = v24;
  *(v17 + 30) = v25;
  *(v17 + 31) = v26;
  *(v17 + 32) = v27;
  v28 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v29 = MEMORY[0x18D007050](v66, v23);
  v30 = MEMORY[0x18D007050](v68, v29);
  v31 = MEMORY[0x18D007050](v70, v30);
  MEMORY[0x18D007050](v72, v31);
  v32 = v66[1];
  *v28 = v66[0];
  v28[1] = v32;
  v28[2] = v67[0];
  *(v28 + 41) = *(v67 + 9);
  v33 = v68[1];
  v28[4] = v68[0];
  v28[5] = v33;
  v28[6] = v69[0];
  *(v28 + 105) = *(v69 + 9);
  v34 = v70[0];
  v35 = v70[1];
  v36 = v71[0];
  *(v28 + 169) = *(v71 + 9);
  v28[9] = v35;
  v28[10] = v36;
  v28[8] = v34;
  v37 = v72[1];
  v28[12] = v72[0];
  v28[13] = v37;
  v28[14] = v73[0];
  *(v28 + 233) = *(v73 + 9);
  v38 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v38 = 0;
  *(v38 + 4) = 0;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v39 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[16] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v42 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  v42[66] = 0;
  *(v42 + 32) = 512;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v43 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v45 = 0;
  *(v45 + 1) = 0;
  v45[16] = 1;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v46 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v46 = v47;
  v46[1] = v48;
  v46[2] = v49;
  v46[3] = v50;
  v51 = HIDWORD(a1);
  if (v60)
  {
    v52 = 0;
  }

  else
  {
    v52 = a1;
  }

  if (v60)
  {
    LODWORD(v51) = 0;
  }

  *v13 = v52;
  v13[1] = v51;
  v53 = HIDWORD(a3);
  if ((v60 & 0x100000000) != 0)
  {
    v54 = 0;
  }

  else
  {
    v54 = a3;
  }

  if ((v60 & 0x100000000) != 0)
  {
    LODWORD(v53) = 0;
  }

  *v14 = v54;
  v14[1] = v53;
  v55 = HIDWORD(a5);
  if (a6)
  {
    v56 = 0;
  }

  else
  {
    v56 = a5;
  }

  if (a6)
  {
    LODWORD(v55) = 0;
  }

  *v15 = v56;
  v15[1] = v55;
  v57 = HIDWORD(a7);
  if (a8)
  {
    v58 = 0;
  }

  else
  {
    v58 = a7;
  }

  if (a8)
  {
    LODWORD(v57) = 0;
  }

  *v16 = v58;
  v16[1] = v57;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = a9;
  v65.receiver = v9;
  v65.super_class = ObjectType;
  return objc_msgSendSuper2(&v65, sel_init, v60);
}

uint64_t ScrollViewAdjustedState.initialPositionOffset()()
{
  static Semantics.v6_4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  AGGraphClearUpdate();
  v1 = *AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphClearUpdate();
  if (*(v0 + 40) == *MEMORY[0x1E698D3F8])
  {
    memset(v48, 0, 88);
  }

  else
  {
    v2 = MEMORY[0x1E697E4E0];
    v3 = MEMORY[0x1E6981948];
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
    v5 = v4;
    Value = AGGraphGetValue();
    outlined init with copy of ScrollPosition?(Value, v41, &lazy cache variable for type metadata for Binding<ScrollPosition>, v2, v3);
    MEMORY[0x18D00ACC0](v48, v5);
    outlined destroy of ResolvedScrollBehavior?(v41, &lazy cache variable for type metadata for Binding<ScrollPosition>, v2, v3);
  }

  AGGraphSetUpdate();
  outlined init with copy of ScrollPosition?(v48, v41, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
  if (!v42)
  {
    v22 = MEMORY[0x1E697E4E0];
    v23 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    v24 = v41;
    v25 = v22;
    v26 = v23;
LABEL_27:
    outlined destroy of ResolvedScrollBehavior?(v24, &lazy cache variable for type metadata for ScrollPosition?, v25, v26);
    goto LABEL_28;
  }

  outlined init with copy of ScrollPosition.Storage(v41, &v43);
  outlined destroy of ScrollPosition(v41);
  v46[0] = v43;
  v46[1] = v44;
  v47[0] = *v45;
  *(v47 + 10) = *&v45[10];
  v7 = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(v7, v41);
  v8 = AGGraphGetValue();
  v9 = v8[1];
  v43 = *v8;
  v44 = v9;
  v10 = MEMORY[0x18D00B390]();
  v12 = v11;
  v13 = AGGraphGetValue();
  v14 = v13[1];
  v43 = *v13;
  v15 = v13[2];
  v44 = v14;
  *v45 = v15;
  CGRect.init(_:)();
  v17 = v16;
  v19 = v18;
  outlined init with copy of ScrollPosition.Storage(v46, &v43);
  v20 = v43;
  if (v45[25] > 2u)
  {
    if (v45[25] != 3)
    {
      if (v45[25] == 4)
      {
        v27 = Axis.Set.contains(_:)();
        outlined destroy of ScrollViewConfiguration(v41);
        outlined destroy of ScrollPosition.Storage(v46);
        outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
        if (v27)
        {
          *&result = 0.0;
          return result;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v29 = *&v43;
    if ((Axis.Set.contains(_:)() & 1) == 0)
    {
LABEL_26:
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      v25 = MEMORY[0x1E697E4E0];
      v26 = MEMORY[0x1E69E6720];
      v24 = v48;
      goto LABEL_27;
    }

    if (!v1)
    {
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
      *&result = v29;
      return result;
    }

    v30 = 0;
    v31 = v20;
LABEL_25:
    v33 = v10;
    v34 = v12;
    MaxX = CGRectGetMaxX(*&v31);
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    *&result = v17 - MaxX;
    return result;
  }

  if (!v45[25])
  {
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    outlined destroy of ScrollPosition.Storage(&v43);
    goto LABEL_28;
  }

  if (v45[25] != 1)
  {
    v32 = v43;
    if (Axis.Set.contains(_:)())
    {
      if (!v1)
      {
        outlined destroy of ScrollViewConfiguration(v41);
        outlined destroy of ScrollPosition.Storage(v46);
        outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
        return *&v32;
      }

      v31 = v20;
      v30 = *(&v32 + 1);
      goto LABEL_25;
    }

    v36 = Axis.Set.contains(_:)();
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    if (v36)
    {
      *&result = 0.0;
      return result;
    }

LABEL_28:
    *&result = 0.0;
    return result;
  }

  v21 = v43;
  if ((Axis.Set.contains(_:)() & 1) == 0 || v21 != 3)
  {
    if ((Axis.Set.contains(_:)() & 1) != 0 && v21 == 2)
    {
      static UnitPoint.bottom.getter();
      UnitPoint.in(_:)(__PAIR128__(v19, *&v17));
      UnitPoint.in(_:)(__PAIR128__(v12, *&v10));
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
      *&result = 0.0;
      return result;
    }

    goto LABEL_26;
  }

  if (v1)
  {
    static UnitPoint.leading.getter();
  }

  else
  {
    static UnitPoint.trailing.getter();
  }

  x = UnitPoint.in(_:)(__PAIR128__(v19, *&v17)).x;
  v38 = UnitPoint.in(_:)(__PAIR128__(v12, *&v10)).x;
  outlined destroy of ScrollViewConfiguration(v41);
  outlined destroy of ScrollPosition.Storage(v46);
  outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
  v39 = x - v38;
  v40 = v17 - v10;
  if (v17 - v10 <= 0.0)
  {
    v40 = 0.0;
  }

  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  if (v40 < v39)
  {
    v39 = v40;
  }

  *&result = v39;
  return result;
}

uint64_t outlined init with copy of ScrollPosition?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ResolvedScrollBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double ScrollViewAdjustedState.initialOffset()(uint64_t a1)
{
  AGGraphClearUpdate();
  AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphGetValue();

  ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)();

  AGGraphGetValue();
  v1 = 0.0;
  if (Axis.Set.contains(_:)())
  {
    AGGraphGetValue();
    CGRect.init(_:)();
    v3 = v2;
    v5 = v4;
    Value = AGGraphGetValue();
    v12 = MEMORY[0x18D00B390](Value, v7, v8, v9, v10, v11);
    v14 = v13;
    x = UnitPoint.in(_:)(__PAIR128__(v5, *&v3)).x;
    v16 = x - UnitPoint.in(_:)(__PAIR128__(v14, *&v12)).x;
    v17 = v3 - v12;
    if (v3 - v12 <= 0.0)
    {
      v17 = 0.0;
    }

    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    if (v17 >= v16)
    {
      v1 = v16;
    }

    else
    {
      v1 = v17;
    }
  }

  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    AGGraphGetValue();
    CGRect.init(_:)();
    v19 = v18;
    v21 = v20;
    v22 = AGGraphGetValue();
    v28 = MEMORY[0x18D00B390](v22, v23, v24, v25, v26, v27);
    v30 = v29;
    UnitPoint.in(_:)(__PAIR128__(v21, v19));
    UnitPoint.in(_:)(__PAIR128__(v30, *&v28));
  }

  return v1;
}

uint64_t ScrollViewAdjustedProperties.value.getter@<X0>(_BYTE *a4@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(Value, v17);
  v6 = lazy protocol witness table accessor for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties();
  MEMORY[0x18D000B90](&unk_1F001A300, &type metadata for ScrollEnvironmentProperties, v6);
  Rule.withObservation<A>(observationCenter:do:)();

  a4[81] = *AGGraphGetValue();
  if (*AGGraphGetValue() != 1 || (v7 = *(AGGraphGetValue() + 40), v7 != 2) && (v7 & 1) == 0)
  {
    *a4 = 0;
    goto LABEL_8;
  }

  if (*a4 != 1)
  {
LABEL_8:
    v8 = 3;
    a4[120] = 3;
    goto LABEL_9;
  }

  if (v17[1] == 1)
  {
    v8 = a4[144];
  }

  else
  {
    v15 = a4[120];
    v16 = v17[0];
    if (((v15 == 0) & (v17[0] >> 1)) != 0)
    {
      v15 = 3;
    }

    a4[120] = v15;
    v8 = a4[144];
    if ((v16 & (v8 == 0)) != 0)
    {
      v8 = 3;
    }
  }

LABEL_9:
  a4[144] = v8;
  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  result = outlined destroy of ScrollViewConfiguration(v17);
  if (v11 & v12)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if (!v10)
  {
    v14 = 4;
  }

  a4[80] = v14;
  return result;
}

uint64_t outlined init with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static ContentMarginProxy.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  v16[0] = a2[2];
  *(v16 + 9) = *(a2 + 41);
  if (MEMORY[0x18D006FC0](&v17, &v14) & 1) != 0 && (v6 = a1[5], v17 = a1[4], v18 = v6, v19[0] = a1[6], *(v19 + 9) = *(a1 + 105), v7 = a2[5], v14 = a2[4], v15 = v7, v16[0] = a2[6], *(v16 + 9) = *(a2 + 105), (MEMORY[0x18D006FC0](&v17, &v14)) && (v8 = a1[9], v17 = a1[8], v18 = v8, v19[0] = a1[10], *(v19 + 9) = *(a1 + 169), v9 = a2[9], v14 = a2[8], v15 = v9, v16[0] = a2[10], *(v16 + 9) = *(a2 + 169), (MEMORY[0x18D006FC0](&v17, &v14)))
  {
    v10 = a1[13];
    v17 = a1[12];
    v18 = v10;
    v19[0] = a1[14];
    *(v19 + 9) = *(a1 + 233);
    v11 = a2[13];
    v14 = a2[12];
    v15 = v11;
    v16[0] = a2[14];
    *(v16 + 9) = *(a2 + 233);
    v12 = MEMORY[0x18D006FC0](&v17, &v14);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void *ScrollViewHelper.updateAxesConfiguration()()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    UIScrollView.updateAxesConfiguration(axes:)(*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes));
    if (Axis.Set.contains(_:)())
    {
      v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      swift_beginAccess();
      outlined init with copy of ScrollEnvironmentProperties(v1 + v4, v9);
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
    }

    UIScrollView.updateVerticalConfiguration(properties:)(v9);
    if (Axis.Set.contains(_:)())
    {
      v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      swift_beginAccess();
      outlined init with copy of ScrollEnvironmentProperties(v1 + v5, v7);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
    }

    UIScrollView.updateHorizontalConfiguration(properties:)(v7);

    v6 = MEMORY[0x1E69E6720];
    outlined destroy of ScrollEnvironmentProperties?(v7, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    return outlined destroy of ScrollEnvironmentProperties?(v9, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, v6, type metadata accessor for ScrollEnvironmentProperties?);
  }

  return result;
}

uint64_t outlined init with copy of ScrollEnvironmentProperties?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ScrollEnvironmentProperties?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ScrollEnvironmentProperties?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void @objc HostingScrollView.PlatformContainer.frame.setter(void *a1, uint64_t a2, const char **a3, SEL *a4, double a5, double a6, double a7, double a8)
{
  v17.receiver = a1;
  v17.super_class = swift_getObjectType();
  v14 = *a3;
  v15 = v17.receiver;
  objc_msgSendSuper2(&v17, v14, a5, a6, a7, a8);
  HostingScrollView.PlatformContainer.frame.didset(a4, v16);
}

uint64_t HostingScrollView.PlatformContainer.updateSafeArea(_:layoutDirection:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  v8 = *&v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper];
  if (*a1)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
  }

  if (*a1)
  {
    v10 = a5;
  }

  else
  {
    v10 = a3;
  }

  v11 = *&v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView];
  if (([v11 isTracking] & 1) == 0 && !objc_msgSend(v11, sel_isDecelerating) && (objc_msgSend(v11, sel_isScrollAnimating) & 1) == 0)
  {
    v12 = *&v11[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();
    v14(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v15 = &v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets];
  swift_beginAccess();
  if ((*(v8 + 48) & 1) != 0 || (*(v8 + 16) == a2 ? (v16 = *(v8 + 24) == v10) : (v16 = 0), v16 ? (v17 = *(v8 + 32) == a4) : (v17 = 0), !v17 || *(v8 + 40) != v9))
  {
    v18 = *v15;
    v19 = v15[1];
    v20 = v15[2];
    v22 = *v15 == a2 && v19 == v10 && v20 == a4;
    if (v22 && (v18 = v15[3], v18 == v9))
    {
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 1;
    }

    else
    {
      *(v8 + 16) = a2;
      *(v8 + 24) = v10;
      *(v8 + 32) = a4;
      *(v8 + 40) = v9;
      *(v8 + 48) = 0;
      v23 = [v5 superview];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 layer];

        [v25 setNeedsLayout];
      }
    }
  }

  return swift_endAccess();
}

uint64_t initializeWithCopy for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  *(v7 + 40) = *(v8 + 40);
  v10 = *(v8 + 48);
  if (v10)
  {
    v11 = *(v8 + 56);
    *(v7 + 48) = v10;
    *(v7 + 56) = v11;
  }

  else
  {
    *(v7 + 48) = *(v8 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  *(v7 + 72) = *(v8 + 72);
  v12 = *(v8 + 80);
  if (v12)
  {
    v13 = *(v8 + 88);
    *(v7 + 80) = v12;
    *(v7 + 88) = v13;
    *(v7 + 96) = *(v8 + 96);
  }

  else
  {
    v14 = *(v8 + 80);
    *(v7 + 96) = *(v8 + 96);
    *(v7 + 80) = v14;
  }

  *(v7 + 104) = *(v8 + 104);
  *(v7 + 112) = *(v8 + 112);

  return a1;
}

uint64_t destroy for ScrollView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 48))
  {
  }

  MEMORY[0x18D011290](v4 + 64);
  if (*(v4 + 80))
  {
  }
}

uint64_t initializeWithTake for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  swift_unknownObjectWeakTakeInit();
  *(v7 + 72) = *(v8 + 72);
  v10 = *(v8 + 80);
  *(v7 + 96) = *(v8 + 96);
  *(v7 + 80) = v10;
  *(v7 + 104) = *(v8 + 104);
  return a1;
}

uint64_t initializeWithCopy for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v6)
  {
    v7 = *(a2 + 88);
    v8 = *(a2 + 96);
    *(a1 + 80) = v6;
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;

  return a1;
}

uint64_t closure #1 in ScrollView.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t outlined init with take of ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  swift_unknownObjectWeakTakeInit();
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  *(a2 + 104) = *(a1 + 104);
  return a2;
}

uint64_t initializeWithCopy for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v8)
  {
    v9 = *(a2 + 88);
    v10 = *(a2 + 96);
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
    *(a1 + 96) = v10;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  v11 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 80);

  v14((v15 + 120 + a1) & ~v15, (v15 + 120 + a2) & ~v15, v12);
  return a1;
}

uint64_t destroy for SystemScrollViewContainer(void *a1, uint64_t a2)
{
  if (a1[6])
  {
  }

  MEMORY[0x18D011290](a1 + 8);
  if (a1[10])
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 120) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithTake for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 120 + a1) & ~*(v6 + 80), (*(v6 + 80) + 120 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t SystemScrollViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>(255);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(a1 + 24);
  v10 = type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired(255, v4, v8, v9);
  v11 = type metadata accessor for StaticIf();
  v12 = type metadata accessor for ModifiedContent();
  v45[0] = v8;
  v45[1] = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v13 = MEMORY[0x1E697E858];
  v44[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v45);
  v44[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v43[0] = swift_getWitnessTable(v13, v6, v44);
  v43[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  WitnessTable = swift_getWitnessTable(v13, v7, v43);
  v42[0] = swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.InertPaddingLayoutRequired, v10);
  v42[1] = MEMORY[0x1E697E5D8];
  v42[2] = MEMORY[0x1E697E100];
  v41[0] = WitnessTable;
  v41[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v11, v42);
  v15 = swift_getWitnessTable(v13, v12, v41);
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier(255, v4, v8, v17);
  v18 = type metadata accessor for ModifiedContent();
  v39 = v12;
  v40 = v15;
  v38[0] = swift_getOpaqueTypeConformance2();
  v38[1] = &protocol witness table for ResetContentMarginModifier;
  v37[0] = swift_getWitnessTable(v13, v16, v38);
  v37[1] = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  v19 = swift_getWitnessTable(v13, v18, v37);
  type metadata accessor for SystemScrollView(255, v18, v19, v20);
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>(255);
  v21 = type metadata accessor for ModifiedContent();
  v22 = type metadata accessor for ModifiedContent();
  v36[0] = &protocol witness table for SystemScrollView<A>;
  v36[1] = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v35[0] = swift_getWitnessTable(v13, v21, v36);
  v35[1] = &protocol witness table for ResolvedScrollBehaviorModifier;
  v23 = swift_getWitnessTable(v13, v22, v35);
  v39 = v22;
  v40 = v23;
  swift_getOpaqueTypeMetadata2();
  v39 = v22;
  v40 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = type metadata accessor for _UnaryViewAdaptor();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v33 - v29;
  v33[4] = v4;
  v33[5] = v8;
  v34 = v2;
  _UnaryViewAdaptor.init(content:)();
  swift_getWitnessTable(MEMORY[0x1E697F380], v24);
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v25 + 8);
  v31(v27, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v24);
}

uint64_t closure #1 in SystemScrollViewContainer.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v63 = a4;
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>(255);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v61 = a2;
  v10 = type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired(255, a2, a3, v9);
  v11 = type metadata accessor for StaticIf();
  v12 = type metadata accessor for ModifiedContent();
  v74[0] = a3;
  v74[1] = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v60 = a3;
  v13 = MEMORY[0x1E697E858];
  v73[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v74);
  v73[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v72[0] = swift_getWitnessTable(v13, v7, v73);
  v72[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  WitnessTable = swift_getWitnessTable(v13, v8, v72);
  v71[0] = swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.InertPaddingLayoutRequired, v10);
  v71[1] = MEMORY[0x1E697E5D8];
  v71[2] = MEMORY[0x1E697E100];
  v70[0] = WitnessTable;
  v70[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v11, v71);
  v15 = swift_getWitnessTable(v13, v12, v70);
  swift_getOpaqueTypeMetadata2();
  v16 = type metadata accessor for ModifiedContent();
  type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier(255, a2, a3, v17);
  v18 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v64 = v12;
  v65 = v15;
  v69[0] = swift_getOpaqueTypeConformance2();
  v69[1] = &protocol witness table for ResetContentMarginModifier;
  v68[0] = swift_getWitnessTable(v13, v16, v69);
  v68[1] = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  v58 = v18;
  v57 = swift_getWitnessTable(v13, v18, v68);
  v54 = type metadata accessor for SystemScrollView(0, v18, v57, v21);
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v23 = &v47 - v22;
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>(255);
  v24 = type metadata accessor for ModifiedContent();
  v56 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v50 = v24;
  v27 = type metadata accessor for ModifiedContent();
  v55 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v53 = &v47 - v28;
  v29 = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v67[0] = &protocol witness table for SystemScrollView<A>;
  v67[1] = v29;
  v49 = swift_getWitnessTable(v13, v24, v67);
  v66[0] = v49;
  v66[1] = &protocol witness table for ResolvedScrollBehaviorModifier;
  v48 = swift_getWitnessTable(v13, v27, v66);
  v64 = v27;
  v65 = v48;
  v51 = MEMORY[0x1E69813B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v47 - v34;
  v36 = v62;
  outlined init with copy of ScrollViewConfiguration(v62, &v64);
  v38 = type metadata accessor for SystemScrollViewContainer(0, v61, v60, v37);
  SystemScrollViewContainer.adjustedContent.getter(v38, v20);
  v39 = v23;
  SystemScrollView.init(configuration:content:)(&v64, v20, v58, v57, v23);
  v40 = v26;
  v41 = v54;
  View.inferredToolbarScope()();
  (*(v59 + 8))(v39, v41);
  LOBYTE(v64) = *v36;
  v42 = v53;
  v43 = v50;
  MEMORY[0x18D00A570](&v64, v50, &unk_1EFFE3778, v49);
  (*(v56 + 8))(v40, v43);
  v44 = v48;
  View.configuresScrollPhaseState()();
  (*(v55 + 8))(v42, v27);
  v64 = v27;
  v65 = v44;
  swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)();
  v45 = *(v52 + 8);
  v45(v32, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v45)(v35, OpaqueTypeMetadata2);
}

uint64_t SystemScrollViewContainer.adjustedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v2 = *(a1 + 16);
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v58 - v5;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>(255);
  v75 = v4;
  v6 = type metadata accessor for ModifiedContent();
  v84 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v58 - v7;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>(255);
  v82 = v8;
  v73 = v6;
  v9 = type metadata accessor for ModifiedContent();
  v85 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v58 - v10;
  v11 = *(a1 + 24);
  v59 = a1;
  v13 = type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired(255, v2, v11, v12);
  v14 = type metadata accessor for StaticIf();
  v74 = v9;
  v66 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v83 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v58 - v16;
  v17 = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v102[0] = v11;
  v102[1] = v17;
  v18 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v102);
  v70 = WitnessTable;
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v101[0] = WitnessTable;
  v101[1] = refreshed;
  v21 = swift_getWitnessTable(v18, v6, v101);
  v67 = v21;
  v22 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v100[0] = v21;
  v100[1] = v22;
  v76 = v18;
  v23 = swift_getWitnessTable(v18, v9, v100);
  v63 = v23;
  v99[0] = swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.InertPaddingLayoutRequired, v13);
  v99[1] = MEMORY[0x1E697E5D8];
  v99[2] = MEMORY[0x1E697E100];
  v24 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v14, v99);
  v98[0] = v23;
  v98[1] = v24;
  v65 = v15;
  v64 = swift_getWitnessTable(v18, v15, v98);
  v94 = v15;
  *&v95 = v64;
  v68 = MEMORY[0x1E6981320];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v26 = &v58 - v25;
  v27 = type metadata accessor for ModifiedContent();
  v72 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v58 - v28;
  v62 = type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier(255, v2, v11, v30);
  v31 = type metadata accessor for ModifiedContent();
  v71 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v61 = &v58 - v35;
  v36 = v77;
  v37 = v81;
  View.styleContext<A>(_:)();
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v39 = v38;
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  v40 = v80;
  v41 = v75;
  View.refreshScope<A>(if:)(v39, v75, v39);
  (*(v86 + 8))(v37, v41);
  LOBYTE(v94) = *v36;
  v42 = v79;
  v43 = v73;
  MEMORY[0x18D00A570](&v94, v73, v82, v67);
  (*(v84 + 8))(v40, v43);
  SystemScrollViewContainer.inertPaddingModifier.getter(v59, v44, v45, v46);
  v90[0] = v94;
  v91 = v95;
  v92 = v96;
  v93 = v97;
  v47 = v78;
  v48 = v74;
  MEMORY[0x18D00A570](v90, v74, v66, v63);
  (*(v85 + 8))(v42, v48);
  v49 = v65;
  v50 = v64;
  View.resetScrollInputs()();
  (*(v83 + 8))(v47, v49);
  v94 = v49;
  *&v95 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = OpaqueTypeMetadata2;
  View.resetContentMargin(placements:)(&outlined read-only object #0 of SystemScrollViewContainer.placementsToReset.getter, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v69 + 8))(v26, v52);
  LOBYTE(v94) = *v36;
  v89[0] = OpaqueTypeConformance2;
  v89[1] = &protocol witness table for ResetContentMarginModifier;
  v53 = v76;
  v54 = swift_getWitnessTable(v76, v27, v89);
  MEMORY[0x18D00A570](&v94, v27, v62, v54);
  (*(v72 + 8))(v29, v27);
  v88[0] = v54;
  v88[1] = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  swift_getWitnessTable(v53, v31, v88);
  v55 = v61;
  static ViewBuilder.buildExpression<A>(_:)();
  v56 = *(v71 + 8);
  v56(v33, v31);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v56)(v55, v31);
}

void View.refreshScope<A>(if:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
  StaticIf<>.init<>(_:then:)();
  type metadata accessor for StaticIf();

  JUMPOUT(0x18D00A570);
}

uint64_t SystemScrollViewContainer.inertPaddingModifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired(0, *(a1 + 16), *(a1 + 24), a4);
  static EdgeInsets.zero.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = static Edge.Set.all.getter();
  v15 = 0;
  swift_getWitnessTable(protocol conformance descriptor for SystemScrollViewContainer<A>.InertPaddingLayoutRequired, v4, v14, v6, v8, v10, v12, v15);
  return StaticIf<>.init<>(_:then:)();
}

uint64_t View.resetContentMargin(placements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v7 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v14;
    v8 = (a1 + 32);
    v9 = *(v14 + 16);
    do
    {
      v11 = *v8++;
      v10 = v11;
      v14 = v5;
      v12 = *(v5 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + v9++ + 32) = v10;
      --v4;
    }

    while (v4);
    a2 = v7;
  }

  v14 = v5;
  MEMORY[0x18D00A570](&v14, a2, &type metadata for ResetContentMarginModifier, a3);
}

uint64_t SystemScrollView.init(configuration:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  outlined init with take of ScrollViewConfiguration(a1, a5);
  v10 = type metadata accessor for SystemScrollView(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

void View.inferredToolbarScope()()
{
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>(0);

  JUMPOUT(0x18D00A570);
}

uint64_t ScrollViewLayoutComputer.updateValue()()
{
  v1 = *AGGraphGetValue();
  AGGraphGetValue();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v11 = Value[1];
  }

  default argument 0 of ViewSizeCache.init(cache:)();
  ViewSizeCache.init(cache:)();
  v14 = v1;
  v15 = v3;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  lazy protocol witness table accessor for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer();
  lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine();
  lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine();
  StatefulRule<>.updateIfNotEqual<A>(to:)();
  return outlined destroy of ListLabelLayout.Child(&v14);
}

void ScrollViewAdjustedConfiguration.value.getter(double *a4@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(Value, a4);
  v6 = MEMORY[0x1E69E6720];
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v7 = AGGraphGetValue();
  v9 = *v7;
  v8 = v7[1];

  *(a4 + 13) = v9;
  *(a4 + 14) = v8;
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ScrollToTopGestureAction?, &type metadata for ScrollToTopGestureAction, v6);
  v10 = AGGraphGetValue();
  v11 = *v10;
  v12 = v10[1];
  v13 = *(a4 + 6);
  v14 = *(a4 + 7);
  outlined copy of AppIntentExecutor?(*v10, v12);
  outlined consume of TriggerSubmitAction?(v13, v14);
  *(a4 + 6) = v11;
  *(a4 + 7) = v12;
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for RefreshAction?, &type metadata for RefreshAction, v6);
  v15 = AGGraphGetValue();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = *(a4 + 10);
  v20 = *(a4 + 11);
  outlined copy of AppIntentExecutor?(*v15, v17);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19, v20);
  *(a4 + 10) = v16;
  *(a4 + 11) = v17;
  *(a4 + 12) = v18;
  type metadata accessor for SafeAreaTransitionState?(0);
  a4[9] = *(AGGraphGetValue() + 8);
  swift_unknownObjectWeakAssign();
  static EdgeInsets.zero.getter();
  if (static EdgeInsets.== infix(_:_:)())
  {
    v21 = AGGraphGetValue();
    v22 = v21[1];
    v33 = *v21;
    v34 = v22;
    v35[0] = v21[2];
    *(v35 + 9) = *(v21 + 41);
    v23 = v21[5];
    v36 = v21[4];
    v37 = v23;
    v38[0] = v21[6];
    *(v38 + 9) = *(v21 + 105);
    static Edge.Set.all.getter();
    v24 = MEMORY[0x18D007050](&v30);
    v30 = v36;
    v31 = v37;
    v32[0] = v38[0];
    *(v32 + 9) = *(v38 + 9);
    MEMORY[0x18D007000](v29, v24);
    if (MEMORY[0x18D006FC0](&v36, v29))
    {
      v30 = v33;
      v31 = v34;
      v32[0] = v35[0];
      *(v32 + 9) = *(v35 + 9);
    }

    OptionalEdgeInsets.in(edges:)();
    *(a4 + 1) = v25;
    *(a4 + 2) = v26;
    *(a4 + 3) = v27;
    *(a4 + 4) = v28;
  }
}

double specialized TransformScrollStorageEnvironment.updateValue()()
{
  v1 = v0;
  v28 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = Value[1];
  *&v27 = v6;
  *(&v27 + 1) = v5;

  v7 = AGGraphGetValue();
  v9 = v8;
  outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v7, v26);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
  v11 = v10;
  v12 = lazy protocol witness table accessor for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>();
  MEMORY[0x18D000B40](v11, &type metadata for ScrollEnvironmentProperties, v12);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v1 + 16, __src);
  v13 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v25, __src);
  outlined destroy of ScrollEnvironmentProperties(__src);
  v14 = *(v1 + 8);
  if (!v14)
  {
    outlined init with copy of ScrollEnvironmentProperties(v25, __src);
    *(&v20 + 1) = &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform;
    *&v21 = &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform;
    *&v19 = swift_allocObject();
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26, v19 + 16);
    type metadata accessor for ScrollEnvironmentStorage(0);
    swift_allocObject();
    v14 = ScrollEnvironmentStorage.init(_:transform:)(__src, &v19);
    *(v1 + 8) = v14;
  }

  if (AGGraphGetOutputValue() && (v13 & ((v9 & 1) == 0)) == 0)
  {
    outlined init with copy of ScrollEnvironmentProperties(v25, __src);
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26, &v19);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), __src, 0x108uLL);
    v16 = v22;
    *(v15 + 320) = v21;
    *(v15 + 336) = v16;
    *(v15 + 352) = v23;
    v17 = v20;
    *(v15 + 288) = v19;
    *(v15 + 304) = v17;

    static Update.enqueueAction(reason:_:)();
  }

  if (!AGGraphGetOutputValue() || (v4 & 1) != 0)
  {
    *__src = v14;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();

    PropertyList.subscript.setter();
    if (*(&v27 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    *__src = v27;
    AGGraphSetOutputValue();
  }

  outlined destroy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26);
  outlined assign with take of ScrollEnvironmentProperties(v25, v1 + 16);

  return result;
}

uint64_t sub_18BE3D280()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_18BE3D2C0()
{

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  if (v0[39])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  }

  return swift_deallocObject();
}

char *ResolvedScrollBehaviorModifier.MakeBehavior.updateValue()()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for ResolvedScrollBehavior?();
  v3 = v2;
  OutputValue = AGGraphGetOutputValue();
  outlined init with copy of ResolvedScrollBehaviorModifier.MakeBehavior(v0, v14);
  Behavior = lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior();
  MEMORY[0x18D000B40](&unk_1EFFE38E8, v3, Behavior);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(v14);
  outlined init with copy of ResolvedScrollBehavior?(v19, v14, type metadata accessor for ResolvedScrollBehavior?);
  v6 = AGCompareValues() ^ 1;
  if (OutputValue)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  outlined init with copy of ResolvedScrollBehavior?(v14, v12, type metadata accessor for ResolvedScrollBehavior?);
  v8 = v13;
  outlined destroy of ResolvedScrollBehavior?(v12);
  if (!v8)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  AGGraphGetValue();
  v10 = v9;
  result = AGGraphGetValue();
  if (v15)
  {
    v16 = *result;
    v17 = 0;
    v18 = AGCreateWeakAttribute();
    if (((v7 | v10) & 1) == 0)
    {
LABEL_8:
      outlined assign with take of ResolvedScrollBehavior?(v19, v1 + 8);
      return outlined destroy of ResolvedScrollBehavior?(v14);
    }

LABEL_7:
    outlined init with copy of ResolvedScrollBehavior?(v14, v12, type metadata accessor for ResolvedScrollBehavior?);
    AGGraphSetOutputValue();
    outlined destroy of ResolvedScrollBehavior?(v12);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in ResolvedScrollBehaviorModifier.MakeBehavior.updateValue()@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ResolvedScrollBehaviorModifier.MakeBehavior(*(v1 + 16), v4);
  ResolvedScrollBehaviorModifier.MakeBehavior.defaultBehavior.getter(a1);
  return outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(v4);
}

_BYTE *ResolvedScrollBehaviorModifier.MakeBehavior.defaultBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetValue();
  if (*result)
  {
    if (*(AGGraphGetValue() + 8))
    {
      type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.getter();
    }

    v3 = v11;
    swift_getKeyPath();
    _s7SwiftUI24ScrollEnvironmentStorageCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v11 + 16, &v11);
    swift_getKeyPath();
    *&v9 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ResolvedScrollBehavior?(v3 + 280, &v9, type metadata accessor for ScrollEnvironmentTransform?);
    if (v10)
    {
      outlined init with take of ScrollEnvironmentTransform(&v9, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v5 + 8))(&v11, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    outlined init with copy of ResolvedScrollBehavior?(&v12, a1, type metadata accessor for ResolvedScrollBehavior?);
    return outlined destroy of ScrollEnvironmentProperties(&v11);
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double ResolvedScrollBehaviorModifier.TrackedEnvironment.updateValue()()
{
  AGGraphGetValue();
  v1 = v0;
  if (!AGGraphGetOutputValue())
  {

LABEL_8:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    AGGraphSetOutputValue();

    return result;
  }

  if ((v1 & 1) == 0)
  {
    return result;
  }

  swift_retain_n();
  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ScrollEnvironmentKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.ScrollEnvironmentKey.defaultValue;
}

uint64_t ScrollEnvironmentStorage.init(_:transform:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = 0;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  ObservationRegistrar.init()();
  outlined init with copy of ScrollEnvironmentProperties(a1, v2 + 16);
  outlined init with copy of ScrollEnvironmentTransform?(a2, v6);
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(a2, type metadata accessor for ScrollEnvironmentTransform?);
  outlined destroy of ScrollEnvironmentProperties(a1);
  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v6, type metadata accessor for ScrollEnvironmentTransform?);
  return v2;
}

uint64_t outlined init with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for ScrollEnvironmentTransform?, &lazy cache variable for type metadata for ScrollEnvironmentTransform, &protocol descriptor for ScrollEnvironmentTransform, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 56);
    *(v4 + 32) = *(a2 + 40);
    *(v4 + 48) = v8;
    *(v4 + 64) = *(a2 + 72);
    *v4 = *(a2 + 8);
    *(v4 + 16) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = *(a2 + 112);
  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v11 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v11;
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t outlined assign with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollEnvironmentTransform?(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollEnvironmentTransform?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScrollEnvironmentTransform?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for ScrollEnvironmentTransform, &protocol descriptor for ScrollEnvironmentTransform);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScrollEnvironmentTransform?);
    }
  }
}

uint64_t outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for ScrollEnvironmentProperties(void *a1)
{
  if (a1[4])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 1);
  }
}

uint64_t outlined init with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActionSheet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined destroy of ResolvedScrollBehavior?(uint64_t a1)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Attribute<ResolvedScrollBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeWithCopy for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 44) = *(a2 + 44);
    result = *(a2 + 48);
    *(a1 + 48) = result;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = result;
  }

  return result;
}

void closure #1 in TransformScrollStorageEnvironment.updateValue()(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage, protocol conformance descriptor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v8 + 16, a2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v8 + 280, &v8);
  if (v9)
  {
    outlined init with take of ScrollEnvironmentTransform(&v8, v5);
    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 8))(a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    }
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t specialized static ScrollEnvironmentProperties.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  outlined init with copy of ResolvedScrollBehavior?((a1 + 8), v19);
  v6 = a2;
  outlined init with copy of ResolvedScrollBehavior?((a2 + 8), v21);
  if (!v20)
  {
    if (!v22)
    {
      outlined destroy of ResolvedScrollBehavior?(v19);
      goto LABEL_12;
    }

LABEL_20:
    outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v19, type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?));
    goto LABEL_21;
  }

  outlined init with copy of ResolvedScrollBehavior?(v19, v18);
  if (!v22)
  {
    outlined destroy of AccessibilityRelationshipScope.Key(v18);
    goto LABEL_20;
  }

  v7 = specialized static ResolvedScrollBehavior.== infix(_:_:)(v18, v21);
  outlined destroy of AccessibilityRelationshipScope.Key(v21);
  outlined destroy of AccessibilityRelationshipScope.Key(v18);
  outlined destroy of ResolvedScrollBehavior?(v19);
  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (a1[80] != v6[80] || a1[81] != v6[81] || a1[82] != v6[82] || *(a1 + 21) != *(v6 + 21))
  {
    goto LABEL_21;
  }

  v9 = a1[88];
  v10 = v6[88];
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      goto LABEL_21;
    }
  }

  else if (v9 != v10)
  {
    goto LABEL_21;
  }

  if (a1[89] != v6[89] || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_AC06ScrollD11EffectStyleVTt1g5(*(a1 + 12), *(v6 + 12)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_SbTt1g5(*(a1 + 13), *(v6 + 13)) & 1) == 0 || a1[112] != v6[112])
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (a1[120] != v6[120] || *(a1 + 16) != *(v6 + 16) || a1[136] != v6[136])
  {
    return v11 & 1;
  }

  if (a1[137] != v6[137])
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (a1[144] != v6[144] || *(a1 + 19) != *(v6 + 19) || a1[160] != v6[160])
  {
    return v11 & 1;
  }

  if (a1[161] != v6[161])
  {
    goto LABEL_21;
  }

  v12 = v6[163];
  if (a1[163])
  {
    if (!v6[163])
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1[162] != v6[162])
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_21;
    }
  }

  if (a1[164] != v6[164] || a1[165] != v6[165])
  {
    goto LABEL_21;
  }

  v13 = a1[166];
  v14 = v6[166];
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a1[167] == v6[167])
  {
    v15 = *(v6 + 24);
    if (*(a1 + 24))
    {
      v11 = 0;
      if (!v15 || *(a1 + 21) != *(v6 + 21) || *(a1 + 22) != *(v6 + 22) || *(a1 + 23) != *(v6 + 23))
      {
        return v11 & 1;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ScrollTargetV_Tt1g5(v16, v15);

      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (v15)
    {
      goto LABEL_21;
    }

    if (static EdgeInsets.== infix(_:_:)())
    {
      v11 = static EdgeInsets.== infix(_:_:)();
      return v11 & 1;
    }
  }

LABEL_21:
  v11 = 0;
  return v11 & 1;
}

uint64_t outlined init with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithTake for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (!*(a2 + 32))
  {
    outlined destroy of AccessibilityRelationshipScope.Key((a1 + 8));
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<UserInteractionActivityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>);
    }
  }
}

void protocol witness for static StatefulRule.initialValue.getter in conformance WindowSceneList<A>.MakeList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
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
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewLayoutComputer.Engine, &unk_1EFF894C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine)
  {
    result = swift_getWitnessTable("=:\abXk\a", &unk_1EFF894C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t specialized static ScrollViewUtilities.sizeThatFits(in:contentComputer:axes:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!*a2)
  {
    static LayoutComputer.defaultValue.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.width.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.height.getter();
  }

  _ProposedSize.init(width:height:)();
  LayoutComputer.sizeThatFits(_:)();
  v5 = v4;

  v6 = _ProposedSize.width.getter();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    if (Axis.Set.contains(_:)())
    {
      v5 = v8;
    }
  }

  _ProposedSize.height.getter();
  if ((v9 & 1) == 0)
  {
    Axis.Set.contains(_:)();
  }

  return v5;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RefreshScopeModifier@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();

  outlined copy of AppIntentExecutor?(0, 0);

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(0, 0);
  *a1 = KeyPath;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

Swift::Void __swiftcall TransformScrollStorageEnvironment.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  Value = AGGraphGetValue();
  v28 = v12;
  v14 = *Value;
  v13 = Value[1];
  *&v35 = v14;
  *(&v35 + 1) = v13;

  v15 = AGGraphGetValue();
  v26 = v16;
  v29 = v5;
  v30 = v10;
  v27 = *(v5 + 16);
  v27(v10, v15, v4);
  v31 = &v35;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TransformScrollStorageEnvironment<A>, v3);
  MEMORY[0x18D000B40](v3, &type metadata for ScrollEnvironmentProperties, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v2 + 16, v33);
  v18 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v34, v33);
  outlined destroy of ScrollEnvironmentProperties(v33);
  v19 = *(v2 + 8);
  if (!v19)
  {
    outlined init with copy of ScrollEnvironmentProperties(v34, v33);
    v20 = *(v3 + 24);
    v32[3] = v4;
    v32[4] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    v27(boxed_opaque_existential_1, v30, v4);
    type metadata accessor for ScrollEnvironmentStorage(0);
    v19 = swift_allocObject();
    ScrollEnvironmentStorage.init(_:transform:)(v33, v32);
    *(v2 + 8) = v19;
  }

  if (AGGraphGetOutputValue() && (v18 & ((v26 & 1) == 0)) == 0)
  {
    LOBYTE(v32[0]) = 17;
    outlined init with copy of ScrollEnvironmentProperties(v34, v33);
    v27(v7, v30, v4);
    v22 = v29;
    v23 = (*(v29 + 80) + 304) & ~*(v29 + 80);
    v24 = swift_allocObject();
    v25 = *(v3 + 24);
    *(v24 + 2) = v4;
    *(v24 + 3) = v25;
    *(v24 + 4) = v19;
    memcpy(v24 + 40, v33, 0x108uLL);
    (*(v22 + 32))(&v24[v23], v7, v4);

    static Update.enqueueAction(reason:_:)();
  }

  if (!AGGraphGetOutputValue() || (v28 & 1) != 0)
  {
    *v33 = v19;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, MEMORY[0x1E697FE40]);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (*(&v35 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    *v33 = v35;
    AGGraphSetOutputValue();
  }

  outlined assign with copy of ScrollEnvironmentProperties(v34, v2 + 16);
  outlined destroy of ScrollEnvironmentProperties(v34);
  (*(v29 + 8))(v30, v4);
}

uint64_t sub_18BE3F93C()
{
  v1 = v0[2];
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t assignWithCopy for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 8));
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(v5);
      *(a1 + 8) = *(a2 + 8);
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 32) = v4;
    *(a1 + 40) = *(a2 + 40);
    (**(v4 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    v11 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v11;
    *(a1 + 40) = v10;
    *(a1 + 24) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

double specialized static ResetScrollEnvironmentModifier.AdditionalResetModifier.makeEnvironment(modifier:environment:)(void *a1)
{
  ScrollAnchorStorage.init()();
  EnvironmentValues.scrollAnchors.setter();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

  PropertyList.subscript.setter();
  v2 = a1[1];
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollContentBackground(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);

  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.__deallocating_deinit()
{
  outlined consume of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t ScrollView.init(_:showsIndicators:content:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a7 + *(type metadata accessor for ScrollView(0, a5, a6, a4) + 36);
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 2;
  *(v10 + 72) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  v11 = swift_unknownObjectWeakInit();
  *(v10 + 112) = 0;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  return a3(v11);
}

uint64_t destroy for ScrollViewConfiguration(void *a1)
{
  if (a1[6])
  {
  }

  MEMORY[0x18D011290](a1 + 8);
  if (a1[10])
  {
  }
}

double closure #1 in ScrollViewLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11)
{
  _ProposedSize.inset(by:)();
  v24[1] = a6;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  v28 = v32;
  v24[0] = a5;
  v18 = specialized static ScrollViewUtilities.sizeThatFits(in:contentComputer:axes:)(&v25, v24, a7);
  if (v19)
  {
    v29 = a1;
    v30 = a2 & 1;
    v31 = a3;
    v32 = a4 & 1;
    *&v20 = *&_ProposedSize.fixingUnspecifiedDimensions()();
  }

  else
  {
    v20 = *&v18;
  }

  EdgeInsets.horizontal.getter();
  v22 = v20 + v21;
  EdgeInsets.vertical.getter();
  return v22;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DividerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DividerStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static UIViewControllerRepresentable._makeView(view:inputs:)@<X0>(__int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v30 = a2[2];
  v31 = v8;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v9 = a2[1];
  v28 = *a2;
  v29 = v9;
  v34[0] = v28;
  v34[1] = v9;
  v34[2] = v30;
  outlined init with copy of _GraphInputs(v34, &v22);
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(v34);
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    v10 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v10);

    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](v22, *(&v22 + 1));

    _ViewOutputs.init()();
    *&v22 = v31;
    DWORD2(v22) = DWORD2(v31);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v12 = v22;
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v22 = v28;
      v23 = v29;
      LODWORD(v20) = v12;
      _ViewInputs.pushIdentity(_:)();
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v22 = v28;
      v23 = v29;
      v13 = _ViewInputs.animatedPosition()();
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v22 = v28;
      v23 = v29;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v22 = v28;
      v23 = v29;
      v15 = _ViewInputs.containerPosition.getter();
      *&v22 = __PAIR64__(v13, v12);
      *(&v22 + 1) = __PAIR64__(v15, v14);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a5 = v19[0];
    a5[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      v18 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v18);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      type metadata accessor for PlatformViewControllerRepresentableAdaptor(0, a3, a4, v16);
      type metadata accessor for _GraphValue();
      Attribute.unsafeBitCast<A>(to:)();
      _GraphValue.init(_:)();
      v24 = v30;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v22 = v28;
      v23 = v29;
      v17 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = v31;
      DWORD2(v22) = DWORD2(v31);
      v20 = v31;
      v21 = DWORD2(v31);
      MEMORY[0x1EEE9AC00](v17);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ItemProviderDropAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemProviderDropAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t partial apply for closure #1 in View.onOpenURL(perform:)(uint64_t a1)
{
  return partial apply for closure #1 in View.onOpenURL(perform:)(a1, closure #1 in View.onOpenURL(perform:));
}

{
  return partial apply for closure #1 in View.onOpenURL(perform:)(a1, closure #1 in View.onOpenURL(perform:));
}

uint64_t View.dividerStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DividerStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

void type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>);
    }
  }
}

double one-time initialization function for confirmationAction()
{
  static ToolbarItemPlacement.confirmationAction = 5;
  result = 0.0;
  unk_1EAA08F50 = 0u;
  unk_1EAA08F60 = 0u;
  byte_1EAA08F70 = 2;
  return result;
}

uint64_t closure #1 in SheetPresentationModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 40))(v7);
  static ViewBuilder.buildExpression<A>(_:)();
  v11 = *(v3 + 8);
  v11(v5, a2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v11)(v9, a2);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of AnyHashable?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithCopy for SceneBridgeReader(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;

  return a1;
}

uint64_t assignWithCopy for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

uint64_t UIViewControllerRepresentableContext.coordinator.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t PlatformViewControllerRepresentableAdaptor.sizeThatFits(_:provider:context:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v26 = a2;
  v27 = a4;
  v28 = a1;
  v29 = a3;
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a7);
  v9 = type metadata accessor for PlatformViewRepresentableContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v14 = *(a7 + 16);
  v13 = *(a7 + 24);
  v16 = type metadata accessor for UIViewControllerRepresentableContext(0, v14, v13, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  (*(v10 + 16))(v12, a6, v9, v18);
  swift_getWitnessTable(protocol conformance descriptor for PlatformViewControllerRepresentableAdaptor<A>, a7);
  v21 = UIViewControllerRepresentableContext.init<A>(_:)(v12, v14, v13, v20);
  v22 = *(v13 + 72);
  v32 = v26 & 1;
  v31 = v27 & 1;
  v23 = v22(v28, v21);
  (*(v17 + 8))(v20, v16);
  return v23;
}

id specialized PlatformViewControllerRepresentableAdaptor.overrideLayoutTraits(_:for:)(int a1, id a2)
{
  result = [a2 preferredContentSize];
  v5 = v4;
  if (v3 > 0.0)
  {
    v6 = v3;
    v7 = _LayoutTraits.idealSize.modify();
    *v8 = v6;
    result = v7(v11, 0);
  }

  if (v5 > 0.0)
  {
    v9 = _LayoutTraits.idealSize.modify();
    *(v10 + 8) = v5;
    return v9(v11, 0);
  }

  return result;
}

void *assignWithCopy for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v5 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  if (*v9 < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v13 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v13;

      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v12;

      goto LABEL_8;
    }
  }

  *v9 = *v10;
LABEL_8:
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 17) = *(v10 + 17);
  v14 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v10 + 25) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      *(v14 + 32) = *(v15 + 32);
      (**(v16 - 8))((v9 + 25) & 0xFFFFFFFFFFFFFFF8, v15);
      goto LABEL_15;
    }

LABEL_14:
    v18 = *v15;
    v19 = *(v15 + 16);
    *(v14 + 32) = *(v15 + 32);
    *v14 = v18;
    *(v14 + 16) = v19;
    goto LABEL_15;
  }

  v17 = ((v9 + 25) & 0xFFFFFFFFFFFFFFF8);
  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_14;
  }

  v18.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(v17, v15);
LABEL_15:
  v20 = *(*(a3 + 16) - 8);
  v21 = v20 + 24;
  v22 = *(v20 + 80);
  v23 = (v14 + v22 + 40) & ~v22;
  v24 = (v15 + v22 + 40) & ~v22;
  (*(v20 + 24))(v23, v24, v18);
  *(v23 + *(v21 + 40)) = *(v24 + *(v21 + 40));
  return a1;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_7SwiftUI15AnyFontModifierCTg5Tm(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t View.hoverEffect<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v26 = a2;
  v10 = a1;
  v27 = a7;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for CustomHoverEffectModifier(0, v14, v15, v14);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v25[-v19];
  (*(v11 + 16))(v13, v10, a4, v18);
  LOBYTE(v10) = a3 == MEMORY[0x1E6981748];
  v21 = default argument 2 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)();
  v23 = v22;
  default argument 3 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)(&v32);
  v29 = v32;
  v30 = v33;
  v31 = v34;
  CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)(v13, v26, v21, v23 & 1, &v29, v10, 0, 1, v20, 0, 1, 2, a4, a6);
  MEMORY[0x18D00A570](v20, a3, v16, v28);
  return (*(v17 + 8))(v20, v16);
}

uint64_t default argument 3 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

double sub_18BE419E0@<D0>(uint64_t a2@<X8>)
{
  EnvironmentValues.hoverEffectState.getter();
  *a2 = v4;
  result = *&v5;
  *(a2 + 8) = v5;
  return result;
}

uint64_t CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v29 = *a5;
  v19 = *(a5 + 2);
  v20 = *(a5 + 24);
  (*(*(a13 - 8) + 32))(a9, a1, a13);
  v22 = type metadata accessor for CustomHoverEffectModifier(0, a13, a14, v21);
  *(a9 + v22[9]) = a2;
  v23 = a9 + v22[10];
  *v23 = a3;
  *(v23 + 8) = a4 & 1;
  v24 = a9 + v22[11];
  *v24 = v29;
  *(v24 + 16) = v19;
  *(v24 + 24) = v20;
  *(a9 + v22[12]) = a6;
  v25 = a9 + v22[13];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = a9 + v22[14];
  *v26 = a10;
  *(v26 + 8) = a11 & 1;
  *(a9 + v22[15]) = a12;
  *(a9 + v22[16]) = 0;
  v27 = a9 + v22[17];
  result = swift_getKeyPath();
  *v27 = result;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  return result;
}

uint64_t sub_18BE41BDC@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.sceneIdentifier.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t type metadata completion function for CustomHoverEffectModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE41D38(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = type metadata accessor for CustomHoverEffectModifier(255, *a1, v6, a5);
  swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>, v7);
  v8 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier(255, v5, v6, v9);
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v8);
  v16[0] = WitnessTable;
  v16[1] = &protocol witness table for CustomHoverEffectPrimitiveViewModifier<A>;
  v13 = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v16);
  v15[0] = MEMORY[0x1E697F9B0];
  v15[1] = WitnessTable;
  v15[2] = v13;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v11, v15);
}

uint64_t closure #2 in static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CustomHoverEffectPrimitiveViewModifier(0, a2, a3, a4);
  v6 = *(v5 + 36);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v10, &unk_1EFF9C6E8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

double _makeCustomHoverEffectView<A>(effect:context:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>)
{
  v14 = *a1;
  v15 = a3[3];
  v32[2] = a3[2];
  v32[3] = v15;
  v32[4] = a3[4];
  v33 = *(a3 + 20);
  v16 = a3[1];
  v32[0] = *a3;
  v32[1] = v16;
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v17 = a3[3];
    v29 = a3[2];
    v30 = v17;
    *v31 = a3[4];
    *&v31[16] = *(a3 + 20);
    v18 = a3[1];
    v27 = *a3;
    v28 = v18;
    a4();
  }

  else
  {
    outlined init with copy of _ViewInputs(v32, &v27);
    _CustomHoverEffectInputs.init(base:context:inheritedTransform:)();
    v24 = v14;
    v22[2] = v29;
    v22[3] = v30;
    *v23 = *v31;
    *&v23[12] = *&v31[12];
    v22[0] = v27;
    v22[1] = v28;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    v21 = *(a7 + 32);

    v21(&v25, &v24, v22, partial apply for closure #1 in _makeCustomHoverEffectView<A>(effect:context:inputs:body:), v20, a6, a7);

    outlined destroy of _CustomHoverEffectInputs(&v27);
    *a8 = v25;
    result = v26;
    a8[1] = v26;
  }

  return result;
}

uint64_t sub_18BE42108()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type SupportsHoverEffects and conformance SupportsHoverEffects();
    v5[1] = lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for CustomHoverEffectPrimitiveViewModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomHoverEffectModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *(a2 + 48);
  v31[2] = *(a2 + 32);
  v31[3] = v13;
  v31[4] = *(a2 + 64);
  v32 = *(a2 + 80);
  v14 = *(a2 + 16);
  v31[0] = *a2;
  v31[1] = v14;
  v29 = a5;
  v30 = a6;
  v23[1] = v12;
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v27 = a5;
  v28 = a6;
  _GraphValue.subscript.getter();
  _DisplayList_Identity.init()();
  v22 = v20;
  v19[0] = v21;
  v19[1] = v20;
  RootContext = type metadata accessor for CustomHoverEffectPrimitiveViewModifier.MakeRootContext(0, a5, a6, v15);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext, RootContext);
  type metadata accessor for Attribute<HoverEffectContext>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_5, v24, RootContext, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  return _makeCustomHoverEffectView<A>(effect:context:inputs:body:)(v23, v31, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for Attribute<HoverEffectContext>()
{
  if (!lazy cache variable for type metadata for Attribute<HoverEffectContext>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<HoverEffectContext>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyHoverEffect, HoverEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(255, a2, MEMORY[0x1E697E988], a3, MEMORY[0x1E697E830]);
    v8 = v7;
    v9 = a4();
    v10[0] = MEMORY[0x1E697E980];
    v10[1] = v9;
    result = swift_getWitnessTable(MEMORY[0x1E697E848], v8, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect()
{
  result = lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect;
  if (!lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemCustomHoverEffect, &type metadata for SystemCustomHoverEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect;
  if (!lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemCustomHoverEffect, &type metadata for SystemCustomHoverEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>();
    v6[0] = MEMORY[0x1E697E980];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E848], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>();
    v3 = v2;
    v4 = lazy protocol witness table accessor for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v6 = type metadata accessor for _CustomViewModifierHoverEffect(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>)
  {
    type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SupportsHoverEffects and conformance SupportsHoverEffects()
{
  result = lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects;
  if (!lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsHoverEffects, &unk_1EFFD30C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier()
{
  result = lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier;
  if (!lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SystemHoverEffectViewModifier, &type metadata for SystemHoverEffectViewModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>()
{
  result = lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>;
  if (!lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>)
  {
    type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for _CustomViewModifierHoverEffect<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>);
  }

  return result;
}

double static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v10 = *a1;
  v11 = a2[3];
  v30 = a2[2];
  v31 = v11;
  *v32 = a2[4];
  *&v32[12] = *(a2 + 76);
  v12 = a2[1];
  v28 = *a2;
  v29 = v12;
  v25 = v10;
  type metadata accessor for _CustomViewModifierHoverEffect(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v21 = v30;
  v22 = v31;
  v23 = *v32;
  v24 = *&v32[16];
  v19 = v28;
  v20 = v29;
  v13 = swift_allocObject();
  v14 = v31;
  *(v13 + 48) = v30;
  *(v13 + 64) = v14;
  *(v13 + 80) = *v32;
  *(v13 + 92) = *&v32[12];
  v15 = v29;
  *(v13 + 16) = v28;
  *(v13 + 32) = v15;
  *(v13 + 112) = a3;
  *(v13 + 120) = a4;
  outlined init with copy of _CustomHoverEffectInputs(&v28, v17);
  outlined init with copy of _CustomHoverEffectInputs(&v28, v17);

  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v18 = v24;
  v17[0] = v19;
  v17[1] = v20;
  outlined destroy of _ViewInputs(v17);
  *a7 = v26;
  result = v27;
  a7[1] = v27;
  return result;
}

uint64_t sub_18BE42D5C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for _CustomViewModifierHoverEffect(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t specialized static SupportsHoverEffects.evaluate(inputs:)(__int128 *a1)
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (_GraphInputs.interfaceIdiom.getter(), (AnyInterfaceIdiom.accepts<A>(_:)()))
  {
    v1 = 1;
  }

  else
  {
    _GraphInputs.interfaceIdiom.getter();
    v1 = AnyInterfaceIdiom.accepts<A>(_:)();
  }

  return v1 & 1;
}

uint64_t closure #2 in static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(__int128 *a1@<X1>, __int128 *a2@<X2>, void (*a3)(void *__return_ptr, __int128 *)@<X3>, void *a4@<X8>)
{
  v6 = a1[3];
  v20 = a1[2];
  v21 = v6;
  v22 = a1[4];
  v23 = *(a1 + 20);
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = a2[3];
  v15 = a2[2];
  v16 = v8;
  *v17 = a2[4];
  v9 = *v17;
  *&v17[12] = *(a2 + 76);
  v10 = a2[1];
  v13 = *a2;
  v14 = v10;
  v24[0] = v13;
  v24[1] = v10;
  v25 = *(a2 + 20);
  v24[3] = v8;
  v24[4] = v9;
  v24[2] = v15;
  outlined init with copy of _CustomHoverEffectInputs(a2, &v30);
  outlined init with copy of _ViewInputs(&v18, &v30);
  outlined destroy of _ViewInputs(v24);
  v13 = v18;
  v14 = v19;
  *&v17[16] = v23;
  v16 = v21;
  *v17 = v22;
  v15 = v20;
  v26[0] = v18;
  v26[1] = v19;
  *(v27 + 12) = *&v17[12];
  v26[3] = v21;
  v27[0] = v22;
  v26[2] = v20;
  v32 = v20;
  v33 = v21;
  v34[0] = v22;
  *(v34 + 12) = *&v17[12];
  v30 = v18;
  v31 = v19;
  outlined init with copy of _CustomHoverEffectInputs(v26, v28);
  a3(v12, &v30);
  v28[2] = v32;
  v28[3] = v33;
  v29[0] = v34[0];
  *(v29 + 12) = *(v34 + 12);
  v28[0] = v30;
  v28[1] = v31;
  outlined destroy of _CustomHoverEffectInputs(v28);
  *a4 = v12[0];
  a4[1] = v12[1];
  v32 = v15;
  v33 = v16;
  v34[0] = *v17;
  *(v34 + 12) = *&v17[12];
  v30 = v13;
  v31 = v14;
  return outlined destroy of _CustomHoverEffectInputs(&v30);
}

double closure #1 in _makeCustomHoverEffectView<A>(effect:context:inputs:body:)@<D0>(_OWORD *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X1>, double *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[1];
  v25 = a1[2];
  v26 = v5;
  v7 = a1[3];
  v27[0] = a1[4];
  *(v27 + 12) = *(a1 + 76);
  v8 = a1[1];
  v24[0] = *a1;
  v24[1] = v8;
  v21 = v25;
  v22 = v7;
  *v23 = a1[4];
  *&v23[12] = *(a1 + 76);
  v19 = v24[0];
  v20 = v6;
  outlined init with copy of _CustomHoverEffectInputs(v24, v32);
  _CustomHoverEffectInputs.removeContextFromEnvironment()();
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = *v23;
  v29 = *&v23[16];
  v28[0] = v19;
  v28[1] = v20;
  v13 = v21;
  v14 = v22;
  v15 = *v23;
  v16 = *&v23[16];
  v11 = v19;
  v12 = v20;
  v9 = outlined init with copy of _ViewInputs(v28, v32);
  a2(&v17, v9, &v11);
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v31 = v16;
  v30[0] = v11;
  v30[1] = v12;
  outlined destroy of _ViewInputs(v30);
  v32[2] = v21;
  v32[3] = v22;
  v33[0] = *v23;
  *(v33 + 12) = *&v23[12];
  v32[0] = v19;
  v32[1] = v20;
  outlined destroy of _CustomHoverEffectInputs(v32);
  *a3 = v17;
  result = v18;
  a3[1] = v18;
  return result;
}

void type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v5) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Bool>.Content();
  *(v9 + 8) = v11;
  *(v9 + 16) = v5;
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(v10 + 48);
  outlined copy of Environment<HoverEffectContext.State>.Content(v12, v13, v14, v15);
  *(v9 + 24) = v12;
  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  *(v19 + 9) = *(v20 + 9);
  v22 = ((v19 + 17) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 + 17) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  v23 += 15;
  *v22 = v24;
  v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v23 & 0xFFFFFFFFFFFFFFF8);
  v27 = *((v23 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v14) = *((v23 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<String?>.Content(v26, v27, v14);
  *v25 = v26;
  *(v25 + 8) = v27;
  *(v25 + 16) = v14;
  return a1;
}

uint64_t outlined copy of Environment<HoverEffectContext.State>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double destroy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*(v4 + 8), *(v4 + 16));
  outlined consume of Environment<HoverEffectContext.State>.Content(*(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = (((((v4 + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return outlined consume of Environment<String?>.Content(v6, v7, v8);
}

double outlined consume of Environment<HoverEffectContext.State>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

double outlined consume of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double key path getter for EnvironmentValues.hoverEffectState : EnvironmentValues@<D0>(uint64_t a2@<X8>)
{
  EnvironmentValues.hoverEffectState.getter();
  *a2 = v4;
  result = *&v5;
  *(a2 + 8) = v5;
  return result;
}

uint64_t EnvironmentValues.sceneIdentifier.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v6)
    {
LABEL_3:
      outlined destroy of WeakBox<UIWindowScene>?(&v5);
      return 0;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<UIWindowScene>(&v5);
  if (Strong)
  {
    v2 = [Strong _sceneIdentifier];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v3;
  }

  return 0;
}

double CustomHoverEffectPrimitiveViewModifier.MakeRootContext.value.getter@<D0>(uint64_t a1@<X8>)
{
  v13 = *v1;
  Value = AGGraphGetValue();
  v4 = *(Value + 16);
  v15[0] = *Value;
  v15[1] = v4;
  v6 = *(Value + 48);
  v5 = *(Value + 64);
  v7 = *(Value + 32);
  v16 = *(Value + 80);
  v15[3] = v6;
  v15[4] = v5;
  v15[2] = v7;
  v8 = *(Value + 48);
  v11[2] = *(Value + 32);
  v11[3] = v8;
  v11[4] = *(Value + 64);
  v12 = *(Value + 80);
  v9 = *(Value + 16);
  v11[0] = *Value;
  v11[1] = v9;
  outlined init with copy of HoverEffectContext.RootContextOptions(v15, v14);
  *&result = HoverEffectContext.init(identity:options:)(&v13, v11, a1).n128_u64[0];
  return result;
}

uint64_t CustomHoverEffectModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>);
  v4 = type metadata accessor for _ViewModifier_Content();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier(255, v5, v6, v7);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - v15;
  v24 = v5;
  v25 = v6;
  v22[4] = v5;
  v22[5] = v6;
  v23 = v2;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4, v14);
  v27[0] = WitnessTable;
  v27[1] = &protocol witness table for CustomHoverEffectPrimitiveViewModifier<A>;
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v27);
  v18 = MEMORY[0x1E697F9B0];
  StaticIf<>.init(_:then:else:)();
  v26[0] = v18;
  v26[1] = WitnessTable;
  v26[2] = v21;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v10 + 8);
  v19(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v16, v9);
}

uint64_t closure #1 in CustomHoverEffectModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CustomHoverEffectModifier(255, a1, a2, a4);
  swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  static ViewBuilder.buildExpression<A>(_:)();

  return static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t closure #2 in CustomHoverEffectModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CustomHoverEffectPrimitiveViewModifier(0, v10, v11, v12);
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v43[-v14];
  v16 = type metadata accessor for CustomHoverEffectModifier(255, a2, a3, v15);
  swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectModifier<A>, v16);
  v52 = type metadata accessor for _ViewModifier_Content();
  v58 = v13;
  v45 = type metadata accessor for ModifiedContent();
  v56 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v53 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v54 = &v43[-v20];
  v55 = v9;
  v57 = v7;
  v21 = *(v7 + 16);
  v46 = a2;
  v21(v9, a1, a2, v19);
  v51 = Namespace.wrappedValue.getter();
  v22 = v16[13];
  v50 = *(a1 + v16[12]);
  v49 = *(a1 + v22);
  v23 = *(a1 + v22 + 8);
  v24 = (a1 + v16[14]);
  v47 = *v24;
  v25 = *(v24 + 8);
  if (*(a1 + v16[9]) == 1)
  {
    v26 = specialized Environment.wrappedValue.getter(*(a1 + v16[10]), *(a1 + v16[10] + 8));
  }

  else
  {
    v26 = 0;
  }

  v44 = *(a1 + v16[15]);
  specialized Environment.wrappedValue.getter(*(a1 + v16[11]), *(a1 + v16[11] + 8), *(a1 + v16[11] + 16), *(a1 + v16[11] + 24), v62);
  v27 = v62[0];
  v28 = v62[1];
  v29 = v62[2];
  v30 = specialized Environment.wrappedValue.getter(*(a1 + v16[17]), *(a1 + v16[17] + 8), *(a1 + v16[17] + 16));
  v32 = v31;
  v64 = v23;
  v63 = v25;
  v33 = v48;
  (*(v57 + 32))(v48, v55, v46);
  v34 = v58;
  v35 = &v33[*(v58 + 36)];
  *v35 = v51;
  v35[8] = v50;
  *(v35 + 2) = v49;
  v35[24] = v23;
  *(v35 + 4) = v47;
  v35[40] = v25;
  v35[41] = v26 & 1;
  v35[42] = v44;
  v35[48] = v27;
  *(v35 + 7) = v28;
  *(v35 + 8) = v29;
  *(v35 + 9) = v30;
  *(v35 + 10) = v32;
  v36 = v52;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v52);
  v38 = v53;
  MEMORY[0x18D00A570](v33, v36, v34, WitnessTable);
  (*(v59 + 8))(v33, v34);
  v61[0] = WitnessTable;
  v61[1] = &protocol witness table for CustomHoverEffectPrimitiveViewModifier<A>;
  v39 = v45;
  swift_getWitnessTable(MEMORY[0x1E697E858], v45, v61);
  v40 = v54;
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = *(v56 + 8);
  v41(v38, v39);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v41)(v40, v39);
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a4)
  {
    *a5 = a1 & 1;
    a5[1] = a2;
    a5[2] = a3;

    outlined copy of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 1);
  }

  else
  {
    v15[10] = v5;
    v15[11] = v6;
    outlined copy of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 0);
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574617453, 0xE500000000000000, v15);
      _os_log_impl(&dword_18BD4A000, v12, v11, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x18D0110E0](v14, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 0);
  }

  return result;
}

void *specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F330, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<String?>.Content(a1, a2, 0);

    return v10;
  }

  return a1;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1, a2);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000018CD3F300, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of TriggerSubmitAction?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1, a2);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F180, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of TriggerSubmitAction?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1, a2);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F1C0, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of (Color, Color)?(a1, a2);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F440, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?);

    return v10;
  }

  return v4;
}

uint64_t initializeWithCopy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v9 = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v9;
  v10 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v10;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t destroy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

__n128 HoverEffectContext.init(identity:options:)@<Q0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 41);
  v7 = *(a2 + 42);
  v8 = *(a2 + 48);
  v10 = a2[7];
  v9 = a2[8];
  v12 = a2[9];
  v11 = a2[10];
  v18.n128_u64[0] = *a1;
  v18.n128_u8[8] = 0;
  *&v19 = v4;
  BYTE8(v19) = v5;
  BYTE9(v19) = v7;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  v16 = v18;
  v17 = v19;
  if (v11)
  {

    outlined destroy of HoverEffectContext(&v18);

    v13 = v20;
    v10 = v12;
    v9 = v11;
  }

  else
  {

    v13 = v8;
  }

  if ((v6 | v13))
  {
    v14 = v8;
  }

  else
  {
    v14 = 1;
  }

  result = v16;
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v14;
  *(a3 + 40) = v10;
  *(a3 + 48) = v9;
  return result;
}

uint64_t initializeWithCopy for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

double ActionDispatcherSubscriber.respond(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!pthread_main_np())
  {
    v15 = static os_log_type_t.fault.getter();
    v25 = v5;
    v16 = v15;
    v17 = static Log.runtimeIssuesLog.getter();
    v24 = v3;
    v18 = v17;
    v19 = v16;
    v5 = v25;
    os_log(_:dso:log:_:_:)(v19, &dword_18BD4A000, v18, "Publishing changes from background threads is not allowed; make sure to publish values from the main thread (via operators like receive(on:)) on model updates.", 159, 2, MEMORY[0x1E69E7CC0]);

    v3 = v24;
  }

  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v6);
  v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v21 = (v12 + v20 + *(v7 + 80)) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  (*(v11 + 32))(v22 + v20, v14, a2);
  (*(v7 + 32))(v22 + v21, v9, v6);
  onMainThread(do:)();

  return result;
}

uint64_t sub_18BE44710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for ActionDispatcherSubscriber(0, v5, a3, a4) - 8);
  v7 = (*(*v6 + 80) + 24) & ~*(*v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(*v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v4 + v7;

  v11 = v6[9];
  v12 = type metadata accessor for CombineIdentifier();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  (*(v8 + 8))(v4 + v9, v5);

  return swift_deallocObject();
}

uint64_t ActionDispatcherSubscriber.receive(_:)(uint64_t a1, uint64_t a2)
{
  v2.n128_f64[0] = ActionDispatcherSubscriber.respond(to:)(a1, a2);

  return MEMORY[0x1EEDB5BB8](v2);
}

double partial apply for closure #1 in ActionDispatcherSubscriber.respond(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = *(type metadata accessor for ActionDispatcherSubscriber(0, v6, a3, a4) - 8);
  v8 = (((*(v7 + 80) + 24) & ~*(v7 + 80)) + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  MEMORY[0x18D002800](&v10);
  v10(v5 + v8);

  return result;
}

double partial apply for closure #1 in SubscriptionView.Subscriber.updateValue()(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for SubscriptionView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in SubscriptionView.Subscriber.updateValue()(a1, v8, v3, v4, v5, v6);
}

double closure #1 in SubscriptionView.Subscriber.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v33 = a2;
  v34 = a1;
  v29 = a3;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - v11;
  v35[0] = a3;
  v35[1] = a4;
  v35[2] = a5;
  v35[3] = a6;
  v13 = type metadata accessor for SubscriptionView(0, v35);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - v17;
  LOBYTE(v35[0]) = 17;
  (*(v14 + 16))(&v27 - v17, v33, v13, v16);
  v19 = AssociatedTypeWitness;
  (*(v10 + 16))(v12, v34, AssociatedTypeWitness);
  v20 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v21 = (v15 + v20 + *(v10 + 80)) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 2) = v29;
  *(v22 + 3) = v23;
  v25 = v32;
  *(v22 + 4) = v24;
  *(v22 + 5) = v25;
  (*(v14 + 32))(&v22[v20], v18, v13);
  (*(v10 + 32))(&v22[v21], v12, v19);
  static Update.enqueueAction(reason:_:)();

  return result;
}

uint64_t sub_18BE44CB0()
{
  v2 = *(v0 + 24);
  v10[0] = *(v0 + 16);
  v1 = v10[0];
  v10[1] = v2;
  v11 = *(v0 + 32);
  v3 = (type metadata accessor for SubscriptionView(0, v10) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = v4 + *(*v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);

  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t initializeWithCopy for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t closure #1 in static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for CustomHoverEffectPrimitiveViewModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static HoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v27 = a2[2];
  v28 = v8;
  v10 = a2[3];
  v29[0] = a2[4];
  *(v29 + 12) = *(a2 + 76);
  v11 = a2[1];
  v25 = *a2;
  v26 = v11;
  *&v20[32] = v27;
  *&v20[48] = v10;
  *&v20[64] = a2[4];
  v12 = *a1;
  *&v20[80] = *(a2 + 20);
  *v20 = v25;
  *&v20[16] = v9;
  outlined init with copy of _ViewInputs(&v25, v19);
  _ViewInputs.makeIndirectOutputs()();
  v30[2] = *&v20[32];
  v30[3] = *&v20[48];
  v30[4] = *&v20[64];
  v31 = *&v20[80];
  v30[0] = *v20;
  v30[1] = *&v20[16];
  outlined destroy of _ViewInputs(v30);
  *&v24[36] = v27;
  *&v24[52] = v28;
  *&v24[68] = v29[0];
  *&v24[80] = *(v29 + 12);
  *&v24[4] = v25;
  v13 = *&v19[0];
  v14 = DWORD2(v19[0]);
  v15 = HIDWORD(v19[0]);
  *&v24[20] = v26;
  v16 = AGSubgraphGetCurrent();
  if (!v16)
  {
    __break(1u);
  }

  *&v20[84] = *&v24[80];
  *&v20[36] = *&v24[32];
  *v20 = v12;
  *&v20[52] = *&v24[48];
  *&v20[68] = *&v24[64];
  *&v20[4] = *v24;
  *&v20[20] = *&v24[16];
  *&v20[104] = v13;
  *&v21 = __PAIR64__(v15, v14);
  *(&v21 + 1) = a3;
  *&v22 = a4;
  v23 = 0uLL;
  *(&v22 + 1) = v16;
  v19[6] = *&v20[96];
  v19[7] = v21;
  v19[8] = v22;
  v19[9] = 0uLL;
  v19[2] = *&v20[32];
  v19[3] = *&v20[48];
  v19[4] = *&v20[64];
  v19[5] = *&v20[80];
  v19[0] = *v20;
  v19[1] = *&v20[16];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _CustomHoverEffectInputs(&v25, v18);
  lazy protocol witness table accessor for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AnyHoverEffectContainer(v20);
  *&v19[0] = v13;
  *(&v19[0] + 1) = __PAIR64__(v15, v14);

  v18[0] = 0;
  _ViewOutputs.setIndirectDependency(_:)();

  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 12) = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>, &type metadata for EnvironmentValues.DefaultHoverEffectKey, &protocol witness table for EnvironmentValues.DefaultHoverEffectKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t AutomaticHoverEffect.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = specialized Environment.wrappedValue.getter(*v1, v4, &v9);
  if (v9 && ((*(*v9 + 96))(v8, v5), , v8[0] != 3) && !v8[0] || (specialized Environment.wrappedValue.getter(v3, v4, &v9), (result = v9) == 0))
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v9) = 0;
    type metadata accessor for _InternalHoverEffectBox<SystemCustomHoverEffect>(0);
    result = swift_allocObject();
    *(result + 16) = KeyPath;
    *(result + 72) = 0;
    *(result + 73) = 256;
  }

  *a1 = result;
  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance IgnoreColorInvertEffect(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = swift_allocObject();
    _s7SwiftUI14GraphicsFilterOWOi24_(v8);
    v4 = v8[5];
    v3[5] = v8[4];
    v3[6] = v4;
    v3[7] = v9[0];
    *(v3 + 124) = *(v9 + 12);
    v5 = v8[1];
    v3[1] = v8[0];
    v3[2] = v5;
    v6 = v8[3];
    v7 = 10;
    v3[3] = v8[2];
    v3[4] = v6;
  }

  else
  {
    v3 = 0;
    v7 = 20;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v7;
}

uint64_t sub_18BE454C0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SubscriptionView.Subscriber.updateValue()()
{
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v12 = *(v0 + 2);
  v1 = v12;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v5 = *(type metadata accessor for SubscriptionView(0, &v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);
  v12 = v1;
  v13 = v2;
  v9 = (v7 + v8) & ~v8;
  v14 = v3;
  v15 = v4;
  v10 = type metadata accessor for SubscriptionView(0, &v12);
  return (*&v0[*(v10 + 56) + v6])(&v0[v9]);
}

uint64_t assignWithCopy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  LOBYTE(v6) = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v6;
  LOBYTE(v6) = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v6;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);

  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t assignWithCopy for ToolbarItemTintColorModifier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v5 = *a1;
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t initializeWithCopy for DragGesture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 48))
  {
    v3 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v3;
    *(result + 33) = *(a2 + 33);
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 32) = v4;
    v5 = result;
    (**(v4 - 8))(result + 8, a2 + 8);
    result = v5;
    *(v5 + 48) = 0;
  }

  *(result + 49) = *(a2 + 49);
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t DragGesture.init<A>(minimumDistance:coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 49) = 15;
  *a4 = a5;
  (*(a3 + 8))(a2, a3);
  v7 = *(*(a2 - 8) + 8);

  return v7(a1, a2);
}

uint64_t assignWithCopy for NavigationLinkLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of Environment<Bool>.Content();
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t assignWithCopy for ResolvedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t SharingActivityPickerBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  MEMORY[0x18D011290](v0 + 48);
  MEMORY[0x18D011290](v0 + 56);
  v1 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v1;
  v6[8] = *(v0 + 192);
  v7 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  outlined destroy of AnyShareConfiguration?(v6, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of AnyShareConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for ViewTransform?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingActivityPickerPresentation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 148))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void destroy for AnyHoverEffectContainer(uint64_t a1)
{

  if (*(a1 + 144))
  {

    v2 = *(a1 + 152);
  }
}

uint64_t type metadata completion function for ViewThatFits(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect()
{
  result = lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect;
  if (!lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffect, &type metadata for HoverEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect;
  if (!lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HoverEffect, &type metadata for HoverEffect, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer()
{
  result = lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer;
  if (!lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyHoverEffectContainer, &unk_1EFFC5130, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer);
  }

  return result;
}

uint64_t initializeWithCopy for AnyHoverEffectContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  v7 = (a2 + 144);
  v6 = *(a2 + 144);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;
  v9 = *(a2 + 136);
  *(a1 + 136) = v9;

  v10 = v9;
  if (v6)
  {
    v11 = *(a2 + 152);
    *(a1 + 144) = v6;
    *(a1 + 152) = v11;

    v12 = v11;
  }

  else
  {
    *(a1 + 144) = *v7;
  }

  return a1;
}

double AnyHoverEffectContainer.updateValue()()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 144);
  if (v2)
  {
    v3 = *(v1 + 152);

    v4 = v3;
    Value = AGGraphGetValue();
    if ((*(*v2 + 80))(*Value))
    {
      v6 = *AGGraphGetValue();

      goto LABEL_8;
    }

    outlined consume of AnyHoverEffectContainer.ChildEffect?(v2, v3);
    v7 = *(v1 + 144);
    if (v7)
    {
      v8 = *(v1 + 152);
      v47 = *(v1 + 104);
      outlined copy of AnyHoverEffectContainer.ChildEffect?(v7, v8);

      _ViewOutputs.detachIndirectOutputs()();

      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
      outlined consume of AnyHoverEffectContainer.ChildEffect?(v7, v8);
    }
  }

  v6 = *AGGraphGetValue();
  v10 = *(v1 + 120);
  v9 = *(v1 + 128);
  v11 = AGSubgraphGetGraph();

  v12 = AGSubgraphCreate();

  AGSubgraphAddChild();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v28 = CurrentAttribute;
  AGGraphClearUpdate();
  v29 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v14 = *(v1 + 40);
  v38 = *(v1 + 24);
  v39 = v14;
  v15 = *(v1 + 72);
  v40 = *(v1 + 56);
  v41[0] = v15;
  *(v41 + 12) = *(v1 + 84);
  v36 = *(v1 + 8);
  v37 = v36;
  v16 = *(v1 + 32);
  v17 = *(v1 + 48);
  v18 = *(v1 + 64);
  v19 = *(v1 + 80);
  v35 = *(v1 + 96);
  v33 = v18;
  v34 = v19;
  v31 = v16;
  v32 = v17;
  swift_beginAccess();
  v20 = *(v38 + 48);
  v42[1] = *(v38 + 32);
  v42[2] = v20;
  v21 = *(v38 + 80);
  v42[3] = *(v38 + 64);
  v42[4] = v21;
  v42[0] = *(v38 + 16);
  type metadata accessor for HoverEffect?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v22 = swift_allocObject();
  memmove((v22 + 16), (v38 + 16), 0x50uLL);
  outlined init with copy of _CustomHoverEffectInputs(&v37, &v47);
  outlined init with copy of CachedEnvironment(v42, &v47);

  *v44 = v22;
  *&v44[8] = v31;
  *&v44[56] = v34;
  *&v44[40] = v33;
  *&v44[24] = v32;
  *&v48[16] = *&v44[16];
  *&v48[32] = *&v44[32];
  *&v44[72] = v35;
  *&v48[48] = *&v44[48];
  *&v48[60] = *&v44[60];
  v43 = v36;
  v47 = v36;
  *v48 = *v44;
  v23 = *(*v6 + 88);
  outlined init with copy of _CustomHoverEffectInputs(&v43, v45);
  v23(v30, v28, &v47, v10, v9);
  v45[2] = *&v48[16];
  v45[3] = *&v48[32];
  v46[0] = *&v48[48];
  *(v46 + 12) = *&v48[60];
  v45[0] = v47;
  v45[1] = *v48;
  outlined destroy of _CustomHoverEffectInputs(v45);
  v30[0] = *(v1 + 104);
  v30[1] = *(v1 + 112);

  _ViewOutputs.attachIndirectOutputs(to:)();

  v47 = v36;
  *v48 = v22;
  *&v48[24] = v32;
  *&v48[40] = v33;
  *&v48[56] = v34;
  *&v48[72] = v35;
  *&v48[8] = v31;
  outlined destroy of _CustomHoverEffectInputs(&v47);

  v4 = v12;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();

LABEL_8:
  *&v47 = v6;
  AGGraphSetOutputValue();
  v24 = *(v1 + 144);
  v25 = *(v1 + 152);

  v26 = v4;
  outlined consume of AnyHoverEffectContainer.ChildEffect?(v24, v25);
  *(v1 + 144) = v6;
  *(v1 + 152) = v4;

  return result;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;

    outlined copy of Environment<Color?>.Content(a1);
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Color?>.Content(a1);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F670, v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F2C0, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Selector?>.Content(a1, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F570, v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(a1, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = a1;

    outlined copy of ResolvedTableRowIDs.Storage(a1, 1);
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of ResolvedTableRowIDs.Storage(a1, 0);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F8C0, v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);
  }

  return result;
}

void type metadata accessor for _InternalHoverEffectBox<SystemCustomHoverEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _InternalHoverEffectBox<SystemCustomHoverEffect>)
  {
    v2 = lazy protocol witness table accessor for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect();
    v4 = type metadata accessor for _InternalHoverEffectBox(a1, &type metadata for SystemCustomHoverEffect, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _InternalHoverEffectBox<SystemCustomHoverEffect>);
    }
  }
}

void type metadata accessor for HoverEffect?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _AnyHoverEffectBox.makeChild(container:inputs:body:)(int a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v36 = a2[2];
  v37 = v7;
  v9 = a2[3];
  v38[0] = a2[4];
  *(v38 + 12) = *(a2 + 76);
  v10 = a2[1];
  v35[0] = *a2;
  v35[1] = v10;
  v32 = v36;
  v33 = v9;
  v34[0] = a2[4];
  *(v34 + 12) = *(a2 + 76);
  v11 = *v4;
  v30 = v35[0];
  v31 = v8;
  v12 = *(v11 + 112);
  outlined init with copy of _CustomHoverEffectInputs(v35, v43);
  _GraphInputs.pushStableType(_:)();
  v13 = *(v11 + 120);
  LODWORD(v43[0]) = a1;
  v22 = v12;
  v23 = type metadata accessor for AnyHoverEffectChild(0, v12, v13, v14);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyHoverEffectChild<A>, v23);
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v21, v23, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  _GraphValue.init(_:)();
  v39[2] = v32;
  v39[3] = v33;
  v40[0] = v34[0];
  *(v40 + 12) = *(v34 + 12);
  v39[0] = v30;
  v39[1] = v31;
  v27 = v32;
  v28 = v33;
  v29[0] = v34[0];
  *(v29 + 12) = *(v34 + 12);
  v25 = v30;
  v26 = v31;
  v17 = *(v13 + 32);
  outlined init with copy of _CustomHoverEffectInputs(v39, v43);
  v17(&v20, &v25, a3, a4, v12, v13);
  v41[2] = v27;
  v41[3] = v28;
  v42[0] = v29[0];
  *(v42 + 12) = *(v29 + 12);
  v41[0] = v25;
  v41[1] = v26;
  outlined destroy of _CustomHoverEffectInputs(v41);
  v43[2] = v32;
  v43[3] = v33;
  v44[0] = v34[0];
  *(v44 + 12) = *(v34 + 12);
  v43[0] = v30;
  v43[1] = v31;
  return outlined destroy of _CustomHoverEffectInputs(v43);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnyHoverEffectChild<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyHoverEffectChild<A>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void outlined consume of AnyHoverEffectContainer.ChildEffect?(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ViewThatFits<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for ViewThatFits<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t static ViewThatFits._makeView(view:inputs:)(int *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[3];
  v16 = a2[2];
  v17 = v7;
  v18 = a2[4];
  v19 = *(a2 + 20);
  v8 = a2[1];
  v14 = *a2;
  v15 = v8;
  v9 = type metadata accessor for _VariadicView.Tree();
  v13 = v6;
  type metadata accessor for ViewThatFits(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12[0] = &protocol witness table for _SizeFittingRoot;
  v12[1] = a4;
  swift_getWitnessTable(MEMORY[0x1E697E308], v9, v12);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static ViewThatFits._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for ViewThatFits(0, a2, a3, a4);
  v9 = type metadata accessor for _VariadicView.Tree();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v8, v9, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v10;
}

double static _SizeFittingRoot._makeView(root:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, void *, __int128 *)@<X2>, double *a4@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v7 = a2[3];
  v43 = a2[2];
  v44 = v7;
  v45 = a2[4];
  v8 = a2[1];
  v41 = *a2;
  v42 = v8;
  v49 = v41;
  v50 = v6;
  v9 = *a1;
  v46 = *(a2 + 20);
  v51 = v43;
  outlined init with copy of _GraphInputs(&v41, v40);
  v10 = _ViewListInputs.init(_:)();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v49 = v41;
  v50 = v42;
  a3(v47, v10, &v49);
  v11 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v47);
  v12 = BYTE4(v43);
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v34 = v41;
  v35 = v42;
  DWORD1(v36) = DWORD1(v43) & 0xFFFFFFFD;
  outlined init with copy of _ViewInputs(&v41, &v49);
  PreferenceKeys.remove(_:)();
  v47[2] = v36;
  v47[3] = v37;
  v47[4] = v38;
  v48 = v39;
  v47[0] = v34;
  v47[1] = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  outlined init with copy of _ViewInputs(v47, &v49);
  _ViewInputs.makeIndirectOutputs()();
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v49 = v34;
  v50 = v35;
  outlined destroy of _ViewInputs(&v49);
  v13 = v24;
  v14 = LODWORD(v25);
  v15 = HIDWORD(v25);
  type metadata accessor for SizeFittingState();
  v16 = swift_allocObject();
  v17 = AGSubgraphGetCurrent();
  if (!v17)
  {
    __break(1u);
  }

  v18 = v44;
  *(v16 + 56) = v43;
  *(v16 + 72) = v18;
  *(v16 + 88) = v45;
  v19 = v42;
  *(v16 + 24) = v41;
  v20 = MEMORY[0x1E69E7CC8];
  *(v16 + 128) = v17;
  *(v16 + 136) = v20;
  *(v16 + 144) = 0;
  *(v16 + 16) = v9;
  *(v16 + 20) = v11;
  *(v16 + 104) = v46;
  *(v16 + 40) = v19;
  *(v16 + 112) = v13;
  *(v16 + 120) = v14;
  *(v16 + 124) = v15;
  *&v26[0] = v16;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v41, &v28);
  lazy protocol witness table accessor for type SizeFittingMux and conformance SizeFittingMux();

  Attribute.init<A>(body:value:flags:update:)();

  *&v28 = v13;
  *(&v28 + 1) = __PAIR64__(v15, v14);

  LOBYTE(v26[0]) = 0;
  _ViewOutputs.setIndirectDependency(_:)();

  if ((v12 & 2) != 0)
  {
    *&v28 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer();

    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v28) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.getter();
  v21 = v28;
  if (v28)
  {
    v22 = *(&v28 + 1);
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    if ((*(v22 + 8))(&v28, v21, v22))
    {
      v26[2] = v43;
      v26[3] = v44;
      v26[4] = v45;
      v27 = v46;
      v26[0] = v41;
      v26[1] = v42;
      (*(v22 + 16))(v26, v16, &v24, v21, v22);
    }
  }

  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  outlined destroy of _ViewInputs(&v28);
  outlined destroy of _ViewListInputs(v40);
  *a4 = v24;
  result = v25;
  a4[1] = v25;
  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingMux and conformance SizeFittingMux()
{
  result = lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux;
  if (!lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SizeFittingMux, &unk_1EFFD3590, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer()
{
  result = lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer;
  if (!lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SizeFittingLayoutComputer, &unk_1EFFD3568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer;
  if (!lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SizeFittingLayoutComputer, &unk_1EFFD3568, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer);
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697E090], MEMORY[0x1E697E088], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  }

  return result;
}

BOOL _SizeFittingRoot.size(_:fits:)(uint64_t a1, char a2, __n128 a3, double a4)
{
  if (a2)
  {
    v6 = a3.n128_f64[0];
    v7 = COERCE_DOUBLE(_ProposedSize.width.getter());
    if ((v8 & 1) == 0 && v7 < v6)
    {
      return 0;
    }
  }

  if ((a2 & 2) == 0)
  {
    return 1;
  }

  v10 = COERCE_DOUBLE(_ProposedSize.height.getter());
  if (v11)
  {
    v10 = INFINITY;
  }

  return v10 >= a4;
}

uint64_t closure #1 in SizeFittingState.applyChildren(selectLast:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *, BOOL))
{
  v9 = *(a1 + 8);
  if (v9 < 0)
  {
    goto LABEL_65;
  }

  if (!v9)
  {
    return 1;
  }

  v10 = a5;
  v12 = a2;
  v7 = 0;
  v105 = a3 - 1;
  v99 = *(a1 + 8);
  while (v7 != 0x80000000)
  {
    v6 = *(a1 + 20);
    v13 = *(a1 + 24);
    v14 = *(v13 + 16);
    swift_bridgeObjectRetain_n();
    if (v14)
    {
      v8 = *(v13 + 32);
      v15 = *(v13 + 52);

      swift_bridgeObjectRelease_n();
      if (v15)
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v6;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v8 = 0;
    }

    v16 = *v12;
    swift_beginAccess();
    v17 = *(a4 + 136);
    if (*(v17 + 16))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
      if (v19)
      {
        v20 = (*(v17 + 56) + 48 * v18);
        v22 = *v20;
        v21 = v20[1];
        *&v122[9] = *(v20 + 25);
        v121 = v22;
        *v122 = v21;
        v23 = v122[24];
        v107 = *v20;
        v103 = v21;
        v101 = *&v122[8];
        swift_endAccess();
        v24 = v23;
        if ((v23 & 1) != 0 || *(v10 + 8) == 1)
        {
          v25 = v16;
          v26 = *(a4 + 144);
          if (*&v122[16] == v26)
          {
            goto LABEL_67;
          }

          v114 = v107;
          *v115 = v103;
          *&v115[8] = v101;
          *&v115[16] = v26;
          *&v115[20] = v25;
          v98 = v24;
          v115[24] = v24;
          swift_beginAccess();
          outlined init with copy of SizeFittingState.Child(&v121, &v126);

          outlined init with copy of SizeFittingState.Child(&v114, &v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = *(a4 + 136);
          v28 = v109;
          *(a4 + 136) = 0x8000000000000000;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
          v31 = v28[2];
          v32 = (v30 & 1) == 0;
          v33 = __OFADD__(v31, v32);
          v34 = v31 + v32;
          if (v33)
          {
            goto LABEL_62;
          }

          v35 = v30;
          if (v28[3] >= v34)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_36;
            }

            v86 = v29;
            specialized _NativeDictionary.copy()();
            v29 = v86;
            v10 = a5;
            if ((v35 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_37:
            v71 = v109;
            v72 = (v109[7] + 48 * v29);
            v73 = *(v72 + 25);
            v74 = v72[1];
            v126 = *v72;
            *v127 = v74;
            *&v127[9] = v73;
            v75 = v114;
            v76 = *v115;
            *(v72 + 25) = *&v115[9];
            *v72 = v75;
            v72[1] = v76;
            outlined destroy of SizeFittingState.Child(&v126);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_66;
            }

LABEL_36:
            v10 = a5;
            if (v35)
            {
              goto LABEL_37;
            }

LABEL_48:
            v71 = v109;
            v109[(v29 >> 6) + 8] |= 1 << v29;
            v87 = v71[6] + 16 * v29;
            *v87 = v7;
            *(v87 + 4) = v6;
            *(v87 + 8) = v8;
            v88 = (v71[7] + 48 * v29);
            v89 = *&v115[9];
            v90 = *v115;
            *v88 = v114;
            v88[1] = v90;
            *(v88 + 25) = v89;
            v91 = v71[2];
            v33 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v33)
            {
              goto LABEL_64;
            }

            v71[2] = v92;
          }

          LODWORD(v6) = v101;
          *(a4 + 136) = v71;
          swift_endAccess();
          v12 = a2;
          if (*(v10 + 8))
          {
            *&v110 = v103;
            *(&v110 + 1) = v101;

            v93 = a6(&v110, v25 == v105);

            v126 = v107;
            *v127 = v103;
            *&v127[8] = v101;
            *&v127[16] = v26;
            v16 = v25;
            *&v127[20] = v25;
            v127[24] = v98;
            outlined destroy of SizeFittingState.Child(&v126);
            v9 = v99;
            v10 = a5;
            if (v93)
            {
              *a5 = *a2;
              *(a5 + 8) = 0;
            }

            goto LABEL_55;
          }

          v126 = v107;
          *v127 = v103;
          *&v127[8] = v101;
          *&v127[16] = v26;
          v16 = v25;
          *&v127[20] = v25;
          v127[24] = v98;
          v77 = &v126;
        }

        else
        {
          v114 = v107;
          *v115 = v103;
          *&v115[8] = v101;
          v115[24] = v23;
          outlined init with copy of SizeFittingState.Child(&v121, &v126);
          v77 = &v114;
        }

        outlined destroy of SizeFittingState.Child(v77);

        v9 = v99;
        goto LABEL_55;
      }
    }

    swift_endAccess();
    if ((*(v10 + 8) & 1) == 0)
    {

      goto LABEL_55;
    }

    v104 = v16;
    v37 = AGSubgraphGetGraph();
    v38 = AGSubgraphCreate();

    AGGraphClearUpdate();
    v102 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v39 = *(a4 + 56);
    *v122 = *(a4 + 40);
    *&v122[16] = v39;
    v40 = *(a4 + 88);
    v123 = *(a4 + 72);
    v124 = v40;
    v125 = *(a4 + 104);
    v41 = *v122;
    v120 = *(a4 + 24);
    v121 = v120;
    v42 = *(a4 + 48);
    v43 = *(a4 + 64);
    v44 = *(a4 + 80);
    *(v119 + 12) = *(a4 + 92);
    v118 = v43;
    v119[0] = v44;
    v117 = v42;
    swift_beginAccess();
    v45 = v41[3];
    *v127 = v41[2];
    *&v127[16] = v45;
    v46 = v41[5];
    v128 = v41[4];
    v129 = v46;
    v126 = v41[1];
    type metadata accessor for MutableBox<CachedEnvironment>();
    v47 = swift_allocObject();
    memmove((v47 + 16), v41 + 1, 0x50uLL);
    outlined init with copy of _ViewInputs(&v121, &v114);
    outlined init with copy of CachedEnvironment(&v126, &v114);

    outlined init with copy of _ViewList_SubgraphElements(a1 + 32, &v110);
    v109 = v7;
    *&v114 = *&v111[24];
    v48 = 0;
    v49 = 0;
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v50 = *&v111[8];
      v51 = *&v111[16];
      __swift_project_boxed_opaque_existential_1(&v110, *&v111[8]);
      v114 = v120;
      *v115 = v47;
      *&v115[8] = v117;
      *&v115[24] = v118;
      v116[0] = v119[0];
      *(v116 + 12) = *(v119 + 12);
      (*(v51 + 16))(&v107, &v109, &v114, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:), 0, v50, v51);
      v48 = *(&v107 + 1);
      v49 = v107;
    }

    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_60;
    }

    outlined destroy of _ViewList_SubgraphElements(&v110);
    if (v49)
    {
      v112 = v49;
      v52 = HIDWORD(v48);
      v113 = v48;
    }

    else
    {
      _ViewOutputs.init()();
      v49 = v112;
      LODWORD(v48) = v113;
      LODWORD(v52) = HIDWORD(v113);
    }

    *&v107 = *(a1 + 72);

    v53 = _ViewList_SublistSubgraphStorage.retain()();

    v114 = v120;
    *v115 = v47;
    *&v115[8] = v117;
    *&v115[24] = v118;
    v116[0] = v119[0];
    *(v116 + 12) = *(v119 + 12);
    outlined destroy of _ViewInputs(&v114);
    v54 = *(a4 + 144);
    v55 = v38;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *&v110 = v55;
    *(&v110 + 1) = v53;
    *v111 = v49;
    *&v111[8] = v48;
    *&v111[12] = v52;
    *&v111[16] = v54;
    *&v111[20] = v104;
    v111[24] = 0;
    swift_beginAccess();

    outlined init with copy of SizeFittingState.Child(&v110, &v107);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a4 + 136);
    *(a4 + 136) = 0x8000000000000000;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
    v60 = v57[2];
    v61 = (v59 & 1) == 0;
    v33 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v33)
    {
      goto LABEL_61;
    }

    v63 = v59;
    if (v57[3] >= v62)
    {
      v9 = v99;
      v10 = a5;
      if (v56)
      {
        if ((v59 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v78 = v58;
        specialized _NativeDictionary.copy()();
        v58 = v78;
        if ((v63 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v56);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
      v9 = v99;
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_66;
      }

      v10 = a5;
      if ((v63 & 1) == 0)
      {
LABEL_40:
        v65 = v57;
        v57[(v58 >> 6) + 8] |= 1 << v58;
        v79 = v57[6] + 16 * v58;
        *v79 = v7;
        *(v79 + 4) = v6;
        *(v79 + 8) = v8;
        v80 = (v57[7] + 48 * v58);
        v81 = *&v111[9];
        v82 = *v111;
        *v80 = v110;
        v80[1] = v82;
        *(v80 + 25) = v81;
        v83 = v57[2];
        v33 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v33)
        {
          goto LABEL_63;
        }

        v57[2] = v84;
        goto LABEL_42;
      }
    }

    v65 = v57;
    v66 = (v57[7] + 48 * v58);
    v67 = *(v66 + 25);
    v68 = v66[1];
    v107 = *v66;
    v108[0] = v68;
    *(v108 + 9) = v67;
    v69 = v110;
    v70 = *v111;
    *(v66 + 25) = *&v111[9];
    *v66 = v69;
    v66[1] = v70;
    outlined destroy of SizeFittingState.Child(&v107);

LABEL_42:
    *(a4 + 136) = v65;
    swift_endAccess();
    if (*(v10 + 8) == 1)
    {
      v107 = *v111;

      v85 = a6(&v107, v104 == v105);

      outlined destroy of SizeFittingState.Child(&v110);

      if (v85)
      {
        v12 = a2;
        *v10 = *a2;
        *(v10 + 8) = 0;
        v16 = v104;
        goto LABEL_55;
      }
    }

    else
    {

      outlined destroy of SizeFittingState.Child(&v110);
    }

    v12 = a2;
    v16 = v104;
LABEL_55:
    if (v16 != v105)
    {
      v7 = (v7 + 1);
      ++*v12;
      if (v9 != v7)
      {
        continue;
      }
    }

    return v16 != v105;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_67:
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  outlined init with copy of SizeFittingState.Child(&v121, &v114);
  _StringGuts.grow(_:)(33);

  *&v114 = 0xD00000000000001FLL;
  *(&v114 + 1) = 0x800000018CD4E8E0;
  *&v126 = __PAIR64__(v6, v7);
  *(&v126 + 1) = v8;
  v95 = _ViewList_ID.Canonical.description.getter();
  MEMORY[0x18D00C9B0](v95);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t destroy for SizeFittingState.Child(id *a1)
{
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, MEMORY[0x1E697E088], &type metadata for SizeFittingState.Child);
  v44 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      if (v44)
      {
        v25 = v24[1];
        v50 = *v24;
        v51 = v25;
        v26 = (v23 + 48 * v22);
        v28 = *v26;
        v27 = v26[1];
        v29 = v26[2];
        v45 = *(v26 + 3);
        v46 = *(v26 + 40);
      }

      else
      {
        v30 = v24[1];
        v50 = *v24;
        v51 = v30;
        v31 = (v23 + 48 * v22);
        v32 = *v31;
        v33 = v31[1];
        *&v48[9] = *(v31 + 25);
        v47 = v32;
        *v48 = v33;
        v46 = v48[24];
        v27 = *(&v32 + 1);
        v29 = v33;
        v45 = *&v48[8];
        v28 = v32;

        outlined init with copy of SizeFittingState.Child(&v47, v49);
      }

      Hasher.init(_seed:)();
      _ViewList_ID.Canonical.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = -1 << *(v7 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      v17 = v51;
      *v16 = v50;
      v16[1] = v17;
      v18 = *(v7 + 56) + 48 * v15;
      *v18 = v28;
      *(v18 + 8) = v27;
      *(v18 + 16) = v29;
      *(v18 + 24) = v45;
      *(v18 + 40) = v46;
      ++*(v7 + 16);
      v5 = v43;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v44)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<UInt, ObjectIdentifier>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<String, SceneStorageValues.Entry>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, AlertStorage>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, MEMORY[0x1E697DFC0], &type metadata for AlertStorage);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v45 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = (v21 + 248 * v20);
      if (v46)
      {
        v50 = *(v23 + 2);
        v48 = v23[24];
        v49 = *v23;
        v51 = *(v23 + 28);
        v55 = *(v23 + 6);
        v52 = *(v23 + 7);
        v53 = *(v23 + 1);
        v54 = v23[64];
        v56 = v23[65];
        v57 = *(v23 + 9);
        v58 = *(v23 + 10);
        v59 = *(v23 + 11);
        v47 = v23[96];
        v64 = *(v23 + 104);
        v65 = *(v23 + 120);
        v62 = *(v23 + 18);
        v63 = *(v23 + 17);
        v60 = v23[152];
        v61 = v23[97];
        v68 = *(v23 + 12);
        v69 = *(v23 + 13);
        v70 = *(v23 + 14);
        v71 = *(v23 + 30);
        v66 = *(v23 + 10);
        v67 = *(v23 + 11);
      }

      else
      {
        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        v26 = *v23;
        *&v72[16] = *(v23 + 1);
        *&v72[32] = v25;
        *v72 = v26;
        v27 = *(v23 + 7);
        v29 = *(v23 + 4);
        v28 = *(v23 + 5);
        *v73 = *(v23 + 6);
        *&v73[16] = v27;
        *&v72[64] = v29;
        *&v72[80] = v28;
        v30 = *(v23 + 11);
        v32 = *(v23 + 8);
        v31 = *(v23 + 9);
        v75 = *(v23 + 10);
        v76 = v30;
        *&v73[32] = v32;
        v74 = v31;
        v34 = *(v23 + 13);
        v33 = *(v23 + 14);
        v35 = *(v23 + 12);
        v80 = *(v23 + 30);
        v78 = v34;
        v79 = v33;
        v77 = v35;
        *&v72[48] = v24;
        v64 = *&v73[8];
        v65 = *&v73[24];
        v62 = v74;
        v63 = *(&v32 + 1);
        v60 = BYTE8(v74);
        v61 = v73[1];
        v58 = *&v72[80];
        v59 = *&v72[88];
        v57 = *&v72[72];
        v56 = v72[65];
        v54 = v72[64];
        v55 = v24;
        v51 = *&v72[28];
        v52 = *(&v24 + 1);
        v53 = *&v72[8];
        v50 = *&v72[16];
        v47 = v73[0];
        v48 = v72[24];
        v49 = v72[0];
        outlined init with copy of AlertStorage(v72, &v66);
        v68 = v77;
        v69 = v78;
        v70 = v79;
        v71 = v80;
        v66 = v75;
        v67 = v76;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      v36 = Hasher._finalize()();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&v72[39] = v68;
      *&v72[55] = v69;
      *&v72[71] = v70;
      *&v72[87] = v71;
      *&v72[7] = v66;
      *&v72[23] = v67;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v22;
      v16 = *(v7 + 56) + 248 * v15;
      *v16 = v49;
      *(v16 + 8) = v53;
      *(v16 + 16) = v50;
      *(v16 + 24) = v48;
      *(v16 + 28) = v51;
      *(v16 + 48) = v55;
      *(v16 + 56) = v52;
      *(v16 + 64) = v54;
      *(v16 + 65) = v56;
      *(v16 + 72) = v57;
      *(v16 + 80) = v58;
      *(v16 + 88) = v59;
      *(v16 + 96) = v47;
      *(v16 + 97) = v61;
      *(v16 + 120) = v65;
      *(v16 + 104) = v64;
      *(v16 + 136) = v63;
      *(v16 + 144) = v62;
      *(v16 + 152) = v60;
      *(v16 + 185) = *&v72[32];
      *(v16 + 201) = *&v72[48];
      *(v16 + 217) = *&v72[64];
      *(v16 + 232) = *&v72[79];
      *(v16 + 153) = *v72;
      *(v16 + 169) = *&v72[16];
      ++*(v7 + 16);
      v5 = v45;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, Transaction>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0], MEMORY[0x1E697DD78]);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<VerticalEdge, Double>, lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge, MEMORY[0x1E697DFA8], MEMORY[0x1E69E63B0]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NavigationContentAbstractPosition, NavigationStackHostingController<AnyView>>(0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v25 = v24;
      }

      Hasher.init(_seed:)();
      if (v22 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v22);
      }

      MEMORY[0x18D00F6F0](v23);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v31 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      Hasher.init(_seed:)();
      SensoryFeedback.FeedbackType.hash(into:)(v32, v31, *(&v31 + 1));
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationState.SelectionSeed>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationState.SelectionSeed);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + 4 * v20);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      MEMORY[0x18D00F6F0](v25);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 4 * v15) = v37;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationColumnState>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key, &type metadata for NavigationState.StackContent.Key, &type metadata for NavigationColumnState);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = (v21 + 360 * v20);
      if (v37)
      {
        memcpy(__src, v26, 0x163uLL);
      }

      else
      {
        outlined init with copy of NavigationColumnState(v26, __src);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      MEMORY[0x18D00F6F0](v25);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      memcpy((*(v7 + 56) + 360 * v15), __src, 0x163uLL);
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UISplitViewControllerColumn, NavigationStackCoordinator<SplitColumnNavigationStrategy>>(0);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, [Any]>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = MEMORY[0x18D00F6C0](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ToolbarStorage.Entry(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>(0);
  v41 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v40 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v28, v42, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v28, v42, type metadata accessor for ToolbarStorage.Entry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      outlined init with take of HashableCommandGroupPlacementWrapper(v42, *(v9 + 56) + v27 * v17, type metadata accessor for ToolbarStorage.Entry);
      ++*(v9 + 16);
      v7 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

{
  v3 = a2;
  v4 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, &type metadata for PositionedNavigationDestination.Storage.SeededRequest);
  v52 = v3;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v51 = v4;
    v7 = 0;
    v8 = (v4 + 64);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 64;
    while (v11)
    {
      v25 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v28 = v25 | (v7 << 6);
      v29 = *(v4 + 56);
      v30 = *(v4 + 48) + 48 * v28;
      v31 = *(v30 + 8);
      v55 = *v30;
      v56 = *(v30 + 16);
      v32 = *(v30 + 24);
      v54 = *(v30 + 32);
      v53 = *(v30 + 40);
      v33 = (v29 + 176 * v28);
      if (v52)
      {
        v34 = *v33;
        v35 = v33[2];
        v58 = v33[1];
        v59 = v35;
        v57 = v34;
        v36 = v33[3];
        v37 = v33[4];
        v38 = v33[6];
        v62 = v33[5];
        v63 = v38;
        v61 = v37;
        v60 = v36;
        v39 = v33[7];
        v40 = v33[8];
        v41 = v33[9];
        *(v66 + 12) = *(v33 + 156);
        v65 = v40;
        v66[0] = v41;
        v64 = v39;
      }

      else
      {
        outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(v33, &v57);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v55);
      MEMORY[0x18D00F6F0](v31);
      MEMORY[0x18D00F6F0](v56);
      MEMORY[0x18D00F6F0](v32);
      MEMORY[0x18D00F6F0](v54);
      Hasher._combine(_:)(v53);
      v42 = Hasher._finalize()();
      v43 = -1 << *(v6 + 32);
      v44 = v42 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v13 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v13 + 8 * v45);
          if (v49 != -1)
          {
            v14 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v44) & ~*(v13 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 48 * v14;
      *v15 = v55;
      *(v15 + 8) = v31;
      *(v15 + 16) = v56;
      *(v15 + 24) = v32;
      *(v15 + 32) = v54;
      *(v15 + 40) = v53;
      v16 = (*(v6 + 56) + 176 * v14);
      v17 = v57;
      v18 = v59;
      v16[1] = v58;
      v16[2] = v18;
      *v16 = v17;
      v19 = v60;
      v20 = v61;
      v21 = v63;
      v16[5] = v62;
      v16[6] = v21;
      v16[3] = v19;
      v16[4] = v20;
      v22 = v64;
      v23 = v65;
      v24 = v66[0];
      *(v16 + 156) = *(v66 + 12);
      v16[8] = v23;
      v16[9] = v24;
      v16[7] = v22;
      ++*(v6 + 16);
      v4 = v51;
    }

    v26 = v7;
    while (1)
    {
      v7 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v27 = v8[v7];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v11 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if (v52)
    {
      v50 = 1 << *(v4 + 32);
      if (v50 >= 64)
      {
        bzero(v8, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v8 = -1 << v50;
      }

      *(v4 + 16) = 0;
    }
  }

  *v2 = v6;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, ConfirmationDialog>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, MEMORY[0x1E697DFC0], &type metadata for ConfirmationDialog);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(v5 + 56) + 184 * v19;
      if (v4)
      {
        outlined init with take of ConfirmationDialog(v21, v31);
      }

      else
      {
        outlined init with copy of ConfirmationDialog(v21, v31);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      outlined init with take of ConfirmationDialog(v31, *(v7 + 56) + 184 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationState.StackContent.PositionedView>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn, &type metadata for NavigationSplitColumn, &type metadata for NavigationState.StackContent.PositionedView);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 96 * v24);
      if (v4)
      {
        v27 = v26[1];
        v40 = *v26;
        v41 = v27;
        v28 = v26[2];
        v29 = v26[3];
        v30 = v26[4];
        *(v44 + 9) = *(v26 + 73);
        v44[0] = v30;
        v42 = v28;
        v43 = v29;
      }

      else
      {
        outlined init with copy of NavigationState.StackContent.PositionedView(v26, &v40);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v25);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v25;
      v16 = (*(v7 + 56) + 96 * v15);
      v17 = v41;
      *v16 = v40;
      v16[1] = v17;
      v18 = v42;
      v19 = v43;
      v20 = v44[0];
      *(v16 + 73) = *(v44 + 9);
      v16[3] = v19;
      v16[4] = v20;
      v16[2] = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, VersionSeed>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, MEMORY[0x1E697DD88]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
    v8 = 0;
    v38 = (v5 + 64);
    v39 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v37 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v40 = (v11 - 1) & v11;
LABEL_15:
      v18 = v15 | (v8 << 6);
      v19 = *(v5 + 56);
      v20 = *(v5 + 48) + 48 * v18;
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);
      v41 = *(v19 + 4 * v18);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      MEMORY[0x18D00F6F0](v21);
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      MEMORY[0x18D00F6F0](v25);
      Hasher._combine(_:)(v26);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 48 * v13;
      *v14 = v22;
      *(v14 + 8) = v21;
      *(v14 + 16) = v23;
      *(v14 + 24) = v24;
      *(v14 + 32) = v25;
      *(v14 + 40) = v26;
      *(*(v7 + 56) + 4 * v13) = v41;
      ++*(v7 + 16);
      v5 = v39;
      v11 = v40;
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v37)
      {
        break;
      }

      v17 = v38[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v38, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, PlatformBarUpdates>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, &type metadata for PlatformBarUpdates);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
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
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v21 = v8;
        while (1)
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v8 >= v13)
          {
            break;
          }

          v22 = v9[v8];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v12 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if (v41)
        {
          v39 = 1 << *(v5 + 32);
          if (v39 >= 64)
          {
            bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v39;
          }

          *(v5 + 16) = 0;
        }

        v3 = v40;
        goto LABEL_51;
      }

      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v41)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v49 = *(v24 + 32);
        v47 = v25;
        v48 = v26;
      }

      else
      {
        outlined init with copy of ToolbarPlacement.Role(v24, &v47);
      }

      v27 = (*(v5 + 56) + 2 * v23);
      v28 = v27[1];
      v29 = *v27;
      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(&v47, &v44);
      if (*(&v45 + 1) <= 2)
      {
        if (*(&v45 + 1))
        {
          if (*(&v45 + 1) == 1)
          {
            v30 = 1;
          }

          else
          {
            if (*(&v45 + 1) != 2)
            {
              goto LABEL_30;
            }

            v30 = 2;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else if (*(&v45 + 1) > 4)
      {
        if (*(&v45 + 1) == 5)
        {
          v30 = 5;
        }

        else
        {
          if (*(&v45 + 1) != 6)
          {
LABEL_30:
            v42[0] = v44;
            v42[1] = v45;
            v43 = v46;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v42);
            goto LABEL_35;
          }

          v30 = 7;
        }
      }

      else if (*(&v45 + 1) == 3)
      {
        v30 = 3;
      }

      else
      {
        v30 = 4;
      }

      MEMORY[0x18D00F6F0](v30);
LABEL_35:
      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_53:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v47;
      v18 = v48;
      *(v16 + 32) = v49;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 2 * v15);
      *v19 = v29;
      v19[1] = v28;
      ++*(v7 + 16);
    }
  }

LABEL_51:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, Toolbar.VendedItem>();
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v40 = *(v26 + 8);
      if ((v39 & 1) == 0)
      {
        v28 = v27;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        outlined init with take of Any((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v37);
        outlined init with copy of Any(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = MEMORY[0x18D00F6C0](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = MEMORY[0x18D00F6C0](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, NavigationListState.Selection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, &type metadata for NavigationListState.Selection);
  v48 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v47 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
LABEL_15:
      v25 = v21 | (v8 << 6);
      v26 = *(v5 + 56);
      v27 = *(v5 + 48) + 48 * v25;
      v28 = *v27;
      v52 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      v51 = *(v27 + 32);
      v31 = v26 + 72 * v25;
      v49 = *(v27 + 40);
      v50 = v22;
      if (v48)
      {
        v53 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 32);
        v34 = *(v31 + 48);
        v57 = *(v31 + 64);
        v55 = v33;
        v56 = v34;
        v54 = v32;
      }

      else
      {
        outlined init with copy of NavigationListState.Selection(v31, &v53);
      }

      Hasher.init(_seed:)();
      v35 = v28;
      MEMORY[0x18D00F6F0](v28);
      v36 = v29;
      if (v29 == 6)
      {
        Hasher._combine(_:)(0);
        v37 = v30;
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v52);
        MEMORY[0x18D00F6F0](v29);
        v37 = v30;
        MEMORY[0x18D00F6F0](v30);
      }

      Hasher._combine(_:)(v51);
      v38 = Hasher._finalize()();
      v39 = -1 << *(v7 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v14 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v14 + 8 * v41);
          if (v45 != -1)
          {
            v15 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v40) & ~*(v14 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 48 * v15;
      *v16 = v35;
      *(v16 + 8) = v52;
      *(v16 + 16) = v36;
      *(v16 + 24) = v37;
      *(v16 + 32) = v51;
      v12 = v50;
      *(v16 + 40) = v49;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v53;
      v18 = v54;
      v19 = v55;
      v20 = v56;
      *(v17 + 64) = v57;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
      v5 = v47;
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v2;
    if (v46 >= 64)
    {
      bzero(v9, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, AnyListSelection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, &type metadata for AnyListSelection);
  v48 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v47 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
LABEL_15:
      v25 = v21 | (v8 << 6);
      v26 = *(v5 + 56);
      v27 = *(v5 + 48) + 48 * v25;
      v28 = *v27;
      v52 = *(v27 + 8);
      v29 = *(v27 + 16);
      v30 = *(v27 + 24);
      v31 = *(v27 + 32);
      v32 = v26 + 40 * v25;
      v49 = *(v27 + 40);
      v50 = v22;
      if (v48)
      {
        v33 = *v32;
        v34 = *(v32 + 16);
        v55 = *(v32 + 32);
        v53 = v33;
        v54 = v34;
      }

      else
      {
        outlined init with copy of AnyListSelection(v32, &v53);
      }

      Hasher.init(_seed:)();
      v51 = v28;
      MEMORY[0x18D00F6F0](v28);
      v35 = v29;
      if (v29 == 6)
      {
        Hasher._combine(_:)(0);
        v36 = v30;
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v52);
        MEMORY[0x18D00F6F0](v29);
        v36 = v30;
        MEMORY[0x18D00F6F0](v30);
      }

      v37 = v31;
      Hasher._combine(_:)(v31);
      v38 = Hasher._finalize()();
      v39 = -1 << *(v7 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v14 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v16 = v51;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v14 + 8 * v41);
          if (v45 != -1)
          {
            v15 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v40) & ~*(v14 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v16 = v51;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 48 * v15;
      *v17 = v16;
      *(v17 + 8) = v52;
      *(v17 + 16) = v35;
      *(v17 + 24) = v36;
      *(v17 + 32) = v37;
      v12 = v50;
      *(v17 + 40) = v49;
      v18 = *(v7 + 56) + 40 * v15;
      v19 = v53;
      v20 = v54;
      *(v18 + 32) = v55;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v7 + 16);
      v5 = v47;
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v2;
    if (v46 >= 64)
    {
      bzero(v9, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        outlined init with take of Any(v22, v36);
      }

      else
      {
        outlined init with copy of Any(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      outlined init with take of Any(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  type metadata accessor for _DictionaryStorage<UUID, (_:)>(0);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
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
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v36)(v43, v25, v44);
        v41 = *(*(v9 + 56) + 16 * v23);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v41;
      ++*(v11 + 16);
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

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<GridIndex, Int>, lazy protocol witness table accessor for type GridIndex and conformance GridIndex, &type metadata for GridIndex, MEMORY[0x1E69E6530]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v6 + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      *&v7 = *(*(v5 + 48) + 8 * v20);
      v32 = v7;
      v21 = *(*(v5 + 56) + 8 * v20);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v32);
      Hasher._combine(_:)(DWORD1(v32));
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(&v7 + 1) = *(&v32 + 1);
      *(*(v8 + 48) + 8 * v16) = v32;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v8;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>, outlined init with take of Any);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, DisplayList>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity, MEMORY[0x1E697FD60], MEMORY[0x1E697DCB0]);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v36 = *(v22 + 12);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 12) = v36;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Anchor<CGRect?>(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v65 - v9;
  v10 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v2;
  type metadata accessor for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>(0);
  v75 = v4;
  v13 = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v70 = (v6 + 48);
    v71 = v5;
    v67 = (v6 + 32);
    v68 = v12;
    v65 = v2;
    v66 = (v6 + 8);
    v21 = v13 + 64;
    v22 = v12;
    v23 = v76;
    while (v19)
    {
      v35 = __clz(__rbit64(v19));
      v36 = (v19 - 1) & v19;
LABEL_15:
      v39 = v35 | (v15 << 6);
      v77 = v36;
      v40 = *(v72 + 72);
      v41 = *(v22 + 48) + v40 * v39;
      if (v75)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v41, v23, type metadata accessor for DisplayList.HostedViewState.Key);
        v42 = *(v22 + 56) + 184 * v39;
        v43 = *(v42 + 128);
        v44 = *(v42 + 144);
        v45 = *(v42 + 160);
        v89 = *(v42 + 176);
        v87 = v44;
        v88 = v45;
        v86 = v43;
        v46 = *(v42 + 64);
        v47 = *(v42 + 80);
        v48 = *(v42 + 112);
        v84 = *(v42 + 96);
        v85 = v48;
        v82 = v46;
        v83 = v47;
        v50 = *v42;
        v49 = *(v42 + 16);
        v51 = *(v42 + 48);
        v80 = *(v42 + 32);
        v81 = v51;
        v78 = v50;
        v79 = v49;
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v41, v23, type metadata accessor for DisplayList.HostedViewState.Key);
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v22 + 56) + 184 * v39, &v78);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(*v23);
      Hasher._combine(_:)(v23[1]);
      v52 = v74;
      _s10Foundation4UUIDVSgWOcTm_0(v23 + *(v73 + 24), v74, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v53 = v71;
      if ((*v70)(v52, 1, v71) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v54 = v69;
        (*v67)(v69, v52, v53);
        Hasher._combine(_:)(1u);
        _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        dispatch thunk of Hashable.hash(into:)();
        v55 = v54;
        v22 = v68;
        (*v66)(v55, v53);
      }

      v56 = Hasher._finalize()();
      v57 = -1 << *(v14 + 32);
      v58 = v56 & ~v57;
      v59 = v58 >> 6;
      v23 = v76;
      if (((-1 << v58) & ~*(v21 + 8 * (v58 >> 6))) == 0)
      {
        v60 = 0;
        v61 = (63 - v57) >> 6;
        while (++v59 != v61 || (v60 & 1) == 0)
        {
          v62 = v59 == v61;
          if (v59 == v61)
          {
            v59 = 0;
          }

          v60 |= v62;
          v63 = *(v21 + 8 * v59);
          if (v63 != -1)
          {
            v24 = __clz(__rbit64(~v63)) + (v59 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v58) & ~*(v21 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      outlined init with take of HashableCommandGroupPlacementWrapper(v23, *(v14 + 48) + v40 * v24, type metadata accessor for DisplayList.HostedViewState.Key);
      v25 = *(v14 + 56) + 184 * v24;
      v26 = v86;
      v27 = v87;
      v28 = v88;
      *(v25 + 176) = v89;
      *(v25 + 144) = v27;
      *(v25 + 160) = v28;
      *(v25 + 128) = v26;
      v29 = v82;
      v30 = v83;
      v31 = v85;
      *(v25 + 96) = v84;
      *(v25 + 112) = v31;
      *(v25 + 64) = v29;
      *(v25 + 80) = v30;
      v32 = v78;
      v33 = v79;
      v34 = v81;
      *(v25 + 32) = v80;
      *(v25 + 48) = v34;
      *v25 = v32;
      *(v25 + 16) = v33;
      ++*(v14 + 16);
      v19 = v77;
    }

    v37 = v15;
    while (1)
    {
      v15 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v15 >= v20)
      {
        break;
      }

      v38 = v16[v15];
      ++v37;
      if (v38)
      {
        v35 = __clz(__rbit64(v38));
        v36 = (v38 - 1) & v38;
        goto LABEL_15;
      }
    }

    if ((v75 & 1) == 0)
    {

      v3 = v65;
      goto LABEL_38;
    }

    v64 = 1 << *(v22 + 32);
    v3 = v65;
    if (v64 >= 64)
    {
      bzero(v16, ((v64 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v64;
    }

    *(v68 + 16) = 0;
  }

LABEL_38:
  *v3 = v14;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>(0);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if ((v20 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v22 = v20 & 1;
      }

      else
      {
        v22 = v20 - 1;
      }

      MEMORY[0x18D00F6F0](v22);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Key, [AccessibilityRelationshipScope.Relationship : [AccessibilityNode]]>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 48 * v22);
      if (v4)
      {
        v24 = *v23;
        v25 = v23[2];
        v38 = v23[1];
        v39 = v25;
        v37 = v24;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        outlined init with copy of AccessibilityRelationshipScope.Key(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      MEMORY[0x18D00F6F0](*(&v39 + 1));
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      v17 = v37;
      v18 = v39;
      v16[1] = v38;
      v16[2] = v18;
      *v16 = v17;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + 4 * v23);
      v25 = (*(v5 + 56) + (v23 << 6));
      if (v4)
      {
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[3];
        v41 = v25[2];
        v42 = v28;
        v39 = v26;
        v40 = v27;
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v25, &v39, type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]));
      }

      v29 = MEMORY[0x18D00F6B0](*(v7 + 40), v24, 4);
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v24;
      v16 = (*(v7 + 56) + (v15 << 6));
      v17 = v39;
      v18 = v40;
      v19 = v42;
      v16[2] = v41;
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>(0);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      if ((v24 - 2) >= 3)
      {
        MEMORY[0x18D00F6F0](0);
        v26 = v24 & 1;
      }

      else
      {
        v26 = v24 - 1;
      }

      MEMORY[0x18D00F6F0](v26);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<EventID, EventType>(0);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v34)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v24, v35);
      }

      else
      {
        outlined init with copy of _Benchmark(v24, v35);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      MEMORY[0x18D00F6F0](v23);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v35, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AnyHashable, DisplayList.Version>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v37);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      v27 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 48) + 16 * v19;
      if (v4)
      {
        outlined init with take of HashableWeakBox<UIViewController>(v20, v32);
      }

      else
      {
        outlined init with copy of HashableWeakBox<UIViewController>(v20, v32);
      }

      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v33);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      outlined init with take of HashableWeakBox<UIViewController>(v32, *(v7 + 48) + 16 * v15);
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, Bool>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey, &type metadata for NavigationState.ListKey, MEMORY[0x1E69E6370]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 48 * v22;
      v37 = *(v23 + 16);
      v38 = *v23;
      v24 = *(v23 + 32);
      v35 = *(v23 + 40);
      v36 = *(*(v5 + 56) + v22);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v38);
      if (v37 == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](*(&v38 + 1));
        MEMORY[0x18D00F6F0](v37);
        MEMORY[0x18D00F6F0](*(&v37 + 1));
      }

      Hasher._combine(_:)(v24);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v17 = v37;
        v16 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v17 = v37;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 48 * v15;
      *v18 = v16;
      *(v18 + 16) = v17;
      *(v18 + 32) = v24;
      *(v18 + 40) = v35;
      *(*(v7 + 56) + v15) = v36;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 48 * v22;
      v25 = *v24;
      v45 = *(v24 + 8);
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v46 = *(v24 + 32);
      v42 = *(v24 + 40);
      v28 = *(v23 + 8 * v22);
      if ((v41 & 1) == 0)
      {
      }

      v43 = v28;
      Hasher.init(_seed:)();
      v44 = v25;
      MEMORY[0x18D00F6F0](v25);
      v29 = v27;
      if (v27 == 6)
      {
        Hasher._combine(_:)(0);
        v30 = v26;
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x18D00F6F0](v45);
        MEMORY[0x18D00F6F0](v27);
        v30 = v26;
        MEMORY[0x18D00F6F0](v26);
      }

      Hasher._combine(_:)(v46);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v43;
        v16 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
      v16 = v44;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 48 * v15;
      *v18 = v16;
      *(v18 + 8) = v45;
      *(v18 + 16) = v29;
      *(v18 + 24) = v30;
      *(v18 + 32) = v46;
      *(v18 + 40) = v42;
      *(*(v7 + 56) + 8 * v15) = v17;
      ++*(v7 + 16);
      v5 = v40;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero(v9, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationLinkSelectionIdentifier, Int>, lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier, &type metadata for NavigationLinkSelectionIdentifier, MEMORY[0x1E69E6530]);
  v40 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + (v23 << 6));
      if (v40)
      {
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[3];
        *v51 = v24[2];
        *&v51[16] = v27;
        v49 = v25;
        v50 = v26;
      }

      else
      {
        outlined init with copy of NavigationLinkSelectionIdentifier(v24, &v49);
      }

      v41 = *(*(v5 + 56) + 8 * v23);
      Hasher.init(_seed:)();
      outlined init with copy of AnyNavigationLinkPresentedValue?(&v49, &v46, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v47 + 1))
      {
        v43 = v46;
        v44 = v47;
        v45 = v48;
        Hasher._combine(_:)(1u);
        v28 = *(&v44 + 1);
        v29 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        (*(v29 + 24))(v42, v28, v29);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v42);
        outlined destroy of AnyNavigationLinkPresentedValue(&v43);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*&v51[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v46 = *&v51[8];
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](*&v51[24]);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + (v15 << 6));
      v17 = v49;
      v18 = v50;
      v19 = *&v51[16];
      v16[2] = *v51;
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      *(*(v7 + 56) + 8 * v15) = v41;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_40;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, Decodable & Encodable.Type>(0);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v38 = *v25;
      v26 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<CGPoint, Bool>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      Hasher.init(_seed:)();
      if (v23 == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v23;
      }

      MEMORY[0x18D00F730](*&v25);
      if (v22 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v22;
      }

      MEMORY[0x18D00F730](*&v26);
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = MEMORY[0x18D00F6C0](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>(0);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v6 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if ((v38 & 1) == 0)
      {
        v7.n128_f64[0] = outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v24, v25, v26);
      }

      v27 = MEMORY[0x18D00F6B0](*(v8 + 40), v22, 4, v7);
      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, TabItemGroup.HostCache>();
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 32 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v27 = v24[2];
      v26 = v24[3];
      if ((v39 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      v12 = v40;
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v27;
      v17[3] = v26;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID, &type metadata for TabCustomizationID, &type metadata for TabCustomizationEntry);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 2 * v21);
      v39 = v27[1];
      v40 = *v27;
      if ((v38 & 1) == 0)
      {
        outlined copy of TabCustomizationID.Base();
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v26);
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = (*(v7 + 56) + 2 * v15);
      *v17 = v40;
      v17[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabSectionCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID, &type metadata for TabCustomizationID, &type metadata for TabSectionCustomizationEntry);
  v37 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        outlined copy of TabCustomizationID.Base();
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v25);
      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UInt32, ScrollViewCommitInfo>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v3;
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
    v14 = v6 + 64;
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (v4)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 4 * v18);
          v20 = (*(v5 + 56) + 80 * v18);
          v43 = v20[1];
          v44 = v20[2];
          v45 = v20[3];
          v46 = v20[4];
          v42 = *v20;
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v8;
        do
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (v4)
            {
              v35 = 1 << *(v5 + 32);
              if (v35 >= 64)
              {
                bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v35;
              }

              *(v5 + 16) = 0;
            }

            v3 = v36;
            goto LABEL_33;
          }

          v22 = v9[v8];
          ++v21;
        }

        while (!v22);
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v19 = *(*(v5 + 48) + 4 * v18);
      v23 = (*(v5 + 56) + 80 * v18);
      v37 = *v23;
      v24 = v23[4];
      v26 = v23[1];
      v25 = v23[2];
      v40 = v23[3];
      v41 = v24;
      v38 = v26;
      v39 = v25;
      outlined init with copy of ScrollViewCommitInfo(&v37, &v42);
      v44 = v39;
      v45 = v40;
      v46 = v41;
      v42 = v37;
      v43 = v38;
LABEL_17:
      v27 = MEMORY[0x18D00F6B0](*(v7 + 40), v19, 4);
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v19;
      v16 = (*(v7 + 56) + 80 * v15);
      v16[1] = v43;
      v16[2] = v44;
      v16[3] = v45;
      v16[4] = v46;
      *v16 = v42;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UIDragItem, CGPoint>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UIDragItem, CGAffineTransform>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v35 = v22[1];
      v36 = *v22;
      v34 = v22[2];
      if ((v4 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v36;
      v16[1] = v35;
      v16[2] = v34;
      ++*(v7 + 16);
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

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ToolbarContentDescription(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>(0);
  v37 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v24, v38, type metadata accessor for ToolbarContentDescription);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v24, v38, type metadata accessor for ToolbarContentDescription);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      outlined init with take of HashableCommandGroupPlacementWrapper(v38, *(v9 + 56) + v23 * v17, type metadata accessor for ToolbarContentDescription);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], MEMORY[0x1E697DE50]);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      MEMORY[0x18D00F6F0](v23);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>(0);
  v37 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v37)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v24, v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v38 = *(*(v8 + 56) + 16 * v22);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v24, v7, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v38 = *(*(v8 + 56) + 16 * v22);
      }

      Hasher.init(_seed:)();
      type metadata accessor for CommandGroupPlacement(0);
      UUID.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      outlined init with take of HashableCommandGroupPlacementWrapper(v7, *(v10 + 48) + v23 * v18, type metadata accessor for HashableCommandGroupPlacementWrapper);
      *(*(v10 + 56) + 16 * v18) = v38;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.Index.ID, DisplayList.AccessibilityUpdater.CacheValue>, lazy protocol witness table accessor for type DisplayList.Index.ID and conformance DisplayList.Index.ID, MEMORY[0x1E697DC70], &type metadata for DisplayList.AccessibilityUpdater.CacheValue);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 16 * (v17 | (v8 << 6));
      v31 = *(*(v5 + 56) + v20);
      v32 = *(*(v5 + 48) + v20);
      if ((v4 & 1) == 0)
      {
        v21 = v31;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v32);
      Hasher._combine(_:)(DWORD1(v32));
      Hasher._combine(_:)(DWORD2(v32));
      Hasher._combine(_:)(HIDWORD(v32));
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v32;
      *(*(v7 + 56) + v16) = v31;
      ++*(v7 + 16);
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityAttachmentToken, DisplayList.Version>, lazy protocol witness table accessor for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken, MEMORY[0x1E6980860], MEMORY[0x1E697DC98]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 12 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      v37 = *(v21 + 8 * v20);
      Hasher.init(_seed:)();
      if (v23)
      {
        MEMORY[0x18D00F6F0](1);
        LODWORD(v25) = v24;
      }

      else
      {
        v25 = HIDWORD(v24);
        MEMORY[0x18D00F6F0](0);
        Hasher._combine(_:)(v24);
      }

      Hasher._combine(_:)(v25);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 12 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      v5 = v36;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<Int, Int>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CommandOperation(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<UIMenuElement, CommandOperation>(0);
  v39 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v38 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v39)
      {
        outlined init with take of HashableCommandGroupPlacementWrapper(v25, v7, type metadata accessor for CommandOperation);
      }

      else
      {
        outlined init with copy of (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])(v25, v7, type metadata accessor for CommandOperation);
        v26 = v23;
      }

      v27 = NSObject._rawHashValue(seed:)(*(v10 + 40));
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      outlined init with take of HashableCommandGroupPlacementWrapper(v7, *(v10 + 56) + v24 * v18, type metadata accessor for CommandOperation);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  type metadata accessor for _DictionaryStorage<UUID, PlatformItemList>(0);
  v40 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<KeyCommandID, ()>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Character, String>();
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<String, MainMenuItemCoordinator>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, AnyShapeStyle>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E697E0B8]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
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
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v20 = v8;
        while (1)
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v8 >= v13)
          {
            break;
          }

          v21 = v9[v8];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v12 = (v21 - 1) & v21;
            goto LABEL_15;
          }
        }

        if ((v4 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_51;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v45 = *(v23 + 32);
        v43 = v24;
        v44 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        outlined init with copy of ToolbarPlacement.Role(v23, &v43);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      Hasher.init(_seed:)();
      outlined init with copy of ToolbarPlacement.Role(&v43, &v40);
      if (*(&v41 + 1) <= 2)
      {
        if (*(&v41 + 1))
        {
          if (*(&v41 + 1) == 1)
          {
            v27 = 1;
          }

          else
          {
            if (*(&v41 + 1) != 2)
            {
              goto LABEL_30;
            }

            v27 = 2;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else if (*(&v41 + 1) > 4)
      {
        if (*(&v41 + 1) == 5)
        {
          v27 = 5;
        }

        else
        {
          if (*(&v41 + 1) != 6)
          {
LABEL_30:
            v38[0] = v40;
            v38[1] = v41;
            v39 = v42;
            MEMORY[0x18D00F6F0](6);
            AnyHashable.hash(into:)();
            outlined destroy of AnyHashable(v38);
            goto LABEL_35;
          }

          v27 = 7;
        }
      }

      else if (*(&v41 + 1) == 3)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      MEMORY[0x18D00F6F0](v27);
LABEL_35:
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_53:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v43;
      v18 = v44;
      *(v16 + 32) = v45;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }
  }

LABEL_51:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, (_:)>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, TouchEvent>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], &type metadata for TouchEvent);
  v40 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 112 * v21);
      if (v40)
      {
        v50 = v25[3];
        v51 = v25[4];
        v52[0] = v25[5];
        *(v52 + 9) = *(v25 + 89);
        v47 = *v25;
        v48 = v25[1];
        v49 = v25[2];
      }

      else
      {
        v27 = v25[1];
        v26 = v25[2];
        v41 = *v25;
        v42 = v27;
        v43 = v26;
        v29 = v25[4];
        v28 = v25[5];
        v30 = v25[3];
        *&v46[9] = *(v25 + 89);
        v45 = v29;
        *v46 = v28;
        v44 = v30;
        outlined init with copy of TouchEvent(&v41, &v47);
        v51 = v45;
        v52[0] = *v46;
        *(v52 + 9) = *&v46[9];
        v47 = v41;
        v48 = v42;
        v49 = v43;
        v50 = v44;
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 112 * v15);
      v17[3] = v50;
      v17[4] = v51;
      v17[5] = v52[0];
      *(v17 + 89) = *(v52 + 9);
      *v17 = v47;
      v17[1] = v48;
      v17[2] = v49;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, PhysicalButtonEvent>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], MEMORY[0x1E697F768]);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *v25;
      v27 = *(v25 + 16);
      v39 = *(v25 + 24);
      v40 = *(v25 + 8);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v40;
      *(v17 + 16) = v27;
      *(v17 + 24) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = MEMORY[0x18D00F6C0](*(v7 + 40), v20);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, any ValidatingTextAttributeDefinition<Self.ValidatingTextAttributeDefinition.ValidationToken == AttributedTextFormatting.Constraints>>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 40 * v19);
      if (v35)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v22, v36);
      }

      else
      {
        outlined init with copy of _Benchmark(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v36, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationSplitViewColumnWidth>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn, &type metadata for NavigationSplitColumn, &type metadata for NavigationSplitViewColumnWidth);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + v20);
      v23 = *(v21 + 32);
      v34 = *(v21 + 16);
      v35 = *v21;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v35;
      *(v16 + 16) = v34;
      *(v16 + 32) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<TableColumnCustomizationID, TableColumnCustomizationEntry>, lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, &type metadata for TableColumnCustomizationID, &type metadata for TableColumnCustomizationEntry);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v43 = *(v23 + 16);
      v26 = *(v23 + 32);
      v27 = (v22 + 16 * v21);
      v41 = *v27;
      v42 = *(v23 + 24);
      v39 = *(v27 + 9);
      v40 = *(v27 + 8);
      if ((v38 & 1) == 0)
      {
        outlined copy of TableColumnCustomizationID.Base(v24, v25, v43, v42, v26);
      }

      Hasher.init(_seed:)();
      if (v26)
      {
        MEMORY[0x18D00F6F0](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x18D00F6F0](0);
      }

      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v43;
      *(v16 + 24) = v42;
      *(v16 + 32) = v26;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v41;
      *(v17 + 8) = v40;
      *(v17 + 9) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<SpatialEventCollection.Event.ID, SpatialEventCollection.Event>, lazy protocol witness table accessor for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID, &type metadata for SpatialEventCollection.Event.ID, &type metadata for SpatialEventCollection.Event);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 80 * v20);
      v35 = v22[2];
      *v36 = v22[3];
      *&v36[9] = *(v22 + 57);
      v33 = *v22;
      v34 = v22[1];
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v21);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 80 * v15);
      v16[2] = v35;
      v16[3] = *v36;
      *(v16 + 57) = *&v36[9];
      *v16 = v33;
      v16[1] = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IntelligenceDataSourceItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceDataSourceItem>(0);
  v45 = v4;
  v50 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v10 + 16))
  {
    v40 = v2;
    v11 = 0;
    v12 = (v10 + 64);
    v13 = 1 << *(v10 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v17 = v50 + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v48 = (v15 - 1) & v15;
LABEL_15:
      v25 = *(v10 + 48);
      v47 = *(v43 + 72);
      v26 = v47 * (v22 | (v11 << 6));
      if (v45)
      {
        v27 = *v46;
        v28 = v44;
        (*v46)(v44, v25 + v26, v5);
      }

      else
      {
        v27 = *v41;
        v28 = v44;
        (*v41)(v44, v25 + v26, v5);
      }

      v27(v49, *(v10 + 56) + v26, v5);
      v29 = v50;
      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC60]);
      v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = v50;
      v20 = v47 * v18;
      v21 = *v46;
      (*v46)((*(v50 + 48) + v47 * v18), v28, v5);
      v21((*(v19 + 56) + v20), v49, v5);
      ++*(v19 + 16);
      v10 = v42;
      v15 = v48;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
}

{
  v3 = v2;
  v4 = a2;
  v53 = type metadata accessor for IntelligenceAppIntentsPayload();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceDataSourceItem();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>(0);
  v48 = v4;
  v11 = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = (v14 + 16);
    v45 = v14;
    v42 = v2;
    v43 = v5 + 16;
    v46 = v10;
    v47 = v5;
    v49 = (v5 + 32);
    v50 = (v14 + 32);
    v20 = v11 + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v51 = *(v21 + 72);
      v28 = v27 + v51 * v26;
      if (v48)
      {
        (*v50)(v54, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 32))(v52, v29 + v30 * v26, v53);
      }

      else
      {
        (*v44)(v54, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v47 + 72);
        (*(v47 + 16))(v52, v31 + v30 * v26, v53);
      }

      _s21UIIntelligenceSupport26IntelligenceDataSourceItemOACSHAAWlTm_0(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC60]);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v12 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v50)((*(v12 + 48) + v51 * v22), v54, v7);
      (*v49)(*(v12 + 56) + v30 * v22, v52, v53);
      ++*(v12 + 16);
      v21 = v45;
      v10 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AccessibilityEnabledTechnology, [AccessibilityFocus.Match : Set<UniqueID>]>(0);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>(0);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Match>, lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology, MEMORY[0x1E6980970], &type metadata for AccessibilityFocus.Match);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      if (v4)
      {
        _s7SwiftUI7WeakBoxVyyXlGWObTm_0(v21 + v20, v33, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
      }

      else
      {
        _s10Foundation4UUIDVSgWOcTm_0(v21 + v20, v33, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
      }

      v23 = MEMORY[0x18D00F6C0](*(v7 + 40), v22);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v22;
      _s7SwiftUI7WeakBoxVyyXlGWObTm_0(v33, *(v7 + 56) + v16, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 96 * v20);
      v35 = v22[2];
      v36 = v22[3];
      *v37 = v22[4];
      *&v37[9] = *(v22 + 73);
      v33 = *v22;
      v34 = v22[1];
      v23 = MEMORY[0x18D00F6C0](*(v7 + 40), v21);
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 96 * v15);
      v16[2] = v35;
      v16[3] = v36;
      v16[4] = *v37;
      *(v16 + 73) = *&v37[9];
      *v16 = v33;
      v16[1] = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, InspectorStorage>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, MEMORY[0x1E697DFC0], &type metadata for InspectorStorage);
  v44 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(*(v5 + 48) + 4 * v26);
      v28 = *(v5 + 56) + 120 * v26;
      if (v44)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 48);
        v47 = *(v28 + 32);
        v48 = v31;
        v45 = v29;
        v46 = v30;
        v32 = *(v28 + 64);
        v33 = *(v28 + 80);
        v34 = *(v28 + 96);
        v52 = *(v28 + 112);
        v50 = v33;
        v51 = v34;
        v49 = v32;
      }

      else
      {
        outlined init with copy of InspectorStorage(v28, &v45);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v27);
      v35 = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v27;
      v16 = *(v7 + 56) + 120 * v15;
      v17 = v45;
      v18 = v46;
      v19 = v48;
      *(v16 + 32) = v47;
      *(v16 + 48) = v19;
      *v16 = v17;
      *(v16 + 16) = v18;
      v20 = v49;
      v21 = v50;
      v22 = v51;
      *(v16 + 112) = v52;
      *(v16 + 80) = v21;
      *(v16 + 96) = v22;
      *(v16 + 64) = v20;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v2;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, OrnamentPresentation>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0], &type metadata for OrnamentPresentation);
  v39 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 120 * v20;
      if (v39)
      {
        v40 = *v22;
        v42 = *(v22 + 16);
        v43 = *(v22 + 40);
        v41 = *(v22 + 24);
        v46 = *(v22 + 56);
        v23 = *(v22 + 64);
        v45 = *(v22 + 65);
        v44 = *(v22 + 80);
        v47 = *(v22 + 88);
        v48 = *(v22 + 72);
        v49 = *(v22 + 104);
        v50 = *(v22 + 112);
      }

      else
      {
        v25 = *(v22 + 32);
        v24 = *(v22 + 48);
        v26 = *(v22 + 16);
        v52 = *v22;
        *v53 = v26;
        *&v53[16] = v25;
        v28 = *(v22 + 80);
        v27 = *(v22 + 96);
        v29 = *(v22 + 64);
        v56 = *(v22 + 112);
        *v55 = v28;
        *&v55[16] = v27;
        *&v53[32] = v24;
        v54 = v29;
        v50 = v56;
        v47 = *&v55[8];
        v48 = *(&v29 + 1);
        v49 = *(&v27 + 1);
        v44 = v28;
        v45 = BYTE1(v29);
        v46 = *(&v24 + 1);
        v23 = v29;
        v43 = *&v53[24];
        v41 = *&v53[8];
        v42 = v53[0];
        v40 = v52;
        outlined init with copy of OrnamentPresentation(&v52, v51);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v21);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v52) = v23;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 120 * v15;
      *v16 = v40;
      *(v16 + 16) = v42;
      *(v16 + 40) = v43;
      *(v16 + 24) = v41;
      *(v16 + 56) = v46;
      *(v16 + 64) = v23;
      *(v16 + 65) = v45;
      *(v16 + 72) = v48;
      *(v16 + 80) = v44;
      *(v16 + 88) = v47;
      *(v16 + 104) = v49;
      *(v16 + 112) = v50;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Selector, CommandAction>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v21, v31);
      }

      else
      {
        outlined init with copy of _Benchmark(v21, v31);
      }

      Hasher.init(_seed:)();
      Selector.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ContainerBackgroundKeys.AnyCustomKey, AnyView>, lazy protocol witness table accessor for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey, &type metadata for ContainerBackgroundKeys.AnyCustomKey, MEMORY[0x1E6981910]);
  v31 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, NavigationDestinationPresentation>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID, MEMORY[0x1E6981EA0], &type metadata for NavigationDestinationPresentation);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + 8 * v24);
      v26 = (*(v5 + 56) + 96 * v24);
      if (v4)
      {
        v27 = v26[1];
        v40 = *v26;
        v41 = v27;
        v28 = v26[2];
        v29 = v26[3];
        v30 = v26[4];
        *(v44 + 9) = *(v26 + 73);
        v44[0] = v30;
        v42 = v28;
        v43 = v29;
      }

      else
      {
        outlined init with copy of NavigationDestinationPresentation(v26, &v40);
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v25);
      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v25;
      v16 = (*(v7 + 56) + 96 * v15);
      v17 = v41;
      *v16 = v40;
      v16[1] = v17;
      v18 = v42;
      v19 = v43;
      v20 = v44[0];
      *(v16 + 73) = *(v44 + 9);
      v16[3] = v19;
      v16[4] = v20;
      v16[2] = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        outlined init with copy of AnyHashable(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      v27 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationLinkSelectionIdentifier, UpdateViewDestinationRequest>, lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier, &type metadata for NavigationLinkSelectionIdentifier, &type metadata for UpdateViewDestinationRequest);
  v40 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + (v23 << 6));
      if (v40)
      {
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[3];
        *v51 = v24[2];
        *&v51[16] = v27;
        v49 = v25;
        v50 = v26;
        outlined init with take of UpdateViewDestinationRequest(*(v5 + 56) + 192 * v23, v48);
      }

      else
      {
        outlined init with copy of NavigationLinkSelectionIdentifier(v24, &v49);
        outlined init with copy of UpdateViewDestinationRequest(*(v5 + 56) + 192 * v23, v48);
      }

      Hasher.init(_seed:)();
      outlined init with copy of AnyNavigationLinkPresentedValue?(&v49, &v45, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
      if (*(&v46 + 1))
      {
        v42 = v45;
        v43 = v46;
        v44 = v47;
        Hasher._combine(_:)(1u);
        v28 = *(&v43 + 1);
        v29 = v44;
        __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
        (*(v29 + 24))(v41, v28, v29);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v41);
        outlined destroy of AnyNavigationLinkPresentedValue(&v42);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*&v51[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v45 = *&v51[8];
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](*&v51[24]);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + (v15 << 6));
      v17 = v49;
      v18 = v50;
      v19 = *&v51[16];
      v16[2] = *v51;
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      outlined init with take of UpdateViewDestinationRequest(v48, *(v7 + 56) + 192 * v15);
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_40;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneList.Namespace, SceneList>, lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace, &type metadata for SceneList.Namespace, &type metadata for SceneList);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *v23;
      v25 = *(v23 + 16);
      v26 = (*(v5 + 56) + v22);
      v27 = *v26;
      v28 = v26[1];
      v42 = v26[2];
      v43 = *(v23 + 8);
      if ((v41 & 1) == 0)
      {
        outlined copy of SceneList.Namespace(v24, v43, v25);
      }

      Hasher.init(_seed:)();
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x18D00F6F0](2);
          v29 = v24;
        }

        else
        {
          v29 = 0;
        }

        MEMORY[0x18D00F6F0](v29);
      }

      else
      {
        MEMORY[0x18D00F6F0](1);
        String.hash(into:)();
      }

      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 8) = v43;
      *(v17 + 16) = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v28;
      v18[2] = v42;
      ++*(v7 + 16);
      v5 = v40;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_39;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UIPasteboardName, AttributedString.PasteboardOwner>(0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>, outlined init with take of Sendable);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, TabEntry>();
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 288 * v20);
      if (v34)
      {
        memcpy(__src, v24, 0x119uLL);
      }

      else
      {
        outlined init with copy of TabEntry(v24, __src);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      memcpy((*(v7 + 56) + 288 * v15), __src, 0x119uLL);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, Int>();
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v36 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      if ((v35 & 1) == 0)
      {
      }

      v25 = MEMORY[0x18D00F6C0](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v36;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v24 = *(v22 + 32);
      v23 = *(v22 + 40);
      v35 = *(v22 + 16);
      v36 = *v22;
      v25 = MEMORY[0x18D00F6C0](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v24;
      *(v16 + 40) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>(0);
  v32 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v34 = v21;
      v22 = (v20 + 32 * v19);
      if (v32)
      {
        outlined init with take of Any(v22, v33);
      }

      else
      {
        outlined init with copy of Any(v22, v33);
      }

      _ss14PartialKeyPathCySo21UISplitViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      outlined init with take of Any(v33, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, Bool>, lazy protocol witness table accessor for type Edge and conformance Edge, MEMORY[0x1E6980D70], MEMORY[0x1E69E6370]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, ScrollEdgeEffectStyle>, lazy protocol witness table accessor for type Edge and conformance Edge, MEMORY[0x1E6980D70], &type metadata for ScrollEdgeEffectStyle);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<Toolbar.BarLocation, Toolbar.LocationStorage>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation, &type metadata for Toolbar.BarLocation, &type metadata for Toolbar.LocationStorage);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v4)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v44 = *(v24 + 32);
        v42 = v25;
        v43 = v26;
        v27 = *(v5 + 56) + 24 * v23;
        v40 = *v27;
        v28 = *(v27 + 16);
      }

      else
      {
        outlined init with copy of Toolbar.BarLocation(v24, &v42);
        v29 = *(v5 + 56) + 24 * v23;
        v40 = *v29;
        v28 = *(v29 + 16);
      }

      Hasher.init(_seed:)();
      Toolbar.BarLocation.hash(into:)(v41);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v42;
      v18 = v43;
      *(v16 + 32) = v44;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = *(v7 + 56) + 24 * v15;
      *v19 = v40;
      *(v19 + 16) = v28;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      v22 = MEMORY[0x18D00F6B0](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<AlternateRepresentationPlacement.Value, AnyView>, lazy protocol witness table accessor for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value, &type metadata for AlternateRepresentationPlacement.Value, MEMORY[0x1E6981910]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 56) + 8 * (v16 | (v8 << 6)));
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](0);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Target>, lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology, MEMORY[0x1E6980970], &type metadata for AccessibilityFocus.Target);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(v5 + 56) + 8 * v19;
      if (v4)
      {
        outlined init with take of AccessibilityFocus.Target(v21, v31);
      }

      else
      {
        outlined init with copy of AccessibilityFocus.Target(v21, v31);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      outlined init with take of AccessibilityFocus.Target(v31, *(v7 + 56) + 8 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<KeyboardShortcut, KeyboardShortcutBridge.Shortcut>, lazy protocol witness table accessor for type KeyboardShortcut and conformance KeyboardShortcut, &type metadata for KeyboardShortcut, &type metadata for KeyboardShortcutBridge.Shortcut);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v40 = *(v22 + 16);
      v41 = *(v22 + 24);
      v25 = *(v5 + 56) + 24 * v21;
      v39 = *v25;
      v26 = *(v25 + 16);
      if ((v38 & 1) == 0)
      {

        v27 = v39;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x18D00F6F0](v40);
      MEMORY[0x18D00F6F0](v41);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v40;
      *(v16 + 24) = v41;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v39;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v41 = type metadata accessor for UTType();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<NSFileWrapper, UTType>(0);
  v39 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v39)
      {
        (*v16)(v40, v25, v41);
      }

      else
      {
        (*v37)(v40, v25, v41);
        v26 = v23;
      }

      v27 = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v40, v41);
      ++*(v9 + 16);
      v5 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = (*(v5 + 48) + (v26 << 7));
      if (v4)
      {
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v49 = v27[3];
        v31 = v27[4];
        v32 = v27[5];
        v33 = v27[6];
        *&v52[9] = *(v27 + 105);
        v51 = v32;
        *v52 = v33;
        v50 = v31;
        v47 = v29;
        v48 = v30;
        v46 = v28;
        _s7SwiftUI7WeakBoxVyyXlGWObTm_0(*(v5 + 56) + 8 * v26, v45, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
      }

      else
      {
        outlined init with copy of IdentifiedDocumentGroupConfiguration(v27, &v46);
        _s10Foundation4UUIDVSgWOcTm_0(*(v5 + 56) + 8 * v26, v45, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78]);
      }

      Hasher.init(_seed:)();
      v34 = v52[16];
      if (v52[24])
      {
        MEMORY[0x18D00F6F0](*&v52[8]);
        Hasher._combine(_:)(v34);
      }

      else
      {
        String.hash(into:)();
      }

      v35 = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + (v15 << 7));
      v17 = v46;
      v19 = v48;
      v18 = v49;
      v16[1] = v47;
      v16[2] = v19;
      *v16 = v17;
      v20 = v50;
      v21 = v51;
      v22 = *v52;
      *(v16 + 105) = *&v52[9];
      v16[5] = v21;
      v16[6] = v22;
      v16[3] = v18;
      v16[4] = v20;
      _s7SwiftUI7WeakBoxVyyXlGWObTm_0(v45, *(v7 + 56) + 8 * v15, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for Anchor<CGRect?>);
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_37;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UIMenuIdentifier, UIMenuIdentifier>(0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, UIAccessibilityCustomRotor>(0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, RawPanGesture.StateType.EventInfo>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], &type metadata for RawPanGesture.StateType.EventInfo);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v36 = v25[1];
      v37 = *v25;
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v24);
      MEMORY[0x18D00F6F0](v23);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v37;
      v17[1] = v36;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>, lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6530]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 48) + 88 * v24;
      if (v4)
      {
        v26 = *(v25 + 16);
        v46 = *v25;
        v47 = v26;
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        v51 = *(v25 + 80);
        v49 = v28;
        v50 = v29;
        v48 = v27;
      }

      else
      {
        outlined init with copy of ToolbarStorage.Entry.ID(v25, &v46);
      }

      v30 = *(*(v5 + 56) + 8 * v24);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      outlined init with copy of AnyNavigationLinkPresentedValue?(&v48 + 8, &v43, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720]);
      if (v44[24] == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v41 = v43;
        v42[0] = *v44;
        *(v42 + 9) = *&v44[9];
        Hasher._combine(_:)(1u);
        ToolbarItemPlacement.Role.hash(into:)(v45);
        outlined destroy of ToolbarItemPlacement.Role(&v41);
      }

      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 88 * v15;
      v17 = v47;
      *v16 = v46;
      v18 = v48;
      v19 = v49;
      v20 = v50;
      *(v16 + 80) = v51;
      *(v16 + 48) = v19;
      *(v16 + 64) = v20;
      *(v16 + 16) = v17;
      *(v16 + 32) = v18;
      *(*(v7 + 56) + 8 * v15) = v30;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 48 * v23);
      if (a2)
      {
        v25 = *v24;
        v26 = v24[1];
        *(v54 + 9) = *(v24 + 25);
        v53 = v25;
        v54[0] = v26;
      }

      else
      {
        outlined init with copy of TableRowID(v24, &v53);
      }

      v27 = *(v5 + 56) + 56 * v23;
      v47 = *(v27 + 48);
      v45 = *(v27 + 32);
      v46 = *(v27 + 40);
      v44 = *(v27 + 24);
      v42 = *(v27 + 8);
      v43 = *(v27 + 16);
      v41 = *v27;
      Hasher.init(_seed:)();
      outlined init with copy of TableRowID(&v53, v50);
      if (v52)
      {
        v48[0] = v50[0];
        v48[1] = v50[1];
        v49 = v51;
        MEMORY[0x18D00F6F0](1);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v48);
      }

      else
      {
        v28 = a2;
        v29 = *&v50[0];
        MEMORY[0x18D00F6F0](0);
        v30 = v29;
        a2 = v28;
        MEMORY[0x18D00F6F0](v30);
      }

      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 48 * v15);
      v17 = v53;
      v18 = v54[0];
      *(v16 + 25) = *(v54 + 9);
      *v16 = v17;
      v16[1] = v18;
      v19 = *(v7 + 56) + 56 * v15;
      *v19 = v41;
      *(v19 + 8) = v42;
      *(v19 + 16) = v43;
      *(v19 + 24) = v44;
      *(v19 + 32) = v45;
      *(v19 + 40) = v46;
      *(v19 + 48) = v47;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_37;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v3;
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v38 = *(v22 + 24);
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *v22;
      v26 = MEMORY[0x18D00F6C0](*(v7 + 40), v21);
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v38;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, HoverEvent>, lazy protocol witness table accessor for type EventID and conformance EventID, MEMORY[0x1E69819B0], &type metadata for HoverEvent);
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *v25;
      v39 = *(v25 + 8);
      v27 = *(v25 + 16);
      v40 = *(v25 + 24);
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v23);
      MEMORY[0x18D00F6F0](v24);
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v26;
      *(v17 + 8) = v39;
      *(v17 + 16) = v27;
      *(v17 + 24) = v40;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<EventID, [KeyPress.Handler]>(0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v22);
      MEMORY[0x18D00F6F0](v23);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>(0);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v45 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = (*(v5 + 48) + (v26 << 7));
      if (v46)
      {
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        v50 = v27[3];
        v31 = v27[4];
        v32 = v27[5];
        v33 = v27[6];
        *&v53[9] = *(v27 + 105);
        v52 = v32;
        *v53 = v33;
        v51 = v31;
        v48 = v29;
        v49 = v30;
        v47 = v28;
        v34 = *(*(v5 + 56) + 8 * v26);
      }

      else
      {
        outlined init with copy of IdentifiedDocumentGroupConfiguration(v27, &v47);
        v34 = *(*(v5 + 56) + 8 * v26);
      }

      Hasher.init(_seed:)();
      v35 = v53[16];
      if (v53[24])
      {
        MEMORY[0x18D00F6F0](*&v53[8]);
        Hasher._combine(_:)(v35);
      }

      else
      {
        String.hash(into:)();
      }

      v36 = Hasher._finalize()();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + (v15 << 7));
      v17 = v47;
      v19 = v49;
      v18 = v50;
      v16[1] = v48;
      v16[2] = v19;
      *v16 = v17;
      v20 = v51;
      v21 = v52;
      v22 = *v53;
      *(v16 + 105) = *&v53[9];
      v16[5] = v21;
      v16[6] = v22;
      v16[3] = v18;
      v16[4] = v20;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_37;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<String, String>();
  v38 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<NSAttributedStringKey, [TextFormattingControl]>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Int, Image.Resolved>();
  v45 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v44 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 192 * v22;
      if (v45)
      {
        v58 = *(v24 + 48);
        v59 = *(v24 + 64);
        v60[0] = *(v24 + 80);
        *(v60 + 12) = *(v24 + 92);
        v55 = *v24;
        v56 = *(v24 + 16);
        v57 = *(v24 + 32);
        v46 = *(v24 + 128);
        v47 = *(v24 + 112);
        v48 = *(v24 + 144);
        v49 = *(v24 + 160);
        v50 = *(v24 + 161);
        v25 = *(v24 + 168);
        v54 = *(v24 + 176);
        v52 = *(v24 + 164);
        v53 = *(v24 + 184);
        v51 = *(v24 + 186);
      }

      else
      {
        v27 = *(v24 + 32);
        v26 = *(v24 + 48);
        v28 = *v24;
        v62 = *(v24 + 16);
        v63 = v27;
        v61 = v28;
        v29 = *(v24 + 112);
        v31 = *(v24 + 64);
        v30 = *(v24 + 80);
        v66[1] = *(v24 + 96);
        v66[2] = v29;
        v65 = v31;
        v66[0] = v30;
        v33 = *(v24 + 144);
        v32 = *(v24 + 160);
        v34 = *(v24 + 128);
        *&v67[11] = *(v24 + 171);
        v66[4] = v33;
        *v67 = v32;
        v66[3] = v34;
        v64 = v26;
        v54 = *&v67[16];
        v52 = DWORD1(v32);
        v53 = *&v67[24];
        v25 = BYTE8(v32);
        v50 = BYTE1(v32);
        v51 = v67[26];
        v49 = v32;
        v47 = v29;
        v48 = v33;
        v46 = v34;
        outlined init with copy of Image.Resolved(&v61, &v55);
        v59 = v65;
        v60[0] = v66[0];
        *(v60 + 12) = *(v66 + 12);
        v55 = v61;
        v56 = v62;
        v57 = v63;
        v58 = v64;
      }

      v35 = MEMORY[0x18D00F6C0](*(v7 + 40), v23);
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v65 = v59;
      v66[0] = v60[0];
      *(v66 + 12) = *(v60 + 12);
      v61 = v55;
      v62 = v56;
      v16 = v58;
      v63 = v57;
      v64 = v58;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v17 = *(v7 + 56) + 192 * v15;
      *(v17 + 32) = v63;
      *(v17 + 16) = v62;
      *v17 = v61;
      *(v17 + 96) = v66[1];
      *(v17 + 80) = v66[0];
      v18 = v65;
      *(v17 + 48) = v16;
      *(v17 + 64) = v18;
      *(v17 + 112) = v47;
      *(v17 + 128) = v46;
      *(v17 + 144) = v48;
      *(v17 + 160) = v49;
      *(v17 + 161) = v50;
      *(v17 + 164) = v52;
      *(v17 + 168) = v25;
      *(v17 + 176) = v54;
      *(v17 + 184) = v53;
      *(v17 + 186) = v51;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  _ss18_DictionaryStorageCy7SwiftUI9NamespaceV2IDVAC11TransactionVGMaTm_0(0, &lazy cache variable for type metadata for _DictionaryStorage<AdaptableTabBarPlacement, Visibility>, lazy protocol witness table accessor for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement, &type metadata for AdaptableTabBarPlacement, MEMORY[0x1E697DB50]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>(0);
  v36 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v37 = *(v22 + 20);
      v25 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v21);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 20) = (v25 | (v37 << 32)) >> 32;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>();
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 48) + 40 * v24;
      if (v4)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v44 = *(v25 + 32);
        v42 = v26;
        v43 = v27;
      }

      else
      {
        outlined init with copy of AnyHashable(v25, &v42);
      }

      v28 = *(v5 + 56) + 40 * v24;
      v40 = *(v28 + 24);
      v41 = *(v28 + 8);
      v29 = *v28;
      v30 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 40 * v15;
      v17 = *(v7 + 48) + v16;
      v18 = v42;
      v19 = v43;
      *(v17 + 32) = v44;
      *v17 = v18;
      *(v17 + 16) = v19;
      v20 = *(v7 + 56) + v16;
      *v20 = v29;
      *(v20 + 24) = v40;
      *(v20 + 8) = v41;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}