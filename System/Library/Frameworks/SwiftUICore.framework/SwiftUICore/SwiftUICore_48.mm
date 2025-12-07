void lazy protocol witness table accessor for type Nil and conformance Nil()
{
  if (!lazy protocol witness table cache variable for type Nil and conformance Nil)
  {
    swift_getWitnessTable(protocol conformance descriptor for Nil, &type metadata for Nil, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Nil and conformance Nil);
  }
}

{
  if (!lazy protocol witness table cache variable for type Nil and conformance Nil)
  {
    swift_getWitnessTable(protocol conformance descriptor for Nil, &type metadata for Nil, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Nil and conformance Nil);
  }
}

uint64_t one-time initialization function for splitViewVisibility()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.splitViewVisibility);
  v5 = __swift_project_value_buffer(v1, static Log.splitViewVisibility);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000032, 0x800000018DD837C0);
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

uint64_t type metadata completion function for TypedCanonicalViewID(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TypedCanonicalViewID<Nil>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedCanonicalViewID<Nil>)
  {
    lazy protocol witness table accessor for type Nil and conformance Nil();
    v4 = type metadata accessor for TypedCanonicalViewID(a1, &type metadata for Nil, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TypedCanonicalViewID<Nil>);
    }
  }
}

void lazy protocol witness table accessor for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>()
{
  if (!lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>)
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for ContiguousArray<TypedCanonicalViewID<Nil>>(255, &lazy cache variable for type metadata for ContiguousArray<TypedCanonicalViewID<Nil>>, type metadata accessor for TypedCanonicalViewID<Nil>, MEMORY[0x1E69E6BE8]);
    v3 = v2;
    lazy protocol witness table accessor for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>(&lazy protocol witness table cache variable for type TypedCanonicalViewID<Nil> and conformance TypedCanonicalViewID<A>, type metadata accessor for TypedCanonicalViewID<Nil>, protocol conformance descriptor for TypedCanonicalViewID<A>);
    v6[0] = v4;
    swift_getWitnessTable(protocol conformance descriptor for <A> ContiguousArray<A>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ContiguousArray<TypedCanonicalViewID<Nil>> and conformance <A> ContiguousArray<A>);
  }
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  v4 = *(v2 + 16);
  v5 = v4[2];
  if (!v5)
  {
    v10 = a2;
    v11 = a1;
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  result = (*(v9 + 16))(&v17, &type metadata for CustomGraphMutation, &protocol witness table for CustomGraphMutation, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
    v11 = v17;
    v10 = v18;
LABEL_8:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v13 = v4[2];
    v12 = v4[3];
    if (v13 >= v12 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
    }

    v15 = &type metadata for CustomGraphMutation;
    v16 = &protocol witness table for CustomGraphMutation;
    *&v14 = v11;
    *(&v14 + 1) = v10;
    v4[2] = v13 + 1;
    result = outlined init with take of AnyTrackedValue(&v14, &v4[5 * v13 + 4]);
    *(v3 + 16) = v4;
  }

  return result;
}

{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  v19 = BYTE4(a2);
  v6 = *(v2 + 16);
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (v7 > v6[2])
  {
    __break(1u);
    return result;
  }

  v9 = &v6[5 * v7];
  v10 = v9[2];
  v11 = v9[3];
  __swift_mutable_project_boxed_opaque_existential_1((v9 - 1), v10);
  result = (*(v11 + 16))(&v17, &type metadata for MaterialEffectBackdropObserver.LuminanceMutation, &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation, v10, v11);
  *(v3 + 16) = v6;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v6);
    }

    v15 = &type metadata for MaterialEffectBackdropObserver.LuminanceMutation;
    v16 = &protocol witness table for MaterialEffectBackdropObserver.LuminanceMutation;
    *&v14 = a1;
    DWORD2(v14) = a2;
    BYTE12(v14) = BYTE4(a2) & 1;
    v6[2] = v13 + 1;
    result = outlined init with take of AnyTrackedValue(&v14, &v6[5 * v13 + 4]);
    *(v3 + 16) = v6;
  }

  return result;
}

uint64_t one-time initialization function for tintColor(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.tintColor = result;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, Color?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, Color?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<EnvironmentValues, Color?>);
    }
  }
}

uint64_t one-time initialization function for foregroundStyle(uint64_t a1)
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.foregroundStyle = result;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, AnyShapeStyle?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, AnyShapeStyle?>)
  {
    _sypSgMaTm_8(255, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<EnvironmentValues, AnyShapeStyle?>);
    }
  }
}

void lazy protocol witness table accessor for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext()
{
  if (!lazy protocol witness table cache variable for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.Resolved.MakeRepresentableContext, &unk_1F004D868, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.Resolved.MakeRepresentableContext and conformance Image.Resolved.MakeRepresentableContext);
  }
}

void lazy protocol witness table accessor for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext()
{
  if (!lazy protocol witness table cache variable for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.MakeRepresentableContext, &unk_1F00BD448, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.MakeRepresentableContext and conformance Image.MakeRepresentableContext);
  }
}

CGSize __swiftcall ViewRendererHost.idealSize()()
{
  v2 = ViewGraphRootValueUpdater._sizeThatFits(_:)(0, 1, 0, 1, v0, *(v1 + 16));
  result.height = v3;
  result.width = v2;
  return result;
}

void MaterialProvider.applyForegroundStyle(to:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 107);
  if ((v4 & 8) != 0)
  {
    SystemColorsStyle._apply(to:)(a1);
    return;
  }

  *(a1 + 107) = v4 | 8;
  v6 = a1[6];
  v5 = a1[7];
  v82 = 1;
  v80 = 1;
  v7 = *(a1 + 105);
  v8 = *(a1 + 106);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  if (*(a1 + 24) > 2u)
  {
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
    memset(&v65[32], 0, 24);
    v65[56] = v80;

LABEL_49:
    outlined destroy of Material.Context(&v64);
    *(a1 + 107) = v4;
    return;
  }

  if (!*(a1 + 24))
  {
    v42 = *(a1 + 106);
    v44 = v4;
    *&v76 = v6;
    *(&v76 + 1) = v5;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    v51 = v82;
    BYTE8(v78) = v82;
    memset(v79, 0, 24);
    v41 = v7;
    v53 = v80;
    v79[24] = v80;
    v74 = v78;
    *v75 = 0uLL;
    *&v75[9] = *&v79[9];
    v72 = v76;
    v73 = v77;
    v13 = *(a3 + 24);

    outlined init with copy of Material.Context(&v76, v71);
    v13(&v64, v9, &v72, a2, a3);
    v58 = v74;
    *v59 = *v75;
    *&v59[9] = *&v75[9];
    v56 = v72;
    v57 = v73;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v65[68]) <= 0xFEuLL)
    {
      v49 = v64;
      v15 = *&v65[64] | (*&v65[68] << 32);
      *&v72 = v6;
      *(&v72 + 1) = v5;
      LOBYTE(v73) = v7;
      BYTE1(v73) = v42;
      *&v74 = 0;
      *(&v73 + 1) = 0;
      BYTE8(v74) = v51;
      memset(v75, 0, 24);
      v75[24] = v53;
      outlined destroy of Material.Context(&v72);
      if (v15 >> 40)
      {
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = 0;
      }

      else
      {
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
        v16 = swift_allocObject();
        *(v16 + 16) = v49;
        *(v16 + 32) = 2143289344;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v16;
      }

      *(a1 + 40) = 0;
      goto LABEL_15;
    }

LABEL_14:
    SystemColorsStyle._apply(to:)(a1);
    *&v72 = v6;
    *(&v72 + 1) = v5;
    LOBYTE(v73) = v41;
    BYTE1(v73) = v42;
    *&v74 = 0;
    *(&v73 + 1) = 0;
    BYTE8(v74) = v51;
    memset(v75, 0, 24);
    v75[24] = v53;
    outlined destroy of Material.Context(&v72);
LABEL_15:
    *(a1 + 107) = v44;
    return;
  }

  if (*(a1 + 24) != 1)
  {
    v42 = *(a1 + 106);
    v44 = v4;
    *&v76 = v6;
    *(&v76 + 1) = v5;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    v51 = v82;
    BYTE8(v78) = v82;
    memset(v79, 0, 24);
    v41 = v7;
    v53 = v80;
    v79[24] = v80;
    v74 = v78;
    *v75 = 0uLL;
    *&v75[9] = *&v79[9];
    v72 = v76;
    v73 = v77;
    v17 = *(a3 + 24);

    outlined init with copy of Material.Context(&v76, v71);
    v17(&v64, v9, &v72, a2, a3);
    v58 = v74;
    *v59 = *v75;
    *&v59[9] = *&v75[9];
    v56 = v72;
    v57 = v73;
    outlined destroy of Material.Context(&v56);
    if (HIBYTE(*&v65[68]) <= 0xFEuLL)
    {
      v50 = v64;
      v19 = *&v65[64] | (*&v65[68] << 32);
      *&v72 = v6;
      *(&v72 + 1) = v5;
      LOBYTE(v73) = v7;
      BYTE1(v73) = v42;
      *&v74 = 0;
      *(&v73 + 1) = 0;
      BYTE8(v74) = v51;
      memset(v75, 0, 24);
      v75[24] = v53;
      outlined destroy of Material.Context(&v72);
      if (!(v19 >> 41))
      {
        type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
        v20 = swift_allocObject();
        *(v20 + 16) = v50;
        *(v20 + 32) = 2143289344;
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v20;
        *(a1 + 40) = 3;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*a1)
  {

    SystemColorsStyle._apply(to:)(a1);
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
LABEL_48:
    memset(&v65[32], 0, 24);
    v65[56] = v80;
    goto LABEL_49;
  }

  if (v10 == v11)
  {

LABEL_47:
    *&v64 = v6;
    *(&v64 + 1) = v5;
    v65[0] = v7;
    v65[1] = v8;
    *&v65[2] = v83;
    *&v65[6] = v84;
    *&v65[8] = 0;
    *&v65[16] = 0;
    v65[24] = v82;
    *&v65[25] = *v81;
    *&v65[28] = *&v81[3];
    goto LABEL_48;
  }

  if (v11 < v10)
  {
    goto LABEL_51;
  }

  v45 = v4;
  v47 = a1[2];
  if (v10 < v11)
  {
    v48 = *(a3 + 24);
    *&v76 = v6;
    *(&v76 + 1) = v5;
    v43 = v8;
    LOBYTE(v77) = v7;
    BYTE1(v77) = v8;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    BYTE8(v78) = v82;
    v79[24] = v80;
    memset(v79, 0, 24);

    v46 = a2;
    while (1)
    {
      v22 = v6;
      v23 = v10 + 1;
      v58 = v78;
      *v59 = *v79;
      *&v59[9] = *&v79[9];
      v56 = v76;
      v57 = v77;
      outlined init with copy of Material.Context(&v76, &v72);
      v48(&v64, v10, &v56, a2, a3);
      v74 = v58;
      *v75 = *v59;
      *&v75[9] = *&v59[9];
      v72 = v56;
      v73 = v57;
      outlined destroy of Material.Context(&v72);
      v24 = v64;
      v25 = *v65;
      v68 = *&v65[4];
      v69 = *&v65[20];
      v70[0] = *&v65[36];
      v26 = *&v65[68];
      *(v70 + 12) = *&v65[48];
      if (HIBYTE(*&v65[68]) <= 0xFEuLL)
      {
        v31 = *&v65[64];
        v32 = MEMORY[0x1E69E7CC0];
        if (*(a1 + 40) == 1)
        {
          v32 = a1[4];

          outlined consume of _ShapeStyle_Shape.Result(v33, 1u);
          a1[4] = 0;
          *(a1 + 40) = 5;
        }

        v62 = v32;
        v34 = v31 & 0xFFFF0000FFFFFFFFLL | (v26 << 32);
        *&v56 = v32;
        LOBYTE(v54) = 0;
        _ShapeStyle_Pack.subscript.getter(&v54, v10, &v64);
        if (v34 >> 40)
        {
          v6 = v22;
          v58 = *&v65[16];
          *v59 = *&v65[32];
          *&v59[16] = *&v65[48];
          *&v59[30] = *&v65[62];
          v56 = v64;
          v57 = *v65;
          outlined destroy of _ShapeStyle_Pack.Fill(&v56);
          if (v34 >> 40 == 1)
          {
            v64 = v24;
            *v65 = 2143289344;
            v65[69] = 0;
            v54 = v25;
            v55 = 0;
            _ShapeStyle_Pack.Style.applyBlend(_:)(&v54);
          }

          else
          {
            v65[68] = BYTE4(v34);
            v64 = v24;
            *&v65[4] = v68;
            *&v65[20] = v69;
            *&v65[36] = v70[0];
            *&v65[48] = *(v70 + 12);
            *v65 = v25;
            *&v65[64] = v34;
            v65[69] = 5;
          }
        }

        else
        {
          v58 = *&v65[16];
          *v59 = *&v65[32];
          *&v59[16] = *&v65[48];
          *&v59[30] = *&v65[62];
          v56 = v64;
          v57 = *v65;
          outlined destroy of _ShapeStyle_Pack.Fill(&v56);
          v64 = v24;
          *v65 = 2143289344;
          v65[69] = 0;
          v6 = v22;
        }

        *&v59[16] = *&v65[48];
        *&v59[32] = *&v65[64];
        v60 = v66;
        v61 = v67;
        v56 = v64;
        v57 = *v65;
        v58 = *&v65[16];
        *v59 = *&v65[32];
        LOBYTE(v54) = 0;
        _ShapeStyle_Pack.subscript.setter(&v56, &v54, v10);
        v36 = v62;
        v37 = a1[4];
        v38 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v37, v38);
        a1[4] = v36;
        *(a1 + 40) = 1;

        goto LABEL_25;
      }

      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_51:
        __break(1u);
        break;
      }

      *a1 = 0;
      a1[1] = v10;
      a1[2] = v23;
      *(a1 + 24) = 1;
      if (v10 <= 4)
      {
        if (v10 > 4u)
        {
          goto LABEL_53;
        }

        v6 = v22;
        v27 = v10 + 13;
        if (v5)
        {
LABEL_30:

          v28 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v6);
          v30 = v29;

          goto LABEL_44;
        }
      }

      else
      {
        v27 = 17;
        v6 = v22;
        if (v5)
        {
          goto LABEL_30;
        }
      }

      v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v6);
      if (v35)
      {
        v28 = v35[9];
        v30 = v35[10];
      }

      else
      {
        v28 = &type metadata for CoreUIDefaultSystemColorDefinition;
        v30 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      }

LABEL_44:
      LOBYTE(v56) = v27;
      *&v64 = v6;
      *(&v64 + 1) = v5;
      (v30[1])(v71, &v56, &v64, v28, v30);
      *&v65[20] = v57;
      *&v65[36] = v58;
      *&v65[52] = *v59;
      *&v65[68] = v59[16];
      *&v65[4] = v56;
      v64 = v71[0];
      *v65 = 2143289344;
      *&v65[72] = 1065353216;
      *&v66 = 0;
      BYTE8(v66) = -1;
      *(&v66 + 9) = v62;
      HIDWORD(v66) = *(&v62 + 3);
      v39 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
      v63 = 0;
      if (*(a1 + 40) == 1)
      {
        v39 = a1[4];

        outlined consume of _ShapeStyle_Shape.Result(v40, 1u);
        a1[4] = 0;
        *(a1 + 40) = 5;
      }

      v54 = v39;
      _ShapeStyle_Pack.subscript.setter(&v64, &v63, v10);
      v21 = v54;
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = v21;
      *(a1 + 40) = 1;
LABEL_25:
      a2 = v46;
      v10 = v23;
      if (v47 == v23)
      {
        v8 = v43;
        v4 = v45;
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t Transaction.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized Transaction.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t specialized Transaction.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TransactionPropertyKey(0, a3, a4, a4);
  swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v5);

  return specialized PropertyList.subscript.setter(a1, v5, v5, v6);
}

uint64_t _ConditionalContent.Info.matches(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for _ConditionalContent.Storage(255, v7, v8, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v25 - v12;
  v15 = type metadata accessor for _ConditionalContent(0, v7, v8, v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v19 + 16))(&v25 - v17, v5, v16);
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v9 - 8);
  (*(v21 + 32))(v13, v18, v9);
  (*(v21 + 16))(&v13[v20], a1, v9);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v11 + 8))(v13, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v24 = *(v21 + 8);
  v24(&v13[v20], v9);
  v24(v13, v9);
  return 1;
}

unsigned __int8 *assignWithCopy for _ConditionalContent.Info(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if (a1 != a2)
  {
    v8 = *(a3 + 24);
    v9 = *(v8 - 8);
    if (*(v9 + 64) <= *(v7 + 64))
    {
      v10 = *(v7 + 64);
    }

    else
    {
      v10 = *(v9 + 64);
    }

    v11 = a1[v10];
    v12 = v11 - 2;
    if (v11 >= 2)
    {
      if (v10 <= 3)
      {
        v13 = v10;
      }

      else
      {
        v13 = 4;
      }

      if (v13 <= 1)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = *a1;
      }

      else if (v13 == 2)
      {
        v14 = *a1;
      }

      else if (v13 == 3)
      {
        v14 = *a1 | (a1[2] << 16);
      }

      else
      {
        v14 = *a1;
      }

      v15 = (v14 | (v12 << (8 * v10))) + 2;
      v11 = v14 + 2;
      if (v10 < 4)
      {
        v11 = v15;
      }
    }

LABEL_19:
    if (v11 == 1)
    {
      v16 = *(*(a3 + 24) - 8);
    }

    else
    {
      v16 = *(*(a3 + 16) - 8);
    }

    if (v11 == 1)
    {
      v17 = *(a3 + 24);
    }

    else
    {
      v17 = *(a3 + 16);
    }

    (*(v16 + 8))(a1, v17);
    v18 = a2[v10];
    v19 = v18 - 2;
    if (v18 < 2)
    {
      v22 = v7;
    }

    else
    {
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v21 = *a2;
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (a2[2] << 16);
        }

        else
        {
          v21 = *a2;
        }

        v22 = v7;
LABEL_39:
        v23 = (v21 | (v19 << (8 * v10))) + 2;
        v18 = v21 + 2;
        if (v10 < 4)
        {
          v18 = v23;
        }

        goto LABEL_41;
      }

      v22 = v7;
      if (v20)
      {
        v21 = *a2;
        goto LABEL_39;
      }
    }

LABEL_41:
    v24 = v18 == 1;
    if (v18 == 1)
    {
      v25 = v9;
    }

    else
    {
      v25 = v22;
    }

    if (v18 == 1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v6;
    }

    (*(v25 + 16))(a1, a2, v26);
    a1[v10] = v24;
  }

  v27 = *(v7 + 64);
  v28 = *(*(a3 + 24) - 8);
  if (*(v28 + 64) > v27)
  {
    v27 = *(v28 + 64);
  }

  v29 = v27 + 8;
  v30 = (&a1[v29] & 0xFFFFFFFFFFFFFFF8);
  v31 = *(&a2[v29] & 0xFFFFFFFFFFFFFFF8);
  v32 = *v30;
  *v30 = v31;
  v33 = v31;

  return a1;
}

uint64_t PropertyList.forEach<A>(keyType:_:)(int a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, Swift::Int hashValue, uint64_t a6)
{
  v6 = 1;
  if (a4)
  {
    v9 = a4;
    v12.value = BloomFilter.init(hashValue:)(hashValue).value;
    v13 = v19;
    v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12.value);
    v17[2] = hashValue;
    v17[3] = a6;
    v17[4] = a2;
    v17[5] = a3;
    v18 = 0;
    while (1)
    {
      while ((v13 & ~v9[7]) != 0)
      {
        v9 = v9[5];
        if (!v9)
        {
          return 1;
        }
      }

      if (v9[3])
      {
        v19 = v13;
        v15 = PropertyList.Element.forEach(filter:_:)(&v19, partial apply for closure #1 in PropertyList.forEach<A>(keyType:_:), v17, v14);
        v18 = (v15 & 1) == 0;
        if ((v15 & 1) == 0)
        {
          break;
        }
      }

      closure #1 in PropertyList.forEach<A>(keyType:_:)(v9, &v18, a2, a3, hashValue, a6);
      if (v18)
      {
        break;
      }

      v9 = v9[4];
      if (!v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return v6;
}

void closure #1 in PropertyList.forEach<A>(keyType:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v15 - v13;
  if (*(v12 + 16) == a5)
  {
    closure #2 in closure #1 in PropertyList.subscript.getter(v12, v14);
    a3(v14, a2);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }
}

uint64_t Color._adaptive.getter(uint64_t a1)
{
  type metadata accessor for ColorBox<AdaptiveColorProvider>(0, &lazy cache variable for type metadata for ColorBox<AdaptiveColorProvider>, lazy protocol witness table accessor for type AdaptiveColorProvider and conformance AdaptiveColorProvider, &unk_1F00B8018);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2;
}

void type metadata accessor for ColorBox<AdaptiveColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for ColorBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type AdaptiveColorProvider and conformance AdaptiveColorProvider()
{
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AdaptiveColorProvider, &unk_1F00B8018, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AdaptiveColorProvider, &unk_1F00B8018, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for AdaptiveColorProvider, &unk_1F00B8018, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AdaptiveColorProvider and conformance AdaptiveColorProvider);
  }
}

uint64_t one-time initialization function for lazyStack()
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_4(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, static Log.lazyStack);
  v5 = __swift_project_value_buffer(v1, static Log.lazyStack);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x193ABEC20](0xD000000000000022, 0x800000018DD83690);
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

void type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for DynamicViewList<AnyView>.Item(255, a3, a4, a5, type metadata accessor for DynamicViewList.Item);
    v6 = type metadata accessor for Unmanaged();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Unmanaged<DynamicViewList<AnyView>.Item>])
  {
    type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(255, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>, &lazy cache variable for type metadata for DynamicViewList<AnyView>.Item, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Unmanaged<DynamicViewList<AnyView>.Item>]);
    }
  }
}

void type metadata accessor for Unmanaged<DynamicViewList<AnyView>.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>)
  {
    type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(255, &lazy cache variable for type metadata for DynamicViewList<AnyView>.Item, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList.Item);
    v1 = type metadata accessor for Unmanaged();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<AnyView>.Item>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey>, &type metadata for EnvironmentValues.AllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.AllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AllowedDynamicRangeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t type metadata completion function for _AnimationView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

BOOL PropertyList.mayNotBeEqual(to:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return a1 != 0;
  }

  if (!a1)
  {
    return 1;
  }

  v6 = MEMORY[0x1E69E7CC0];

  v4 = compareLists(_:_:ignoredTypes:)(a2, a1, &v6);

  return !v4;
}

unsigned int *storeEnumTagSinglePayload for AnyTransition.RemovalVisitor(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyTransition.RemovalVisitor(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

uint64_t one-time initialization function for v3_2()
{
  result = swiftUI_v3_2_os_versions();
  static Semantics.v3_2 = HIDWORD(result);
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021AllowsVibrantBlendingV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
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

double PlatformViewDisplayList.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t initializeWithCopy for PlatformImageRepresentableContext(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6, v10);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v11;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v12 = a2[22];
  *(a1 + 176) = v12;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  v14 = a2[24];
  v13 = a2[25];
  *(a1 + 192) = v14;
  *(a1 + 200) = v13;
  swift_unknownObjectRetain();

  v15 = v12;

  return a1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.tintColor.getter@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t StaticIf<>.init<>(_:then:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  a2();
  v6 = *(*(a4 - 8) + 8);

  return v6(a1, a4);
}

double destroy for PlatformImageRepresentableContext(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3, *(a1 + 136));
  }

  swift_unknownObjectRelease();

  return result;
}

id static Material.coreMaterial(bundle:provider:)@<X0>(void *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v5 = a2(&v15);
  v7 = v6;
  v14 = 1;
  v8 = a2(&v14);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  v11[6] = a1;
  *(a3 + 12) = 0;
  *a3 = v11;
  *(a3 + 8) = 0;

  return a1;
}

uint64_t sub_18D2E2EE4()
{

  return swift_deallocObject();
}

uint64_t Material.applyingFiltersInPlace(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 12);
  *a2 = *v2;
  v5 = *(v2 + 8);
  *(a2 + 8) = v5;
  v6 = v4 & 0xFFFFFF7F;
  if (a1)
  {
    v7 = 128;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 12) = v6 | v7;
  return outlined copy of Material.ID(v3, v5);
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatformNamedImageRepresentableContext(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

uint64_t ImageResolutionContext.init(environment:textStyle:transaction:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  *(a4 + 2) = 0;
  v9 = type metadata accessor for ImageResolutionContext(0);
  v10 = v9[6];
  v11 = type metadata accessor for Text.Style(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  v12 = v9[7];
  v13 = &a4[v9[8]];
  *v13 = 520;
  v13[2] = 2;
  a4[v9[9]] = 3;
  a4[v9[10]] = 1;
  *a4 = v7;
  *(a4 + 1) = v8;
  result = outlined assign with take of Text.Style?(a2, &a4[v10]);
  *&a4[v12] = a3;
  return result;
}

double Image.NamedImageProvider.resolveNamedImage(in:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  v8 = *(v2 + 20);
  v33 = *(v2 + 21);
  v34 = *(v2 + 23);
  v9 = v2[3];
  v10 = *(v2 + 3);
  v31 = *(v2 + 2);
  *v32 = v10;
  *&v32[9] = *(v2 + 57);
  v21 = v5;
  *&v27 = v5;
  *(&v27 + 1) = v6;
  LODWORD(v28) = v7;
  BYTE4(v28) = v8;
  *(&v28 + 5) = *(v2 + 21);
  BYTE7(v28) = *(v2 + 23);
  *(&v28 + 1) = v9;
  v11 = *(v2 + 3);
  v29 = *(v2 + 2);
  v30[0] = v11;
  *(v30 + 9) = *(v2 + 57);
  Image.NamedImageProvider.resolve(in:)(a1, v35);
  outlined init with copy of GraphicsImage(v35, &v27);
  outlined destroy of Image.Resolved(v35);
  if (v35[8] == 255)
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    outlined destroy of GraphicsImage(v35);
    v12 = *a1;
    v13 = a1[1];
    v14 = *(a1 + *(type metadata accessor for ImageResolutionContext(0) + 32));
    if (v14 == 8)
    {
      if (v13)
      {

        swift_retain_n();
        v15 = &v27;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v12, &v27);
      }

      else
      {

        v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v17);
        if (v18)
        {
          v15 = (v18 + 9);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v15 = &static SymbolRenderingOptionsKey.defaultValue;
        }
      }

      v14 = *v15;
    }

    else
    {
    }

    *&v27 = v21;
    *(&v27 + 1) = v6;
    LODWORD(v28) = v7;
    BYTE4(v28) = v8;
    *(&v28 + 5) = v33;
    BYTE7(v28) = v34;
    *(&v28 + 1) = v9;
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    v23[0] = v12;
    v23[1] = v13;
    v22 = v9;
    outlined copy of Image.Location(v9);
    outlined copy of Image.Location(v9);
    Image.NamedImageProvider.bitmapInfo(in:from:)(v23, &v22, v24);
    outlined consume of Image.Location(v22);
    v30[0] = v25;
    v30[1] = v26[0];
    *(&v30[1] + 9) = *(v26 + 9);
    v27 = v24[0];
    v28 = v24[1];
    v29 = v24[2];
    if (v25 == 3)
    {
      v19 = 0;
    }

    else
    {
      *&v24[0] = v12;
      *(&v24[0] + 1) = v13;
      LOBYTE(v23[0]) = v30[0];
      v20 = EnvironmentValues.imageIsTemplate(renderingMode:)(v23);
      outlined destroy of NamedImage.BitmapKey(&v27, type metadata accessor for NamedImage._BitmapInfo<GraphicsImage.Contents>?);
      v19 = 0x1000000000000;
      if ((v20 & 1) == 0)
      {
        v19 = 0;
      }
    }

    LOBYTE(v24[0]) = v8 & 1;
    *a2 = v21;
    *(a2 + 8) = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v7 | ((v8 & 1) << 32) | (v14 << 40) | v19;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
  }

  return result;
}

uint64_t Image.NamedImageProvider.bitmapInfo(in:from:)@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  v13 = *v3;
  v12 = v3[1];
  v17[1] = a1[1];
  v18 = v11;
  v17[0] = v10;

  outlined copy of Image.Location(v11);

  NamedImage.BitmapKey.init(name:location:in:)(v13, v12, &v18, v17, v9);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  v14 = *(v9 + 4);
  v17[0] = v14;
  outlined copy of Image.Location(v14);
  NamedImage.Cache.subscript.getter(v9, v17, a3);
  outlined consume of Image.Location(v14);
  return outlined destroy of NamedImage.BitmapKey(v9, type metadata accessor for NamedImage.BitmapKey);
}

void specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  if (a5 >> 1 != a4)
  {
    if ((a5 >> 1) <= a4)
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = a5;
    v12 = a3 + 16 * a4;
    v13 = *v12;
    v14 = *(v12 + 8);
    v56 = v14;
    if (v13 != 8)
    {
      LOBYTE(v14) = 1;
    }

    v54 = a5 >> 1;
    if ((a1 & 0x100) != 0)
    {
      if (v14)
      {
        v15 = v13;
        v21 = a1;
        _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_18DDACA80;
        *(v22 + 32) = v21 & 1;
        *(v22 + 33) = 1;
        *(v22 + 34) = v21 & 1;
        *(v22 + 35) = 512;
        *(v22 + 37) = 1;
        v18 = (v22 + 38);
        v19 = v22;
        v20 = (v22 + 39);
LABEL_10:
        *v18 = 2;
        *v20 = 0;
        v13 = v15;
        v23 = v19;
        v24 = v19[2];
        if (!v24)
        {
          goto LABEL_55;
        }

        goto LABEL_13;
      }

      v23 = &outlined read-only object #0 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      v24 = qword_1F00441A0;
      if (qword_1F00441A0)
      {
LABEL_13:
        v49 = v9;
        v50 = a2;
        v25 = 0;
        v26 = v23 + 33;
        v27 = v56;
        v51 = v13;
        v52 = a6;
        while (1)
        {
          if (!v25)
          {
            v28 = *(v26 - 1);
            v29 = 0xD00000000000001BLL;
            if (!*v26)
            {
              v29 = 0x7261657070414955;
            }

            v31 = "UIAppearanceHighContrastAny";
            v30 = 0x800000018DD7CA20;
            if (!*v26)
            {
              v30 = 0xEF796E4165636E61;
            }

            v32 = 0xD00000000000001CLL;
            if (!*v26)
            {
              v32 = 0xD000000000000010;
              v31 = "UIAppearanceHighContrastDark";
            }

            v33 = v31 | 0x8000000000000000;
            if (*v26)
            {
              v34 = 0xD00000000000001DLL;
            }

            else
            {
              v34 = 0xD000000000000011;
            }

            v35 = "UIAppearanceDark";
            if (!*v26)
            {
              v35 = "UIAppearanceHighContrastLight";
            }

            v36 = v35 | 0x8000000000000000;
            if (v28)
            {
              v34 = v32;
              v37 = v33;
            }

            else
            {
              v37 = v36;
            }

            if (v28 == 2)
            {
              v38 = v29;
            }

            else
            {
              v38 = v34;
            }

            if (v28 == 2)
            {
              v39 = v30;
            }

            else
            {
              v39 = v37;
            }

            v40 = a6(v38, v39);
            v25 = v40;
            if (!v40)
            {
              goto LABEL_14;
            }

            if (!v27)
            {

              if ([v25 idiom] != v13)
              {

                v25 = 0;
              }

              goto LABEL_15;
            }

            if (v13)
            {
              v41 = [v40 appearance];
              if (v41)
              {
                v42 = v41;
                v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v45 = v44;

                if (v43 == v38 && v45 == v39)
                {
                }

                else
                {
                  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v47 & 1) == 0)
                  {

                    v25 = 0;
                  }
                }

                v13 = v51;
                a6 = v52;
                v27 = v56;
              }

              else
              {

                v25 = 0;
                v27 = v56;
              }
            }

            else
            {
LABEL_14:
            }
          }

LABEL_15:
          v26 += 2;
          if (!--v24)
          {

            a2 = v50;
            v9 = v49;
            if (v25)
            {
              return;
            }

LABEL_56:
            if (!__OFSUB__(v54, a4))
            {
              v48 = a4 + 1;
              if (!__OFADD__(a4, 1))
              {
                if (v54 >= v48)
                {
                  if (v48 >= a4)
                  {
                    swift_unknownObjectRetain();
                    specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:)(a1 & 0x101, a2, a3, v48, v9, a6, a7);
                    swift_unknownObjectRelease();
                    return;
                  }

                  goto LABEL_65;
                }

LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                return;
              }

LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }
        }
      }
    }

    else
    {
      if (v14)
      {
        v15 = v13;
        v16 = a1;
        _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(ColorScheme?, ColorSchemeContrast)>, type metadata accessor for (ColorScheme?, ColorSchemeContrast), MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_18DDAB4C0;
        *(v17 + 32) = v16 & 1;
        *(v17 + 33) = 0;
        v18 = (v17 + 34);
        v19 = v17;
        v20 = (v17 + 35);
        goto LABEL_10;
      }

      v23 = &outlined read-only object #1 of specialized CUICatalog.findAsset<A, B>(key:matchTypes:assetLookup:);
      v24 = qword_1F00441C8;
      if (qword_1F00441C8)
      {
        goto LABEL_13;
      }
    }

LABEL_55:

    goto LABEL_56;
  }
}

uint64_t getEnumTag for GroupElementsOfContent.Storage(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 64;
  if (*(v2 + 64) > 0x40uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for GroupElementsOfContent.Storage(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void lazy protocol witness table accessor for type EmptyVisualEffect and conformance EmptyVisualEffect()
{
  if (!lazy protocol witness table cache variable for type EmptyVisualEffect and conformance EmptyVisualEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for EmptyVisualEffect, &type metadata for EmptyVisualEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type EmptyVisualEffect and conformance EmptyVisualEffect);
  }
}

void lazy protocol witness table accessor for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>()
{
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(255, &lazy cache variable for type metadata for RendererVisualEffect<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererVisualEffect);
    swift_getWitnessTable(protocol conformance descriptor for RendererVisualEffect<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TransactionModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  outlined init with copy of _ViewListInputs(a2, v11);
  v10 = v7;
  v8 = off_1F00B84C8(&v10, v11, a5);
  a3(v8, v11);
  return outlined destroy of _ViewListInputs(v11);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _TransactionModifier(_DWORD *a1, uint64_t a2)
{
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ChildTransaction and conformance ChildTransaction();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a2 + 28) = result;
  return result;
}

uint64_t type metadata completion function for StrokeBorderShapeView(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v16[4] = *(result - 8) + 64;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = type metadata accessor for _StrokedShape(255, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v6);
    v8 = a1[3];
    swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v7);
    v9 = a1[6];
    v16[0] = v7;
    v16[1] = v8;
    v16[2] = v10;
    v16[3] = v9;
    v11 = type metadata accessor for _ShapeView(255, v16);
    v13 = type metadata accessor for _BackgroundModifier(255, a1[4], a1[7], v12);
    result = type metadata accessor for ModifiedContent(319, v11, v13, v14);
    if (v15 <= 0x3F)
    {
      v16[5] = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ScrollPositionBindingModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _BYTE *))
{
  v9 = *a1;
  outlined init with copy of _ViewListInputs(a2, v13);
  v12 = v9;
  v10 = a7(&v12, v13);
  a3(v10, v13);
  return outlined destroy of _ViewListInputs(v13);
}

double specialized static ScrollPositionBindingModifier._makeInputs(modifier:inputs:)(unsigned int *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10[0] = AGGraphCreateOffsetAttribute2();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(0, &lazy cache variable for type metadata for UnitPoint?, &type metadata for UnitPoint, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor();
  v4 = Attribute.init<A>(body:value:flags:update:)();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, 0xFF00000000);

  v5 = *MEMORY[0x1E698D3F8];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v5);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020ScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(a2, v4);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE014ScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(a2, OffsetAttribute2);

  v6 = *(a2 + 7);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v10[0] = OffsetAttribute2;
  v10[1] = v4;
  v10[2] = v6;
  outlined init with copy of ScrollPositionBindingModifier.MakeRequest(v10, v9);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ScrollStateRequest?(0);
  lazy protocol witness table accessor for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest();
  v7 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v9);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(a2, v7);
  outlined destroy of ScrollPositionBindingModifier.MakeRequest(v10);

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnchorGeometryTransform<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for AnchorGeometryTransform<A>, a1);

  return static AsyncAttribute.flags.getter();
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI7BindingVyAA14ScrollPositionVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void lazy protocol witness table accessor for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor()
{
  if (!lazy protocol witness table cache variable for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollPositionBindingModifier.AdjustedAnchor, &type metadata for ScrollPositionBindingModifier.AdjustedAnchor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollPositionBindingModifier.AdjustedAnchor and conformance ScrollPositionBindingModifier.AdjustedAnchor);
  }
}

uint64_t initializeWithCopy for ScrollPositionBindingModifier.MakeRequest(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 80);
  if (v2)
  {
    if (*(a2 + 73))
    {
      v3 = *(a2 + 32);
      *(result + 16) = *(a2 + 16);
      *(result + 32) = v3;
      *(result + 48) = *(a2 + 48);
      *(result + 58) = *(a2 + 58);
    }

    else
    {
      v6 = *(a2 + 40);
      *(result + 40) = v6;
      v7 = result;
      v8 = a2;
      (**(v6 - 8))(result + 16, a2 + 16);
      a2 = v8;
      result = v7;
      *(v7 + 56) = *(v8 + 56);
      *(v7 + 72) = *(v8 + 72);
      *(v7 + 73) = 0;
      v2 = *(v8 + 80);
    }

    v9 = *(a2 + 88);
    v10 = *(a2 + 96);
    *(result + 80) = v2;
    *(result + 88) = v9;
    *(result + 96) = v10;
  }

  else
  {
    v4 = *(a2 + 64);
    *(result + 48) = *(a2 + 48);
    *(result + 64) = v4;
    *(result + 80) = *(a2 + 80);
    *(result + 96) = *(a2 + 96);
    v5 = *(a2 + 32);
    *(result + 16) = *(a2 + 16);
    *(result + 32) = v5;
  }

  return result;
}

void type metadata accessor for ScrollStateRequest?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScrollStateRequest?)
  {
    type metadata accessor for ScrollStateRequest();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScrollStateRequest?);
    }
  }
}

unint64_t type metadata accessor for ScrollStateRequest()
{
  result = lazy cache variable for type metadata for ScrollStateRequest;
  if (!lazy cache variable for type metadata for ScrollStateRequest)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollStateRequest);
  }

  return result;
}

void lazy protocol witness table accessor for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest()
{
  if (!lazy protocol witness table cache variable for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollPositionBindingModifier.MakeRequest, &type metadata for ScrollPositionBindingModifier.MakeRequest, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollPositionBindingModifier.MakeRequest and conformance ScrollPositionBindingModifier.MakeRequest);
  }
}

uint64_t outlined destroy of ScrollPositionBindingModifier.MakeRequest(uint64_t result)
{
  if (*(result + 80))
  {
    if (!*(result + 73))
    {
      v1 = result;
      __swift_destroy_boxed_opaque_existential_1((result + 16));
      return v1;
    }
  }

  return result;
}

void *Color.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for NamedResource();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResourceReference();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x193ABE0F0](v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6966780])
  {
    (*(v7 + 96))(v10, v6);
    v11 = (*(v3 + 32))(v5, v10, v2);
    v12 = MEMORY[0x193ABE130](v11);
    v14 = v13;
    v15 = NamedResource.bundle.getter();
    v16 = type metadata accessor for ColorResource();
    (*(*(v16 - 8) + 8))(a1, v16);
    (*(v3 + 8))(v5, v2);
    type metadata accessor for ColorBox<Color.NamedColor>(0);
    result = swift_allocObject();
    result[2] = v12;
    result[3] = v14;
    result[4] = v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata accessor for ColorBox<Color.NamedColor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<Color.NamedColor>)
  {
    lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor();
    v4 = type metadata accessor for ColorBox(a1, &type metadata for Color.NamedColor, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ColorBox<Color.NamedColor>);
    }
  }
}

void lazy protocol witness table accessor for type Color.NamedColor and conformance Color.NamedColor()
{
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedColor, &type metadata for Color.NamedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedColor, &type metadata for Color.NamedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedColor, &type metadata for Color.NamedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedColor and conformance Color.NamedColor);
  }
}

uint64_t type metadata completion function for ScaledShape(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t *a1, int a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollTargetRoleKey);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE016ScrollTargetRoleV033_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != a2)
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.ScrollTargetRoleKey>, &type metadata for _GraphInputs.ScrollTargetRoleKey, &protocol witness table for _GraphInputs.ScrollTargetRoleKey, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.ScrollTargetRoleKey, 0, v6);
  }
}

double _GraphInputs.scrollTargetRole.setter(int a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v1, a1);

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.RemovePreferenceInput);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE21RemovePreferenceInput33_D49197C3D3C61F0DA0F0CF1D72D0077ALLV_Tt0B5(v4, v7);
  if (!v5 || *(v5 + 72) != (a2 & 1))
  {
    v6 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<_GraphInputs.RemovePreferenceInput>, &type metadata for _GraphInputs.RemovePreferenceInput, &protocol witness table for _GraphInputs.RemovePreferenceInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for _GraphInputs.RemovePreferenceInput, 0, v6);
  }
}

double _GraphInputs.scrollTargetRemovePreference.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v1, a1);

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPositionStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t assignWithTake for _VariadicView_Children(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t partial apply for specialized closure #2 in KeyPath.makeGetFunction()(uint64_t a1)
{
  return specialized closure #2 in KeyPath.makeGetFunction()(a1, v1);
}

{
  return specialized closure #2 in KeyPath.makeGetFunction()(a1, v1);
}

uint64_t specialized closure #2 in KeyPath.makeGetFunction()(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _VariadicView_Children.Element(a1, v3);
  swift_getAtKeyPath();
  return outlined destroy of _VariadicView_Children.Element(v3);
}

{
  outlined init with copy of Subview(a1, v3);
  swift_getAtKeyPath();
  return outlined destroy of Subview(v3);
}

void lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider()
{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider)
  {
    swift_getWitnessTable("\u0558&b", &unk_1F00763C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider);
  }
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?)
  {
    _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(255, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item, type metadata accessor for ForEachState.Item);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?);
    }
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x193AC01F0](v10, a1);
      outlined destroy of AnyHashable(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  v3 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E69694A8]), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      lazy protocol witness table accessor for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E69694B0]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t type metadata completion function for ApplyTransitionModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double sub_18D2E53E8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v22[0] = *a1;
  v1 = v22[0];
  v22[1] = v2;
  v22[2] = v3;
  v22[3] = v4;
  v5 = type metadata accessor for AsymmetricTransition(255, v22);
  v8 = type metadata accessor for PlaceholderContentView(255, v5, v6, v7);
  v10 = type metadata accessor for ApplyTransitionModifier(255, v1, v3, v9);
  v12 = type metadata accessor for ModifiedContent(255, v8, v10, v11);
  v14 = type metadata accessor for ApplyTransitionModifier(255, v2, v4, v13);
  v16 = type metadata accessor for ModifiedContent(255, v12, v14, v15);
  v21[0] = &protocol witness table for PlaceholderContentView<A>;
  v21[1] = &protocol witness table for ApplyTransitionModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v21);
  v20[0] = v18;
  v20[1] = &protocol witness table for ApplyTransitionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v20, WitnessTable);
}

uint64_t initializeWithCopy for LazyFocusableFillerBoundsProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void *ScrollStateEnqueueRequests.init(phaseState:scrollable:inputs:outputs:)@<X0>(int a1@<W0>, int a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a3[3];
  v32 = a3[2];
  v33 = v8;
  v34 = a3[4];
  v35 = *(a3 + 20);
  v9 = a3[1];
  v30 = *a3;
  v31 = v9;
  v10 = *a4;
  v11 = *MEMORY[0x1E698D3F8];
  v12 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v13 = *(v12 + 64);

  *(a5 + 28) = v13;
  *(a5 + 32) = 0xFFFFFFFFLL;
  *(a5 + 40) = 0;
  *(a5 + 44) = 0xFFFFFFFF00000000;
  *(a5 + 52) = 0;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(a5 + 56) = v15;
  *a5 = a1;
  *(a5 + 4) = a2;
  v16 = v30;
  *(a5 + 8) = *(&v31 + 1);
  v17 = (v10 + 32);
  v18 = *(v10 + 16) + 1;
  while (--v18)
  {
    v19 = v17 + 3;
    v20 = *v17;
    v17 += 3;
    if (v20 == &type metadata for UpdateScrollStateRequestKey)
    {
      v21 = *(v19 - 2);
      goto LABEL_6;
    }
  }

  v21 = 0;
LABEL_6:
  v22 = v18 == 0;

  if (v22)
  {
    v23 = v11;
  }

  else
  {
    v23 = v21;
  }

  *(a5 + 16) = v23;
  *(a5 + 20) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v16);
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollPositionKey);
  v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014ScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v16, v29);
  if (v24)
  {
    v25 = *(v24 + 76);
    v26 = *(v24 + 72);
    result = outlined destroy of _ViewInputs(&v30);
    if (v25 <= 0xFEuLL)
    {
      v28 = v26 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
      if ((v28 & 0x100000000) == 0)
      {
        v11 = v28;
      }
    }
  }

  else
  {
    result = outlined destroy of _ViewInputs(&v30);
  }

  *(a5 + 24) = v11;
  return result;
}

uint64_t type metadata completion function for _ForegroundStyleModifier3(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<ObjectIdentifier, ScrollStateRequest>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E5FE0];
    while (1)
    {
      outlined init with copy of (ObjectIdentifier, ScrollStateRequest)(v4, &v12, &lazy cache variable for type metadata for (ObjectIdentifier, ScrollStateRequest), &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, v5);
      v6 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      result = outlined init with take of AnyTrackedValue(&v13, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 48;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ScrollStateRequestKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE018ScrollStateRequestV033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt0B5(a1, v5);
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

    v3 = &static _GraphInputs.ScrollStateRequestKey.defaultValue;
  }

  return *v3;
}

uint64_t initializeWithCopy for ScrollStateEnqueueRequests(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t static Update.locked<A>(_:)(void (*a1)(pthread_t))
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  v3 = _MovableLockLock(static Update._lock);
  a1(v3);
  return _MovableLockUnlock(v2);
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013ScrollAnchorsF033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt2g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013ScrollAnchorsV033_7B1EE599701509BF28EDF9C7B4D1E4E3LLVG_Tt0B5(a1, v14);
  if (v5)
  {
    v6 = v5 + 9;
    v7 = v5 + 10;
    v8 = v5 + 11;
    v9 = (v5 + 12);
  }

  else
  {
    v6 = &static ScrollAnchorsKey.defaultValue;
    v8 = &qword_1ED522CF0;
    v7 = &qword_1ED522CE8;
    v9 = &byte_1ED522CF8;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v10 = *v8;
  v11 = *v7;
  v12 = *v9;
  *a2 = *v6;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v7);
  result = a5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t LayoutComputer.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *v1;
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    return (*(*v6 + 120))(&v8);
  }

  return result;
}

void ViewSizeCache.get(_:makeValue:)(uint64_t a1, double (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v2 + 8);
  v8 = *(v2 + 24);
  v9 = *(v2 + 88);
  v10 = *(v2 + 96);
  if ((*(v2 + 48) & 1) == 0)
  {
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        if (*(v2 + 104))
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    else if ((v7 & 1) != 0 || v3 != *v2)
    {
      goto LABEL_2;
    }

    if (v6)
    {
      if (v8)
      {
        goto LABEL_38;
      }
    }

    else if ((v8 & 1) == 0 && v5 == *(v2 + 16))
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (*(v2 + 104))
  {
    goto LABEL_21;
  }

  if ((v4 & 1) == 0)
  {
    if ((*(v2 + 64) & 1) != 0 || *(v2 + 56) != v3)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v2 + 64) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v6)
  {
    if (*(v2 + 80))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v2 + 80) & 1) == 0 && *(v2 + 72) == v5)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (*(v2 + 160))
  {
    goto LABEL_22;
  }

  if (v4)
  {
    if ((*(v2 + 120) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((*(v2 + 120) & 1) != 0 || *(v2 + 112) != v3)
  {
    goto LABEL_22;
  }

  if ((v6 & 1) == 0)
  {
    if ((*(v2 + 136) & 1) == 0 && *(v2 + 128) == v5)
    {
      goto LABEL_38;
    }

LABEL_22:
    v17 = *(v2 + 104);
    v18 = *(v2 + 72);
    v19 = *(v2 + 56);
    v23 = *(v2 + 48);
    v24 = *(v2 + 24);
    v25 = *(v2 + 32);
    v21 = *(v2 + 8);
    v22 = *(v2 + 16);
    v20 = *v2;
    v26 = *(v2 + 40);
    v12 = swift_beginAccess();
    v13 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      v12 = swift_beginAccess();
      v13[4] = v3;
      *(v13 + 5) = v4;
      v13[6] = v5;
      *(v13 + 28) = v6;
    }

    v14 = a2(v12);
    *(v2 + 112) = v19;
    *(v2 + 128) = v18;
    *(v2 + 144) = v9;
    *(v2 + 152) = v10;
    *(v2 + 160) = v17;
    *(v2 + 56) = v20;
    *(v2 + 64) = v21;
    *(v2 + 72) = v22;
    *(v2 + 80) = v24;
    *(v2 + 88) = v25;
    *(v2 + 96) = v26;
    *(v2 + 104) = v23;
    *v2 = v3;
    *(v2 + 8) = v4;
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v14;
    *(v2 + 40) = v15;
    *(v2 + 48) = 0;
    return;
  }

  if ((*(v2 + 136) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_38:
  swift_beginAccess();
  v16 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v16[4] = v3;
    *(v16 + 5) = v4;
    v16[6] = v5;
    *(v16 + 28) = v6 | 0x100;
  }
}

void type metadata accessor for AnyDynamicFontModifier<Font.WidthModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for AnyDynamicFontModifier(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t initializeWithCopy for LazyPrefetchState(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

int8x16_t ScrollAnchorStorage.anchor(role:)(_BYTE *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v2 + 1);
  v5 = *(v2 + 24);
  v6 = *(v3 + 16);
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  v11 = v4;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)();
  v4 = v11;
  if (v8)
  {
    return *(*(v3 + 56) + 16 * v7);
  }

LABEL_10:
  if (v5)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  return vbicq_s8(v4, vdupq_n_s64(v10));
}

void Color.ResolvedHDR.kitColor.getter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u32[0] = *v4;
  a2.n128_u32[0] = v4[1];
  a3.n128_u32[0] = v4[2];
  a4.n128_u32[0] = v4[3];
  if (one-time initialization token for cache != -1)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    swift_once();
    a4.n128_u32[0] = v8;
    a3.n128_u32[0] = v7;
    a2.n128_u32[0] = v6;
    a1.n128_u32[0] = v5;
  }

  specialized ObjectCache.subscript.getter(a1, a2, a3, a4);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA024UpdateScrollStateRequestI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for UpdateScrollStateRequestKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

double ValueToScrollPosition.get(base:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v11[2] = v5;
  v11[3] = v6;
  v12 = *v2;
  v13 = v4;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ValueToScrollPosition.get(base:), v11, MEMORY[0x1E69E73E0], &type metadata for ScrollPosition, v7, v14);
  if (v15)
  {
    v8 = v14[3];
    *(a2 + 32) = v14[2];
    *(a2 + 48) = v8;
    *(a2 + 64) = v15;
    *(a2 + 80) = v16;
    result = *v14;
    v10 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v10;
  }

  else
  {
    result = 0.0;
    *(a2 + 41) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 57) = 5;
    *(a2 + 64) = v5;
    *(a2 + 72) = v6;
    *(a2 + 80) = 0;
  }

  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      v17 = *(*(v3 + 56) + 16 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v15)
      {
        v16 = vmovn_s64(vceqq_f64(*(*(a2 + 56) + 16 * result), v17));
        if (v16.i32[0] & v16.i32[1])
        {
          continue;
        }
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL static ScrollAnchorStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if ((v4 & 1) == 0)
  {
    return (v7 & 1) == 0 && v2 == v5 && v3 == v6;
  }

  return (v7 & 1) != 0;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for FocusableBounds.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

uint64_t initializeWithCopy for DisplayList.InterpolatorLayer(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  v3 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 52);
  v4 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v4;
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);

  swift_unknownObjectRetain();

  return a1;
}

id closure #1 in implicit closure #1 in closure #3 in DisplayList.GraphicsRenderer.render(item:in:)(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v14 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v14 setDefaultColorSpace_];
  [v14 setDeviceScale_];
  RBDisplayListGetState();
  v15 = RBDrawingStateBeginCGContext();
  v16 = [objc_allocWithZone(CoreGraphicsContext) initWithCGContext_];
  [v16 push];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = static TextDrawingContext.shared;
  if (a8[27])
  {
    v18 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v18 = 0;
  }

  (*(*a8 + 296))(1, v18, v17, a9, 0.0, 0.0, a3, a4, a3, a4);
  [v16 pop];

  RBDrawingStateEndCGContext();
  v19 = [v14 moveContents];

  return v19;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ApplyTransitionModifier<A>.Child(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ApplyTransitionModifier<A>.Child, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t initializeWithCopy for LazySubviewPrefetcher(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

void lazy protocol witness table accessor for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role()
{
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollTargetRole.Role, &type metadata for ScrollTargetRole.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }
}

{
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollTargetRole.Role, &type metadata for ScrollTargetRole.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollTargetRole.Role and conformance ScrollTargetRole.Role);
  }
}

void lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout()
{
  if (!lazy protocol witness table cache variable for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollTargetRole.SetLayout, &type metadata for ScrollTargetRole.SetLayout, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout);
  }
}

void lazy protocol witness table accessor for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>()
{
  if (!lazy protocol witness table cache variable for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for PreferenceTransform<UpdateScrollStateRequestKey>, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey, type metadata accessor for PreferenceTransform);
    swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>);
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for FocusableFillerBounds.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

void lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider()
{
  if (!lazy protocol witness table cache variable for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LazyFocusableFillerBoundsProvider, &type metadata for LazyFocusableFillerBoundsProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider);
  }
}

uint64_t closure #1 in ValueToScrollPosition.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  return ScrollPosition.init<A>(id:anchor:)(v15, a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t ScrollPosition.init<A>(id:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  DynamicType = swift_getDynamicType();
  *(&v20 + 1) = a5;
  *v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  v16 = *(a5 - 8);
  (*(v16 + 16))(boxed_opaque_existential_1, a1, a5);
  *&v21[8] = a2;
  *&v21[16] = a3;
  v21[24] = a4 & 1;
  v21[25] = 0;
  v17 = v20;
  *a7 = v19;
  *(a7 + 16) = v17;
  *(a7 + 32) = *v21;
  *(a7 + 42) = *&v21[10];
  *(a7 + 64) = DynamicType;
  *(a7 + 72) = a6;
  *(a7 + 80) = 0;
  return (*(v16 + 8))(a1, a5);
}

uint64_t storeEnumTagSinglePayload for ScrollPosition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for EnvironmentalBodyAccessor<_ShadowEffect>, &type metadata for _ShadowEffect, &protocol witness table for _ShadowEffect, type metadata accessor for EnvironmentalBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentalBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentalBodyAccessor<_ShadowEffect> and conformance EnvironmentalBodyAccessor<A>);
  }
}

__n128 initializeWithCopy for ScrollPosition(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 57))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 42) = *(a2 + 42);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    v5 = a1;
    (**(v4 - 8))();
    a1 = v5;
    *(v5 + 40) = *(a2 + 40);
    *(v5 + 56) = *(a2 + 56);
  }

  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t initializeWithCopy for ScrollPositionBindingModifier(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 73);

  if (v5)
  {
    v6 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 58) = *(a2 + 58);
  }

  else
  {
    v7 = *(a2 + 5);
    *(a1 + 40) = v7;
    (**(v7 - 8))(a1 + 16, a2 + 2);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void destroy for ScrollPositionBindingModifier(uint64_t a1)
{

  if (!*(a1 + 73))
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 16));
  }
}

uint64_t *assignWithTake for LazyPrefetchState(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

void *destroy for ScrollPosition(void *a1)
{
  if (!*(a1 + 57))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

void lazy protocol witness table accessor for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved()
{
  if (!lazy protocol witness table cache variable for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ShadowEffect._Resolved, &type metadata for _ShadowEffect._Resolved, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ShadowEffect._Resolved and conformance _ShadowEffect._Resolved);
  }
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(__int128 *, void, void, unsigned int *))
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v5 = Value[1];
  v8[0] = *Value;
  v8[1] = v5;
  v9 = v6 & 1;
  a2(v8, 0, *(v2 + 4), (v2 + 8));
  if (v9)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v8 = *MEMORY[0x1E69E9840];
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), (v2 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v5 = *(Value + 16);
  v8 = *Value;
  v9 = v5;
  v10 = v6 & 1;
  a2(&v8, 0, *(v2 + 4), (v2 + 8));
  if (v10)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

void ResolvedSafeAreaInsets.value.getter()
{
  v1 = *v0;
  v7 = *(v0 + 8);
  v2 = *(v0 + 24);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else if (v2 != *MEMORY[0x1E698D3F8])
  {
    v4 = CurrentAttribute;
    InputValue = AGGraphGetInputValue();
    v6 = *(InputValue + 16);
    v11 = *InputValue;
    v12 = v6;
    v8[0] = v4;
    v8[1] = v4;
    v9 = vrev64q_s32(v7);
    v10 = v2;
    SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(v1, 0, v8);
  }
}

void StatefulRule<>.updateIfNotEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v14 = *OutputValue;
    v15 = OutputValue[1];
    type metadata accessor for LayoutEngineBox(0, a3, a6, v13);
    v16 = swift_dynamicCastClassUnconditional();
    v17 = *(*v16 + 192);
    (*(v9 + 16))(v11, v16 + v17, a3);
    swift_retain_n();
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v11, a3);
    if ((v18 & 1) == 0)
    {
      (*(v9 + 24))(v16 + v17, a1, a3);
      v20 = v14;
      v21 = v15 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    (*(v9 + 16))(v11, a1, a3);
    LayoutComputer.init<A>(_:)(v11, a3, a6, &v20);
    v19[1] = v20;
    v19[2] = v21;
    AGGraphSetOutputValue();
  }
}

id protocol witness for static UserDefaultKeyedFeature.defaults.getter in conformance EnableScrollPrefetchFeature()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  v2 = v0;
  return v1;
}

double EnvironmentValues.nearestScrollableAxes.setter(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t *), void (*a3)(uint64_t, void, __n128))
{
  v6 = v3;
  v8 = *v6;
  swift_retain_n();
  a2(v6, a1, &v10);

  if (v6[1])
  {
    (a3)(v8, *v6);
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA021NearestScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void (*EnvironmentValues.allScrollableAxes.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = v1[1];
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017AllScrollableAxesjI033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7;
  return EnvironmentValues.allScrollableAxes.modify;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
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

void EnvironmentValues.nearestScrollableAxes.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  a3(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017AllScrollableAxeswV033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

unint64_t one-time initialization function for defaultValue()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ScrollAnchorStorageV4RoleO_AC9UnitPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  qword_1ED522CE8 = 0;
  qword_1ED522CF0 = 0;
  static ScrollAnchorsKey.defaultValue = result;
  byte_1ED522CF8 = 1;
  return result;
}

{
  v0 = MEMORY[0x1E69E7CC0];
  static AttributeCountInfoKey.defaultValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  qword_1EAB29248 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  qword_1EAB29250 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s6UInt32VTt0g5Tf4g_n(v0);
  qword_1EAB29258 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollPosition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void type metadata accessor for EnvironmentPropertyKey<ScrollAnchorsKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for ScrollAnchorsKey, &protocol witness table for ScrollAnchorsKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollAnchorsKey>);
    }
  }
}

double ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)(char *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(v2 + 24);
  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v5;
  v7 = v3;
  *&result = ScrollAnchorStorage.anchor(role:)(&v7).u64[0];
  if (v4)
  {
    return 1.0 - result;
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V031ScrollContentAdjustmentBehaviorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.ScrollContentAdjustmentBehaviorKey>, &type metadata for Transaction.ScrollContentAdjustmentBehaviorKey, &protocol witness table for Transaction.ScrollContentAdjustmentBehaviorKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0V031ScrollContentAdjustmentBehaviorV033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt0B5(a1, v7);
  if (result)
  {
    v6 = *(result + 72);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

void ScrollAnchorStorage.initialOffset.getter()
{
  if (*(*v0 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
  }
}

{
  ScrollAnchorStorage.initialOffset.getter();
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, char *a4)
{
  v210 = *MEMORY[0x1E69E9840];
  v192 = type metadata accessor for OSSignpostID();
  v188 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v16 = (&v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v171 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v171 - v29;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v31)
    {
      v32 = *Value;
    }

    else
    {
      v32 = -INFINITY;
    }
  }

  else
  {
    v32 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) != 1)
  {
    goto LABEL_129;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v33 = *(a1 + 24);
  if (a4[48])
  {
    goto LABEL_128;
  }

  v34 = v32;
  v5 = *(a4 + 4);
  v35 = *(a4 + 5);
  v7 = *(a4 + 2);
  v6 = *(a4 + 3);
  if (v8 != v7 || v9 != v6 || v10 != v5 || v33 != v35)
  {
    v189 = v16;
    v187 = v22;
    v171 = v19;
    v177 = v33;
    v179 = a1;
    AGGraphClearUpdate();
    v36 = *(a4 + 1);
    v205 = *a4;
    v206 = v36;
    v37 = *(a4 + 3);
    v207 = *(a4 + 2);
    v208 = v37;
    v209 = *(a4 + 16);
    v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    v38 = *AGGraphGetValue();

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v39 = Transaction.effectiveAnimation.getter(v38);
    if (v39)
    {
      v40 = v39;
    }

    else
    {
      if (!a2)
      {

        a1 = v179;
        v32 = v34;
        goto LABEL_127;
      }

      v40 = a2;
    }

    v41 = *(&v208 + 1);
    v42 = v8 - v7;
    v43 = v9 - v6;
    v44 = v10 - v5;
    v45 = v177 - v35;
    v46 = *AGGraphGetValue();
    v178 = a4;
    v172 = a3;
    v175 = v46;
    v174 = v38;
    v173 = v40;
    if (v41)
    {
      v171 = v25;
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      LOBYTE(v201.f64[0]) = 0;
      v47.n128_f64[0] = v42;
      v48.n128_f64[0] = v43;
      v49.n128_f64[0] = v44;
      v176 = v41;
      specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v40, v38, a3, v47, v48, v49, v45, v46);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      v51 = CurrentAttribute;
      LODWORD(v52) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == *MEMORY[0x1E698D3F8])
      {
        LODWORD(v53) = 0;
      }

      else
      {
        LODWORD(v53) = CurrentAttribute;
      }

      (*(*v40 + 96))(&v197);
      v54 = *&v197.f64[1];
      v4 = *&v197.f64[0];
      v55 = v198;
      v196 = NAN;
      v195 = NAN;
      *&v194 = 1.0;
      v193 = NAN;
      v201 = v197;
      v202 = v198;
      v56 = *(&v198 + 1);
      v189 = v199;
      v203 = *&v199;
      LODWORD(v190) = v200;
      LOBYTE(v204) = v200;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
      v32 = v196;
      v5 = v195;
      v6 = *&v194;
      v7 = v193;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_24;
    }

    *&v197.f64[0] = &type metadata for EdgeInsets;
    type metadata accessor for EdgeInsets.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
    v77 = swift_dynamicCast();
    if (v77)
    {
      v78 = *&v201.f64[0];
    }

    else
    {
      v78 = 0;
    }

    if (v77)
    {
      v79 = *&v201.f64[1];
    }

    else
    {
      v79 = 0;
    }

    v176 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(v80, v38, v78, v79, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, v42, v43, v44, v45, v46);
    v81 = AGGraphGetCurrentAttribute();
    a4 = v81;
    LODWORD(v61) = *MEMORY[0x1E698D3F8];
    if (v81 == *MEMORY[0x1E698D3F8])
    {
      v82 = 0;
    }

    else
    {
      v82 = v81;
    }

    (*(*v40 + 96))(&v197);
    v83 = v197;
    v84 = v198;
    v85 = v199;
    v196 = NAN;
    v195 = NAN;
    *&v194 = 1.0;
    v193 = NAN;
    v201 = v197;
    v202 = v198;
    v203 = *&v199;
    LODWORD(v190) = v200;
    LOBYTE(v204) = v200;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v201, &v196, &v195, &v194, &v193);
    v32 = v196;
    v5 = v195;
    v6 = *&v194;
    v7 = v193;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_199;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      if (static CustomEventTrace.recorder)
      {
        v187 = v85;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v86 = *(v84 + 16);
        LODWORD(v201.f64[0]) = v82;
        BYTE4(v201.f64[0]) = a4 == LODWORD(v61);
        *&v201.f64[1] = &type metadata for EdgeInsets;
        *&v202 = v32;
        *(&v202 + 1) = v5;
        v203 = v6;
        v204 = v7;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v87 = v86;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v83.f64[0], *&v83.f64[1], v84, *(&v84 + 1), v187, v190);

        goto LABEL_88;
      }

      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    else
    {
      v89 = *&v83.f64[1];
      v88 = *&v83.f64[0];
      v90 = v84;
    }

    outlined consume of Animation.Function(v88, v89, v90, *(&v84 + 1), v85, v190);
LABEL_88:
    v108 = one-time initialization token for animationState;

    a4 = v178;
    v32 = v175;
    if (v108 == -1)
    {
LABEL_89:
      v66 = *(&static Signpost.animationState + 1);
      *&v62 = static Signpost.animationState;
      v4 = word_1ED5283E8;
      v63 = HIBYTE(word_1ED5283E8);
      v109 = byte_1ED5283EA;
      LOBYTE(v68) = static os_signpost_type_t.begin.getter();
      v201 = __PAIR128__(v66, *&v62);
      LOBYTE(v202) = v4;
      BYTE1(v202) = v63;
      BYTE2(v202) = v109;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v118 = v176;

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
        goto LABEL_96;
      }

      v110 = one-time initialization token for _signpostLog;

      if (v110 != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_91;
    }

LABEL_199:
    swift_once();
    goto LABEL_89;
  }

  v32 = v34;
LABEL_128:
  while (1)
  {
    *(a4 + 2) = v8;
    *(a4 + 3) = v9;
    *(a4 + 4) = v10;
    *(a4 + 5) = v33;
    a4[48] = 0;
LABEL_129:
    v53 = *(a4 + 7);
    if (!v53)
    {
      return;
    }

    v137 = *(a1 + 16);
    v201 = *a1;
    v202 = v137;

    LOBYTE(v205) = 0;
    v138 = specialized AnimatorState.update(_:at:environment:)(&v201, a3, v32);
    v97 = AGGraphGetCurrentAttribute();
    LODWORD(v52) = *MEMORY[0x1E698D3F8];
    if (v97 == *MEMORY[0x1E698D3F8])
    {
      v93 = 0;
    }

    else
    {
      v93 = v97;
    }

    v96 = &type metadata instantiation cache for TupleTypeDescription;
    if (v138)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_188;
      }

      goto LABEL_135;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_190;
    }

LABEL_148:
    v150 = *(v96 + 616);
    if (*(v150 + 16) >= 0x43uLL)
    {
      if (*(v150 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v205) = v93;
        BYTE4(v205) = v97 == v52;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_183;
    }

    __break(1u);
LABEL_192:
    swift_once();
LABEL_140:
    v141 = *(&static Signpost.animationState + 1);
    v56 = static Signpost.animationState;
    v55 = word_1ED5283E8;
    v51 = HIBYTE(word_1ED5283E8);
    v142 = byte_1ED5283EA;
    v53 = static os_signpost_type_t.end.getter();
    v205 = __PAIR128__(v141, v56);
    LOBYTE(v206) = v55;
    BYTE1(v206) = v51;
    BYTE2(v206) = v142;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_182;
    }

    v179 = a1;
    v143 = one-time initialization token for _signpostLog;

    if (v143 != -1)
    {
      swift_once();
    }

    v178 = a4;
    *&v54 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v52)
    {
      break;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    swift_once();
LABEL_24:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_197:
      swift_once();
      goto LABEL_31;
    }

    v57 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    LODWORD(v186) = v52;
    if (v57 && (v58 = static CustomEventTrace.recorder) != 0)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v59 = *(v58 + 16);
      LODWORD(v201.f64[0]) = v53;
      BYTE4(v201.f64[0]) = v51 == v52;
      *&v201.f64[1] = &type metadata for EdgeInsets;
      *&v202 = v32;
      *(&v202 + 1) = v5;
      v203 = v6;
      v204 = v7;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

      v60 = v59;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    else
    {
      outlined consume of Animation.Function(v4, v54, v55, v56, v189, v190);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    v32 = v175;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_197;
    }

LABEL_31:
    v62 = *(&static Signpost.animationState + 1);
    *&v61 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v64 = HIBYTE(word_1ED5283E8);
    v65 = byte_1ED5283EA;
    v66 = static os_signpost_type_t.event.getter();
    v201 = __PAIR128__(*&v62, *&v61);
    LOBYTE(v202) = v63;
    BYTE1(v202) = v64;
    BYTE2(v202) = v65;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
LABEL_85:
      a4 = v178;
      a3 = v172;
      goto LABEL_126;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v205, &v201, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v67 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v68 = COERCE_DOUBLE(swift_allocObject());
    *(v68 + 16) = xmmword_18DDAF080;
    v69 = AGGraphGetCurrentAttribute();
    v4 = v186;
    if (v69 == v186)
    {
      __break(1u);
    }

    else
    {
      v70 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v72 = MEMORY[0x1E69E6870];
      *(v68 + 56) = MEMORY[0x1E69E6810];
      *(v68 + 64) = v72;
      *(v68 + 32) = Counter;
      v73 = AGGraphGetCurrentAttribute();
      if (v73 != v4)
      {
        v74 = MEMORY[0x1E69E76D0];
        *(v68 + 96) = MEMORY[0x1E69E7668];
        *(v68 + 104) = v74;
        *(v68 + 72) = v73;
        *(v68 + 136) = MEMORY[0x1E69E6158];
        lazy protocol witness table accessor for type String and conformance String();
        *(v68 + 144) = v75;
        *(v68 + 112) = 0x65736E4965676445;
        *(v68 + 120) = 0xEA00000000007374;
        if (v64)
        {
          LOBYTE(v193) = v66;
          v196 = COERCE_DOUBLE(&dword_18D018000);
          v195 = v67;
          v201.f64[0] = v61;
          v201.f64[1] = v62;
          LOBYTE(v202) = v63;
          *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v197.f64[1] = 39;
          LOBYTE(v198) = 2;
          v194 = v68;
          v76 = v171;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          (*(v188 + 8))(v76, v192);
        }

        else
        {
          v91 = LOBYTE(v61);
          if (LOBYTE(v61) == 20)
          {
            v52 = 3;
          }

          else
          {
            v52 = 4;
          }

          v92 = bswap32(LOWORD(v61)) | (4 * HIWORD(LODWORD(v61)));
          v93 = v66;
          v94 = (v188 + 16);
          v180 = *(v188 + 16);
          v95 = v180(v187, v171, v192);
          v96 = 0;
          LOBYTE(v197.f64[0]) = 1;
          v190 = v52;
          v185 = (16 * v52);
          v181 = v94;
          v186 = (v94 - 8);
          v184 = v68 + 32;
          v183 = v91;
          do
          {
            v189 = &v171;
            MEMORY[0x1EEE9AC00](v95);
            a1 = &v171 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
            a4 = (a1 + 8);
            v99 = v190;
            v100 = (a1 + 8);
            do
            {
              *(v100 - 1) = 0;
              *v100 = 0;
              v100 += 16;
              v99 = (v99 - 1);
            }

            while (v99);
            v4 = v184 + 40 * v96;
            v53 = v190;
            while (1)
            {
              v101 = *(v68 + 16);
              if (v96 == v101)
              {
                break;
              }

              if (v96 >= v101)
              {
                goto LABEL_186;
              }

              ++v96;
              outlined init with copy of AnyTrackedValue(v4, &v201);
              v52 = *(&v202 + 1);
              v102 = *&v203;
              __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
              *(a4 - 1) = CVarArg.kdebugValue(_:)(v92 | v93, v52, v102);
              *a4 = v103 & 1;
              a4 += 16;
              v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
              v4 += 40;
              if (!--v53)
              {
                goto LABEL_68;
              }
            }

            LOBYTE(v197.f64[0]) = 0;
LABEL_68:
            v4 = v183;
            if (v183 == 20)
            {
              v104 = v187;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v104 = v187;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v4 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v105 = *v186;
            v52 = v192;
            (*v186)(v104, v192);
            v106 = __swift_project_value_buffer(v52, static OSSignpostID.continuation);
            v95 = v180(v104, v106, v52);
          }

          while ((LOBYTE(v197.f64[0]) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
          v107 = v192;
          v105(v104, v192);
          v105(v171, v107);
        }

        goto LABEL_85;
      }
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_91:
    v111 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a4 = COERCE_DOUBLE(swift_allocObject());
    *(a4 + 1) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == LODWORD(v61))
    {
      __break(1u);
LABEL_204:
      __break(1u);
    }

    v112 = AGGraphGetAttributeGraph();
    v113 = AGGraphGetCounter();

    v114 = MEMORY[0x1E69E6870];
    *(a4 + 7) = MEMORY[0x1E69E6810];
    *(a4 + 8) = v114;
    *(a4 + 4) = v113;
    v115 = AGGraphGetCurrentAttribute();
    if (v115 == LODWORD(v61))
    {
      goto LABEL_204;
    }

    v116 = MEMORY[0x1E69E76D0];
    *(a4 + 12) = MEMORY[0x1E69E7668];
    *(a4 + 13) = v116;
    *(a4 + 18) = v115;
    *(a4 + 17) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(a4 + 18) = v117;
    *(a4 + 14) = 0x65736E4965676445;
    *(a4 + 15) = 0xEA00000000007374;
    v52 = v171;
    if (v63)
    {
      LOBYTE(v193) = v68;
      v196 = COERCE_DOUBLE(&dword_18D018000);
      v195 = v111;
      v201.f64[0] = v62;
      *&v201.f64[1] = v66;
      LOBYTE(v202) = v4;
      *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v197.f64[1] = 39;
      LOBYTE(v198) = 2;
      v194 = a4;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v201, v171, &v197, &v194);
      v118 = v176;

      (*(v188 + 8))(v52, v192);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
LABEL_96:
      *(a4 + 7) = v118;
    }

    else
    {
      v119 = LOBYTE(v62);
      v120 = v68;
      if (LOBYTE(v62) == 20)
      {
        v121 = 3;
      }

      else
      {
        v121 = 4;
      }

      a1 = bswap32(LOWORD(v62)) | (4 * HIWORD(LODWORD(v62)));
      v93 = v120;
      v122 = (v188 + 16);
      v180 = *(v188 + 16);
      v123 = v180(v189, v171, v192);
      v96 = 0;
      LOBYTE(v197.f64[0]) = 1;
      v186 = (16 * v121);
      v181 = v122;
      v187 = (v122 - 8);
      v185 = a4 + 32;
      v183 = v119;
      v184 = v121;
      do
      {
        v190 = &v171;
        MEMORY[0x1EEE9AC00](v123);
        v4 = &v171 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        v53 = (v4 + 8);
        v125 = v121;
        v126 = (v4 + 8);
        do
        {
          *(v126 - 1) = 0;
          *v126 = 0;
          v126 += 16;
          --v125;
        }

        while (v125);
        v127 = &v185[40 * v96];
        while (1)
        {
          v128 = *(a4 + 2);
          if (v96 == v128)
          {
            break;
          }

          if (v96 >= v128)
          {
            goto LABEL_187;
          }

          ++v96;
          outlined init with copy of AnyTrackedValue(v127, &v201);
          v52 = *(&v202 + 1);
          v129 = *&v203;
          __swift_project_boxed_opaque_existential_1(&v201, *(&v202 + 1));
          *(v53 - 1) = CVarArg.kdebugValue(_:)(a1 | v93, v52, v129);
          *v53 = v130 & 1;
          v53 += 16;
          v97 = __swift_destroy_boxed_opaque_existential_1(&v201);
          v127 += 40;
          if (!--v121)
          {
            goto LABEL_109;
          }
        }

        LOBYTE(v197.f64[0]) = 0;
LABEL_109:
        v131 = v183;
        if (v183 == 20)
        {
          v132 = v189;
          OSSignpostID.rawValue.getter();
          kdebug_trace();
        }

        else
        {
          kdebug_trace();
          v132 = v189;
        }

        v121 = v184;
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v131 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v52 = *v187;
        v133 = v192;
        (*v187)(v132, v192);
        v134 = __swift_project_value_buffer(v133, static OSSignpostID.continuation);
        v123 = v180(v132, v134, v133);
      }

      while ((LOBYTE(v197.f64[0]) & 1) != 0);
      v135 = v176;

      v136 = v192;
      (v52)(v132, v192);
      (v52)(v171, v136);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v205, &lazy cache variable for type metadata for AnimatableAttributeHelper<EdgeInsets>, lazy protocol witness table accessor for type EdgeInsets and conformance EdgeInsets, &type metadata for EdgeInsets, type metadata accessor for AnimatableAttributeHelper);
      a4 = v178;
      *(v178 + 7) = v135;
    }

    a3 = v172;
LABEL_126:
    specialized AnimatorState.addListeners(transaction:)(v174);

    a1 = v179;
LABEL_127:
    v33 = v177;
  }

  v144 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v145 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v145;
  *(a1 + 32) = v4;
  v146 = AGGraphGetCurrentAttribute();
  if (v146 == v52)
  {
    goto LABEL_194;
  }

  v147 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v147;
  *(a1 + 72) = v146;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 144) = v148;
  *(a1 + 112) = 0x65736E4965676445;
  *(a1 + 120) = 0xEA00000000007374;
  if (v51)
  {
    LOBYTE(v193) = v53;
    v196 = COERCE_DOUBLE(&dword_18D018000);
    v195 = *&v54;
    *&v205 = v56;
    *(&v205 + 1) = v141;
    LOBYTE(v206) = v55;
    *&v197.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v197.f64[1] = 37;
    LOBYTE(v198) = 2;
    v194 = a1;
    v149 = v182;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v193, &v196, &v195, &v205, v182, &v197, &v194);

    (*(v188 + 8))(v149, v192);
    goto LABEL_181;
  }

  v151 = v56;
  if (v56 == 20)
  {
    v152 = 3;
  }

  else
  {
    v152 = 4;
  }

  v93 = bswap32(v56) | (4 * WORD1(v56));
  v96 = v53;
  v153 = v188 + 16;
  v183 = *(v188 + 16);
  v154 = v183(v191, v182, v192);
  v155 = 0;
  LOBYTE(v197.f64[0]) = 1;
  v190 = v152;
  v186 = (16 * v152);
  v188 = v153;
  v187 = (v153 - 8);
  v185 = (a1 + 32);
  v184 = v151;
  do
  {
    v189 = &v171;
    MEMORY[0x1EEE9AC00](v154);
    a4 = &v171 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = a4 + 8;
    v158 = v190;
    v159 = a4 + 8;
    do
    {
      *(v159 - 1) = 0;
      *v159 = 0;
      v159 += 16;
      v158 = (v158 - 1);
    }

    while (v158);
    v4 = &v185[40 * v155];
    v52 = v190;
    while (1)
    {
      v160 = *(a1 + 16);
      if (v155 == v160)
      {
        break;
      }

      if (v155 >= v160)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        v169 = v97;
        swift_once();
        v97 = v169;
LABEL_135:
        v139 = *(v96 + 616);
        if (*(v139 + 16) >= 0x43uLL)
        {
          if (*(v139 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v205) = v93;
            BYTE4(v205) = v97 == v52;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v140 = one-time initialization token for animationState;
          v181 = v53;

          if (v140 != -1)
          {
            goto LABEL_192;
          }

          goto LABEL_140;
        }

        __break(1u);
LABEL_190:
        v170 = v97;
        swift_once();
        v97 = v170;
        goto LABEL_148;
      }

      ++v155;
      outlined init with copy of AnyTrackedValue(v4, &v205);
      v161 = *(&v206 + 1);
      v53 = v207;
      __swift_project_boxed_opaque_existential_1(&v205, *(&v206 + 1));
      *(v157 - 1) = CVarArg.kdebugValue(_:)(v93 | v96, v161, v53);
      *v157 = v162 & 1;
      v157 += 16;
      v97 = __swift_destroy_boxed_opaque_existential_1(&v205);
      v4 += 40;
      if (!--v52)
      {
        goto LABEL_166;
      }
    }

    LOBYTE(v197.f64[0]) = 0;
LABEL_166:
    v163 = v184;
    if (v184 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v163 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v164 = *v187;
    v53 = v191;
    v165 = v192;
    (*v187)(v191, v192);
    v166 = __swift_project_value_buffer(v165, static OSSignpostID.continuation);
    v154 = v183(v53, v166, v165);
  }

  while ((LOBYTE(v197.f64[0]) & 1) != 0);

  v167 = v192;
  v164(v191, v192);
  v164(v182, v167);
LABEL_181:

  a1 = v179;
  a4 = v178;
LABEL_182:
  specialized AnimatorState.removeListeners()();

  *(a4 + 7) = 0;
LABEL_183:
  v168 = v202;
  *a1 = v201;
  *(a1 + 16) = v168;
  *(a1 + 32) = 1;
}

uint64_t EnvironmentValues.nearestScrollableAxes.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3);
  }

  v5 = a1(v3);

  return v5;
}

double EdgeInsets.in(_:)(double a1)
{
  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    a1 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return a1;
}

double Transaction.fromScrollView.setter(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{

  a2(v2, a1, &v6);

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewV033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt0B5(v4, v9);
  if (!v7 || *(v7 + 72) != (a2 & 1))
  {
    v8 = *a1;
    type metadata accessor for TypedElement<TransactionPropertyKey<FromScrollViewKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<TransactionPropertyKey<FromScrollViewKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<FromScrollViewKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<TransactionPropertyKey<FromScrollViewKey>>);
    }
  }
}

void lazy protocol witness table accessor for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for TransactionPropertyKey<FromScrollViewKey>, &type metadata for FromScrollViewKey, &protocol witness table for FromScrollViewKey, type metadata accessor for TransactionPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for TransactionPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type TransactionPropertyKey<FromScrollViewKey> and conformance TransactionPropertyKey<A>);
  }
}

uint64_t default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

uint64_t static Signpost.scrollNotifyDidMoveToWindow(_:)(char a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static os_signpost_type_t.event.getter();
  if (a1)
  {
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v7 = _signpostLog;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v6, &dword_18D018000, v7, "HostingScrollView", 17, 2, v5, "Scroll view did move into window", 32, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v8 = _signpostLog;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v6, &dword_18D018000, v8, "HostingScrollView", 17, 2, v5, "Scroll view did move out of window", 34, 2, MEMORY[0x1E69E7CC0]);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t one-time initialization function for _signpostLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  _signpostLog = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SectionAccumulator.formResult(from:listAttribute:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = *(a4 + 8);
  v9 = *a2;
  v7 = v4;
  v8 = v5;
  return SectionAccumulator.apply(start:style:node:transform:)(a1, &v9, a3, &v7) & 1;
}

uint64_t SectionAccumulator.RowIDAccumulator.count.getter()
{
  outlined init with copy of SectionAccumulator.RowIDAccumulator(v0, v15);
  if (v17)
  {
    v13[3] = v15[4];
    v13[4] = v15[5];
    v14 = v16;
    v12 = v15[0];
    v13[0] = v15[1];
    v13[1] = v15[2];
    v13[2] = v15[3];
    v1 = *(&v15[0] + 1);
    outlined init with copy of ViewList?(v13, v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray);
    v2 = v10;
    if (v10)
    {
      v3 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v4 = (*(v3 + 40))(v2, v3);
      outlined destroy of HeterogeneousViewIDsAccumulator(&v12);
      __swift_destroy_boxed_opaque_existential_1(v9);
      result = v1 + v4;
      if (!__OFADD__(v1, v4))
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(*&v15[0] + 16);
    if (!v6)
    {
LABEL_13:

      return 0;
    }

    v7 = *&v15[0] + 56 * v6;
    v2 = *(v7 + 16);
    v8 = *(v7 + 24);

    result = v8 + v2;
    if (!__OFADD__(v8, v2))
    {
      return result;
    }

    __break(1u);
  }

  outlined destroy of HeterogeneousViewIDsAccumulator(&v12);
  _s7SwiftUI8ViewList_pSgWOhTm_0(v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeWithCopy for SectionAccumulator.RowIDAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 97);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  *a1 = *a2;
  if (v4 == 1)
  {
    *(a1 + 8) = a2[1];
    v5 = a2[5];

    if (v5)
    {
      v6 = a2[6];
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      (**(v5 - 8))(a1 + 16, a2 + 2, v5);
      v7 = a2[10];
      if (v7)
      {
LABEL_6:
        v8 = a2[11];
        *(a1 + 80) = v7;
        *(a1 + 88) = v8;
        (**(v7 - 8))(a1 + 56, a2 + 7);
        *(a1 + 96) = *(a2 + 96);
LABEL_10:
        *(a1 + 97) = 1;
        return a1;
      }
    }

    else
    {
      v9 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v9;
      *(a1 + 48) = a2[6];
      v7 = a2[10];
      if (v7)
      {
        goto LABEL_6;
      }
    }

    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
    goto LABEL_10;
  }

  *(a1 + 97) = 0;

  return a1;
}

uint64_t outlined init with copy of ViewList?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ViewList?(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void _ViewList_TemporarySublistTransform.bindID(_:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[1])
  {
    v4 = *v3;
    v5 = *(*v3 + 16);
    if (v5)
    {

      v6 = &v4[5 * v5 - 1];
      while (v5 <= v4[2])
      {
        --v5;
        outlined init with copy of AnyTrackedValue(v6, v11);
        v7 = v12;
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v8 + 24))(a1, v7, v8);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v6 -= 40;
        if (!v5)
        {

          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
    for (; v3; v3 = *v3)
    {
      outlined init with copy of AnyTrackedValue((v3 + 1), v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v10 + 24))(a1, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }
}

void specialized UnaryPositionAwareLayoutComputer.updateValue()()
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    v6[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    specialized StatefulRule<>.update<A>(to:)(v6);
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = CurrentAttribute;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = Value[1];
    v8[0] = *Value;
    v8[1] = v7;
    v9 = v3;
    v10 = v3;
    v11 = v5;
    v12 = v3;
    v13 = v4;
    v14 = v2;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v18 = 1;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    v22 = 1;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v26 = 1;
    specialized StatefulRule<>.update<A>(to:)(v8);
  }
}

void specialized StatefulRule<>.update<A>(to:)(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v21[10] = *(a1 + 160);
  v21[11] = v2;
  v22 = *(a1 + 192);
  v3 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v3;
  v4 = *(a1 + 144);
  v21[8] = *(a1 + 128);
  v21[9] = v4;
  v5 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v5;
  v6 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v6;
  v7 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v7;
  v20[4] = v21;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);

      *&v23[0] = v9;
      *(&v23[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 176);
    v23[10] = *(a1 + 160);
    v23[11] = v14;
    v24 = *(a1 + 192);
    v15 = *(a1 + 112);
    v23[6] = *(a1 + 96);
    v23[7] = v15;
    v16 = *(a1 + 144);
    v23[8] = *(a1 + 128);
    v23[9] = v16;
    v17 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v17;
    v18 = *(a1 + 80);
    v23[4] = *(a1 + 64);
    v23[5] = v18;
    v19 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v19;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA021ContainerCornerOffsetC033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVG_Tt1B5Tm(v23, type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>, type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<_SafeAreaIgnoringLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v21[10] = *(a1 + 160);
  v21[11] = v2;
  v22 = *(a1 + 192);
  v3 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v3;
  v4 = *(a1 + 144);
  v21[8] = *(a1 + 128);
  v21[9] = v4;
  v5 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v5;
  v6 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v6;
  v7 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v7;
  v20[4] = v21;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutEngine);
      v13 = MEMORY[0x1EEE9AC00](v12);
      (*(*v9 + 80))(v13);
      *&v23[0] = v9;
      *(&v23[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 176);
    v23[10] = *(a1 + 160);
    v23[11] = v14;
    v24 = *(a1 + 192);
    v15 = *(a1 + 112);
    v23[6] = *(a1 + 96);
    v23[7] = v15;
    v16 = *(a1 + 144);
    v23[8] = *(a1 + 128);
    v23[9] = v16;
    v17 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v17;
    v18 = *(a1 + 80);
    v23[4] = *(a1 + 64);
    v23[5] = v18;
    v19 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v19;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA021ContainerCornerOffsetC033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVG_Tt1B5Tm(v23, type metadata accessor for TracingLayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>, type metadata accessor for LayoutEngineBox<UnaryPositionAwareLayoutEngine<ContainerCornerOffsetLayout>>, v20);
    AGGraphSetOutputValue();
  }
}

{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 176);
  v21[10] = *(a1 + 160);
  v21[11] = v2;
  v22 = *(a1 + 192);
  v3 = *(a1 + 112);
  v21[6] = *(a1 + 96);
  v21[7] = v3;
  v4 = *(a1 + 144);
  v21[8] = *(a1 + 128);
  v21[9] = v4;
  v5 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v5;
  v6 = *(a1 + 80);
  v21[4] = *(a1 + 64);
  v21[5] = v6;
  v7 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v7;
  v20[4] = v21;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v11 = one-time initialization token for lockAssertionsAreEnabled;

    if (v11 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v13 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v9 + 80))(v13);
      *&v23[0] = v9;
      *(&v23[0] + 1) = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v14 = *(a1 + 176);
    v23[10] = *(a1 + 160);
    v23[11] = v14;
    v24 = *(a1 + 192);
    v15 = *(a1 + 112);
    v23[6] = *(a1 + 96);
    v23[7] = v15;
    v16 = *(a1 + 144);
    v23[8] = *(a1 + 128);
    v23[9] = v16;
    v17 = *(a1 + 48);
    v23[2] = *(a1 + 32);
    v23[3] = v17;
    v18 = *(a1 + 80);
    v23[4] = *(a1 + 64);
    v23[5] = v18;
    v19 = *(a1 + 16);
    v23[0] = *a1;
    v23[1] = v19;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05InsetcD0V0E0V_Tt1B5(v23, v20);
    AGGraphSetOutputValue();
  }
}

{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v2;
  v19[10] = *(a1 + 160);
  v20 = *(a1 + 176);
  v3 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v3;
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v18[4] = v19;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v21[0] = v8;
      *(&v21[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v13 = *(a1 + 144);
    v21[8] = *(a1 + 128);
    v21[9] = v13;
    v21[10] = *(a1 + 160);
    v22 = *(a1 + 176);
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v21, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Rectangle._Inset>>>, v18);
    AGGraphSetOutputValue();
  }
}

{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v2;
  v19[10] = *(a1 + 160);
  v20 = *(a1 + 176);
  v3 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v3;
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v18[4] = v19;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v21[0] = v8;
      *(&v21[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v13 = *(a1 + 144);
    v21[8] = *(a1 + 128);
    v21[9] = v13;
    v21[10] = *(a1 + 160);
    v22 = *(a1 + 176);
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v21, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Ellipse._Inset>>>, v18);
    AGGraphSetOutputValue();
  }
}

{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v2;
  v19[10] = *(a1 + 160);
  v20 = *(a1 + 176);
  v3 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v3;
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v18[4] = v19;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v21[0] = v8;
      *(&v21[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v13 = *(a1 + 144);
    v21[8] = *(a1 + 128);
    v21[9] = v13;
    v21[10] = *(a1 + 160);
    v22 = *(a1 + 176);
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v21, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Capsule._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Capsule._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Capsule._Inset>>>, v18);
    AGGraphSetOutputValue();
  }
}

{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v2;
  v19[10] = *(a1 + 160);
  v20 = *(a1 + 176);
  v3 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v3;
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v18[4] = v19;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<Circle._Inset>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v21[0] = v8;
      *(&v21[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v13 = *(a1 + 144);
    v21[8] = *(a1 + 128);
    v21[9] = v13;
    v21[10] = *(a1 + 160);
    v22 = *(a1 + 176);
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v21, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<Circle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<Circle._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<Circle._Inset>>>, v18);
    AGGraphSetOutputValue();
  }
}

{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v19[8] = *(a1 + 128);
  v19[9] = v2;
  v19[10] = *(a1 + 160);
  v20 = *(a1 + 176);
  v3 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v3;
  v4 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v4;
  v5 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v5;
  v6 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v6;
  v18[4] = v19;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v8 = *OutputValue;
    v9 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v10 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v10 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>(0);
      v12 = MEMORY[0x1EEE9AC00](v11);
      (*(*v8 + 80))(v12);

      *&v21[0] = v8;
      *(&v21[0] + 1) = v9 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v13 = *(a1 + 144);
    v21[8] = *(a1 + 128);
    v21[9] = v13;
    v21[10] = *(a1 + 160);
    v22 = *(a1 + 176);
    v14 = *(a1 + 80);
    v21[4] = *(a1 + 64);
    v21[5] = v14;
    v15 = *(a1 + 112);
    v21[6] = *(a1 + 96);
    v21[7] = v15;
    v16 = *(a1 + 16);
    v21[0] = *a1;
    v21[1] = v16;
    v17 = *(a1 + 48);
    v21[2] = *(a1 + 32);
    v21[3] = v17;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm(v21, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<ContainerRelativeShape._Inset>>>, v18);
    AGGraphSetOutputValue();
  }
}

double sub_18D2EB9DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for FilteredTransition(255, *a1, v5, a4);
  v9 = type metadata accessor for PlaceholderContentView(255, v6, v7, v8);
  v11 = type metadata accessor for ApplyTransitionModifier(255, v4, v5, v10);
  v13 = type metadata accessor for _PushPopTransactionModifier(255, v11, &protocol witness table for ApplyTransitionModifier<A>, v12);
  v15 = type metadata accessor for ModifiedContent(255, v9, v13, v14);
  v17[0] = &protocol witness table for PlaceholderContentView<A>;
  v17[1] = &protocol witness table for _PushPopTransactionModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v17);
}

double LazySubviewPrefetcher.init(layout:size:position:transform:environment:prefetchState:cache:containerSize:)@<D0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 44) = 0;
  *(a9 + 48) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
  result = 0.0;
  *(a9 + 56) = xmmword_18DD85550;
  *(a9 + 72) = 0;
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance LazySubviewPrefetcher<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for LazySubviewPrefetcher<A>, a1);

  return static AsyncAttribute.flags.getter();
}

__n128 Image.NamedImageProvider.resolveError(in:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  v33 = v1[8];
  v9 = *(v1 + 72);
  if (v5 >= 2)
  {
    v10 = [v5 bundlePath];
    v31 = v7;
    v11 = v9;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v6;
    v14 = v13;

    _StringGuts.grow(_:)(49);

    *(&v44 + 1) = 0x800000018DD7C960;
    MEMORY[0x193ABEDD0](v3, v4);
    MEMORY[0x193ABEDD0](0xD00000000000001DLL, 0x800000018DD7C980);
    v15 = v12;
    v9 = v11;
    v7 = v31;
    MEMORY[0x193ABEDD0](v15, v14);
    v6 = v32;

    specialized static Log.externalWarning(_:)(0xD000000000000010, 0x800000018DD7C960);

    outlined consume of Image.Location(v5);
  }

  else
  {
    _StringGuts.grow(_:)(47);

    *(&v44 + 1) = 0x800000018DD7C920;
    MEMORY[0x193ABEDD0](v3, v4);
    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD7C940);
    specialized static Log.externalWarning(_:)(0xD000000000000011, 0x800000018DD7C920);
  }

  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  LOBYTE(v35) = 1;
  *&v44 = 0;
  BYTE8(v44) = -1;
  v46 = 0;
  *v47 = 0;
  v45 = 0x3FF0000000000000;
  v47[8] = 0;
  v48 = 0;
  *&v47[12] = 0;
  v49 = 0;
  v50[0] = 1;
  memset(&v50[8], 0, 32);
  *&v50[40] = 65794;
  v39 = 0x3FF0000000000000uLL;
  v40 = *v47;
  v38 = v44;
  *(v43 + 12) = *&v50[28];
  v42 = *v50;
  v43[0] = *&v50[16];
  v41 = 0u;
  outlined copy of AccessibilityImageLabel?(v7, v6, v8, v33);
  outlined init with copy of GraphicsImage(&v44, &v35);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v44) == 2)
  {
    v18 = *(v44 + 32);
    v19 = v8;
    v20 = *(v44 + 48);
    v21 = v6;
    v22 = *(v44 + 16);
    outlined copy of Image.Location(v18);
    v23 = v20;
    v8 = v19;
    v24 = v23;
    outlined copy of Image.Location(v18);
    v34 = v18;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v22 styleMask], &v34, &v35);

    v6 = v21;
    outlined consume of Image.Location(v18);

    outlined destroy of GraphicsImage(&v44);
    v25 = v35;
    v17 = v36;
    v16 = v37 & 0xFD;
  }

  else
  {
    if (BYTE8(v44) == 255)
    {
      outlined destroy of GraphicsImage(&v44);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v17 = (v50[0] & 1) == 0;
      outlined destroy of GraphicsImage(&v44);
      v16 = 0;
    }

    v25 = 0;
  }

  result = v41;
  v27 = v43[0];
  v28 = v43[1];
  *(a1 + 64) = v42;
  *(a1 + 80) = v27;
  *(a1 + 96) = v28;
  v29 = v39;
  v30 = v40;
  *a1 = v38;
  *(a1 + 16) = v29;
  *(a1 + 32) = v30;
  *(a1 + 48) = result;
  *(a1 + 112) = v7;
  *(a1 + 120) = v6;
  *(a1 + 128) = v8;
  *(a1 + 136) = v33;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = v9;
  *(a1 + 161) = 3;
  *(a1 + 164) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = v25;
  *(a1 + 184) = v17;
  *(a1 + 186) = v16;
  return result;
}

uint64_t specialized static Log.externalWarning(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for unlocatedIssuesLog != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, static Log.unlocatedIssuesLog);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    _os_log_impl(&dword_18D018000, v9, v10, "%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193AC4820](v12, -1, -1);
    MEMORY[0x193AC4820](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t one-time initialization function for unlocatedIssuesLog()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.unlocatedIssuesLog);
  __swift_project_value_buffer(v0, static Log.unlocatedIssuesLog);
  return Logger.init(subsystem:category:)();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ScrollTargetRole.ContentKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

void lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>()
{
  if (!lazy protocol witness table cache variable for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>)
  {
    type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(255, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
    swift_getWitnessTable(protocol conformance descriptor for PreferenceTransform<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>);
  }
}

unint64_t _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  result = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);
  v8 = *(a1 + 16);
  if (result != v8)
  {
    if (result >= v8)
    {
      __break(1u);
    }

    if (*(a1 + 16 * result + 32) == &type metadata for UpdateScrollStateRequestKey)
    {
      a3(result, v7);
      _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA024UpdateScrollStateRequestI0V_TtB5(*v3);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollStateRequest], &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest, MEMORY[0x1E69E62F8]);
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<UpdateScrollStateRequestKey>, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey, type metadata accessor for PreferenceTransform);
      lazy protocol witness table accessor for type PreferenceTransform<UpdateScrollStateRequestKey> and conformance PreferenceTransform<A>();
      v9 = Attribute.init<A>(body:value:flags:update:)();
      return PreferencesOutputs.subscript.setter(v9, &type metadata for UpdateScrollStateRequestKey, &protocol witness table for UpdateScrollStateRequestKey);
    }
  }

  return result;
}

uint64_t implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)(uint64_t a1)
{
  v3[15] = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollStateRequestTransform(a1, v3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform();
  v1 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ScrollStateRequestTransform(v3);
  return v1;
}

uint64_t initializeWithCopy for ScrollStateRequestTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 96);

  if (v4)
  {
    v5 = *(a2 + 104);
    *(a1 + 96) = v4;
    *(a1 + 104) = v5;
    (**(v4 - 8))(a1 + 72, a2 + 72, v4);
  }

  else
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void lazy protocol witness table accessor for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform()
{
  if (!lazy protocol witness table cache variable for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform)
  {
    swift_getWitnessTable(protocol conformance descriptor for ScrollStateRequestTransform, &type metadata for ScrollStateRequestTransform, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ScrollStateRequestTransform and conformance ScrollStateRequestTransform);
  }
}

void destroy for ScrollStateRequestTransform(void *a1)
{

  if (a1[12])
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 9);
  }
}

void ScrollPositionToValue.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v1;
    v2 = *(v1 + 8);
    Hasher._combine(_:)(1u);

    UnitPoint.hash(into:)(v3, v2);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t ViewGraphGeometryObservers.resetObserver(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for ViewGraphGeometryObservers.Observer(0, v6, v5, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = MEMORY[0x193ABE750](&v17, a1, v4, AssociatedTypeWitness, v9, AssociatedConformanceWitness);
  if (v17)
  {
    v15 = ViewGraphGeometryObservers.Observer.reset()(v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

double static UnitCurve.easeInEaseOut.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.42;
  *a1 = xmmword_18DDBA7C0;
  *(a1 + 16) = xmmword_18DDBA7D0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static _ViewList_ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t Path.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (CGPathIsEmpty(a1))
  {

    result = 0;
    v5 = 6;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    result = swift_allocObject();
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0;
    *(result + 16) = 0;
    v5 = 5;
    *(result + 24) = a1;
  }

  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  return result;
}

void type metadata accessor for _ShapeView<AnyShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<AnyShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
    v5[0] = &type metadata for AnyShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<AnyShape, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<AnyShape>, &type metadata for AnyShape, &protocol witness table for AnyShape, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<AnyShape>, MainThreadFlags>);
    }
  }
}

void lazy protocol witness table accessor for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<AnyShape>, &type metadata for AnyShape, &protocol witness table for AnyShape, type metadata accessor for ViewBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ViewBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ViewBodyAccessor<AnyShape> and conformance ViewBodyAccessor<A>);
  }
}

_DWORD *protocol witness for static Animatable._makeAnimatable(value:inputs:) in conformance AnyShape(_DWORD *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8AnyShapeV_Tt1B5(a1, v4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA8AnyShapeV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v11[0] = v6;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v2;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>()
{
  if (!lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for AnimatableAttribute<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatableAttribute);
    swift_getWitnessTable(protocol conformance descriptor for AnimatableAttribute<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AnimatableAttribute<AnyShape> and conformance AnimatableAttribute<A>);
  }
}

double specialized StaticBody.updateValue()()
{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v51 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v50 = v1;
    outlined init with take of Any(&v50, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = *(v2 + 2);

    v41 = v40 + 1;
    v28 = v45;
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 1, v2);
    *(v21 + 24) = v42;

    v2 = v42;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v45 = v11;
  swift_beginAccess();
  v46 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v17, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v24 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  AGGraphGetValue();
  v48 = v17;

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25);
  v26 = v48;

  *(StatusReg + 848) = v24;
  outlined init with copy of ObservationTracking._AccessList?(v26, v14, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v26, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v27 = v14;
    goto LABEL_12;
  }

  v28 = v45;
  v44 = *(v4 + 32);
  v44(v45, v14, v3);
  (*(v4 + 16))(v47, v28, v3);
  swift_beginAccess();
  v2 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v44(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31], v47, v3);
  *(v21 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v28, v3);
  v27 = v48;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v32 = *(v21 + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v4 + 16);
    v34 = v4 + 16;
    v35 = v36;
    v37 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v38 = *(v34 + 56);
    v48 = *(v21 + 24);

    do
    {
      v35(v6, v37, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v37 += v38;
      --v33;
    }

    while (v33);
  }

  *(v21 + 24) = v46;

  return result;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(Value + 16), *Value, *(Value + 8));
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;

  return result;
}

{
  v3 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v49 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v61 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v59 = v1;
    outlined init with take of Any(&v59, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v58;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = v3[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v3);
    *(v21 + 24) = v48;

    v3 = v48;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v51 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v54 = v5;
  v25 = *Value;
  v24 = *(Value + 8);
  v57 = v17;
  v27 = *(Value + 16);
  v26 = *(Value + 24);
  *&v59 = v25;
  *(&v59 + 1) = v24;
  v60 = v27;
  v61 = v26;
  v52 = v14;
  v28 = *(Value + 32);
  v62 = v28;
  outlined copy of Path.Storage(v25, v24, v27, v26, v28);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v59);
  v29 = v25;
  v2 = v54;
  v30 = v57;
  v31 = v26;
  v32 = v52;
  outlined consume of Path.Storage(v29, v24, v27, v31, v28);
  *(StatusReg + 848) = v51;
  outlined init with copy of ObservationTracking._AccessList?(v30, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v32, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v33 = v32;
    goto LABEL_12;
  }

  v17 = *(v2 + 32);
  v34 = v56;
  (v17)(v56, v32, v4);
  (*(v2 + 16))(v55, v34, v4);
  swift_beginAccess();
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = v3[2];
  v36 = v3[3];
  if (v37 >= v36 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v3);
  }

  v3[2] = v37 + 1;
  (v17)(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v55, v4);
  *(v21 + 24) = v3;
  swift_endAccess();
  (*(v2 + 8))(v56, v4);
  v33 = v57;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v21 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v2 + 16);
    v41 = v2 + 16;
    v40 = v42;
    v43 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v44 = *(v41 + 56);
    v45 = (v41 - 8);
    v57 = *(v21 + 24);

    do
    {
      v40(v7, v43, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*v45)(v7, v4);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v21 + 24) = v53;

  return result;
}

{
  v2 = v0;
  v44 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v37 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v43 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v42 = v1;
    outlined init with take of Any(&v42, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v42);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v41;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v38 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*Value, Value[1], Value[2], Value[3]);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v40;
  v37 = *(v4 + 32);
  v37(v40, v13, v3);
  (*(v4 + 16))(v39, v25, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v37(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v39, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v40, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v40 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v38;

  return result;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-v8];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v56 + 1) = type metadata accessor for ObservationCenter();
    *&v55 = v16[3];
    outlined init with take of Any(&v55, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v50;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  v49 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v25 = Value[1];
  v24 = Value[2];
  v26 = *Value;
  *(v53 + 9) = *(Value + 41);
  v53[0] = v24;
  v52[0] = v26;
  v52[1] = v25;
  v55 = *Value;
  v56 = Value[1];
  v57[0] = Value[2];
  *(v57 + 9) = *(Value + 41);
  outlined init with copy of _GlassContainerStorageView(v52, &v51);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v55);
  outlined destroy of _GlassContainerStorageView(v52);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v49;
  v29 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v28 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v28 + 32);
  (v12)(v9, v29, v2);
  (*(v28 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v1[2];
  v31 = v1[3];
  if (v32 >= v31 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v1);
  }

  v1[2] = v32 + 1;
  v33 = v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32;
  v28 = v49;
  v27 = v2;
  (v12)(v33, v48, v2);
  *(v19 + 24) = v1;
  (*(v28 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v19 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v46;
    v38 = *(v28 + 16);
    v37 = v28 + 16;
    v48 = *(v19 + 24);
    v49 = v38;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = *(v37 + 56);
    v41 = (v37 - 8);

    v42 = v45;
    do
    {
      (v49)(v36, v39, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v36);
      (*v41)(v36, v27);
      v39 += v40;
      --v35;
    }

    while (v35);
  }

  *(v19 + 24) = v47;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x230uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEntryContainerView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEntryContainerView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v2 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v44 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v43 = v1;
    outlined init with take of Any(&v43, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v43);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v42;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v39 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v38 = v13;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  AGGraphGetValue();

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24);

  *(StatusReg + 848) = v23;
  v25 = v38;
  outlined init with copy of ObservationTracking._AccessList?(v16, v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v25, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v25;
    goto LABEL_12;
  }

  v26 = v41;
  v38 = *(v4 + 32);
  (v38)(v41, v25, v3);
  (*(v4 + 16))(v40, v26, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v2[2];
  v28 = v2[3];
  if (v29 >= v28 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v2);
  }

  v2[2] = v29 + 1;
  (v38)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, v40, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v41, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v30 = *(v20 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v34 = *(v4 + 16);
    v32 = v4 + 16;
    v33 = v34;
    v35 = v30 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v36 = *(v32 + 56);
    v41 = *(v20 + 24);

    do
    {
      v33(v6, v35, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v35 += v36;
      --v31;
    }

    while (v31);
  }

  *(v20 + 24) = v39;

  return result;
}

{
  v3 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v59 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v57 = v1;
    outlined init with take of Any(&v57, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v57);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v21 + 24) = v3;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v52 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v51 = v5;
  v23 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v50 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScheduledAnimationModifier);
  Value = AGGraphGetValue();
  v26 = *(Value + 16);
  v27 = *(Value + 24);
  v28 = *(Value + 32);
  v55 = v17;
  v29 = *(Value + 40);
  v30 = *(Value + 48);
  v57 = *Value;
  v58 = v26;
  v59 = v27;
  v60 = v28;
  v61 = v29;
  v62 = v30;

  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v57);
  v31 = v55;

  *(StatusReg + 848) = v50;
  v32 = v23;
  v33 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v31, v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v33 + 48))(v32, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v34 = v32;
    goto LABEL_12;
  }

  v17 = *(v33 + 32);
  v35 = v54;
  (v17)(v54, v32, v4);
  (*(v33 + 16))(v53, v35, v4);
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  v2 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v38 = v3[2];
  v37 = v3[3];
  if (v38 >= v37 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v3);
  }

  v3[2] = v38 + 1;
  v39 = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v38;
  v33 = v2;
  (v17)(v39, v53, v4);
  *(v21 + 24) = v3;
  (*(v2 + 8))(v54, v4);
  v34 = v55;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v34, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v40 = *(v21 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v44 = *(v33 + 16);
    v42 = v33 + 16;
    v43 = v44;
    v45 = v40 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v46 = *(v42 + 56);
    v47 = (v42 - 8);
    v55 = *(v21 + 24);

    do
    {
      v43(v7, v45, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*v47)(v7, v4);
      v45 += v46;
      --v41;
    }

    while (v41);
  }

  *(v21 + 24) = v52;

  return result;
}

{
  v2 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v54[-v10];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v66 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v65 = v1;
    outlined init with take of Any(&v65, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v64);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v61;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v56 = v6;
  v55 = CurrentAttribute;
  swift_beginAccess();
  v57 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v1 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v59 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v1;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TranslationKickModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], type metadata accessor for TranslationKickModifier);
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = Value[1];
  v27 = Value[3];
  v63[2] = Value[2];
  v63[3] = v27;
  v63[0] = v25;
  v63[1] = v26;
  v28 = Value[4];
  v29 = Value[5];
  v30 = Value[7];
  v63[6] = Value[6];
  v63[7] = v30;
  v63[4] = v28;
  v63[5] = v29;
  v31 = *Value;
  v32 = Value[1];
  v33 = Value[3];
  v67 = Value[2];
  v68 = v33;
  v65 = v31;
  v66 = v32;
  v34 = Value[4];
  v35 = Value[5];
  v36 = Value[7];
  v71 = Value[6];
  v72 = v36;
  v69 = v34;
  v70 = v35;
  outlined init with copy of TranslationKickModifier<Int>(v63, &v62);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v65);
  outlined destroy of TranslationKickModifier<Int>(v63);
  *(StatusReg + 848) = v23;
  v37 = v59;
  outlined init with copy of ObservationTracking._AccessList?(v1, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v1, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v38 = v13;
    goto LABEL_12;
  }

  v39 = v58;
  v6 = *(v4 + 32);
  (v6)(v58, v13, v37);
  (*(v4 + 16))(v60, v39, v37);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v42 = v2[2];
  v41 = v2[3];
  if (v42 >= v41 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v2);
  }

  v2[2] = v42 + 1;
  v43 = v59;
  (v6)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v42, v60, v59);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v58, v43);
  v38 = v1;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v38, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v44 = *(v20 + 24);
  v45 = *(v44 + 16);
  if (v45)
  {
    v47 = *(v4 + 16);
    v46 = v4 + 16;
    v60 = v47;
    v48 = v44 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v49 = *(v46 + 56);
    v58 = v44;

    v50 = v55;
    v51 = v59;
    v52 = v56;
    do
    {
      (v60)(v52, v48, v51);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v50, v52);
      (*(v46 - 8))(v52, v51);
      v48 += v49;
      --v45;
    }

    while (v45);
  }

  *(v20 + 24) = v57;

  return result;
}

{
  v77 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ObservationTracking._AccessList();
  v2 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v48 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48 - v14;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v62 + 1) = type metadata accessor for ObservationCenter();
    v0 = v1;
    *&v61 = v16[3];
    outlined init with take of Any(&v61, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, &v60);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v56;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v51 = v4;
  v50 = CurrentAttribute;
  swift_beginAccess();
  v53 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v2 + 56))(v15, 1, 1, v1);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v52 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  v4 = v1;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for ScalePulseModifier<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for ScalePulseModifier);
  Value = AGGraphGetValue();
  v23 = *(Value + 48);
  v25 = *Value;
  v24 = *(Value + 16);
  v58[2] = *(Value + 32);
  v58[3] = v23;
  v58[0] = v25;
  v58[1] = v24;
  v26 = *(Value + 112);
  v28 = *(Value + 64);
  v27 = *(Value + 80);
  v58[6] = *(Value + 96);
  v58[7] = v26;
  v58[4] = v28;
  v58[5] = v27;
  v29 = *(Value + 176);
  v31 = *(Value + 128);
  v30 = *(Value + 144);
  v58[10] = *(Value + 160);
  v58[11] = v29;
  v58[8] = v31;
  v58[9] = v30;
  v33 = *(Value + 208);
  v32 = *(Value + 224);
  v34 = *(Value + 192);
  v59 = *(Value + 240);
  v58[13] = v33;
  v58[14] = v32;
  v58[12] = v34;
  v73 = *(Value + 192);
  v74 = *(Value + 208);
  v75 = *(Value + 224);
  v76 = *(Value + 240);
  v69 = *(Value + 128);
  v70 = *(Value + 144);
  v71 = *(Value + 160);
  v72 = *(Value + 176);
  v65 = *(Value + 64);
  v66 = *(Value + 80);
  v67 = *(Value + 96);
  v68 = *(Value + 112);
  v61 = *Value;
  v62 = *(Value + 16);
  v63 = *(Value + 32);
  v64 = *(Value + 48);
  outlined init with copy of ScalePulseModifier<Int>(v58, &v57);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v61);
  outlined destroy of ScalePulseModifier<Int>(v58);
  *(StatusReg + 848) = v52;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v0 = *(v2 + 32);
  v0(v9, v12, v1);
  (*(v2 + 16))(v55, v9, v1);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  v49 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v37 = *(v1 + 2);
  v36 = *(v1 + 3);
  if (v37 >= v36 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v1);
  }

  *(v1 + 2) = v37 + 1;
  v0(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37, v55, v4);
  *(v19 + 24) = v1;
  v1 = v4;
  (*(v2 + 8))(v49, v4);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v19 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v2 + 16);
    v40 = v2 + 16;
    v54 = *(v19 + 24);
    v55 = v41;
    v42 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v44 = (v40 - 8);

    v45 = v50;
    v46 = v51;
    do
    {
      (v55)(v46, v42, v1);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v45, v46);
      (*v44)(v46, v1);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v19 + 24) = v53;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x180uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassTransitionStateModifier(v49, &v48);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassTransitionStateModifier(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x154uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEffectShapeModifier(v49, &v48);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEffectShapeModifier(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v1 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v55 + 1) = type metadata accessor for ObservationCenter();
    *&v54 = v16[3];
    outlined init with take of Any(&v54, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v49;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>(0);
  Value = AGGraphGetValue();
  v51[0] = *Value;
  v25 = *(Value + 32);
  v24 = *(Value + 48);
  v26 = *(Value + 16);
  v52 = *(Value + 64);
  v51[2] = v25;
  v51[3] = v24;
  v51[1] = v26;
  v55 = *(Value + 16);
  v56 = *(Value + 32);
  v57 = *(Value + 48);
  v58 = *(Value + 64);
  v54 = *Value;
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v51, &v50, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v54);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v51, type metadata accessor for _GlassEffectContainer<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>>);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v3 + 32);
  (v12)(v9, v28, v2);
  (*(v3 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  v44 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = v1[2];
  v30 = v1[3];
  if (v31 >= v30 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v1);
  }

  v1[2] = v31 + 1;
  v32 = v1 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31;
  v3 = v44;
  v27 = v2;
  (v12)(v32, v48, v2);
  *(v19 + 24) = v1;
  (*(v3 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v19 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v46;
    v37 = *(v3 + 16);
    v36 = v3 + 16;
    v48 = v37;
    v38 = v33 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v39 = *(v36 + 56);
    v40 = (v36 - 8);
    v44 = v33;

    v41 = v45;
    do
    {
      (v48)(v35, v38, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v41, v35);
      (*v40)(v35, v27);
      v38 += v39;
      --v34;
    }

    while (v34);
  }

  *(v19 + 24) = v47;

  return result;
}

{
  v1 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-v8];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v56 + 1) = type metadata accessor for ObservationCenter();
    *&v55 = v16[3];
    outlined init with take of Any(&v55, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v50;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[2] + 1, 1, v1);
    *(v19 + 24) = v1;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  v49 = v3;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v22 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v25 = Value[1];
  v24 = Value[2];
  v26 = *Value;
  *(v53 + 9) = *(Value + 41);
  v53[0] = v24;
  v52[0] = v26;
  v52[1] = v25;
  v55 = *Value;
  v56 = Value[1];
  v57[0] = Value[2];
  *(v57 + 9) = *(Value + 41);
  outlined init with copy of GlassEffectLocalModifier(v52, &v51);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v55);
  outlined destroy of GlassEffectLocalModifier(v52);
  *(StatusReg + 848) = v22;
  v27 = v2;
  v28 = v49;
  v29 = v12;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v28 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v15 = v12;
    goto LABEL_12;
  }

  v12 = *(v28 + 32);
  (v12)(v9, v29, v2);
  (*(v28 + 16))(v48, v9, v2);
  v1 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = v1[2];
  v31 = v1[3];
  if (v32 >= v31 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v1);
  }

  v1[2] = v32 + 1;
  v33 = v1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32;
  v28 = v49;
  v27 = v2;
  (v12)(v33, v48, v2);
  *(v19 + 24) = v1;
  (*(v28 + 8))(v9, v2);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v34 = *(v19 + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = v46;
    v38 = *(v28 + 16);
    v37 = v28 + 16;
    v48 = *(v19 + 24);
    v49 = v38;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v40 = *(v37 + 56);
    v41 = (v37 - 8);

    v42 = v45;
    do
    {
      (v49)(v36, v39, v27);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v42, v36);
      (*v41)(v36, v27);
      v39 += v40;
      --v35;
    }

    while (v35);
  }

  *(v19 + 24) = v47;

  return result;
}

{
  v2 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v46 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v45 = v1;
    outlined init with take of Any(&v45, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v45);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v44;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v41 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 16);
  v45 = *Value;
  v46 = v26;
  v47 = v25;
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v45);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v27 = v43;
  v40 = *(v4 + 32);
  v40(v43, v13, v3);
  (*(v4 + 16))(v42, v27, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v40(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30], v42, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v43, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v34 = v4 + 16;
    v33 = v35;
    v36 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v43 = *(v20 + 24);

    do
    {
      v33(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v41;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v51[1] + 1) = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *&v51[0] = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x11CuLL);
  memcpy(v51, Value, 0x11CuLL);
  outlined init with copy of GlassEffectView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEffectView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x2A8uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassEntryView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassEntryView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v2 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v41[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *&v51[24] = type metadata accessor for ObservationCenter();
    v46 = v16;
    v1 = v3;
    *v51 = v17[3];
    outlined init with take of Any(v51, v19);
    v16 = v46;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v50);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v47;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
    *(v20 + 24) = v3;
    goto LABEL_9;
  }

  v42 = CurrentAttribute;
  swift_beginAccess();
  v44 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = v4;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  v1 = v3;
  Value = AGGraphGetValue();
  memcpy(v49, Value, 0x408uLL);
  memcpy(v51, Value, sizeof(v51));
  outlined init with copy of GlassItemView(v49, &v48);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v51);
  v25 = v1;
  outlined destroy of GlassItemView(v49);
  *(StatusReg + 848) = v23;
  v26 = v46;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 6))(v13, 1, v1) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v26 + 4);
  v2(v10, v13, v1);
  (*(v26 + 2))(v45, v10, v1);
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v29 = v3[2];
  v28 = v3[3];
  if (v29 >= v28 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v3);
  }

  v3[2] = v29 + 1;
  v30 = v3 + ((v46[80] + 32) & ~v46[80]) + *(v46 + 9) * v29;
  v26 = v46;
  v2(v30, v45, v1);
  *(v20 + 24) = v3;
  v25 = v1;
  (*(v26 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v34 = *(v26 + 2);
    v33 = v26 + 16;
    v45 = *(v20 + 24);
    v46 = v34;
    v35 = v31 + ((v33[64] + 32) & ~v33[64]);
    v36 = v43;
    v37 = *(v33 + 7);
    v38 = v33 - 8;

    v39 = v42;
    do
    {
      (v46)(v36, v35, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v39, v36);
      (*v38)(v36, v25);
      v35 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v44;

  return result;
}

{
  v2 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v36 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v42 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v41 = v1;
    outlined init with take of Any(&v41, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v41);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v40;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v20 + 24) = v2;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v37 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
  AGGraphGetValue();
  specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)();
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v24 = v39;
  v36 = *(v4 + 32);
  v36(v39, v13, v3);
  (*(v4 + 16))(v38, v24, v3);
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = *(v2 + 2);
  v26 = *(v2 + 3);
  if (v27 >= v26 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v2);
  }

  *(v2 + 2) = v27 + 1;
  v36(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27], v38, v3);
  *(v20 + 24) = v2;
  (*(v4 + 8))(v39, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v28 = *(v20 + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    v32 = *(v4 + 16);
    v31 = v4 + 16;
    v30 = v32;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v34 = *(v31 + 56);
    v39 = *(v20 + 24);

    do
    {
      v30(v6, v33, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v31 - 8))(v6, v3);
      v33 += v34;
      --v29;
    }

    while (v29);
  }

  *(v20 + 24) = v37;

  return result;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(*Value);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;

  return result;
}

{
  v2 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v53 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v52 = v1;
    outlined init with take of Any(&v52, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = v2[2];

    v44 = v43 + 1;
    v31 = v46;
    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 1, v2);
    *(v20 + 24) = v45;

    v2 = v45;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v46 = v11;
  swift_beginAccess();
  v47 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v50 = v16;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v50;
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = *(Value + 8);
  v27 = *(Value + 9);
  outlined copy of Environment<ButtonSizing>.Content(*Value, v26);
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(v25, v26 | (v27 << 8));
  outlined consume of Environment<ButtonSizing>.Content(v25, v26);
  *(StatusReg + 848) = v23;
  v28 = v50;
  v29 = v48;
  outlined init with copy of ObservationTracking._AccessList?(v50, v48, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v29, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v31 = v46;
  v48 = *(v4 + 32);
  (v48)(v46, v29, v3);
  (*(v4 + 16))(v49, v31, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v2[2];
  v33 = v2[3];
  if (v34 >= v33 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v2);
  }

  v2[2] = v34 + 1;
  (v48)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v49, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v31, v3);
  v30 = v50;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v20 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v4 + 16);
    v37 = v4 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v50 = *(v20 + 24);

    do
    {
      v38(v6, v40, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v37 - 8))(v6, v3);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v20 + 24) = v47;

  return result;
}

{
  v2 = v0;
  v66 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v49[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v61 + 1) = type metadata accessor for ObservationCenter();
    v54 = v13;
    v1 = v3;
    *&v60 = v17[3];
    outlined init with take of Any(&v60, v19);
    v13 = v54;

    v18 = v19;
  }

  outlined init with copy of Any(v18, v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v47 = v3[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v3);
    *(v20 + 24) = v48;

    v3 = v48;
    goto LABEL_9;
  }

  v50 = CurrentAttribute;
  swift_beginAccess();
  v52 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v54 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 16);
  v57[0] = *Value;
  v57[1] = v25;
  v26 = *(Value + 32);
  v27 = *(Value + 48);
  v28 = *(Value + 64);
  v58 = *(Value + 80);
  v57[3] = v27;
  v57[4] = v28;
  v57[2] = v26;
  v29 = *(Value + 16);
  v60 = *Value;
  v61 = v29;
  v30 = *(Value + 32);
  v31 = *(Value + 48);
  v32 = *(Value + 64);
  v65 = *(Value + 80);
  v63 = v31;
  v64 = v32;
  v62 = v30;
  outlined init with copy of SafeAreaPaddingModifier(v57, &v56);
  v1 = v3;
  specialized closure #1 in ModifierBodyAccessor.updateBody(of:changed:)(&v60);
  outlined destroy of SafeAreaPaddingModifier(v57);
  *(StatusReg + 848) = v23;
  v33 = v54;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v33 + 6))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v33 + 4);
  v2(v10, v13, v3);
  (*(v33 + 2))(v53, v10, v3);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v3[2];
  v35 = v3[3];
  if (v36 >= v35 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v3);
  }

  v3[2] = v36 + 1;
  v37 = v3 + ((v54[80] + 32) & ~v54[80]) + *(v54 + 9) * v36;
  v33 = v54;
  v2(v37, v53, v1);
  *(v20 + 24) = v3;
  v3 = v1;
  swift_endAccess();
  (*(v33 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v20 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v41 = *(v33 + 2);
    v40 = v33 + 16;
    v53 = *(v20 + 24);
    v54 = v41;
    v42 = v38 + ((v40[64] + 32) & ~v40[64]);
    v43 = *(v40 + 7);
    v44 = v51;

    v45 = v50;
    do
    {
      (v54)(v44, v42, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v45, v44);
      (*(v40 - 1))(v44, v3);
      v42 += v43;
      --v39;
    }

    while (v39);
  }

  *(v20 + 24) = v52;

  return result;
}

{
  v3 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v54 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v53 = v1;
    outlined init with take of Any(&v53, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = v14[2];

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 + 1, 1, v14);
    *(v21 + 24) = v44;

    v14 = v44;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v48 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v47 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v46 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  v24 = *v3;
  v51 = v17;
  v25 = *(v3 + 1);
  v26 = *(v3 + 16);

  AGGraphGetValue();

  specialized EnvironmentalBodyAccessor.updateBody(of:changed:)(v27, 1, v24, v25, v26);
  v28 = v51;

  *(StatusReg + 848) = v46;
  v29 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v28, v47, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v29, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v31 = v50;
  v2(v50, v29, v4);
  (*(v5 + 16))(v49, v31, v4);
  swift_beginAccess();
  v14 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v14[2];
  v33 = v14[3];
  if (v34 >= v33 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v14);
  }

  v14[2] = v34 + 1;
  v2(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v49, v4);
  *(v21 + 24) = v14;
  swift_endAccess();
  (*(v5 + 8))(v50, v4);
  v30 = v51;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v21 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v5 + 16);
    v37 = v5 + 16;
    v38 = v39;
    v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v41 = *(v37 + 56);
    v51 = *(v21 + 24);

    do
    {
      v38(v7, v40, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v37 - 8))(v7, v4);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v21 + 24) = v48;

  return result;
}

{
  v3 = v0;
  v54 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v45 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v53 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v52 = v1;
    outlined init with take of Any(&v52, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v43 = *(v3 + 2);

    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43 + 1, 1, v3);
    *(v20 + 24) = v44;

    v3 = v44;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v46 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v16, 1, 1, v4);
  v50 = v16;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v45 = *(StatusReg + 848);
  *(StatusReg + 848) = v50;
  Value = AGGraphGetValue();
  v24 = *Value;
  v25 = Value[1];
  v26 = Value[2];
  v27 = Value[3];

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v24, v25, v26, v27);

  *(StatusReg + 848) = v45;
  v28 = v50;
  v29 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v50, v47, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v5 + 48))(v29, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v28, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v29;
    goto LABEL_12;
  }

  v2 = *(v5 + 32);
  v31 = v49;
  v2(v49, v29, v4);
  (*(v5 + 16))(v48, v31, v4);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = *(v3 + 2);
  v33 = *(v3 + 3);
  if (v34 >= v33 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v3);
  }

  *(v3 + 2) = v34 + 1;
  v2(&v3[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34], v48, v4);
  *(v20 + 24) = v3;
  swift_endAccess();
  (*(v5 + 8))(v49, v4);
  v30 = v50;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v35 = *(v20 + 24);
  v36 = *(v35 + 16);
  if (v36)
  {
    v39 = *(v5 + 16);
    v38 = v5 + 16;
    v37 = v39;
    v40 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v41 = *(v38 + 56);
    v50 = *(v20 + 24);

    do
    {
      v37(v7, v40, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v38 - 8))(v7, v4);
      v40 += v41;
      --v36;
    }

    while (v36);
  }

  *(v20 + 24) = v46;

  return result;
}

{
  v2 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v55 + 1) = type metadata accessor for ObservationCenter();
    *&v54 = v16[3];
    outlined init with take of Any(&v54, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, &v53);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v52;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v42 = v2[2];

    v43 = v42 + 1;
    v26 = v48;
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 1, v2);
    *(v19 + 24) = v44;

    v2 = v44;
    goto LABEL_9;
  }

  v46 = CurrentAttribute;
  swift_beginAccess();
  v47 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  v21 = v51;
  (*(v3 + 56))(v15, 1, 1, v51);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v65 = Value[11];
  v66 = Value[12];
  v67 = Value[13];
  v68 = Value[14];
  v61 = Value[7];
  v62 = Value[8];
  v63 = Value[9];
  v64 = Value[10];
  v57 = Value[3];
  v58 = Value[4];
  v59 = Value[5];
  v60 = Value[6];
  v54 = *Value;
  v55 = Value[1];
  v56 = Value[2];
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v54);
  *(StatusReg + 848) = v23;
  v25 = v21;
  v26 = v48;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v26 + 48))(v12, 1, v21) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v27 = v12;
    goto LABEL_12;
  }

  v1 = *(v26 + 32);
  v28 = v50;
  v1(v50, v12, v25);
  (*(v26 + 16))(v49, v28, v25);
  swift_beginAccess();
  v2 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = v2[2];
  v30 = v2[3];
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
  }

  v2[2] = v31 + 1;
  v32 = v2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31;
  v25 = v51;
  v1(v32, v49, v51);
  *(v19 + 24) = v2;
  swift_endAccess();
  (*(v26 + 8))(v50, v25);
  v27 = v15;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v33 = *(v19 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v26 + 16);
    v50 = *(v19 + 24);
    v51 = v35;
    v36 = v26 + 16;
    v37 = v33 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v38 = v5;
    v39 = *(v36 + 56);

    v40 = v46;
    do
    {
      (v51)(v38, v37, v25);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v40, v38);
      (*(v36 - 8))(v38, v25);
      v37 += v39;
      --v34;
    }

    while (v34);
  }

  *(v19 + 24) = v47;

  return result;
}

{
  v2 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v41 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v47 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v46 = v1;
    outlined init with take of Any(&v46, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v46);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v45;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v39 = *(v2 + 2);

    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39 + 1, 1, v2);
    *(v20 + 24) = v40;

    v2 = v40;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v42 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 16);
  v46 = *Value;
  v47 = v26;
  v48 = v25;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v46);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v27 = v44;
  v41 = *(v4 + 32);
  v41(v44, v13, v3);
  (*(v4 + 16))(v43, v27, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v30 = *(v2 + 2);
  v29 = *(v2 + 3);
  if (v30 >= v29 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v2);
  }

  *(v2 + 2) = v30 + 1;
  v41(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30], v43, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v44, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v31 = *(v20 + 24);
  v32 = *(v31 + 16);
  if (v32)
  {
    v35 = *(v4 + 16);
    v34 = v4 + 16;
    v33 = v35;
    v36 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    v44 = *(v20 + 24);

    do
    {
      v33(v6, v36, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v34 - 8))(v6, v3);
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  *(v20 + 24) = v42;

  return result;
}

{
  v2 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v48 + 1) = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v47 = v1;
    outlined init with take of Any(&v47, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v47);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v46;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = *(v2 + 2);

    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v2);
    *(v20 + 24) = v41;

    v2 = v41;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v43 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  v25 = *(Value + 32);
  v26 = *(Value + 40);
  v27 = *(Value + 16);
  v47 = *Value;
  v48 = v27;
  v49 = v25;
  v50 = v26;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v47);
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v28 = v45;
  v42 = *(v4 + 32);
  v42(v45, v13, v3);
  (*(v4 + 16))(v44, v28, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v42(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v31], v44, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v45, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v32 = *(v20 + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v4 + 16);
    v35 = v4 + 16;
    v34 = v36;
    v37 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    v45 = *(v20 + 24);

    do
    {
      v34(v6, v37, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v35 - 8))(v6, v3);
      v37 += v38;
      --v33;
    }

    while (v33);
  }

  *(v20 + 24) = v43;

  return result;
}

{
  v2 = v0;
  v45 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v44 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v43 = v1;
    outlined init with take of Any(&v43, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v43);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v42;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v36 = *(v2 + 2);

    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36 + 1, 1, v2);
    *(v20 + 24) = v37;

    v2 = v37;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v39 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)();
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v24 = v41;
  v38 = *(v4 + 32);
  v38(v41, v13, v3);
  (*(v4 + 16))(v40, v24, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = *(v2 + 2);
  v26 = *(v2 + 3);
  if (v27 >= v26 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v2);
  }

  *(v2 + 2) = v27 + 1;
  v38(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27], v40, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v41, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v28 = *(v20 + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    v32 = *(v4 + 16);
    v31 = v4 + 16;
    v30 = v32;
    v33 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v34 = *(v31 + 56);
    v41 = *(v20 + 24);

    do
    {
      v30(v6, v33, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v31 - 8))(v6, v3);
      v33 += v34;
      --v29;
    }

    while (v29);
  }

  *(v20 + 24) = v39;

  return result;
}

{
  v2 = v0;
  v56 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v55 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v54 = v1;
    outlined init with take of Any(&v54, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v54);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v53;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v44 = v2[2];

    v45 = v44 + 1;
    v32 = v48;
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 1, v2);
    *(v20 + 24) = v46;

    v2 = v46;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v48 = v11;
  swift_beginAccess();
  v49 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v52 = v16;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v52;
  Value = AGGraphGetValue();
  v25 = *Value;
  v26 = *(Value + 2);
  v27 = *(Value + 1);
  v28 = v26;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v25, v27, v28);

  *(StatusReg + 848) = v23;
  v29 = v52;
  v30 = v50;
  outlined init with copy of ObservationTracking._AccessList?(v52, v50, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v30, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v31 = v30;
    goto LABEL_12;
  }

  v32 = v48;
  v50 = *(v4 + 32);
  (v50)(v48, v30, v3);
  (*(v4 + 16))(v51, v32, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v35 = v2[2];
  v34 = v2[3];
  if (v35 >= v34 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v2);
  }

  v2[2] = v35 + 1;
  (v50)(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, v51, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v32, v3);
  v31 = v52;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v20 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v40 = *(v4 + 16);
    v38 = v4 + 16;
    v39 = v40;
    v41 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    v52 = *(v20 + 24);

    do
    {
      v39(v6, v41, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v38 - 8))(v6, v3);
      v41 += v42;
      --v37;
    }

    while (v37);
  }

  *(v20 + 24) = v49;

  return result;
}

{
  v3 = v0;
  v58 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ObservationTracking._AccessList();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - v11;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v18 = static ObservationCenter._current;
  swift_beginAccess();
  v19 = pthread_getspecific(v18[2]);
  if (!v19)
  {
    v20 = swift_slowAlloc();
    pthread_setspecific(v18[2], v20);
    v57 = type metadata accessor for ObservationCenter();
    v1 = v18[3];
    *&v56 = v1;
    outlined init with take of Any(&v56, v20);

    v19 = v20;
  }

  outlined init with copy of Any(v19, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v21 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v3[2];

    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v3);
    *(v21 + 24) = v46;

    v3 = v46;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v21 + 24);
  *(v21 + 24) = MEMORY[0x1E69E7CC0];
  (*(v5 + 56))(v17, 1, 1, v4);
  v49 = v14;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v48 = *(StatusReg + 848);
  *(StatusReg + 848) = v17;
  Value = AGGraphGetValue();
  v51 = v5;
  v26 = *Value;
  v25 = *(Value + 8);
  v54 = v17;
  v27 = *(Value + 16);
  v28 = *(Value + 24);
  outlined copy of Text.Storage(v26, v25, v27);

  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v26, v25, v27, v28);
  v29 = v26;
  v2 = v51;
  v30 = v54;
  outlined consume of Text.Storage(v29, v25, v27);

  v31 = v49;
  *(StatusReg + 848) = v48;
  outlined init with copy of ObservationTracking._AccessList?(v30, v31, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v2 + 48))(v31, 1, v4) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v31;
    goto LABEL_12;
  }

  v17 = *(v2 + 32);
  v33 = v53;
  (v17)(v53, v31, v4);
  (*(v2 + 16))(v52, v33, v4);
  swift_beginAccess();
  v3 = *(v21 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v3[2];
  v35 = v3[3];
  if (v36 >= v35 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v3);
  }

  v3[2] = v36 + 1;
  (v17)(v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v36, v52, v4);
  *(v21 + 24) = v3;
  swift_endAccess();
  (*(v2 + 8))(v53, v4);
  v32 = v54;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v37 = *(v21 + 24);
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v2 + 16);
    v40 = v2 + 16;
    v39 = v41;
    v42 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v43 = *(v40 + 56);
    v54 = *(v21 + 24);

    do
    {
      v39(v7, v42, v4);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v7);
      (*(v40 - 8))(v7, v4);
      v42 += v43;
      --v38;
    }

    while (v38);
  }

  *(v21 + 24) = v50;

  return result;
}

{
  v2 = v0;
  v51 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v42[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42[-v15];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    *(&v50[1] + 1) = type metadata accessor for ObservationCenter();
    v47 = v13;
    v1 = v3;
    *&v50[0] = v17[3];
    outlined init with take of Any(v50, v19);
    v13 = v47;

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v49);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v48;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v40 = v3[2];

    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 + 1, 1, v3);
    *(v20 + 24) = v41;

    v3 = v41;
    goto LABEL_9;
  }

  v43 = CurrentAttribute;
  swift_beginAccess();
  v45 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  v47 = v4;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  memcpy(v50, Value, sizeof(v50));
  v1 = v3;
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(v50);
  *(StatusReg + 848) = v23;
  v25 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v25 + 6))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v2 = *(v25 + 4);
  v2(v10, v13, v3);
  (*(v25 + 2))(v46, v10, v3);
  swift_beginAccess();
  v3 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = v3[2];
  v27 = v3[3];
  if (v28 >= v27 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v3);
  }

  v3[2] = v28 + 1;
  v29 = v3 + ((v47[80] + 32) & ~v47[80]) + *(v47 + 9) * v28;
  v25 = v47;
  v2(v29, v46, v1);
  *(v20 + 24) = v3;
  v3 = v1;
  swift_endAccess();
  (*(v25 + 1))(v10, v1);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v30 = *(v20 + 24);
  v31 = *(v30 + 16);
  if (v31)
  {
    v33 = *(v25 + 2);
    v32 = v25 + 16;
    v46 = *(v20 + 24);
    v47 = v33;
    v34 = v30 + ((v32[64] + 32) & ~v32[64]);
    v35 = v44;
    v36 = *(v32 + 7);
    v37 = v32 - 8;

    v38 = v43;
    do
    {
      (v47)(v35, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v38, v35);
      (*v37)(v35, v3);
      v34 += v36;
      --v31;
    }

    while (v31);
  }

  *(v20 + 24) = v45;

  return result;
}

{
  v2 = v0;
  v46 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ObservationTracking._AccessList();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v17 = static ObservationCenter._current;
  swift_beginAccess();
  v18 = pthread_getspecific(v17[2]);
  if (!v18)
  {
    v19 = swift_slowAlloc();
    pthread_setspecific(v17[2], v19);
    v45 = type metadata accessor for ObservationCenter();
    v1 = v17[3];
    *&v44 = v1;
    outlined init with take of Any(&v44, v19);

    v18 = v19;
  }

  outlined init with copy of Any(v18, &v44);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v20 = v43;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v37 = *(v2 + 2);

    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37 + 1, 1, v2);
    *(v20 + 24) = v38;

    v2 = v38;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  swift_beginAccess();
  v40 = *(v20 + 24);
  *(v20 + 24) = MEMORY[0x1E69E7CC0];
  (*(v4 + 56))(v16, 1, 1, v3);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v16;
  Value = AGGraphGetValue();
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(*(Value + 16), *Value, *(Value + 8), *(Value + 24));
  *(StatusReg + 848) = v23;
  outlined init with copy of ObservationTracking._AccessList?(v16, v13, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v16 = v13;
    goto LABEL_12;
  }

  v25 = v42;
  v39 = *(v4 + 32);
  v39(v42, v13, v3);
  (*(v4 + 16))(v41, v25, v3);
  swift_beginAccess();
  v2 = *(v20 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v20 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v39(&v2[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28], v41, v3);
  *(v20 + 24) = v2;
  swift_endAccess();
  (*(v4 + 8))(v42, v3);
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v16, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v29 = *(v20 + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v33 = *(v4 + 16);
    v32 = v4 + 16;
    v31 = v33;
    v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
    v35 = *(v32 + 56);
    v42 = *(v20 + 24);

    do
    {
      v31(v6, v34, v3);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v6);
      (*(v32 - 8))(v6, v3);
      v34 += v35;
      --v30;
    }

    while (v30);
  }

  *(v20 + 24) = v40;

  return result;
}

{
  v2 = v0;
  v63 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v48[-v9];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v48[-v14];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v16 = static ObservationCenter._current;
  swift_beginAccess();
  v17 = pthread_getspecific(v16[2]);
  if (!v17)
  {
    v18 = swift_slowAlloc();
    pthread_setspecific(v16[2], v18);
    *(&v61 + 1) = type metadata accessor for ObservationCenter();
    *&v60 = v16[3];
    outlined init with take of Any(&v60, v18);

    v17 = v18;
  }

  outlined init with copy of Any(v17, v59);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v19 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v45 = v2[2];

    v46 = v45 + 1;
    v29 = v51;
    v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 1, v2);
    *(v19 + 24) = v47;

    v2 = v47;
    goto LABEL_9;
  }

  v49 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v19 + 24);
  *(v19 + 24) = MEMORY[0x1E69E7CC0];
  v21 = v54;
  (*(v3 + 56))(v15, 1, 1, v54);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v51 = v3;
  v23 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  Value = AGGraphGetValue();
  v26 = Value[1];
  v25 = Value[2];
  v27 = *Value;
  *(v58 + 10) = *(Value + 42);
  v58[0] = v25;
  v57[0] = v27;
  v57[1] = v26;
  v60 = *Value;
  v61 = Value[1];
  v62[0] = Value[2];
  *(v62 + 10) = *(Value + 42);
  outlined init with copy of MeshGradient(v57, &v56);
  specialized closure #1 in ViewBodyAccessor.updateBody(of:changed:)(&v60);
  outlined destroy of MeshGradient(v57);
  *(StatusReg + 848) = v23;
  v28 = v21;
  v29 = v51;
  outlined init with copy of ObservationTracking._AccessList?(v15, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  if ((*(v29 + 48))(v12, 1, v21) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v15, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v30 = v12;
    goto LABEL_12;
  }

  v1 = *(v29 + 32);
  v31 = v53;
  v1(v53, v12, v28);
  (*(v29 + 16))(v52, v31, v28);
  swift_beginAccess();
  v2 = *(v19 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 24) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v34 = v2[2];
  v33 = v2[3];
  if (v34 >= v33 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v2);
  }

  v2[2] = v34 + 1;
  v35 = v2 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v34;
  v28 = v54;
  v1(v35, v52, v54);
  *(v19 + 24) = v2;
  swift_endAccess();
  (*(v29 + 8))(v53, v28);
  v30 = v15;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v36 = *(v19 + 24);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = *(v29 + 16);
    v53 = *(v19 + 24);
    v54 = v38;
    v39 = v29 + 16;
    v40 = v36 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v41 = v5;
    v42 = *(v39 + 56);

    v43 = v49;
    do
    {
      (v54)(v41, v40, v28);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v43, v41);
      (*(v39 - 8))(v41, v28);
      v40 += v42;
      --v37;
    }

    while (v37);
  }

  *(v19 + 24) = v50;

  return result;
}