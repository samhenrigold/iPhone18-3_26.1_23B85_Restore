void *initializeWithTake for Environment(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *result = *a2;
  }

  *(result + v3) = v10;
  return result;
}

uint64_t static EnvironmentalModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v71 = a2[2];
  v72 = v10;
  v73 = a2[4];
  v74 = *(a2 + 20);
  v11 = a2[1];
  v69 = *a2;
  v70 = v11;
  static DynamicPropertyCache.fields(of:)(a5, &v75);
  v12 = v75;
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  v23 = DWORD1(v76);
  v24 = v9;
  LODWORD(v49) = v9;
  v57 = v75;
  v28 = *(&v75 + 1);
  v29 = v76;
  LOBYTE(v58) = v76;
  DWORD1(v58) = DWORD1(v76);
  outlined init with copy of _ViewInputs(&v69, &v75);
  static EnvironmentalModifier.makeResolvedModifier(modifier:inputs:fields:)(v55, &v75, &v49, &v63, &v57, a5, a6);
  v13 = v55[0];
  v22 = v75;
  v25 = v76;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v80 = v68;
  v75 = v63;
  v76 = v64;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v51 = v77;
  v52 = v78;
  v53 = v79;
  v54 = v80;
  v49 = v75;
  v50 = v76;
  v56 = v80;
  v16 = v77;
  LODWORD(v51) = 0;
  LODWORD(v37) = v13;
  v55[0] = v75;
  v55[1] = v76;
  v55[3] = v78;
  v55[4] = v79;
  v55[2] = v51;
  v45 = v51;
  v46 = v78;
  v47 = v79;
  v48 = v80;
  v43 = v75;
  v44 = v76;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v75, &v57);
  outlined init with copy of _ViewInputs(v55, &v57);
  v18(v32, &v37, &v43, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v57 = v43;
  v58 = v44;
  outlined destroy of _ViewInputs(&v57);
  LODWORD(v51) = v16;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v32, &v49);
    AGSubgraphEndTreeElement();
  }

  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v43 = v49;
  v44 = v50;
  outlined destroy of _ViewInputs(&v43);
  v19 = v32[0];
  v20 = v32[1];
  if (v25)
  {
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v37 = v63;
    v38 = v64;
    outlined destroy of _ViewInputs(&v37);
  }

  else
  {
    v36 = v22;
    v31 = v24;
    v33[0] = v12;
    v33[1] = v28;
    v34 = v29;
    v35 = v23;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v31, v33, a5);
    v39 = v65;
    v40 = v66;
    v41 = v67;
    v42 = v68;
    v37 = v63;
    v38 = v64;
    outlined destroy of _ViewInputs(&v37);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v12, v28, v29);
  *a7 = v19;
  a7[1] = v20;
  return result;
}

uint64_t ViewGraphRootValueUpdater._explicitAlignment(of:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, a3, partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:));
}

{
  return ViewGraphRootValueUpdater._explicitAlignment(of:at:)(a1, a2, a3, partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:));
}

uint64_t ViewGraph.explicitAlignment(of:at:)(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  if ((*(v3 + 361) & 0x10) != 0)
  {
    GraphHost.instantiateIfNeeded()();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      v16 = 0.0;
      return *&v16;
    }

    v8 = *WeakValue;

    ViewGraph.rootViewInsets.getter();
    v13 = v9;
    if (a2 - (v10 + v12) < 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2 - (v10 + v12);
    }

    if (a3 - (v9 + v11) < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a3 - (v9 + v11);
    }

    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_15:
      *v20 = v14;
      *&v20[1] = v15;
      *&v20[2] = v14;
      *&v20[3] = v15;
      v16 = COERCE_DOUBLE((*(*v8 + 144))(a1, v20));
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        v16 = v13 + v16;
      }

      return *&v16;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  swift_beginAccess();
  if ((*(v3 + 361) & 0x10) != 0)
  {
    GraphHost.instantiateIfNeeded()();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      v18 = 0.0;
      return *&v18;
    }

    v8 = *WeakValue;

    ViewGraph.rootViewInsets.getter();
    v12 = v11;
    v14 = a2 - (v11 + v13);
    if (v14 < 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = a3 - (v9 + v10);
    if (v16 < 0.0)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v16;
    }

    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_15;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (_MovableLockIsOwner(static Update._lock))
    {
LABEL_15:
      *v22 = v15;
      *&v22[1] = v17;
      *&v22[2] = v15;
      *&v22[3] = v17;
      v18 = COERCE_DOUBLE((*(*v8 + 144))(a1, v22));
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        v18 = v12 + v18;
      }

      return *&v18;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)(ViewGraph.explicitAlignment(of:at:), a1);
}

{
  return partial apply for closure #1 in ViewGraphRootValueUpdater._explicitAlignment(of:at:)(ViewGraph.explicitAlignment(of:at:), a1);
}

uint64_t Transaction.init(animation:)(uint64_t a1)
{
  v3 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v3, a1);

  return v3;
}

uint64_t EnvironmentValues.tintColor.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!v2)
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(v1);
    if (!v4)
    {
      return 0;
    }

    v3 = v4[9];

    if (!v3)
    {
      return 0;
    }

LABEL_6:
    v5 = specialized ShapeStyle.fallbackColor(in:level:)(v1, v2, 0, v3);

    return v5;
  }

  v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v1);

  if (v3)
  {
    goto LABEL_6;
  }

  return 0;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2, unint64_t a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*a1);
  if (!v6 || *(v6 + 72) != a2 || (v7 = v6[10], , v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI21AnyTextSizingModifierC_Tt1g5(a3, v7), , (v8 & 1) == 0))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSizingKey>>(0);
    v10 = swift_allocObject();
    *(v10 + 72) = a2;
    *(v10 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v12 = v11;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v12, 0, v9);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextSizingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSizingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextSizingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextSizingKey>>);
    }
  }
}

uint64_t _GraphInputs.pixelLength.getter()
{
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  return v1;
}

uint64_t static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a5;
  v65 = a4;
  v67 = a3;
  v68 = a8;
  v114 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[1];
  v109 = *a2;
  v110 = v11;
  v12 = a2[3];
  v111 = a2[2];
  *v112 = v12;
  *&v112[16] = a2[4];
  v113 = *(a2 + 20);
  v13 = v110;
  v15 = DWORD2(v110);
  v14 = HIDWORD(v110);
  v62 = DWORD2(v109);
  v63 = DWORD1(v111);
  swift_beginAccess();
  v16 = *(v13 + 16);
  v66 = v10;
  *v98 = v10;
  *&v98[4] = v16;
  *&v98[8] = *&v112[24];
  *&v98[12] = vrev64_s32(*&v112[12]);
  *&v98[20] = *&v112[28];
  v75[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value(0, a6, a7, v17);
  v19 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo(0, a6, a7, v18);
  v75[3] = v19;
  swift_getWitnessTable(protocol conformance descriptor for _BackgroundStyleModifier<A>.BackgroundInfo, v19);
  v75[4] = v20;
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v98, partial apply for closure #1 in Attribute.init<A>(_:), v75, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v105 = v111;
  v106 = *v112;
  v107 = *&v112[16];
  v108 = v113;
  v103 = v109;
  v104 = v110;
  outlined init with copy of _ViewInputs(&v109, v98);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v103, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

  closure #1 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1, a6, a7, v23);
  LODWORD(v107) = AGGraphCreateOffsetAttribute2();
  v24 = v105;
  closure #2 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1, a6, a7, v25);
  DWORD2(v107) = AGGraphCreateOffsetAttribute2();
  LODWORD(v105) = v24 | 0x18;
  v28 = type metadata accessor for _AnchoredShapeStyle(0, a6, a7, v26);
  if (*(*(v28 - 8) + 64))
  {
    closure #3 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(1, a6, a7, v27);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v30 = *(v13 + 16);
  LOBYTE(v78) = 0;
  v99 = v111;
  v100 = *v112;
  v101 = *&v112[16];
  v102 = v113;
  *v98 = v109;
  *&v98[16] = v110;
  _ViewInputs.materialSubstrate.getter(v76);
  *&v84 = __PAIR64__(v62, v15);
  DWORD2(v84) = v14;
  *&v85 = 0;
  BYTE8(v85) = 0;
  *&v86 = 0;
  DWORD2(v86) = 0;
  ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(OffsetAttribute2, *MEMORY[0x1E698D3F8], v30, &v78, v76, v63 & 1, &v84, &v90);
  MEMORY[0x1EEE9AC00](v31);
  v33 = type metadata accessor for ShapeStyleResolver(0, v28, &protocol witness table for _AnchoredShapeStyle<A>, v32);
  v61[2] = v33;
  swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v33);
  v61[3] = v34;
  type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v90, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_3, v61, v33, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v36);
  v96[2] = v92;
  v96[3] = v93;
  v97 = v94;
  v96[0] = v90;
  v96[1] = v91;
  (*(*(v33 - 8) + 8))(v96, v33);
  v37 = *v98;
  AGGraphSetFlags();
  v99 = v111;
  v100 = *v112;
  v101 = *&v112[16];
  v102 = v113;
  *v98 = v109;
  *&v98[16] = v110;
  v38 = v67;
  if (v67)
  {
    v39 = v68;
    v40 = v65;
    if (*(*(a6 - 8) + 64))
    {
      outlined init with copy of _ViewInputs(&v109, &v90);
      v42 = closure #1 in static _BackgroundModifier._makeView(modifier:inputs:body:)(1, a6, a7, type metadata accessor for _BackgroundStyleModifier, closure #1 in static PointerOffset.of(_:)partial apply);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v109, &v90);
      v42 = 0;
    }

    v43 = v66;
    v44 = type metadata accessor for _BackgroundStyleModifier(0, a6, a7, v41);
    _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(v43, v42, v44, a6, a7);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v109, &v90);
    v39 = v68;
    LODWORD(v43) = v66;
    v40 = v65;
  }

  v86 = v99;
  v87 = v100;
  v88 = v101;
  v89 = v102;
  v84 = *v98;
  v85 = *&v98[16];
  v80 = v99;
  v81 = v100;
  v82 = v101;
  v83 = v102;
  v78 = *v98;
  v79 = *&v98[16];
  v45 = outlined init with copy of _ViewInputs(&v84, &v90);
  v40(v76, v45, &v78);
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v90 = v78;
  v91 = v79;
  outlined destroy of _ViewInputs(&v90);
  v46 = *&v76[0];
  v47 = DWORD2(v76[0]);
  LODWORD(v68) = HIDWORD(v76[0]);
  v49 = type metadata accessor for _BackgroundStyleModifier(0, a6, a7, v48);
  LODWORD(v69) = v43;
  v80 = v105;
  v81 = v106;
  v82 = v107;
  v83 = v108;
  v78 = v103;
  v79 = v104;
  static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v69, &v78, v37, 0, v50, v49, &protocol witness table for _BackgroundStyleModifier<A>, v76);
  v51 = *&v76[0];
  v52 = DWORD2(v76[0]);
  if (v38)
  {
    v53 = *&v76[0];
  }

  else
  {
    v53 = v46;
  }

  if (v38)
  {
    v54 = DWORD2(v76[0]);
  }

  else
  {
    v54 = v47;
  }

  if (v38)
  {
    v51 = v46;
    v52 = v47;
  }

  v73 = MEMORY[0x1E69E7CC0];
  v74 = 0;
  v69 = v53;
  v70 = v54;
  v71 = v51;
  v72 = v52;
  v55 = *v112;
  v56 = *(*v112 + 16);
  if (v56)
  {

    v57 = (v55 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v69, *(v57 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v57, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v57 += 2;
      --v56;
    }

    while (v56);
  }

  else
  {
  }

  v76[2] = v99;
  v76[3] = v100;
  v76[4] = v101;
  v77 = v102;
  v76[0] = *v98;
  v76[1] = *&v98[16];
  outlined destroy of _ViewInputs(v76);

  v80 = v105;
  v81 = v106;
  v82 = v107;
  v83 = v108;
  v78 = v103;
  v79 = v104;
  outlined destroy of _ViewInputs(&v78);
  *(v39 + 12) = v68;
  v58 = v73;
  v59 = v74;

  *v39 = v58;
  *(v39 + 8) = v59;
  return result;
}

uint64_t closure #1 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value(0, a2, a3, a4);
  type metadata accessor for CGPoint(0);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #2 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[2] = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value(0, a2, a3, a4);
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, closure #1 in static PointerOffset.of(_:)partial apply, v8, &type metadata for ViewSize, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

uint64_t closure #3 in static _BackgroundStyleModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _BackgroundStyleModifier.BackgroundInfo.Value(0, a2, a3, a4);
  v8 = *(v7 + 36);
  v13[2] = v7;
  v14 = type metadata accessor for _AnchoredShapeStyle(0, a2, a3, v9);
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v13, v14, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v15;
}

uint64_t type metadata completion function for _BackgroundStyleModifier.BackgroundInfo.Value(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _AnchoredShapeStyle(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _AnchoredShapeStyle(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _BackgroundStyleModifier<A>.BackgroundInfo(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _BackgroundStyleModifier<A>.BackgroundInfo, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for CodableOptional(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t _AnyMaterialCustomFillProvider.__deallocating_deinit()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 144));

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for _OverlayStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

void specialized UnaryChildGeometry.value.getter(unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v31 = Value[1];
  v32 = *Value;
  v6 = *AGGraphGetValue();
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = lockAssertionsAreEnabled;
  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      goto LABEL_26;
    }

LABEL_6:
    v33[0] = v32;
    v33[1] = v31;
    (*(*v6 + 152))(&v34, v33);

    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    v13 = v38;
    v14 = v39;
    v15 = v40;
    v16 = v41;
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v18 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v19 = *AGGraphGetValue();
  if (v18 == v3)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v21 = *(&static LayoutComputer.defaultValue + 1);
    v20 = static LayoutComputer.defaultValue;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    InputValue = AGGraphGetInputValue();
    v20 = *InputValue;
    v21 = InputValue[1];
    if (!v8)
    {
LABEL_11:

      goto LABEL_16;
    }
  }

  v23 = one-time initialization token for _lock;

  if (v23 != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_16:
  v34 = v9;
  v35 = v10;
  v36 = v11;
  v37 = v12;
  v25 = (*(*v20 + 120))(&v34);
  v26 = v24;
  v27 = NAN;
  if (v10)
  {
    v28 = NAN;
  }

  else
  {
    v28 = v9;
  }

  v29 = v15 - v13 * v25;
  v30 = v16 - v14 * v24;
  *a3 = v29;
  *(a3 + 8) = v30;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  *(a3 + 32) = v25;
  *(a3 + 40) = v26;
  if (!v12)
  {
    v27 = v11;
  }

  *(a3 + 48) = v28;
  *(a3 + 56) = v27;
  if (v19)
  {
    *a3 = *&v32 - CGRectGetMaxX(*(&v25 - 2));
  }
}

void specialized EnvironmentalViewChild.updateValue()()
{
  v88 = *MEMORY[0x1E69E9840];
  v71 = type metadata accessor for OSSignpostID();
  v1 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v55 - v4;
  Value = AGGraphGetValue();
  v8 = v7;
  v9 = *Value;

  v10 = AGGraphGetValue();
  v13 = *v10;
  v12 = *(v10 + 8);
  if (v8)
  {
  }

  else
  {
    if (v11)
    {

      v14 = swift_retain_n();
      v15 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v14);

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (AGGraphGetOutputValue())
    {

      return;
    }
  }

LABEL_10:
  v16 = *(v0 + 8);
  PropertyList.Tracker.reset()();
  if (v13)
  {
    v17 = *(v13 + 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = v16[2];
  swift_retain_n();

  os_unfair_lock_lock((v18 + 16));
  *(v18 + 24) = v17;
  os_unfair_lock_unlock((v18 + 16));

  v19 = one-time initialization token for bodyInvoke;

  if (v19 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v20 = static Signpost.bodyInvoke;
    v21 = word_1ED539040;
    v79 = static Signpost.bodyInvoke;
    LOWORD(v80) = word_1ED539040;
    v64 = HIBYTE(word_1ED539040);
    BYTE2(v80) = byte_1ED539042;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v85 = v13;
      v86 = v16;

      Color.body(environment:)(&v85, v9, &v79);

      v31 = v79;
      v32 = v80;
      v33 = v81;
      v34 = v82;
      goto LABEL_51;
    }

    v59 = v21;
    v60 = *(&v20 + 1);
    v61 = v20;
    v56 = v16;
    v62 = v1;
    v57 = v13;
    v58 = v9;
    v63 = v5;
    static OSSignpostID.exclusive.getter();
    v22 = static os_signpost_type_t.begin.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_18DDAB4C0;
    v23 = AGTypeID.description.getter();
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    v16[7] = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v28 = v27;
    v16[8] = v27;
    v16[4] = v23;
    v16[5] = v25;
    v29 = specialized static Tracing.libraryName(defining:)();
    v16[12] = v26;
    v16[13] = v28;
    v16[9] = v29;
    v16[10] = v30;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v64)
    {
      break;
    }

    v55[0] = _signpostLog;
    v55[1] = v12;
    v35 = v61;
    if (v61 == 20)
    {
      v36 = 3;
    }

    else
    {
      v36 = 4;
    }

    v37 = bswap32(v61) | (4 * WORD1(v61));
    v12 = v22;
    v38 = v62 + 16;
    v65 = *(v62 + 16);
    v39 = v65(v72, v63, v71);
    v1 = 0;
    LOBYTE(v85) = 1;
    *&v74 = v36;
    v69 = 16 * v36;
    v66 = v38;
    v70 = (v38 - 8);
    v68 = v16 + 4;
    v67 = v35;
LABEL_24:
    v73 = v55;
    MEMORY[0x1EEE9AC00](v39);
    v41 = v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v41 + 8;
    v42 = v74;
    v43 = v41 + 8;
    do
    {
      *(v43 - 1) = 0;
      *v43 = 0;
      v43 += 16;
      --v42;
    }

    while (v42);
    v5 = &v68[5 * v1];
    v9 = v74;
    while (1)
    {
      v44 = v16[2];
      if (v1 == v44)
      {
        LOBYTE(v85) = 0;
LABEL_32:
        v48 = v67;
        if (v67 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v41[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v41[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v41[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v48 != 20 && v41[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v49 = v71;
        v50 = *v70;
        v51 = v72;
        (*v70)(v72, v71);
        v52 = __swift_project_value_buffer(v49, static OSSignpostID.continuation);
        v39 = v65(v51, v52, v49);
        if ((v85 & 1) == 0)
        {
          v50(v72, v71);

          goto LABEL_47;
        }

        goto LABEL_24;
      }

      if (v1 >= v44)
      {
        break;
      }

      ++v1;
      outlined init with copy of AnyTrackedValue(v5, &v79);
      v45 = v83;
      v46 = v84;
      __swift_project_boxed_opaque_existential_1(&v79, v83);
      *(v13 - 1) = CVarArg.kdebugValue(_:)(v37 | v12, v45, v46);
      *v13 = v47 & 1;
      v13 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v79);
      v5 += 40;
      if (!--v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v78 = v22;
  v76 = _signpostLog;
  v77 = &dword_18D018000;
  *&v79 = v61;
  *(&v79 + 1) = v60;
  LOBYTE(v80) = v59;
  v85 = "%{public}@.body [in %{public}@]";
  v86 = 31;
  v87 = 2;
  v75 = v16;
  specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v78, &v77, &v76, &v79, v63, &v85, &v75);

LABEL_47:
  v85 = v57;
  v86 = v56;

  Color.body(environment:)(&v85, v58, &v79);

  v74 = v79;
  v32 = v80;
  v33 = v81;
  v34 = v82;
  static os_signpost_type_t.end.getter();
  v53 = v62;
  v54 = v63;
  if (v64)
  {
    os_signpost(_:dso:log:name:signpostID:)();
  }

  else
  {
    OSSignpostID.rawValue.getter();
    kdebug_trace();
  }

  (*(v53 + 8))(v54, v71);
  v31 = v74;
LABEL_51:
  v79 = v31;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  AGGraphSetOutputValue();
}

double Color.body(environment:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v11 = *a1;
  v12 = v5;
  (*(*a2 + 120))(&v13, &v11);
  v6 = v14;
  if (v14 <= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v11 = v4;
    v12 = v5;
    v9 = 3;
    EnvironmentValues.effectiveAllowedDynamicRange(explicitRange:)(&v9, &v10);
    v7 = v10;
  }

  result = *&v13;
  *a3 = v13;
  *(a3 + 16) = v6;
  *(a3 + 20) = 1;
  *(a3 + 21) = v7;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(float32x4_t *a1, uint64_t a2, int a3, char *a4)
{
  LODWORD(v11) = a3;
  v237 = *MEMORY[0x1E69E9840];
  v213 = type metadata accessor for OSSignpostID();
  v209 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v15 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v211 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v207 = &v189 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v212 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v203 = &v189 - v26;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &unk_1ED52E000;
  v31 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[1].i8[6] = 1;
    goto LABEL_9;
  }

  if (a1[1].i8[6] == 1)
  {
LABEL_9:
    LODWORD(v8) = a1->i32[0];
    LODWORD(v7) = a1->i32[1];
    LODWORD(v6) = a1->i32[2];
    v5 = a1->f32[3];
    LODWORD(v4) = a1[1].i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_210;
    }

    goto LABEL_10;
  }

  v35 = 0;
  v39 = *(a4 + 5);
  if (!v39)
  {
    return;
  }

  while (2)
  {
    v214 = *a1;
    LODWORD(v4) = a1[1].i32[0];
    v155 = *(v30 + 3896);

    if (v155 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*v31)
    {
      v156 = v214;
    }

    else
    {
      v221.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v233, v214.f32[0], v214.u32[1], v214.f32[2], v214.f32[3]);
      v156 = v233;
    }

    v157.i64[0] = 0x4300000043000000;
    v157.i64[1] = 0x4300000043000000;
    v221 = vmulq_f32(v156, v157);
    LODWORD(v222) = v4;
    LOBYTE(v233) = 0;
    v158 = specialized AnimatorState.update(_:at:environment:)(&v221, v11, v29);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v57)
    {
      v160 = 0;
    }

    else
    {
      v160 = CurrentAttribute;
    }

    if ((v158 & 1) == 0)
    {
      if (one-time initialization token for enabledCategories == -1)
      {
LABEL_170:
        if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
        {
          if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
            LODWORD(v233) = v160;
            BYTE4(v233) = CurrentAttribute == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          specialized AnimatorState.nextUpdate()();
          goto LABEL_205;
        }

        __break(1u);
        goto LABEL_214;
      }

LABEL_212:
      v188 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v188;
      goto LABEL_170;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_212;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v233) = v160;
      BYTE4(v233) = CurrentAttribute == v57;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v201 = a1;
    v202 = a4;
    v161 = one-time initialization token for animationState;
    v200 = v39;

    if (v161 != -1)
    {
LABEL_214:
      swift_once();
    }

    v56 = *(&static Signpost.animationState + 1);
    v162 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v30 = HIBYTE(word_1ED5283E8);
    v163 = byte_1ED5283EA;
    v164 = static os_signpost_type_t.end.getter();
    v233 = __PAIR128__(v56, v162);
    LOBYTE(v234) = v52;
    BYTE1(v234) = v30;
    BYTE2(v234) = v163;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_204;
    }

    v214.i32[0] = v164;
    v165 = one-time initialization token for _signpostLog;
    v55 = v200;

    if (v165 != -1)
    {
      swift_once();
    }

    v198 = v35;
    v54 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v57)
    {
      __break(1u);
      goto LABEL_216;
    }

    v55 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v167 = MEMORY[0x1E69E6870];
    *(v58 + 56) = MEMORY[0x1E69E6810];
    *(v58 + 64) = v167;
    *(v58 + 32) = Counter;
    v168 = AGGraphGetCurrentAttribute();
    if (v168 == v57)
    {
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_33;
    }

    v169 = MEMORY[0x1E69E76D0];
    *(v58 + 96) = MEMORY[0x1E69E7668];
    *(v58 + 104) = v169;
    *(v58 + 72) = v168;
    *(v58 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 144) = v170;
    *(v58 + 112) = 0x656956726F6C6F43;
    *(v58 + 120) = 0xE900000000000077;
    if (v30)
    {
      v220 = v214.i8[0];
      v218 = v54;
      v219 = &dword_18D018000;
      *&v233 = v162;
      *(&v233 + 1) = v56;
      LOBYTE(v234) = v52;
      v216[0] = "Animation: (%p) [%d] %{public}@ ended";
      v216[1] = 37;
      v217 = 2;
      v215 = v58;
      v171 = v203;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v219, &v218, &v233, v203, v216, &v215);

      (*(v209 + 8))(v171, v213);
      goto LABEL_203;
    }

    v172 = v162;
    if (v162 == 20)
    {
      v173 = 3;
    }

    else
    {
      v173 = 4;
    }

    a1 = (bswap32(v162) | (4 * WORD1(v162)));
    a2 = v214.u8[0];
    v174 = v209 + 16;
    v204 = *(v209 + 16);
    v175 = (v204)(v212, v203, v213);
    v11 = 0;
    LOBYTE(v216[0]) = 1;
    v211 = v173;
    v209 = v174;
    v207 = (16 * v173);
    v208 = (v174 - 8);
    v214.i64[0] = v58;
    v205 = v172;
    v206 = (v58 + 32);
LABEL_180:
    v210 = &v189;
    MEMORY[0x1EEE9AC00](v175);
    a4 = &v189 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = a4 + 8;
    v177 = v211;
    v178 = a4 + 8;
    do
    {
      *(v178 - 1) = 0;
      *v178 = 0;
      v178 += 16;
      --v177;
    }

    while (v177);
    v31 = &v206[5 * v11];
    v18 = v211;
    while (1)
    {
      v179 = *(v214.i64[0] + 16);
      if (v11 == v179)
      {
        LOBYTE(v216[0]) = 0;
LABEL_188:
        v182 = v205;
        if (v205 == 20)
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

        if (v182 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v183 = *v208;
        v30 = v212;
        v184 = v213;
        (*v208)(v212, v213);
        v185 = __swift_project_value_buffer(v184, static OSSignpostID.continuation);
        v175 = (v204)(v30, v185, v184);
        if ((v216[0] & 1) == 0)
        {

          v186 = v213;
          v183(v212, v213);
          v183(v203, v186);
LABEL_203:

LABEL_204:
          specialized AnimatorState.removeListeners()();

          a1 = v201;
          *(v202 + 5) = 0;
LABEL_205:
          v233 = v221;
          LODWORD(v234) = v222;
          Color.ResolvedHDR.animatableData.setter(&v233);

          a1[1].i8[6] = 1;
          return;
        }

        goto LABEL_180;
      }

      if (v11 >= v179)
      {
        break;
      }

      ++v11;
      outlined init with copy of AnyTrackedValue(v31, &v233);
      v180 = *(&v234 + 1);
      v30 = v235;
      __swift_project_boxed_opaque_existential_1(&v233, *(&v234 + 1));
      *(v15 - 1) = CVarArg.kdebugValue(_:)(a1 | a2, v180, v30);
      *v15 = v181 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v233);
      v31 += 40;
      if (!--v18)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
LABEL_10:
    swift_beginAccess();
    if ((*v31 & 1) == 0)
    {
      v228.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v233, *&v8, v7, *&v6, v5);
      LODWORD(v7) = DWORD1(v233);
      LODWORD(v8) = v233;
      v5 = *(&v233 + 3);
      LODWORD(v6) = DWORD2(v233);
    }

    v9 = *&v8 * 128.0;
    v32 = *&v7 * 128.0;
    v33 = *&v6 * 128.0;
    v34 = v5 * 128.0;
    v5 = *&v4;
    if (a4[32])
    {
      v35 = 0;
      goto LABEL_145;
    }

    *&v7 = v29;
    LODWORD(v8) = *(a4 + 6);
    v36 = *(a4 + 7);
    v37 = *(a4 + 3);
    LODWORD(v6) = *(a4 + 4);
    v38 = *(a4 + 5);
    if (v9 == v37 && v32 == *&v6 && v33 == v38 && v34 == *&v8 && v5 == v36)
    {
      v35 = 0;
      v29 = *&v7;
      goto LABEL_145;
    }

    v210 = v15;
    v190 = v18;
    v194 = v32;
    v195 = v33;
    v196 = v34;
    AGGraphClearUpdate();
    v40 = *(a4 + 1);
    v233 = *a4;
    v234 = v40;
    v235 = *(a4 + 2);
    v202 = a4;
    v236 = *(a4 + 12);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    v42 = v41;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v41);
    if (v43)
    {
      v44 = v43;
      goto LABEL_26;
    }

    v30 = 0x1ED52E000;
    if (!a2)
    {

      v35 = 0;
      a4 = v202;
      v29 = *&v7;
      v31 = &static Color.Resolved.legacyInterpolation;
      goto LABEL_144;
    }

    v44 = a2;
LABEL_26:
    v45 = v9 - v37;
    v46 = v194 - *&v6;
    v47 = v195 - v38;
    v48 = v196 - *&v8;
    if (v5 > v36)
    {
      v36 = v5;
    }

    v49 = *(&v235 + 1);
    v29 = *AGGraphGetValue();
    v201 = a1;
    v191 = v11;
    v192 = v44;
    v193 = v41;
    if (!v49)
    {
      v221.i64[0] = &type metadata for ColorView;
      type metadata accessor for ColorView.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Color.ResolvedHDR._Animatable>.Type, &type metadata for Color.ResolvedHDR._Animatable);
      v74 = swift_dynamicCast();
      if (v74)
      {
        v75 = v228.i64[0];
      }

      else
      {
        v75 = 0;
      }

      if (v74)
      {
        v76 = v228.i64[1];
      }

      else
      {
        v76 = 0;
      }

      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState);
      v77 = swift_allocObject();
      v78 = MEMORY[0x1E69E7CC0];
      *(v77 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v197 = v77;
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        *(v77 + 32) = 0;
        *(v77 + 72) = 0;
        *(v77 + 40) = 0;
        *(v77 + 48) = 0;
        v79 = 0uLL;
      }

      else
      {
        v226.i8[0] = 2;
        ResolvedGradient.ColorSpace.convertIn(_:)(&v228, 0.0, 0, 0.0, 0.0);
        v77 = v197;
        v80.i64[0] = 0x4300000043000000;
        v80.i64[1] = 0x4300000043000000;
        v81 = v197;
        v197[2] = vmulq_f32(v228, v80);
        v81 += 2;
        v82 = static Color.Resolved.legacyInterpolation;
        v81[1].i32[0] = 0;
        v81[2].i64[1] = 0;
        v79 = 0uLL;
        if ((v82 & 1) == 0)
        {
          v226.i8[0] = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v228, 0.0, 0, 0.0, 0.0);
          v77 = v197;
          v83.i64[0] = 0x4300000043000000;
          v83.i64[1] = 0x4300000043000000;
          v79 = vmulq_f32(v228, v83);
        }
      }

      *(v77 + 80) = v79;
      *(v77 + 96) = 0;
      *(v77 + 104) = 1;
      *(v77 + 112) = v78;
      *(v77 + 120) = v78;
      *(v77 + 128) = 0;
      *(v77 + 136) = 0;
      *(v77 + 144) = 0;
      *(v77 + 152) = v78;
      *(v77 + 16) = v44;
      swift_beginAccess();
      *(v77 + 32) = v45;
      *(v77 + 36) = v46;
      *(v77 + 40) = v47;
      *(v77 + 44) = v48;
      *(v77 + 48) = v36;
      *(v77 + 136) = v75;
      *(v77 + 144) = v76;
      *(v77 + 56) = v29;
      *(v77 + 72) = v29;
      swift_retain_n();

      v85 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v84));
      v198 = 0;
      if (v86)
      {

        v87 = v77;
        v88 = 0;
        *(v87 + 64) = 0;
        LOBYTE(v89) = 1;
        goto LABEL_96;
      }

      if (v85 <= 0.0)
      {
        *(v77 + 64) = 0;
      }

      else
      {
        v90 = log2(v85 * 240.0);
        v91 = exp2(floor(v90 + 0.01)) * 0.00416666667;
        *(v77 + 64) = v91;
        if (v91 >= 0.0166666667)
        {

          v88 = 0;
          LOBYTE(v89) = 1;
LABEL_95:
          v87 = v197;
LABEL_96:
          *(v87 + 100) = v88;
          *(v87 + 104) = v89;
          v112 = AGGraphGetCurrentAttribute();
          v113 = v112;
          v214.i32[0] = *MEMORY[0x1E698D3F8];
          if (v112 == v214.i32[0])
          {
            v114 = 0;
          }

          else
          {
            v114 = v112;
          }

          (*(*v44 + 96))(&v221);
          v115 = v221;
          v116 = v222;
          v117 = v224;
          v215 = 0x7FF8000000000000;
          v216[0] = 0x7FF8000000000000;
          *&v218 = 1.0;
          v219 = 0x7FF8000000000000;
          v228 = v221;
          v229 = v222;
          v230 = v223;
          v118 = v223;
          v231 = v224;
          LODWORD(v211) = v225;
          LOBYTE(v232) = v225;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v216, &v219, &v218, &v215);
          v8 = v215;
          v4 = v216[0];
          v7 = v218;
          v6 = v219;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v119 = static CustomEventTrace.recorder) != 0)
            {
              v120 = v113 == v214.i32[0];
              v208 = v117;
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v121 = *(v119 + 16);
              v228.i32[0] = v114;
              v228.i8[4] = v120;
              v228.i64[1] = &type metadata for ColorView;
              v229 = v4;
              v230 = v6;
              v231 = v7;
              v232 = v8;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

              v122 = v121;
              AGGraphAddTraceEvent();
              outlined consume of Animation.Function(v115.i64[0], v115.i64[1], v116, v118, v208, v211);
            }

            else
            {
              outlined consume of Animation.Function(v115.i64[0], v115.i64[1], v116, v118, v117, v211);
            }

            v123 = one-time initialization token for animationState;

            if (v123 == -1)
            {
LABEL_107:
              v52 = *(&static Signpost.animationState + 1);
              a1 = static Signpost.animationState;
              LOBYTE(v15) = word_1ED5283E8;
              LOBYTE(v67) = HIBYTE(word_1ED5283E8);
              v124 = byte_1ED5283EA;
              LODWORD(v30) = static os_signpost_type_t.begin.getter();
              v228 = __PAIR128__(v52, a1);
              LOBYTE(v229) = v15;
              BYTE1(v229) = v67;
              BYTE2(v229) = v124;
              v125 = Signpost.isEnabled.getter();
              LODWORD(v62) = v214.i32[0];
              if ((v125 & 1) == 0)
              {
                v136 = v197;

                goto LABEL_114;
              }

              v126 = one-time initialization token for _signpostLog;

              if (v126 == -1)
              {
LABEL_109:
                LODWORD(v211) = v30;
                v127 = _signpostLog;
                OSSignpostID.init(log:object:)();
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v128 = swift_allocObject();
                *(v128 + 16) = xmmword_18DDAF080;
                if (AGGraphGetCurrentAttribute() == v62)
                {
                  __break(1u);
                }

                else
                {
                  v129 = AGGraphGetAttributeGraph();
                  v130 = AGGraphGetCounter();

                  v131 = MEMORY[0x1E69E6870];
                  *(v128 + 56) = MEMORY[0x1E69E6810];
                  *(v128 + 64) = v131;
                  *(v128 + 32) = v130;
                  v132 = AGGraphGetCurrentAttribute();
                  if (v132 != v62)
                  {
                    v30 = v128;
                    v133 = MEMORY[0x1E69E76D0];
                    *(v128 + 96) = MEMORY[0x1E69E7668];
                    *(v128 + 104) = v133;
                    *(v128 + 72) = v132;
                    *(v128 + 136) = MEMORY[0x1E69E6158];
                    lazy protocol witness table accessor for type String and conformance String();
                    *(v128 + 144) = v134;
                    *(v128 + 112) = 0x656956726F6C6F43;
                    *(v128 + 120) = 0xE900000000000077;
                    if ((v67 & 1) == 0)
                    {
                      if (a1 == 20)
                      {
                        v137 = 3;
                      }

                      else
                      {
                        v137 = 4;
                      }

                      a4 = (bswap32(a1) | (4 * (a1 >> 16)));
                      v214.i32[0] = v211;
                      v138 = (v209 + 16);
                      v199 = *(v209 + 16);
                      v139 = v199(v210, v190, v213);
                      v11 = 0;
                      v221.i8[0] = 1;
                      v211 = v137;
                      v200 = v138;
                      v206 = (16 * v137);
                      v207 = v138 - 8;
                      v204 = a1;
                      v205 = v128 + 32;
                      do
                      {
                        v208 = &v189;
                        MEMORY[0x1EEE9AC00](v139);
                        v15 = &v189 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
                        a2 = (v15 + 8);
                        v141 = v211;
                        v142 = v15 + 8;
                        do
                        {
                          *(v142 - 1) = 0;
                          *v142 = 0;
                          v142 += 16;
                          --v141;
                        }

                        while (v141);
                        v31 = (v205 + 40 * v11);
                        v18 = v211;
                        while (1)
                        {
                          v143 = *(v30 + 16);
                          if (v11 == v143)
                          {
                            break;
                          }

                          if (v11 >= v143)
                          {
                            goto LABEL_209;
                          }

                          ++v11;
                          outlined init with copy of AnyTrackedValue(v31, &v228);
                          a1 = v30;
                          v144 = v230;
                          v145 = v231;
                          __swift_project_boxed_opaque_existential_1(&v228, v230);
                          v146 = v145;
                          v30 = a1;
                          *(a2 - 8) = CVarArg.kdebugValue(_:)(a4 | v214.i32[0], v144, v146);
                          *a2 = v147 & 1;
                          a2 += 16;
                          __swift_destroy_boxed_opaque_existential_1(&v228);
                          v31 += 40;
                          if (!--v18)
                          {
                            goto LABEL_127;
                          }
                        }

                        v221.i8[0] = 0;
LABEL_127:
                        v148 = v204;
                        if (v204 == 20)
                        {
                          OSSignpostID.rawValue.getter();
                        }

                        kdebug_trace();
                        if (v15[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v148 != 20 && v15[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v149 = *v207;
                        v150 = v210;
                        v151 = v213;
                        (*v207)(v210, v213);
                        v152 = __swift_project_value_buffer(v151, static OSSignpostID.continuation);
                        v139 = v199(v150, v152, v151);
                      }

                      while ((v221.i8[0] & 1) != 0);
                      v153 = v197;

                      v154 = v213;
                      v149(v150, v213);
                      v149(v190, v154);

                      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
                      a4 = v202;
                      *(v202 + 5) = v153;
                      goto LABEL_142;
                    }

                    LOBYTE(v215) = v211;
                    v216[0] = &dword_18D018000;
                    v218 = v128;
                    v219 = v127;
                    v228.i64[0] = a1;
                    v228.i64[1] = v52;
                    LOBYTE(v229) = v15;
                    v221.i64[0] = "Animation: (%p) [%d] %{public}@ started";
                    v221.i64[1] = 39;
                    LOBYTE(v222) = 2;
                    v135 = v190;
                    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v215, v216, &v219, &v228, v190, &v221, &v218);
                    v136 = v197;

                    (*(v209 + 8))(v135, v213);

LABEL_114:
                    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
                    a4 = v202;
                    *(v202 + 5) = v136;
LABEL_142:
                    LODWORD(v11) = v191;
                    v35 = v198;
                    goto LABEL_143;
                  }
                }

                __break(1u);
              }

LABEL_224:
              swift_once();
              goto LABEL_109;
            }
          }

          swift_once();
          goto LABEL_107;
        }
      }

      v110 = v198;
      v111 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v42);
      v88 = v111;
      v198 = v110;
      v89 = HIDWORD(v111) & 1;

      goto LABEL_95;
    }

    v226.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
    v226.i64[1] = __PAIR64__(LODWORD(v48), LODWORD(v47));
    v227 = v36;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    v228.i8[0] = 0;
    v197 = v49;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v226, v41, v11, v29);
    v50 = AGGraphGetCurrentAttribute();
    v51 = v44;
    v52 = v50;
    v30 = *MEMORY[0x1E698D3F8];
    if (v50 == v30)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    LODWORD(v210) = v53;
    (*(*v51 + 96))(&v221);
    v55 = v221.i64[1];
    v54 = v221.i64[0];
    v56 = v222;
    v215 = 0x7FF8000000000000;
    v216[0] = 0x7FF8000000000000;
    *&v218 = 1.0;
    v219 = 0x7FF8000000000000;
    v228 = v221;
    v229 = v222;
    v230 = v223;
    v57 = v223;
    v58 = v224;
    v231 = v224;
    v214.i32[0] = v225;
    LOBYTE(v232) = v225;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v216, &v219, &v218, &v215);
    v8 = v215;
    v4 = v216[0];
    v7 = v218;
    v6 = v219;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_217;
    }

LABEL_33:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_219:
      swift_once();
      goto LABEL_39;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v59 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v208) = v30;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v60 = *(v59 + 16);
      v228.i32[0] = v210;
      v228.i8[4] = v52 == v30;
      v228.i64[1] = &type metadata for ColorView;
      v229 = v4;
      v230 = v6;
      v231 = v7;
      v232 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v210 = v61;

      v52 = v60;
      v30 = v208;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v214.u8[0]);
    }

    else
    {
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v214.u8[0]);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_219;
    }

LABEL_39:
    v62 = *(&static Signpost.animationState + 1);
    a1 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v15 = HIBYTE(word_1ED5283E8);
    v64 = byte_1ED5283EA;
    v65 = static os_signpost_type_t.event.getter();
    v228 = __PAIR128__(v62, a1);
    LOBYTE(v229) = v63;
    BYTE1(v229) = v15;
    BYTE2(v229) = v64;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_92;
    }

    v214.i32[0] = v65;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v66 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v30)
    {
      __break(1u);
      goto LABEL_223;
    }

    v52 = v30;
    v68 = AGGraphGetAttributeGraph();
    v30 = AGGraphGetCounter();

    v69 = MEMORY[0x1E69E6870];
    *(v67 + 56) = MEMORY[0x1E69E6810];
    *(v67 + 64) = v69;
    *(v67 + 32) = v30;
    v70 = AGGraphGetCurrentAttribute();
    if (v70 == v52)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v30 = v67;
    v71 = MEMORY[0x1E69E76D0];
    *(v67 + 96) = MEMORY[0x1E69E7668];
    *(v67 + 104) = v71;
    *(v67 + 72) = v70;
    *(v67 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 144) = v72;
    *(v67 + 112) = 0x656956726F6C6F43;
    *(v67 + 120) = 0xE900000000000077;
    if (v15)
    {
      LOBYTE(v215) = v214.i8[0];
      v216[0] = &dword_18D018000;
      v218 = v67;
      v219 = v66;
      v228.i64[0] = a1;
      v228.i64[1] = v62;
      LOBYTE(v229) = v63;
      v221.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
      v221.i64[1] = 39;
      LOBYTE(v222) = 2;
      v73 = v207;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v215, v216, &v219, &v228, v207, &v221, &v218);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      (*(v209 + 8))(v73, v213);
    }

    else
    {
      v92 = a1;
      if (a1 == 20)
      {
        v93 = 3;
      }

      else
      {
        v93 = 4;
      }

      v18 = bswap32(a1) | (4 * (a1 >> 16));
      v214.i32[0] = v214.u8[0];
      v94 = (v209 + 16);
      v198 = *(v209 + 16);
      v95 = v198(v211, v207, v213);
      a1 = 0;
      v221.i8[0] = 1;
      v210 = v93;
      v199 = v94;
      v200 = v92;
      v205 = 16 * v93;
      v206 = (v94 - 8);
      v204 = v30 + 32;
      do
      {
        v208 = &v189;
        MEMORY[0x1EEE9AC00](v95);
        a4 = &v189 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = a4 + 8;
        v97 = v210;
        v98 = a4 + 8;
        do
        {
          *(v98 - 1) = 0;
          *v98 = 0;
          v98 += 16;
          v97 = (v97 - 1);
        }

        while (v97);
        v31 = (v204 + 40 * a1);
        a2 = v210;
        while (1)
        {
          v99 = *(v30 + 16);
          if (a1 == v99)
          {
            break;
          }

          if (a1 >= v99)
          {
            goto LABEL_208;
          }

          a1 = (a1 + 1);
          outlined init with copy of AnyTrackedValue(v31, &v228);
          v15 = v30;
          v100 = v230;
          v101 = v231;
          __swift_project_boxed_opaque_existential_1(&v228, v230);
          v102 = v101;
          v30 = v15;
          *(v11 - 1) = CVarArg.kdebugValue(_:)(v18 | v214.i32[0], v100, v102);
          *v11 = v103 & 1;
          v11 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v228);
          v31 += 40;
          if (!--a2)
          {
            goto LABEL_76;
          }
        }

        v221.i8[0] = 0;
LABEL_76:
        v104 = v200;
        if (v200 == 20)
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

        if (v104 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v105 = *v206;
        v106 = v211;
        v107 = v213;
        (*v206)(v211, v213);
        v108 = __swift_project_value_buffer(v107, static OSSignpostID.continuation);
        v95 = v198(v106, v108, v107);
      }

      while ((v221.i8[0] & 1) != 0);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<ColorView>, lazy protocol witness table accessor for type ColorView and conformance ColorView, &type metadata for ColorView, type metadata accessor for AnimatableAttributeHelper);
      v109 = v213;
      v105(v211, v213);
      v105(v207, v109);
    }

LABEL_92:
    v35 = 0;
    a4 = v202;
    LODWORD(v11) = v191;
LABEL_143:
    specialized AnimatorState.addListeners(transaction:)(v193);

    a1 = v201;
    v31 = &static Color.Resolved.legacyInterpolation;
    v30 = &unk_1ED52E000;
LABEL_144:
    v33 = v195;
    v34 = v196;
    v32 = v194;
LABEL_145:
    *(a4 + 12) = LODWORD(v9) | (LODWORD(v32) << 32);
    *(a4 + 20) = LODWORD(v33) | (LODWORD(v34) << 32);
    *(a4 + 7) = v5;
    a4[32] = 0;
    v39 = *(a4 + 5);
    if (v39)
    {
      continue;
    }

    break;
  }
}

{
  LODWORD(v11) = a3;
  v237 = *MEMORY[0x1E69E9840];
  v213 = type metadata accessor for OSSignpostID();
  v209 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v15 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v211 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v207 = &v189 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v212 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v203 = &v189 - v26;
  if (*(a4 + 5))
  {
    Value = AGGraphGetValue();
    if (v28)
    {
      v29 = *Value;
    }

    else
    {
      v29 = -INFINITY;
    }
  }

  else
  {
    v29 = -INFINITY;
  }

  v30 = &unk_1ED52E000;
  v31 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners()))
  {
    a1[1].i8[4] = 1;
    goto LABEL_9;
  }

  if (a1[1].i8[4] == 1)
  {
LABEL_9:
    LODWORD(v8) = a1->i32[0];
    LODWORD(v7) = a1->i32[1];
    LODWORD(v6) = a1->i32[2];
    v5 = a1->f32[3];
    LODWORD(v4) = a1[1].i32[0];
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_210;
    }

    goto LABEL_10;
  }

  v35 = 0;
  v39 = *(a4 + 5);
  if (!v39)
  {
    return;
  }

  while (2)
  {
    v214 = *a1;
    LODWORD(v4) = a1[1].i32[0];
    v155 = *(v30 + 3896);

    if (v155 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*v31)
    {
      v156 = v214;
    }

    else
    {
      v221.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v233, v214.f32[0], v214.u32[1], v214.f32[2], v214.f32[3]);
      v156 = v233;
    }

    v157.i64[0] = 0x4300000043000000;
    v157.i64[1] = 0x4300000043000000;
    v221 = vmulq_f32(v156, v157);
    LODWORD(v222) = v4;
    LOBYTE(v233) = 0;
    v158 = specialized AnimatorState.update(_:at:environment:)(&v221, v11, v29);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v57 = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == v57)
    {
      v160 = 0;
    }

    else
    {
      v160 = CurrentAttribute;
    }

    if ((v158 & 1) == 0)
    {
      if (one-time initialization token for enabledCategories == -1)
      {
LABEL_170:
        if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
        {
          if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
            LODWORD(v233) = v160;
            BYTE4(v233) = CurrentAttribute == v57;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          specialized AnimatorState.nextUpdate()();
          goto LABEL_205;
        }

        __break(1u);
        goto LABEL_214;
      }

LABEL_212:
      v188 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v188;
      goto LABEL_170;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      v187 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v187;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_212;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
      LODWORD(v233) = v160;
      BYTE4(v233) = CurrentAttribute == v57;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v201 = a1;
    v202 = a4;
    v161 = one-time initialization token for animationState;
    v200 = v39;

    if (v161 != -1)
    {
LABEL_214:
      swift_once();
    }

    v56 = *(&static Signpost.animationState + 1);
    v162 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v30 = HIBYTE(word_1ED5283E8);
    v163 = byte_1ED5283EA;
    v164 = static os_signpost_type_t.end.getter();
    v233 = __PAIR128__(v56, v162);
    LOBYTE(v234) = v52;
    BYTE1(v234) = v30;
    BYTE2(v234) = v163;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_204;
    }

    v214.i32[0] = v164;
    v165 = one-time initialization token for _signpostLog;
    v55 = v200;

    if (v165 != -1)
    {
      swift_once();
    }

    v198 = v35;
    v54 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v57)
    {
      __break(1u);
      goto LABEL_216;
    }

    v55 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v167 = MEMORY[0x1E69E6870];
    *(v58 + 56) = MEMORY[0x1E69E6810];
    *(v58 + 64) = v167;
    *(v58 + 32) = Counter;
    v168 = AGGraphGetCurrentAttribute();
    if (v168 == v57)
    {
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_33;
    }

    v169 = MEMORY[0x1E69E76D0];
    *(v58 + 96) = MEMORY[0x1E69E7668];
    *(v58 + 104) = v169;
    *(v58 + 72) = v168;
    *(v58 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 144) = v170;
    *(v58 + 112) = 0x6465766C6F736552;
    *(v58 + 120) = 0xEB00000000524448;
    if (v30)
    {
      v220 = v214.i8[0];
      v218 = v54;
      v219 = &dword_18D018000;
      *&v233 = v162;
      *(&v233 + 1) = v56;
      LOBYTE(v234) = v52;
      v216[0] = "Animation: (%p) [%d] %{public}@ ended";
      v216[1] = 37;
      v217 = 2;
      v215 = v58;
      v171 = v203;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v220, &v219, &v218, &v233, v203, v216, &v215);

      (*(v209 + 8))(v171, v213);
      goto LABEL_203;
    }

    v172 = v162;
    if (v162 == 20)
    {
      v173 = 3;
    }

    else
    {
      v173 = 4;
    }

    a1 = (bswap32(v162) | (4 * WORD1(v162)));
    a2 = v214.u8[0];
    v174 = v209 + 16;
    v204 = *(v209 + 16);
    v175 = (v204)(v212, v203, v213);
    v11 = 0;
    LOBYTE(v216[0]) = 1;
    v211 = v173;
    v209 = v174;
    v207 = (16 * v173);
    v208 = (v174 - 8);
    v214.i64[0] = v58;
    v205 = v172;
    v206 = (v58 + 32);
LABEL_180:
    v210 = &v189;
    MEMORY[0x1EEE9AC00](v175);
    a4 = &v189 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = a4 + 8;
    v177 = v211;
    v178 = a4 + 8;
    do
    {
      *(v178 - 1) = 0;
      *v178 = 0;
      v178 += 16;
      --v177;
    }

    while (v177);
    v31 = &v206[5 * v11];
    v18 = v211;
    while (1)
    {
      v179 = *(v214.i64[0] + 16);
      if (v11 == v179)
      {
        LOBYTE(v216[0]) = 0;
LABEL_188:
        v182 = v205;
        if (v205 == 20)
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

        if (v182 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v183 = *v208;
        v30 = v212;
        v184 = v213;
        (*v208)(v212, v213);
        v185 = __swift_project_value_buffer(v184, static OSSignpostID.continuation);
        v175 = (v204)(v30, v185, v184);
        if ((v216[0] & 1) == 0)
        {

          v186 = v213;
          v183(v212, v213);
          v183(v203, v186);
LABEL_203:

LABEL_204:
          specialized AnimatorState.removeListeners()();

          a1 = v201;
          *(v202 + 5) = 0;
LABEL_205:
          v233 = v221;
          LODWORD(v234) = v222;
          Color.ResolvedHDR.animatableData.setter(&v233);

          a1[1].i8[4] = 1;
          return;
        }

        goto LABEL_180;
      }

      if (v11 >= v179)
      {
        break;
      }

      ++v11;
      outlined init with copy of AnyTrackedValue(v31, &v233);
      v180 = *(&v234 + 1);
      v30 = v235;
      __swift_project_boxed_opaque_existential_1(&v233, *(&v234 + 1));
      *(v15 - 1) = CVarArg.kdebugValue(_:)(a1 | a2, v180, v30);
      *v15 = v181 & 1;
      v15 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v233);
      v31 += 40;
      if (!--v18)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    swift_once();
LABEL_10:
    swift_beginAccess();
    if ((*v31 & 1) == 0)
    {
      v228.i8[0] = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v233, *&v8, v7, *&v6, v5);
      LODWORD(v7) = DWORD1(v233);
      LODWORD(v8) = v233;
      v5 = *(&v233 + 3);
      LODWORD(v6) = DWORD2(v233);
    }

    v9 = *&v8 * 128.0;
    v32 = *&v7 * 128.0;
    v33 = *&v6 * 128.0;
    v34 = v5 * 128.0;
    v5 = *&v4;
    if (a4[32])
    {
      v35 = 0;
      goto LABEL_145;
    }

    *&v7 = v29;
    LODWORD(v8) = *(a4 + 6);
    v36 = *(a4 + 7);
    v37 = *(a4 + 3);
    LODWORD(v6) = *(a4 + 4);
    v38 = *(a4 + 5);
    if (v9 == v37 && v32 == *&v6 && v33 == v38 && v34 == *&v8 && v5 == v36)
    {
      v35 = 0;
      v29 = *&v7;
      goto LABEL_145;
    }

    v210 = v15;
    v190 = v18;
    v194 = v32;
    v195 = v33;
    v196 = v34;
    AGGraphClearUpdate();
    v40 = *(a4 + 1);
    v233 = *a4;
    v234 = v40;
    v235 = *(a4 + 2);
    v202 = a4;
    v236 = *(a4 + 12);
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    v41 = *AGGraphGetValue();

    v42 = v41;
    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    AGGraphSetUpdate();
    v43 = Transaction.effectiveAnimation.getter(v41);
    if (v43)
    {
      v44 = v43;
      goto LABEL_26;
    }

    v30 = 0x1ED52E000;
    if (!a2)
    {

      v35 = 0;
      a4 = v202;
      v29 = *&v7;
      v31 = &static Color.Resolved.legacyInterpolation;
      goto LABEL_144;
    }

    v44 = a2;
LABEL_26:
    v45 = v9 - v37;
    v46 = v194 - *&v6;
    v47 = v195 - v38;
    v48 = v196 - *&v8;
    if (v5 > v36)
    {
      v36 = v5;
    }

    v49 = *(&v235 + 1);
    v29 = *AGGraphGetValue();
    v201 = a1;
    v191 = v11;
    v192 = v44;
    v193 = v41;
    if (!v49)
    {
      v221.i64[0] = &type metadata for Color.ResolvedHDR;
      type metadata accessor for Color.ResolvedHDR.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Color.ResolvedHDR._Animatable>.Type, &type metadata for Color.ResolvedHDR._Animatable);
      v74 = swift_dynamicCast();
      if (v74)
      {
        v75 = v228.i64[0];
      }

      else
      {
        v75 = 0;
      }

      if (v74)
      {
        v76 = v228.i64[1];
      }

      else
      {
        v76 = 0;
      }

      type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Color.ResolvedHDR._Animatable>, lazy protocol witness table accessor for type Color.ResolvedHDR._Animatable and conformance Color.ResolvedHDR._Animatable, &type metadata for Color.ResolvedHDR._Animatable, type metadata accessor for AnimatorState);
      v77 = swift_allocObject();
      v78 = MEMORY[0x1E69E7CC0];
      *(v77 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v197 = v77;
      if (static Color.Resolved.legacyInterpolation == 1)
      {
        *(v77 + 32) = 0;
        *(v77 + 72) = 0;
        *(v77 + 40) = 0;
        *(v77 + 48) = 0;
        v79 = 0uLL;
      }

      else
      {
        v226.i8[0] = 2;
        ResolvedGradient.ColorSpace.convertIn(_:)(&v228, 0.0, 0, 0.0, 0.0);
        v77 = v197;
        v80.i64[0] = 0x4300000043000000;
        v80.i64[1] = 0x4300000043000000;
        v81 = v197;
        v197[2] = vmulq_f32(v228, v80);
        v81 += 2;
        v82 = static Color.Resolved.legacyInterpolation;
        v81[1].i32[0] = 0;
        v81[2].i64[1] = 0;
        v79 = 0uLL;
        if ((v82 & 1) == 0)
        {
          v226.i8[0] = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v228, 0.0, 0, 0.0, 0.0);
          v77 = v197;
          v83.i64[0] = 0x4300000043000000;
          v83.i64[1] = 0x4300000043000000;
          v79 = vmulq_f32(v228, v83);
        }
      }

      *(v77 + 80) = v79;
      *(v77 + 96) = 0;
      *(v77 + 104) = 1;
      *(v77 + 112) = v78;
      *(v77 + 120) = v78;
      *(v77 + 128) = 0;
      *(v77 + 136) = 0;
      *(v77 + 144) = 0;
      *(v77 + 152) = v78;
      *(v77 + 16) = v44;
      swift_beginAccess();
      *(v77 + 32) = v45;
      *(v77 + 36) = v46;
      *(v77 + 40) = v47;
      *(v77 + 44) = v48;
      *(v77 + 48) = v36;
      *(v77 + 136) = v75;
      *(v77 + 144) = v76;
      *(v77 + 56) = v29;
      *(v77 + 72) = v29;
      swift_retain_n();

      v85 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v84));
      v198 = 0;
      if (v86)
      {

        v87 = v77;
        v88 = 0;
        *(v87 + 64) = 0;
        LOBYTE(v89) = 1;
        goto LABEL_96;
      }

      if (v85 <= 0.0)
      {
        *(v77 + 64) = 0;
      }

      else
      {
        v90 = log2(v85 * 240.0);
        v91 = exp2(floor(v90 + 0.01)) * 0.00416666667;
        *(v77 + 64) = v91;
        if (v91 >= 0.0166666667)
        {

          v88 = 0;
          LOBYTE(v89) = 1;
LABEL_95:
          v87 = v197;
LABEL_96:
          *(v87 + 100) = v88;
          *(v87 + 104) = v89;
          v112 = AGGraphGetCurrentAttribute();
          v113 = v112;
          v214.i32[0] = *MEMORY[0x1E698D3F8];
          if (v112 == v214.i32[0])
          {
            v114 = 0;
          }

          else
          {
            v114 = v112;
          }

          (*(*v44 + 96))(&v221);
          v115 = v221;
          v116 = v222;
          v117 = v224;
          v215 = 0x7FF8000000000000;
          v216[0] = 0x7FF8000000000000;
          *&v218 = 1.0;
          v219 = 0x7FF8000000000000;
          v228 = v221;
          v229 = v222;
          v230 = v223;
          v118 = v223;
          v231 = v224;
          LODWORD(v211) = v225;
          LOBYTE(v232) = v225;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v216, &v219, &v218, &v215);
          v8 = v215;
          v4 = v216[0];
          v7 = v218;
          v6 = v219;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v119 = static CustomEventTrace.recorder) != 0)
            {
              v120 = v113 == v214.i32[0];
              v208 = v117;
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v121 = *(v119 + 16);
              v228.i32[0] = v114;
              v228.i8[4] = v120;
              v228.i64[1] = &type metadata for Color.ResolvedHDR;
              v229 = v4;
              v230 = v6;
              v231 = v7;
              v232 = v8;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

              v122 = v121;
              AGGraphAddTraceEvent();
              outlined consume of Animation.Function(v115.i64[0], v115.i64[1], v116, v118, v208, v211);
            }

            else
            {
              outlined consume of Animation.Function(v115.i64[0], v115.i64[1], v116, v118, v117, v211);
            }

            v123 = one-time initialization token for animationState;

            if (v123 == -1)
            {
LABEL_107:
              v52 = *(&static Signpost.animationState + 1);
              a1 = static Signpost.animationState;
              LOBYTE(v15) = word_1ED5283E8;
              LOBYTE(v67) = HIBYTE(word_1ED5283E8);
              v124 = byte_1ED5283EA;
              LODWORD(v30) = static os_signpost_type_t.begin.getter();
              v228 = __PAIR128__(v52, a1);
              LOBYTE(v229) = v15;
              BYTE1(v229) = v67;
              BYTE2(v229) = v124;
              v125 = Signpost.isEnabled.getter();
              LODWORD(v62) = v214.i32[0];
              if ((v125 & 1) == 0)
              {
                v136 = v197;

                goto LABEL_114;
              }

              v126 = one-time initialization token for _signpostLog;

              if (v126 == -1)
              {
LABEL_109:
                LODWORD(v211) = v30;
                v127 = _signpostLog;
                OSSignpostID.init(log:object:)();
                type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
                v128 = swift_allocObject();
                *(v128 + 16) = xmmword_18DDAF080;
                if (AGGraphGetCurrentAttribute() == v62)
                {
                  __break(1u);
                }

                else
                {
                  v129 = AGGraphGetAttributeGraph();
                  v130 = AGGraphGetCounter();

                  v131 = MEMORY[0x1E69E6870];
                  *(v128 + 56) = MEMORY[0x1E69E6810];
                  *(v128 + 64) = v131;
                  *(v128 + 32) = v130;
                  v132 = AGGraphGetCurrentAttribute();
                  if (v132 != v62)
                  {
                    v30 = v128;
                    v133 = MEMORY[0x1E69E76D0];
                    *(v128 + 96) = MEMORY[0x1E69E7668];
                    *(v128 + 104) = v133;
                    *(v128 + 72) = v132;
                    *(v128 + 136) = MEMORY[0x1E69E6158];
                    lazy protocol witness table accessor for type String and conformance String();
                    *(v128 + 144) = v134;
                    *(v128 + 112) = 0x6465766C6F736552;
                    *(v128 + 120) = 0xEB00000000524448;
                    if ((v67 & 1) == 0)
                    {
                      if (a1 == 20)
                      {
                        v137 = 3;
                      }

                      else
                      {
                        v137 = 4;
                      }

                      a4 = (bswap32(a1) | (4 * (a1 >> 16)));
                      v214.i32[0] = v211;
                      v138 = (v209 + 16);
                      v199 = *(v209 + 16);
                      v139 = v199(v210, v190, v213);
                      v11 = 0;
                      v221.i8[0] = 1;
                      v211 = v137;
                      v200 = v138;
                      v206 = (16 * v137);
                      v207 = v138 - 8;
                      v204 = a1;
                      v205 = v128 + 32;
                      do
                      {
                        v208 = &v189;
                        MEMORY[0x1EEE9AC00](v139);
                        v15 = &v189 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
                        a2 = (v15 + 8);
                        v141 = v211;
                        v142 = v15 + 8;
                        do
                        {
                          *(v142 - 1) = 0;
                          *v142 = 0;
                          v142 += 16;
                          --v141;
                        }

                        while (v141);
                        v31 = (v205 + 40 * v11);
                        v18 = v211;
                        while (1)
                        {
                          v143 = *(v30 + 16);
                          if (v11 == v143)
                          {
                            break;
                          }

                          if (v11 >= v143)
                          {
                            goto LABEL_209;
                          }

                          ++v11;
                          outlined init with copy of AnyTrackedValue(v31, &v228);
                          a1 = v30;
                          v144 = v230;
                          v145 = v231;
                          __swift_project_boxed_opaque_existential_1(&v228, v230);
                          v146 = v145;
                          v30 = a1;
                          *(a2 - 8) = CVarArg.kdebugValue(_:)(a4 | v214.i32[0], v144, v146);
                          *a2 = v147 & 1;
                          a2 += 16;
                          __swift_destroy_boxed_opaque_existential_1(&v228);
                          v31 += 40;
                          if (!--v18)
                          {
                            goto LABEL_127;
                          }
                        }

                        v221.i8[0] = 0;
LABEL_127:
                        v148 = v204;
                        if (v204 == 20)
                        {
                          OSSignpostID.rawValue.getter();
                        }

                        kdebug_trace();
                        if (v15[8] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[24] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v15[40] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (v148 != 20 && v15[56] == 1)
                        {
                          kdebug_trace_string();
                        }

                        if (one-time initialization token for continuation != -1)
                        {
                          swift_once();
                        }

                        v149 = *v207;
                        v150 = v210;
                        v151 = v213;
                        (*v207)(v210, v213);
                        v152 = __swift_project_value_buffer(v151, static OSSignpostID.continuation);
                        v139 = v199(v150, v152, v151);
                      }

                      while ((v221.i8[0] & 1) != 0);
                      v153 = v197;

                      v154 = v213;
                      v149(v150, v213);
                      v149(v190, v154);

                      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
                      a4 = v202;
                      *(v202 + 5) = v153;
                      goto LABEL_142;
                    }

                    LOBYTE(v215) = v211;
                    v216[0] = &dword_18D018000;
                    v218 = v128;
                    v219 = v127;
                    v228.i64[0] = a1;
                    v228.i64[1] = v52;
                    LOBYTE(v229) = v15;
                    v221.i64[0] = "Animation: (%p) [%d] %{public}@ started";
                    v221.i64[1] = 39;
                    LOBYTE(v222) = 2;
                    v135 = v190;
                    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v215, v216, &v219, &v228, v190, &v221, &v218);
                    v136 = v197;

                    (*(v209 + 8))(v135, v213);

LABEL_114:
                    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
                    a4 = v202;
                    *(v202 + 5) = v136;
LABEL_142:
                    LODWORD(v11) = v191;
                    v35 = v198;
                    goto LABEL_143;
                  }
                }

                __break(1u);
              }

LABEL_224:
              swift_once();
              goto LABEL_109;
            }
          }

          swift_once();
          goto LABEL_107;
        }
      }

      v110 = v198;
      v111 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v42);
      v88 = v111;
      v198 = v110;
      v89 = HIDWORD(v111) & 1;

      goto LABEL_95;
    }

    v226.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v45));
    v226.i64[1] = __PAIR64__(LODWORD(v48), LODWORD(v47));
    v227 = v36;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    v228.i8[0] = 0;
    v197 = v49;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v44, &v226, v41, v11, v29);
    v50 = AGGraphGetCurrentAttribute();
    v51 = v44;
    v52 = v50;
    v30 = *MEMORY[0x1E698D3F8];
    if (v50 == v30)
    {
      v53 = 0;
    }

    else
    {
      v53 = v50;
    }

    LODWORD(v210) = v53;
    (*(*v51 + 96))(&v221);
    v55 = v221.i64[1];
    v54 = v221.i64[0];
    v56 = v222;
    v215 = 0x7FF8000000000000;
    v216[0] = 0x7FF8000000000000;
    *&v218 = 1.0;
    v219 = 0x7FF8000000000000;
    v228 = v221;
    v229 = v222;
    v230 = v223;
    v57 = v223;
    v58 = v224;
    v231 = v224;
    v214.i32[0] = v225;
    LOBYTE(v232) = v225;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v228, v216, &v219, &v218, &v215);
    v8 = v215;
    v4 = v216[0];
    v7 = v218;
    v6 = v219;
    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_217;
    }

LABEL_33:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_219:
      swift_once();
      goto LABEL_39;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v59 = static CustomEventTrace.recorder) != 0)
    {
      LODWORD(v208) = v30;
      *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
      v60 = *(v59 + 16);
      v228.i32[0] = v210;
      v228.i8[4] = v52 == v30;
      v228.i64[1] = &type metadata for Color.ResolvedHDR;
      v229 = v4;
      v230 = v6;
      v231 = v7;
      v232 = v8;
      type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
      v210 = v61;

      v52 = v60;
      v30 = v208;
      AGGraphAddTraceEvent();
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v214.u8[0]);
    }

    else
    {
      outlined consume of Animation.Function(v54, v55, v56, v57, v58, v214.u8[0]);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_219;
    }

LABEL_39:
    v62 = *(&static Signpost.animationState + 1);
    a1 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v15 = HIBYTE(word_1ED5283E8);
    v64 = byte_1ED5283EA;
    v65 = static os_signpost_type_t.event.getter();
    v228 = __PAIR128__(v62, a1);
    LOBYTE(v229) = v63;
    BYTE1(v229) = v15;
    BYTE2(v229) = v64;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_92;
    }

    v214.i32[0] = v65;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v233, &v228, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v66 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v30)
    {
      __break(1u);
      goto LABEL_223;
    }

    v52 = v30;
    v68 = AGGraphGetAttributeGraph();
    v30 = AGGraphGetCounter();

    v69 = MEMORY[0x1E69E6870];
    *(v67 + 56) = MEMORY[0x1E69E6810];
    *(v67 + 64) = v69;
    *(v67 + 32) = v30;
    v70 = AGGraphGetCurrentAttribute();
    if (v70 == v52)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v30 = v67;
    v71 = MEMORY[0x1E69E76D0];
    *(v67 + 96) = MEMORY[0x1E69E7668];
    *(v67 + 104) = v71;
    *(v67 + 72) = v70;
    *(v67 + 136) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    *(v67 + 144) = v72;
    *(v67 + 112) = 0x6465766C6F736552;
    *(v67 + 120) = 0xEB00000000524448;
    if (v15)
    {
      LOBYTE(v215) = v214.i8[0];
      v216[0] = &dword_18D018000;
      v218 = v67;
      v219 = v66;
      v228.i64[0] = a1;
      v228.i64[1] = v62;
      LOBYTE(v229) = v63;
      v221.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
      v221.i64[1] = 39;
      LOBYTE(v222) = 2;
      v73 = v207;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v215, v216, &v219, &v228, v207, &v221, &v218);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      (*(v209 + 8))(v73, v213);
    }

    else
    {
      v92 = a1;
      if (a1 == 20)
      {
        v93 = 3;
      }

      else
      {
        v93 = 4;
      }

      v18 = bswap32(a1) | (4 * (a1 >> 16));
      v214.i32[0] = v214.u8[0];
      v94 = (v209 + 16);
      v198 = *(v209 + 16);
      v95 = v198(v211, v207, v213);
      a1 = 0;
      v221.i8[0] = 1;
      v210 = v93;
      v199 = v94;
      v200 = v92;
      v205 = 16 * v93;
      v206 = (v94 - 8);
      v204 = v30 + 32;
      do
      {
        v208 = &v189;
        MEMORY[0x1EEE9AC00](v95);
        a4 = &v189 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = a4 + 8;
        v97 = v210;
        v98 = a4 + 8;
        do
        {
          *(v98 - 1) = 0;
          *v98 = 0;
          v98 += 16;
          v97 = (v97 - 1);
        }

        while (v97);
        v31 = (v204 + 40 * a1);
        a2 = v210;
        while (1)
        {
          v99 = *(v30 + 16);
          if (a1 == v99)
          {
            break;
          }

          if (a1 >= v99)
          {
            goto LABEL_208;
          }

          a1 = (a1 + 1);
          outlined init with copy of AnyTrackedValue(v31, &v228);
          v15 = v30;
          v100 = v230;
          v101 = v231;
          __swift_project_boxed_opaque_existential_1(&v228, v230);
          v102 = v101;
          v30 = v15;
          *(v11 - 1) = CVarArg.kdebugValue(_:)(v18 | v214.i32[0], v100, v102);
          *v11 = v103 & 1;
          v11 += 16;
          __swift_destroy_boxed_opaque_existential_1(&v228);
          v31 += 40;
          if (!--a2)
          {
            goto LABEL_76;
          }
        }

        v221.i8[0] = 0;
LABEL_76:
        v104 = v200;
        if (v200 == 20)
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

        if (v104 != 20 && a4[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v105 = *v206;
        v106 = v211;
        v107 = v213;
        (*v206)(v211, v213);
        v108 = __swift_project_value_buffer(v107, static OSSignpostID.continuation);
        v95 = v198(v106, v108, v107);
      }

      while ((v221.i8[0] & 1) != 0);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v233, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedHDR>, lazy protocol witness table accessor for type Color.ResolvedHDR and conformance Color.ResolvedHDR, &type metadata for Color.ResolvedHDR, type metadata accessor for AnimatableAttributeHelper);
      v109 = v213;
      v105(v211, v213);
      v105(v207, v109);
    }

LABEL_92:
    v35 = 0;
    a4 = v202;
    LODWORD(v11) = v191;
LABEL_143:
    specialized AnimatorState.addListeners(transaction:)(v193);

    a1 = v201;
    v31 = &static Color.Resolved.legacyInterpolation;
    v30 = &unk_1ED52E000;
LABEL_144:
    v33 = v195;
    v34 = v196;
    v32 = v194;
LABEL_145:
    *(a4 + 12) = LODWORD(v9) | (LODWORD(v32) << 32);
    *(a4 + 20) = LODWORD(v33) | (LODWORD(v34) << 32);
    *(a4 + 7) = v5;
    a4[32] = 0;
    v39 = *(a4 + 5);
    if (v39)
    {
      continue;
    }

    break;
  }
}

uint64_t StaticIf<>.init(_:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2();
  type metadata accessor for StaticIf(0, a6, a7, a8);
  a4();
  v13 = *(*(a6 - 8) + 8);

  return v13(a1, a6);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledKey>, &type metadata for EnabledKey, &protocol witness table for EnabledKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA014GeometryReaderC033_7D6D22DF7076CCC1FC5284D8E2D1B049LLV_Tt2t4B5(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v79 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v7);
  v73 = v7;
  v72 = v8;
  v9 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v7);
  v10 = *(a2 + 16);
  v95 = *a2;
  v96 = v10;
  v97 = *(a2 + 32);
  v11 = v95;
  outlined init with copy of _GraphInputs(&v95, &v87);
  v80 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v12 = *MEMORY[0x1E698D3F8];
  v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v11);
  v82 = DWORD1(v97);
  v74 = a4;
  v77 = v11;
  if ((WORD2(v97) & 0x1000) != 0)
  {
    v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24WithinAccessibilityRotorV_Tt2g5(v11);
  }

  else
  {
    v81 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 20) = 1;
  v78 = v12;
  if (v79 & 1 | ((v82 & 0x22) != 0) || (v15 = v12, (v81 & 1) != 0))
  {
    v16 = v96;
    swift_beginAccess();
    *&v87 = __PAIR64__(*(v16 + 16), a1);
    DWORD2(v87) = v12;
    *&v88[0] = MEMORY[0x1E69E7CC0];
    *(&v88[0] + 1) = MEMORY[0x1E69E7CC0];
    LODWORD(v88[1]) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    lazy protocol witness table accessor for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>();
    v17 = Attribute.init<A>(body:value:flags:update:)();
    swift_bridgeObjectRelease_n();
    *(v14 + 16) = v17;
    *(v14 + 20) = 0;
    v18 = *(a2 + 64);
    LODWORD(v87) = *(a2 + 72);
    *(&v87 + 4) = __PAIR64__(v17, v18);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v15 = Attribute.init<A>(body:value:flags:update:)();
  }

  v19 = *(a2 + 48);
  v91 = *(a2 + 32);
  v92 = v19;
  v93 = *(a2 + 64);
  v94 = *(a2 + 80);
  v20 = *(a2 + 16);
  v89 = *a2;
  v90 = v20;
  DWORD1(v91) = v82 & 0xFFFFFFFD;
  if (v9 & 1) != 0 && (v13)
  {
    v21 = v92;
    *&v98[0] = v92;
    v22 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);

    v23 = *(v21 + 16);
    if (v22 != v23)
    {
      if (v22 >= v23)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (*(v21 + 16 * v22 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v22);
        v21 = v92;
      }
    }

    *&v87 = v21;
    v24 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v25 = *(v21 + 16);
    if (v24 != v25)
    {
      if (v24 >= v25)
      {
        goto LABEL_51;
      }

      if (*(v21 + 16 * v24 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v24);
      }
    }
  }

  else
  {
    swift_retain_n();
    outlined init with copy of _ViewInputs(a2, &v87);
  }

  v26 = v78;
  if (v80 != v78)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, v78);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v89, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v89, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v89, v78);
  }

  v98[2] = v91;
  v98[3] = v92;
  v98[4] = v93;
  v99 = v94;
  v98[0] = v89;
  v98[1] = v90;
  v27 = _s7SwiftUI16DynamicContainerV04makeD07adaptor6inputs14AttributeGraph0H0VyAC4InfoVG_AA12_ViewOutputsVtx_AA01_K6InputsVtAA0cD7AdaptorRzlFZAA0c6LayoutkN0V_Tt2B5(&v83, a3 | (v15 << 32), partial apply for specialized mapMutator #1 <A>(thunk:) in static Layout.makeDynamicView(root:inputs:properties:list:), v14, v98);

  v86 = v27;
  v28 = swift_beginAccess();
  if ((*(v14 + 20) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v28);
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    AGGraphMutateAttribute();
    v26 = v78;
  }

  if (!((v79 | v81) & 1 | (v80 != v26)))
  {
    outlined destroy of _GraphInputs(&v95);
    v38 = v74;
    goto LABEL_43;
  }

  v76 = AGCreateWeakAttribute();
  v30 = AGCreateWeakAttribute();
  v31 = v30;
  v71 = HIDWORD(v30);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v70 = HIDWORD(v32);
  v64 = *(a2 + 64);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  v69 = HIDWORD(v34);
  v63 = *(a2 + 60);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v68 = HIDWORD(v36);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v77) == v26)
  {
    LODWORD(v66) = 0;
    v67 = 0;
  }

  else
  {
    v39 = AGCreateWeakAttribute();
    v66 = HIDWORD(v39);
    v67 = v39;
  }

  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(v83);
  v40 = AGCreateWeakAttribute();
  v41 = v40;
  v65 = HIDWORD(v40);
  if ((v79 | v81))
  {
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_18DDA6EB0;
    *(v42 + 56) = &type metadata for DynamicLayoutScrollable;
    *(v42 + 64) = &protocol witness table for DynamicLayoutScrollable;
    v43 = swift_allocObject();
    *(v42 + 32) = v43;
    *(v43 + 16) = v76;
    *(v43 + 24) = v31;
    *(v43 + 28) = v71;
    *(v43 + 32) = v33;
    *(v43 + 36) = v70;
    *(v43 + 40) = v35;
    *(v43 + 44) = v69;
    *(v43 + 48) = v37;
    *(v43 + 52) = v68;
    *(v43 + 56) = v67;
    *(v43 + 60) = v66;
    *(v43 + 64) = v41;
    *(v43 + 68) = v65;
    *&v87 = v42;
    type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v44 = Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v87) = 0;
    v45 = v44;
    v26 = v78;
    PreferencesOutputs.subscript.setter(v45, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
  }

  if (v80 != v26)
  {
    *(&v88[0] + 1) = &type metadata for DynamicLayoutScrollable;
    *&v88[1] = &protocol witness table for DynamicLayoutScrollable;
    v46 = swift_allocObject();
    *&v87 = v46;
    *(v46 + 16) = v76;
    *(v46 + 24) = v31;
    *(v46 + 28) = v71;
    *(v46 + 32) = v33;
    *(v46 + 36) = v70;
    *(v46 + 40) = v35;
    *(v46 + 44) = v69;
    *(v46 + 48) = v37;
    *(v46 + 52) = v68;
    *(v46 + 56) = v67;
    *(v46 + 60) = v66;
    *(v46 + 64) = v41;
    *(v46 + 68) = v65;
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v47 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(&v87);
    *&v87 = v73;
    v48 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v49 = *(v73 + 16);
    if (v48 == v49)
    {
LABEL_37:
      memset(&v88[4] + 8, 0, 28);
      *(&v88[3] + 8) = 0u;
      *&v87 = __PAIR64__(v63, v64);
      *(&v87 + 1) = __PAIR64__(v47, DWORD2(v96));
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v54 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v55 = specialized CachedEnvironment.attribute<A>(id:_:)(v54, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      v56 = swift_endAccess();
      LODWORD(v88[0]) = v55;
      *(v88 + 8) = v95;
      *(&v88[1] + 8) = v96;
      *(&v88[2] + 8) = v97;
      MEMORY[0x1EEE9AC00](v56);
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v73, v72, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      outlined destroy of ScrollStateRequestTransform(&v87);
      goto LABEL_41;
    }

    if (v48 < v49)
    {
      if (*(v73 + 16 * v48 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v87 = __PAIR64__(v47, v80);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();
        v50 = Attribute.init<A>(body:value:flags:update:)();
        v51 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(v83);
        if ((v51 & 0x100000000) != 0)
        {
          v52 = v26;
        }

        else
        {
          v52 = v51;
        }

        *&v87 = __PAIR64__(v52, v50);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v53 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v87) = 0;
        v26 = v78;
        PreferencesOutputs.subscript.setter(v53, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
      }

      goto LABEL_37;
    }

    goto LABEL_50;
  }

  outlined destroy of _GraphInputs(&v95);
LABEL_41:
  v38 = v74;
  if (v81)
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(v77);
    v57 = *(a2 + 48);
    v88[1] = *(a2 + 32);
    v88[2] = v57;
    v88[3] = *(a2 + 64);
    LODWORD(v88[4]) = *(a2 + 80);
    v58 = *(a2 + 16);
    v87 = *a2;
    v88[0] = v58;
    (*(v59 + 8))(&v87, &v83);
  }

LABEL_43:
  if ((v82 & 2) != 0)
  {
    v60 = *(v14 + 16);
    v62 = *(v14 + 20);

    if (v62)
    {
      v60 = v26;
    }

    v61 = v84 | 0x80;
  }

  else
  {

    v61 = v84;
    v60 = v85;
  }

  v88[1] = v91;
  v88[2] = v92;
  v88[3] = v93;
  LODWORD(v88[4]) = v94;
  v87 = v89;
  v88[0] = v90;
  outlined destroy of _ViewInputs(&v87);

  *v38 = v83;
  *(v38 + 8) = v61;
  *(v38 + 12) = v60;
}

void lazy protocol witness table accessor for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for DynamicLayoutComputer<GeometryReaderLayout>, lazy protocol witness table accessor for type GeometryReaderLayout and conformance GeometryReaderLayout, &type metadata for GeometryReaderLayout, type metadata accessor for DynamicLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for DynamicLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicLayoutComputer<GeometryReaderLayout> and conformance DynamicLayoutComputer<A>);
  }
}

uint64_t SecondaryChild.value.getter@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v9 = a1;
  v64 = a6;
  v80 = *MEMORY[0x1E69E9840];
  v10 = HIDWORD(a1);
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = v65;
  v76 = v9;
  v77 = v10;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v79 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v78 = v31;
    outlined init with take of Any(&v78, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v78);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v65 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in SecondaryChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v61;
  outlined init with copy of ObservationTracking._AccessList?(v40, v61);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v64;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v63;
  v19(v63, v41, v37);
  (*(v11 + 16))(v62, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v62, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v63, v37);
  v43 = v64;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v65;
}

uint64_t closure #1 in SecondaryChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v8 = type metadata accessor for _OverlayPreferenceModifier(0, v11);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in SecondaryChild.value.getter, v10, v8, a3, a6);
}

uint64_t closure #1 in closure #1 in SecondaryChild.value.getter@<X0>(void (**a1)(char *)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v22 = *(v12 - 8);
  v23 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  v19 = *a1;
  SecondaryChild.preferenceValue.getter(a2, v14);
  v20 = *(v15 + 48);
  if (v20(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(a5 + 16))(a3, a5);
    if (v20(v14, 1, AssociatedTypeWitness) != 1)
    {
      (*(v22 + 8))(v14, v23);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v14, AssociatedTypeWitness);
  }

  v19(v18);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

uint64_t SecondaryChild.preferenceValue.getter@<X0>(unint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = HIDWORD(a1);
  v6 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = AssociatedTypeWitness;
  if (v6 == v5)
  {
    v9 = *(AssociatedTypeWitness - 8);
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v14 = *(v8 - 8);
    (*(v14 + 16))(a4, Value, v8);
    v9 = v14;
    v10 = 0;
  }

  v12 = *(v9 + 56);

  return v12(a4, v10, 1, v8);
}

uint64_t protocol witness for ViewList.count(style:) in conformance ModifiedViewList(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = v2;
  return (*(v4 + 16))(&v6, v3, v4);
}

char *storeEnumTagSinglePayload for _OverlayStyleModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (*(v5 + 64) != -1)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

double specialized static Text.Measurements._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  swift_beginAccess();
  LODWORD(v4) = *(v4 + 16);
  type metadata accessor for TextSizeCache();
  v5 = swift_allocObject();
  v5[2] = 0;
  type metadata accessor for PropertyList.Tracker();
  v6 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v7, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = MEMORY[0x1E69E7CC8];
  *(v10 + 24) = 0;
  *(v10 + 32) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 56) = 0;
  *(v6 + 16) = v10;
  v5[3] = v6;
  v5[4] = v12;
  type metadata accessor for SuffixCache();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v5[5] = v13;
  specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(v4, v5, a2);

  return result;
}

void specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(int a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<Text.Measurements.Box>, &type metadata for Text.Measurements.Box, &protocol witness table for Text.Measurements.Box);
  v8 = v7;
  v9 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
  *v9 = v8;
  v9[1] = 32;
  *(v9 + 4) = a1;
  v9[3] = a2;
  v10 = *v3;
  if (!*v3)
  {
    goto LABEL_17;
  }

  if (v9 - v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 - v10 > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v3 + 3);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v3 + 3) = v13;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a3 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  *(v9 + 3) = *(v9 + 3) & 0x80000000 | a3;
}

void *assignWithCopy for _OverlayPreferenceModifier(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _FixedSizeLayout(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV015LayoutDirectionK0VG_Ttg5(v4, *a2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextCaseKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextCaseKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextCaseKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextCaseKey>>);
    }
  }
}

void protocol witness for static View._makeView(view:inputs:) in conformance EmptyContent(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = 0;
  *(a1 + 12) = v1;
}

uint64_t ViewModifier.requiring<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v3, a2, v7);
  return (*(v6 + 32))(a3, v9, a2);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InterfaceIdiomPredicate(0, v9, v11, v10);
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContainerContextPredicate(0, v9, v11, v10);
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

uint64_t one-time initialization function for v6_1()
{
  result = swiftUI_v6_1_os_versions();
  static Semantics.v6_1 = HIDWORD(result);
  return result;
}

uint64_t specialized PreferenceValues.Entry.subscript.setter(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  outlined init with take of Any(&v9, (v2 + 24));
  result = type metadata accessor for PreferenceValues.Value(0, a2, v6, v7);
  *(v2 + 16) = *(a1 + *(result + 28));
  return result;
}

double PlatformViewRepresentableContext.environment.getter@<D0>(unint64_t *a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v3 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    InputValue = AGGraphGetInputValue();
    v6 = *InputValue;
    v5 = InputValue[1];
    *a1 = v6;
    a1[1] = v5;

    static Update.end()();

    _MovableLockUnlock(v3);
  }

  else
  {
    v8 = *(v1 + 24);
    *a1 = *(v1 + 16);
    a1[1] = v8;
  }

  return result;
}

double LeafLayoutEnvironment.updateValue()()
{
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  if (AGGraphGetOutputValue())
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }

    v6 = swift_retain_n();
    v7 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v6);

    if ((v7 & 1) == 0)
    {

      return result;
    }
  }

  else
  {
  }

  v8 = *(v0 + 8);
  PropertyList.Tracker.reset()();
  if (v4)
  {
    v9 = *(v4 + 64);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v8 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v10 + 16));
  *(v10 + 24) = v9;
  os_unfair_lock_unlock((v10 + 16));

  AGGraphSetOutputValue();

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v5;
  v11 = *(*v5 + 2);
  v8 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = a3;
  v7 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v13 = *(v4 + 3) >> 1, v13 < v8))
  {
    if (v11 <= v8)
    {
      v14 = v11 + v10;
    }

    else
    {
      v14 = v11;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v14, 1, v4);
    v4 = result;
    v13 = *(result + 24) >> 1;
  }

  v15 = v13 - *(v4 + 2);
  if (v9 == v6)
  {
    if (v10 <= 0)
    {
      v10 = 0;
      v8 = v6;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v15 < v10)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v10 <= 0)
    {
LABEL_16:
      v8 = v9;
LABEL_17:
      if (v10 != v15)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v5 = v4;
        return result;
      }

LABEL_23:
      v19 = *(v4 + 2);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      outlined init with copy of PreferenceValues.Entry?(&v35, &v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
      while (v31)
      {
        outlined destroy of HitTestableEvent?(&v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry);
        v21 = *(v4 + 3);
        v22 = v21 >> 1;
        if ((v21 >> 1) < v19 + 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v19 + 1, 1, v4);
          v22 = *(v4 + 3) >> 1;
        }

        outlined init with copy of PreferenceValues.Entry?(&v35, v29, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
        if (*&v29[0])
        {
          if (v19 <= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v19;
          }

          v24 = &v4[56 * v19 + 32];
          while (1)
          {
            v31 = v29[0];
            v32 = v29[1];
            v33 = v29[2];
            v34 = v30;
            v25 = v23;
            if (v23 == v19)
            {
              break;
            }

            result = outlined destroy of HitTestableEvent?(&v35, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry);
            v27 = v32;
            v26 = v33;
            v28 = v31;
            *(v24 + 48) = v34;
            *(v24 + 16) = v27;
            *(v24 + 32) = v26;
            *v24 = v28;
            if (v8 == v9)
            {
              v38 = 0;
              v36 = 0u;
              v37 = 0u;
              v8 = v9;
              v35 = 0u;
            }

            else
            {
              if (v8 < v6 || v8 >= v9)
              {
                goto LABEL_45;
              }

              outlined init with copy of PreferenceValues.Entry(v7 + 56 * v8++, &v35);
            }

            outlined init with copy of PreferenceValues.Entry?(&v35, v29, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
            v24 += 56;
            ++v19;
            v23 = v25;
            if (!*&v29[0])
            {
              goto LABEL_25;
            }
          }

          outlined destroy of PreferenceValues.Entry(&v31);
          v20 = v25;
          v19 = v25;
        }

        else
        {
LABEL_25:
          outlined destroy of HitTestableEvent?(v29, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry);
          v20 = v19;
        }

        *(v4 + 2) = v20;
        outlined init with copy of PreferenceValues.Entry?(&v35, &v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry, type metadata accessor for HitTestableEvent?);
      }

      outlined destroy of HitTestableEvent?(&v35, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry);
      swift_unknownObjectRelease();
      result = outlined destroy of HitTestableEvent?(&v31, &lazy cache variable for type metadata for PreferenceValues.Entry?, &type metadata for PreferenceValues.Entry);
      goto LABEL_19;
    }

    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, v10);
    v18 = v16 + v10;
    if (!v17)
    {
      *(v4 + 2) = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t static _VariadicView_ViewRoot.makeView(root:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v81 = a2[2];
  v82 = v8;
  v10 = a2[3];
  v83 = a2[4];
  v11 = a2[1];
  v79 = *a2;
  v80 = v11;
  v70 = v81;
  v71 = v10;
  v72 = a2[4];
  v12 = *a1;
  v84 = *(a2 + 20);
  v73 = *(a2 + 20);
  v68 = v79;
  v69 = v9;
  a3(&v62);
  LODWORD(v72) = *MEMORY[0x1E698D3F8];
  *(&v72 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v73) = 0;
  v74 = 0;
  v75 = 0;
  swift_weakInit();
  v76 = 0;
  v77 = 0;
  v78 = -1;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = 0uLL;
  outlined init with copy of _GraphInputs(&v79, &v56);
  v13 = _ViewListOutputs.makeAttribute(inputs:)(&v68);
  outlined destroy of _ViewListInputs(&v68);
  outlined destroy of _ViewListOutputs(&v62);
  static DynamicPropertyCache.fields(of:)(a4, &v68);
  v14 = v68;
  v15 = v69;
  v16 = DWORD1(v69);
  v70 = v81;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v68 = v79;
  v69 = v80;
  v27 = v16;
  v28 = v12;
  LODWORD(v44) = v12;
  v56 = v14;
  v30 = v15;
  LOBYTE(v57) = v15;
  DWORD1(v57) = v16;
  outlined init with copy of _ViewInputs(&v79, &v62);
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(&v50, &v62, &v44, v13, &v68, &v56, a4, a5);
  v17 = v50;
  v26 = v62;
  v29 = v63;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v52 = v81;
  v53 = v82;
  v54 = v83;
  v55 = v84;
  v50 = v79;
  v51 = v80;
  v61 = v84;
  v20 = v81;
  LODWORD(v52) = 0;
  LODWORD(v38) = v17;
  v56 = v79;
  v57 = v80;
  v59 = v82;
  v60 = v83;
  v58 = v52;
  v46 = v52;
  v47 = v82;
  v48 = v83;
  v49 = v84;
  v44 = v79;
  v45 = v80;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = *(AssociatedConformanceWitness + 24);
  outlined init with copy of _ViewInputs(&v79, &v62);
  outlined init with copy of _ViewInputs(&v56, &v62);
  v22(v33, &v38, &v44, AssociatedTypeWitness, AssociatedConformanceWitness);
  v64 = v46;
  v65 = v47;
  v66 = v48;
  v67 = v49;
  v62 = v44;
  v63 = v45;
  outlined destroy of _ViewInputs(&v62);
  LODWORD(v52) = v20;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v33, &v50);
    AGSubgraphEndTreeElement();
  }

  v46 = v52;
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v44 = v50;
  v45 = v51;
  outlined destroy of _ViewInputs(&v44);
  v23 = v33[0];
  v24 = v33[1];
  if (v29)
  {
    v40 = v70;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v38 = v68;
    v39 = v69;
    outlined destroy of _ViewInputs(&v38);
  }

  else
  {
    v37 = v26;
    v32 = v28;
    v34 = v14;
    v35 = v30;
    v36 = v27;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v32, &v34, a4);
    v40 = v70;
    v41 = v71;
    v42 = v72;
    v43 = v73;
    v38 = v68;
    v39 = v69;
    outlined destroy of _ViewInputs(&v38);
  }

  result = outlined consume of DynamicPropertyCache.Fields.Layout(v14, *(&v14 + 1), v30);
  *a6 = v23;
  a6[1] = v24;
  return result;
}

Swift::Void __swiftcall _ConditionalContent.Container.updateValue()()
{
  v3 = v2;
  v4 = v0;
  v69 = *MEMORY[0x1E69E9840];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for _ConditionalContent.Info(0, v5, v6, v1);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v55 - v13;
  v66 = type metadata accessor for Optional();
  v14 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v24 = type metadata accessor for _ConditionalContent(0, v5, v6, v23);
  v62 = *(v24 - 8);
  v63 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v55 - v25;
  v60 = v3;
  _ConditionalContent.Container.content.getter(v4, v26, &v55 - v25);
  OutputValue = AGGraphGetOutputValue();
  v64 = v4;
  if (OutputValue)
  {
    (*(v8 + 16))(v22, OutputValue, v7);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v8 + 56))(v22, v28, 1, v7);
  v29 = *(v14 + 16);
  v68 = v22;
  v30 = v66;
  v29(v19, v22, v66);
  v31 = v14;
  v32 = *(v8 + 48);
  v33 = v32(v19, 1, v7);
  v65 = v31;
  if (v33 == 1)
  {
    (*(v31 + 8))(v19, v30);
  }

  else
  {
    v36 = _ConditionalContent.Info.matches(_:)(v67, v7, v34, v35);
    v56 = *(v8 + 8);
    v57 = v8 + 8;
    v56(v19, v7);
    if (v36)
    {
      v37 = AGGraphGetOutputValue();
      if (v37)
      {
        v38 = v58;
        (*(v8 + 16))(v58, v37, v7);
        v40 = v62;
        v39 = v63;
        v41 = v67;
        v42 = (*(v62 + 24))(v38, v67, v63);
        v43 = MEMORY[0x1EEE9AC00](v42);
        *(&v55 - 2) = v64;
        swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.Container<A1>, v43);
        *(&v55 - 1) = v44;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v38, closure #1 in StatefulRule.value.setterpartial apply, (&v55 - 4), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v45);
        (*(v65 + 8))(v68, v30);
        (*(v40 + 8))(v41, v39);
        v56(v38, v7);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v29(v16, v68, v30);
  if (v32(v16, 1, v7) == 1)
  {
    v46 = v65;
    (*(v65 + 8))(v16, v30);
    v47 = v64;
  }

  else
  {
    v48 = v59;
    (*(v8 + 32))(v59, v16, v7);
    v47 = v64;
    _ConditionalContent.Container.eraseInfo(_:)(v48, v64);
    (*(v8 + 8))(v48, v7);
    v46 = v65;
  }

  v49 = v61;
  v50 = v67;
  _ConditionalContent.Container.makeInfo(_:)(v67, v47, v61);
  v52 = MEMORY[0x1EEE9AC00](v51);
  *(&v55 - 2) = v47;
  swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.Container<A1>, v47, v52);
  *(&v55 - 1) = v53;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v49, partial apply for closure #1 in StatefulRule.value.setter, (&v55 - 4), v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v54);
  (*(v8 + 8))(v49, v7);
  (*(v46 + 8))(v68, v30);
  (*(v62 + 8))(v50, v63);
}

uint64_t getEnumTagSinglePayload for _ConditionalContent.Info(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_5:
      v5 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

uint64_t _ConditionalContent.Container.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

void _ConditionalContent.Container.makeInfo(_:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v8 = CurrentAttribute;
    v9 = AGSubgraphGetGraph();
    v11 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v10 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in _ConditionalContent.Container.makeInfo(_:)(v3, a1, v8, v11, a2[2], a2[3], a2[4], a2[5], a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

id closure #1 in _ConditionalContent.Container.makeInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v82 = a4;
  v67 = a3;
  v87 = a1;
  v88 = a2;
  v81 = a9;
  v90[4] = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for _ConditionalContent(0, a5, a6, a4);
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v65 - v14;
  v69 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ConditionalContent.Storage(0, a5, a6, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v77 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v86 = &v65 - v25;
  v26 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = swift_getAssociatedTypeWitness();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v31 = &v65 - v30;
  v70 = a5;
  v90[0] = a5;
  v90[1] = a6;
  v71 = a6;
  v90[2] = a7;
  v90[3] = a8;
  v32 = type metadata accessor for _ConditionalContent.Container(0, v90);
  v33 = *(v26 + 16);
  v84 = *(v32 + 52);
  v85 = v33;
  v33(v29, v87 + v84, a7);
  v34 = *(a8 + 72);
  v72 = v31;
  v34(a7, a8);
  v35 = *(v26 + 8);
  v75 = v26 + 8;
  v83 = v35;
  v35(v29, a7);
  (*(v21 + 16))(v23, v88, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v66;
    v37 = v71;
    v38 = (v69[4])(v66, v23, v71);
    v68 = &v65;
    LODWORD(v90[0]) = v67;
    MEMORY[0x1EEE9AC00](v38);
    *(&v65 - 4) = v37;
    v39 = v70;
    v41 = type metadata accessor for _ConditionalContent.FalseChild(0, v70, v37, v40);
    *(&v65 - 3) = v41;
    swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.FalseChild, v41);
    *(&v65 - 2) = v42;
    v43 = type metadata accessor for Attribute();
    v45 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v90, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, (&v65 - 6), v41, MEMORY[0x1E69E73E0], v43, MEMORY[0x1E69E7410], v44);
    v46 = v89;
    MEMORY[0x1EEE9AC00](v45);
    *(&v65 - 2) = v37;
    *(&v65 - 2) = v46;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v36, partial apply for closure #1 in Attribute.setValue(_:), (&v65 - 4), v37, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v47);
    v48 = v87;
    v85(v29, v87 + v84, a7);
    v49 = v72;
    (*(a8 + 88))(v46, v72, a7, a8);
    v83(v29, a7);
    (v69[1])(v36, v37);
  }

  else
  {
    v50 = v65;
    v39 = v70;
    v51 = (v68[4])(v65, v23, v70);
    v69 = &v65;
    LODWORD(v90[0]) = v67;
    MEMORY[0x1EEE9AC00](v51);
    *(&v65 - 4) = v39;
    v37 = v71;
    v53 = type metadata accessor for _ConditionalContent.TrueChild(0, v39, v71, v52);
    *(&v65 - 3) = v53;
    swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.TrueChild, v53);
    *(&v65 - 2) = v54;
    v55 = type metadata accessor for Attribute();
    v57 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v90, closure #1 in Attribute.init<A>(_:)partial apply, (&v65 - 6), v53, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v56);
    v58 = v89;
    MEMORY[0x1EEE9AC00](v57);
    *(&v65 - 2) = v39;
    *(&v65 - 2) = v58;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v50, closure #1 in Attribute.setValue(_:)partial apply, (&v65 - 4), v39, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v59);
    v48 = v87;
    v85(v29, v87 + v84, a7);
    v60 = v58;
    v49 = v72;
    (*(a8 + 80))(v60, v72, a7, a8);
    v83(v29, a7);
    (v68[1])(v50, v39);
  }

  v85(v29, v48 + v84, a7);
  v61 = v86;
  (*(a8 + 64))(v86, a7, a8);
  v83(v29, a7);
  (*(v76 + 8))(v61, v77);
  (*(v73 + 8))(v49, v74);
  v62 = v78;
  (*(v79 + 16))(v78, v88, v80);
  _ConditionalContent.Info.init(content:subgraph:)(v62, v82, v39, v37, v81);
  v63 = v82;

  return v63;
}

uint64_t _ConditionalContent.Info.init(content:subgraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for _ConditionalContent(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for _ConditionalContent.Info(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t initializeWithCopy for _ConditionalContent.Info(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(a3 + 16) - 8);
  if (*(*(v5 - 8) + 64) <= *(v6 + 64))
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = *(*(v5 - 8) + 64);
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 < 2)
  {
    goto LABEL_18;
  }

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
      goto LABEL_18;
    }

    v11 = *a2;
  }

  else if (v10 == 2)
  {
    v11 = *a2;
  }

  else if (v10 == 3)
  {
    v11 = *a2 | (a2[2] << 16);
  }

  else
  {
    v11 = *a2;
  }

  v12 = (v11 | (v9 << (8 * v7))) + 2;
  v8 = v11 + 2;
  if (v7 < 4)
  {
    v8 = v12;
  }

LABEL_18:
  v13 = v8 == 1;
  if (v8 == 1)
  {
    v6 = *(v5 - 8);
    v14 = *(a3 + 24);
  }

  else
  {
    v14 = *(a3 + 16);
  }

  (*(v6 + 16))(a1, a2, v14);
  *(a1 + v7) = v13;
  v15 = *(&a2[v7 + 8] & 0xFFFFFFFFFFFFFFF8);
  *((v7 + 8 + a1) & 0xFFFFFFFFFFFFFFF8) = v15;
  v16 = v15;
  return a1;
}

void destroy for _ConditionalContent.Info(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(*(a2 + 16) - 8);
  if (*(*(v3 - 8) + 64) <= *(v4 + 64))
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(*(v3 - 8) + 64);
  }

  v6 = a1[v5];
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

    v9 = *a1;
  }

  else if (v8 == 2)
  {
    v9 = *a1;
  }

  else if (v8 == 3)
  {
    v9 = *a1 | (a1[2] << 16);
  }

  else
  {
    v9 = *a1;
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
    v4 = *(v3 - 8);
    v11 = *(a2 + 24);
  }

  else
  {
    v11 = *(a2 + 16);
  }

  (*(v4 + 8))(a1, v11);
  v12 = *(&a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8);
}

uint64_t View.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v20 - v11;
  v14 = type metadata accessor for _PreferenceWritingModifier(0, a4, a6, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v10 + 16))(v12, a2, AssociatedTypeWitness, v16);
  (*(v10 + 32))(v18, v12, AssociatedTypeWitness);
  View.modifier<A>(_:)();
  return (*(v15 + 8))(v18, v14);
}

uint64_t initializeWithTake for CombinedKeyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

int *storeEnumTagSinglePayload for _ConditionalContent.Info(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

Swift::Bool __swiftcall ViewGraphHost.invalidateTransform()()
{
  v1 = *(v0 + 88);
  ValueState = AGGraphGetValueState();
  if ((ValueState & 1) == 0)
  {
    AGGraphInvalidateValue();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return (ValueState & 1) == 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _ConditionalContent<A, B>.FalseChild(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for _ConditionalContent<A, B>.FalseChild, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t PreferenceBinder.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v71 = *(a1 + 24);
  v73 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v76 = v67 - v6;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = v67 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = v67 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v67 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  if (*(v1 + 28) != *AGGraphGetValue() >> 1)
  {
    *(v1 + 28) = *AGGraphGetValue() >> 1;
    *(v1 + 16) = 0xFFFFFFFFLL;
    *(v1 + 24) = 0;
    v23 = *(a1 + 60);
    (*(v7 + 8))(v1 + v23, v5);
    (*(v17 + 56))(v1 + v23, 1, 1, AssociatedTypeWitness);
  }

  Value = AGGraphGetValue();
  v80 = v25;
  v26 = *(v17 + 16);
  v84 = v17 + 16;
  v85 = v22;
  v83 = v26;
  v26(v22, Value, AssociatedTypeWitness);
  v75 = a1;
  v27 = *(v7 + 16);
  v81 = *(a1 + 60);
  v27(v16, v1 + v81, v5);
  v72 = *(v17 + 48);
  v28 = v17;
  v29 = v72(v16, 1, AssociatedTypeWitness);
  v31 = *(v7 + 8);
  v30 = v7 + 8;
  v82 = v31;
  v31(v16, v5);
  v32 = v28;
  if (v29 == 1)
  {
    if (one-time initialization token for v6_1 != -1)
    {
      swift_once();
    }

    v33 = static Semantics.v6_1;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      v32 = v28;
      if (dyld_program_sdk_at_least())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v32 = v28;
      if (static Semantics.forced >= v33)
      {
        goto LABEL_20;
      }
    }
  }

  if ((v80 & 1) == 0)
  {
    return (*(v32 + 8))(v85, AssociatedTypeWitness);
  }

  v67[1] = v30;
  v35 = v78;
  v27(v78, v1 + v81, v5);
  v36 = AssociatedTypeWitness;
  v37 = v77;
  v83(v77, v85, v36);
  v80 = v32;
  (*(v32 + 56))(v37, 0, 1, v36);
  v38 = *(TupleTypeMetadata2 + 48);
  v39 = v76;
  v27(v76, v35, v5);
  v67[0] = v38;
  v27(&v39[v38], v37, v5);
  v40 = v72;
  if (v72(v39, 1, v36) == 1)
  {
    v41 = v37;
    v42 = v82;
    v82(v41, v5);
    v42(v35, v5);
    v43 = v40(&v39[v67[0]], 1, v36);
    v32 = v80;
    AssociatedTypeWitness = v36;
    if (v43 == 1)
    {
      v82(v39, v5);
      return (*(v32 + 8))(v85, AssociatedTypeWitness);
    }

LABEL_19:
    (*(v69 + 8))(v39, TupleTypeMetadata2);
    goto LABEL_20;
  }

  v44 = v68;
  v27(v68, v39, v5);
  v45 = v67[0];
  AssociatedTypeWitness = v36;
  if (v40(&v39[v67[0]], 1, v36) == 1)
  {
    v46 = v82;
    v82(v77, v5);
    v46(v78, v5);
    v32 = v80;
    (*(v80 + 8))(v44, v36);
    goto LABEL_19;
  }

  v60 = v44;
  v61 = v80;
  v62 = v74;
  (*(v80 + 32))(v74, &v39[v45], v36);
  v63 = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v61 + 8);
  v64(v62, v36);
  v65 = v82;
  v82(v77, v5);
  v65(v78, v5);
  v64(v60, v36);
  v32 = v61;
  v65(v76, v5);
  if (v63)
  {
    return (*(v32 + 8))(v85, AssociatedTypeWitness);
  }

LABEL_20:
  v47 = v81;
  v82((v1 + v81), v5);
  v48 = v85;
  v83((v1 + v47), v85, AssociatedTypeWitness);
  (*(v32 + 56))(v1 + v47, 0, 1, AssociatedTypeWitness);
  AGGraphClearUpdate();
  v49 = *AGGraphGetValue();
  AGGraphSetUpdate();
  if (*(v1 + 16) != v49)
  {
    *(v1 + 16) = v49;
    *(v1 + 20) = 2;
LABEL_26:
    AGGraphClearUpdate();
    v52 = *(v75 + 32);
    v53 = v73;
    v54 = v71;
    closure #1 in PreferenceBinder.updateValue()(v1, v73, v71, v52, type metadata accessor for PreferenceBinder, type metadata accessor for _PreferenceActionModifier, &unk_1F00A74B0, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value) -> (), &v86);
    AGGraphSetUpdate();
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v55 + 24) = v54;
    *(v55 + 32) = v52;
    *(v55 + 40) = v86;
    LOBYTE(v86) = 13;
    v56 = v74;
    v83(v74, v48, AssociatedTypeWitness);
    v57 = v32;
    v58 = (*(v32 + 80) + 56) & ~*(v32 + 80);
    v59 = swift_allocObject();
    *(v59 + 2) = v53;
    *(v59 + 3) = v54;
    *(v59 + 4) = v52;
    *(v59 + 5) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.PreferenceKey.Value) -> (@out ());
    *(v59 + 6) = v55;
    (*(v57 + 32))(&v59[v58], v56, AssociatedTypeWitness);

    static Update.enqueueAction(reason:_:)(&v86, partial apply for closure #2 in PreferenceBinder.updateValue(), v59);

    return (*(v57 + 8))(v48, AssociatedTypeWitness);
  }

  v50 = *(v1 + 20);
  if (v50)
  {
    v51 = v50 - 1;
    *(v1 + 20) = v51;
    if (v51)
    {
      goto LABEL_26;
    }
  }

  if (*(v1 + 24) == 1)
  {
    return (*(v32 + 8))(v48, AssociatedTypeWitness);
  }

  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  *&v86 = 0xD000000000000011;
  *(&v86 + 1) = 0x800000018DD808E0;
  v66 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v66);

  MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
  specialized static Log.externalWarning(_:)(v86, *(&v86 + 1));

  result = (*(v32 + 8))(v48, AssociatedTypeWitness);
  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_18D1AEE34()
{

  return swift_deallocObject();
}

uint64_t sub_18D1AEE6C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void *closure #1 in PreferenceBinder.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*a6)(void, void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v25 = a7;
  v26 = a8;
  v15 = a5(0);
  v16 = *(v15 - 1);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  (*(v16 + 16))(&v25 - v18, a1, v15, v17);
  v20 = specialized PreferenceBinder.modifier.getter(v15, a6);
  v22 = v21;
  v23 = *(v16 + 8);

  v23(v19, v15);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = v20;
  result[6] = v22;
  *a9 = v26;
  a9[1] = result;
  return result;
}

void EnvironmentValues.explicitPreferredColorScheme.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028ExplicitPreferredColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2g5(v2, a1);
  }
}

double Transaction.animation.getter(void *a1)
{
  if (_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1))
  {
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TextCaseF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextCaseKey>, &type metadata for TextCaseKey, &protocol witness table for TextCaseKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA08TextCaseV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextCaseKey>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void *assignWithCopy for ObservedObject(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t initializeWithCopy for ObjectLocation(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for ObjectLocation(void *a1)
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_ZStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_ZStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_ZStackLayout>, lazy protocol witness table accessor for type _ZStackLayout and conformance _ZStackLayout, &type metadata for _ZStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

void EnvironmentalBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v82 = a1;
  v107 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v74 - v16;
  v84 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v74 - v19;
  Value = AGGraphGetValue();
  v23 = *Value;
  v24 = Value[1];
  if (a2)
  {

    goto LABEL_3;
  }

  if ((v22 & 1) == 0)
  {
    return;
  }

  if (a5 & 1) == 0 || (v26 = , v27 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v26), , (v27))
  {
LABEL_3:
    v80 = v18;
    PropertyList.Tracker.reset()();
    if (v23)
    {
      v25 = *(v23 + 64);
    }

    else
    {
      v25 = 0;
    }

    v78 = v24;
    v79 = v20;
    v81 = a7;
    v28 = *(a4 + 16);
    swift_retain_n();

    os_unfair_lock_lock((v28 + 16));
    *(v28 + 24) = v25;
    os_unfair_lock_unlock((v28 + 16));

    if (one-time initialization token for bodyInvoke != -1)
    {
      swift_once();
    }

    v29 = static Signpost.bodyInvoke;
    v30 = word_1ED539040;
    v31 = HIBYTE(word_1ED539040);
    v32 = byte_1ED539042;
    v33 = static os_signpost_type_t.begin.getter();
    v101 = v29;
    v102 = v30;
    v103 = v31;
    v104 = v32;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      goto LABEL_47;
    }

    LODWORD(v94) = v33;
    v75 = v23;
    v76 = AssociatedTypeWitness;
    v77 = a4;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18DDAB4C0;
    v35 = AGTypeID.description.getter();
    v37 = v36;
    v38 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v40 = v39;
    *(v34 + 64) = v39;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v41 = specialized static Tracing.libraryName(defining:)();
    *(v34 + 96) = v38;
    *(v34 + 104) = v40;
    *(v34 + 72) = v41;
    *(v34 + 80) = v42;
    if (one-time initialization token for _signpostLog == -1)
    {
      if (v31)
      {
LABEL_17:
        v100[0] = v94;
        v98 = _signpostLog;
        v99 = &dword_18D018000;
        v101 = v29;
        v102 = v30;
        v96[0] = "%{public}@.body [in %{public}@]";
        v96[1] = 31;
        v97 = 2;
        v95 = v34;
        v43 = v83;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(v100, &v99, &v98, &v101, v83, v96, &v95);
        (*(v92 + 8))(v43, v91);
LABEL_46:

        a4 = v77;
        AssociatedTypeWitness = v76;
        v23 = v75;
LABEL_47:
        AGGraphClearUpdate();
        *&v101 = v23;
        *(&v101 + 1) = a4;
        v66 = v81;
        v67 = v79;
        v68 = v84;
        (*(v81 + 32))(&v101, v84, v81);
        AGGraphSetUpdate();
        v69 = $defer #1 <A>() in traceRuleBody<A>(_:body:)();
        MEMORY[0x1EEE9AC00](v69);
        v71 = type metadata accessor for EnvironmentalBodyAccessor(0, v68, v66, v70);
        *(&v74 - 2) = v71;
        swift_getWitnessTable(protocol conformance descriptor for EnvironmentalBodyAccessor<A>, v71);
        *(&v74 - 1) = v72;
        _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v67, partial apply for closure #2 in BodyAccessor.setBody(_:), (&v74 - 4), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v73);

        (*(v80 + 8))(v67, AssociatedTypeWitness);
        return;
      }
    }

    else
    {
      swift_once();
      if (v31)
      {
        goto LABEL_17;
      }
    }

    if (v29 == 20)
    {
      v44 = 3;
    }

    else
    {
      v44 = 4;
    }

    v45 = bswap32(v29) | (4 * WORD1(v29));
    v46 = v94;
    v47 = v92 + 16;
    v85 = *(v92 + 16);
    v48 = v85(v93, v83, v91);
    v49 = 0;
    LOBYTE(v96[0]) = 1;
    v92 = v47;
    v89 = 16 * *(&v29 + 1);
    v90 = (v47 - 8);
    v88 = v34 + 32;
    v87 = v29;
    v86 = *(&v29 + 1);
    do
    {
      v94 = &v74;
      MEMORY[0x1EEE9AC00](v48);
      v51 = &v74 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v51 + 8;
      v53 = v44;
      v54 = v51 + 8;
      do
      {
        *(v54 - 1) = 0;
        *v54 = 0;
        v54 += 16;
        --v53;
      }

      while (v53);
      v55 = v88 + 40 * v49;
      while (1)
      {
        v56 = *(v34 + 16);
        if (v49 == v56)
        {
          break;
        }

        if (v49 >= v56)
        {
          __break(1u);
        }

        ++v49;
        outlined init with copy of AnyTrackedValue(v55, &v101);
        v57 = v105;
        v58 = v106;
        __swift_project_boxed_opaque_existential_1(&v101, v105);
        *(v52 - 1) = CVarArg.kdebugValue(_:)(v45 | v46, v57, v58);
        *v52 = v59 & 1;
        v52 += 16;
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v55 += 40;
        if (!--v44)
        {
          goto LABEL_31;
        }
      }

      LOBYTE(v96[0]) = 0;
LABEL_31:
      v60 = v87;
      if (v87 == 20)
      {
        OSSignpostID.rawValue.getter();
      }

      kdebug_trace();
      if (v51[8] == 1)
      {
        kdebug_trace_string();
      }

      if (v51[24] == 1)
      {
        kdebug_trace_string();
      }

      if (v51[40] == 1)
      {
        kdebug_trace_string();
      }

      if (v60 != 20 && v51[56] == 1)
      {
        kdebug_trace_string();
      }

      if (one-time initialization token for continuation != -1)
      {
        swift_once();
      }

      v61 = v91;
      v62 = *v90;
      v63 = v93;
      (*v90)(v93, v91);
      v64 = __swift_project_value_buffer(v61, static OSSignpostID.continuation);
      v48 = v85(v63, v64, v61);
      v44 = v86;
    }

    while ((v96[0] & 1) != 0);
    v65 = v91;
    v62(v93, v91);
    v62(v83, v65);
    goto LABEL_46;
  }
}

uint64_t type metadata completion function for _MaskAlignmentEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for HierarchicalShapeStyleModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v12);
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      outlined init with copy of AnyHashable(*(a2 + 48) + 40 * v6, v24);
      v9 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = outlined destroy of AnyHashable(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      v11 = *v10;
      if (*v10 == 0.0)
      {
        v11 = 0.0;
      }

      result = MEMORY[0x193AC1170](*(a2 + 40), *&v11);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_17:
          v15 = (v9 + 8 * v3);
          if (v3 != v6 || v15 >= v10 + 1)
          {
            *v15 = *v10;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_17;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x193AC1170](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t closure #1 in ValueTransactionSeed.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v7 = type metadata accessor for ValueTransactionSeed(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  LODWORD(a1) = *AGGraphGetValue();
  result = (*(v8 + 8))(v11, v7);
  *a5 = a1;
  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018TintAdjustmentModeS033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018TintAdjustmentModeV033_EC06E65D3EE8D18E3FBCB8910A79AF01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintAdjustmentModeKey>, &type metadata for TintAdjustmentModeKey, &protocol witness table for TintAdjustmentModeKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t static StyleableView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a1[3];
  v53 = a1[2];
  v54 = v6;
  v7 = a1[3];
  v55 = a1[4];
  v8 = a1[1];
  v52[0] = *a1;
  v52[1] = v8;
  v10 = *a1;
  v9 = a1[1];
  v51 = a1[4];
  v11 = a1[3];
  v49 = a1[2];
  v50 = v11;
  v56[3] = v11;
  v56[4] = v51;
  v56[1] = v9;
  v56[2] = v49;
  v47 = *a1;
  v48 = v9;
  v56[0] = v47;
  v44 = v53;
  v45 = v7;
  v46 = a1[4];
  v42 = v10;
  v43 = v5;
  outlined init with copy of _ViewListCountInputs(v52, v57);
  outlined init with copy of _ViewListCountInputs(v56, v57);
  v12 = _ViewListCountInputs.isCurrentStyleableView<A>(_:)(a2, a2);
  v57[2] = v44;
  v57[3] = v45;
  v57[4] = v46;
  v57[0] = v42;
  v57[1] = v43;
  outlined destroy of _ViewListCountInputs(v57);
  if ((v12 & 1) == 0)
  {
    _GraphInputs.setCurrentStyleableView<A>(_:)(a2, a2);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v36 = v47;
    v37 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = *(AssociatedConformanceWitness + 40);
    outlined init with copy of _ViewListCountInputs(&v36, &v42);
    v21 = v24(&v31, AssociatedTypeWitness, AssociatedConformanceWitness);
    goto LABEL_7;
  }

  v13 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for StyleInput(0, v13, v14, v15);
  _ViewListCountInputs.popLast<A, B>(_:)(v16, &type metadata for AnyStyleModifier, &protocol witness table for StyleInput<A>, &v29);
  v17 = v30;
  if (!v30)
  {
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v36 = v47;
    v37 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    outlined init with copy of _ViewListCountInputs(&v36, &v42);
    v25 = swift_getAssociatedTypeWitness();
    v26 = *(a3 + 8);
    v27 = swift_getAssociatedConformanceWitness();
    v21 = static ModifiedContent<>._viewListCount(inputs:)(&v31, a2, v25, v26, *(*(v27 + 8) + 8));
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (result)
  {
    v19 = result;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v36 = v47;
    v37 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v20 = *(result + 24);
    outlined init with copy of _ViewListCountInputs(&v36, &v42);
    v21 = v20(&v31, v17, v19);
LABEL_7:
    v28 = v21;
    v41[2] = v33;
    v41[3] = v34;
    v41[4] = v35;
    v41[0] = v31;
    v41[1] = v32;
    outlined destroy of _ViewListCountInputs(v41);
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v42 = v47;
    v43 = v48;
    outlined destroy of _ViewListCountInputs(&v42);
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t _ViewListCountInputs.isCurrentStyleableView<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *MEMORY[0x1E698D3F8];
  v7 = MEMORY[0x1E69E7CC0];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>(0, v9, v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 256;
  *(v12 + 88) = v8;

  v14 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA25StyleableViewContextInput33_AC59074524C298808AAD87A4737AEFFCLLV_Tt2g5(v13);
  if (v14)
  {
    v15 = v14 == a2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v18 = v4;
  v19 = v6;
  v20 = v12;
  v21 = v6;
  v22 = v6;
  v23 = -1;
  v24 = v5;
  v25 = MEMORY[0x1E69E7CD0];
  outlined destroy of _GraphInputs(&v18);
  return v16;
}

uint64_t static StaticIf<>._viewListCount(inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[1];
  v33 = *a1;
  v34 = v14;
  v15 = a1[3];
  v35 = a1[2];
  v36 = v15;
  v37 = a1[4];
  v16 = v33;
  v17 = v34;
  v18 = *MEMORY[0x1E698D3F8];
  v38 = 1;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>(0, v21, v22, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 256;
  *(v24 + 88) = v20;
  *&v30 = v16;
  DWORD2(v30) = v18;
  *&v31 = v24;
  DWORD2(v31) = v18;
  HIDWORD(v31) = v18;
  LODWORD(v32) = -1;
  DWORD1(v32) = v17;
  *(&v32 + 1) = MEMORY[0x1E69E7CD0];
  v25 = *(a7 + 8);
  outlined init with copy of _ViewListCountInputs(&v33, v29);
  LOBYTE(a4) = v25(&v30, a4, a7);
  v39[0] = v30;
  v39[1] = v31;
  v39[2] = v32;
  outlined destroy of _GraphInputs(v39);
  v29[2] = v35;
  v29[3] = v36;
  v29[4] = v37;
  v29[0] = v33;
  v29[1] = v34;
  if (a4)
  {
    return (*(a8 + 40))(v29, a2, a3, a5, a8);
  }

  else
  {
    return (*(a9 + 40))(v29, a2, a3, a6, a9);
  }
}

uint64_t static StyleModifierType.viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v8[4] = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

void lazy protocol witness table accessor for type AccessibilityTraits and conformance AccessibilityTraits()
{
  if (!lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTraits, &type metadata for AccessibilityTraits, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTraits, &type metadata for AccessibilityTraits, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTraits and conformance AccessibilityTraits);
  }
}

double closure #2 in GraphHost.init(data:)(unsigned int a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    GraphHost.graphInvalidation(from:)(a1);
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA028ExplicitPreferredColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(Swift::UInt *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028ExplicitPreferredColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(v4, v10);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *(v7 + 72);
  if (v3 == 2)
  {
    if (v8 == 2)
    {
      return;
    }

LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);

    return;
  }

  if (v8 == 2 || ((v8 ^ v3) & 1) != 0)
  {
    goto LABEL_7;
  }
}

void *Transaction.disablesAnimations.getter(void *a1)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(a1);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t *assignWithCopy for _VariadicView_Children(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2, a3);
  v5 = a2[5];
  v6 = a1[5];
  a1[5] = v5;
  v7 = v5;

  a1[6] = a2[6];

  a1[7] = a2[7];
  return a1;
}

void type metadata accessor for (PreferenceKey.Type, AGAttribute)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PreferenceKey.Type, AGAttribute))
  {
    type metadata accessor for CustomAttributeWriter.Type(255, &lazy cache variable for type metadata for PreferenceKey.Type, &lazy cache variable for type metadata for PreferenceKey, &protocol descriptor for PreferenceKey);
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PreferenceKey.Type, AGAttribute));
    }
  }
}

void type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v5[0] = &type metadata for _VariadicView_Children;
    v5[1] = MEMORY[0x1E69E69B8];
    v5[2] = &type metadata for _VariadicView_Children.Element;
    v5[3] = v2;
    v5[4] = MEMORY[0x1E69E69C0];
    v3 = type metadata accessor for ForEach(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
    }
  }
}

void _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, &v9);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>, type metadata accessor for ForEachState);
  swift_allocObject();
  v6 = specialized ForEachState.init(inputs:)(&v9);
  v9 = a1;
  v10 = v6;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info, type metadata accessor for ForEachState.Info);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init, type metadata accessor for ForEachState.Info.Init);
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init and conformance ForEachState<A, B, C>.Info.Init, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info.Init, type metadata accessor for ForEachState.Info.Init, protocol conformance descriptor for ForEachState<A, B, C>.Info.Init);

  v7 = Attribute.init<A>(body:value:flags:update:)();

  v6[40] = v7;
  *(v6 + 164) = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA20ForEachEvictionInputV_Tt2g5(*a2);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_5:
    specialized static GraphHost.currentHost.getter();
    swift_beginAccess();

    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor, type metadata accessor for ForEachState.Evictor);
    lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor and conformance ForEachState<A, B, C>.Evictor, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Evictor, type metadata accessor for ForEachState.Evictor, protocol conformance descriptor for ForEachState<A, B, C>.Evictor);

    Attribute.init<A>(body:value:flags:update:)();

    AGGraphSetFlags();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init, type metadata accessor for ForEachList.Init);
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(&lazy protocol witness table cache variable for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init, type metadata accessor for ForEachList.Init, protocol conformance descriptor for ForEachList<A, B, C>.Init);
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v6[42] = v8;
  *(v6 + 172) = 0;

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = a2[6];
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
}

double ViewGraph.preferenceBridge.setter(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (v5 != a1)
    {
LABEL_3:
      ViewGraph.removePreferenceOutlets(isInvalidating:)(0);
      swift_weakAssign();
      swift_beginAccess();
      if (*(v2 + 128) == 1)
      {
        GraphHost.uninstantiate(immediately:)(0);
      }

      swift_weakAssign();
      if (swift_weakLoadStrong())
      {
        PreferenceBridge.addChild(_:)(v2);
      }

      GraphHost.updateRemovedState()();

      return result;
    }
  }

  else if (a1)
  {
    goto LABEL_3;
  }

  return result;
}

void lazy protocol witness table accessor for type MergePreferenceKeys and conformance MergePreferenceKeys()
{
  if (!lazy protocol witness table cache variable for type MergePreferenceKeys and conformance MergePreferenceKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for MergePreferenceKeys, &unk_1F00BCFB8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type MergePreferenceKeys and conformance MergePreferenceKeys);
  }
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance EventBindingBridgeFactoryInput(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for EventBindingBridgeFactory.Type?);
}

double PreferenceBridge.addValue(_:for:)(unsigned int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v8 = *(v3 + 72);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 48;
      while (*(v10 - 16) != a2)
      {
        v10 += 24;
        if (!--v9)
        {
          goto LABEL_9;
        }
      }

      Attribute = AGWeakAttributeGetAttribute();
      if (Attribute != *MEMORY[0x1E698D3F8])
      {
        MEMORY[0x1EEE9AC00](Attribute);
        v13 = type metadata accessor for PreferenceCombiner(0, a2, a3, v12);
        MEMORY[0x1EEE9AC00](v13);
        AGGraphMutateAttribute();
        GraphHost.graphInvalidation(from:)(a1);
      }
    }

LABEL_9:
  }

  return result;
}

double PreferenceBridge.addChild(_:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 2);
  v6 = 32;
  for (i = v5; i; --i)
  {
    v8 = *&v4[v6];
    v6 += 8;
    if (v8 == a1)
    {
      return result;
    }
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 + 1, 1, v4);
    *(v1 + 32) = v4;
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  *&v4[8 * v11 + 32] = a1;
  *(v1 + 32) = v4;
  swift_endAccess();
  return result;
}

uint64_t PreferenceBridge.wrapInputs(_:)(uint64_t *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  *a1 = v3;
  swift_beginAccess();
  v4 = *(v1 + 40);
  v5 = *(v4 + 16);
  if (!v5)
  {

    goto LABEL_26;
  }

  for (i = 0; i != v5; ++i)
  {
    if (i >= *(v4 + 16))
    {
      goto LABEL_30;
    }

    v7 = *(v4 + 32 + 16 * i);
    v8 = a1[6];
    v9 = *(v8 + 2);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    v11 = v8 + 32;
    v12 = *(v8 + 2);
    do
    {
      v13 = v12 >> 1;
      v14 = v10 + (v12 >> 1);
      if (__OFADD__(v10, v12 >> 1))
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

      if (v14 >= v9)
      {
        goto LABEL_28;
      }

      if (*&v11[16 * v14] < v7)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_29;
        }

        v13 = v12 + ~v13;
      }

      v12 = v13;
    }

    while (v13 > 0);
    if (v10 == v9)
    {
      goto LABEL_16;
    }

    if (v10 >= v9)
    {
LABEL_32:
      __break(1u);
    }

    if (*&v11[16 * v10] != v7)
    {
LABEL_16:
      if (v9 < v10)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_19:
      v18 = *(v4 + 32 + 16 * i);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1[6] = v8;
      if (!isUniquelyReferenced_nonNull_native || v9 >= *(v8 + 3) >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v8);
        a1[6] = v8;
      }

      v16 = &v8[16 * v10];
      memmove(v16 + 48, v16 + 32, 16 * (*(v8 + 2) - v10));
      ++*(v8 + 2);
      *(v16 + 2) = v18;
      a1[6] = v8;
    }
  }

LABEL_26:

  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MergePreferenceKeys and conformance MergePreferenceKeys();
  result = Attribute.init<A>(body:value:flags:update:)();
  *(a1 + 14) = result;
  return result;
}

void type metadata accessor for EventBindingBridgeFactory.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EventBindingBridgeFactory.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for EventBindingBridgeFactory.Type, &lazy cache variable for type metadata for EventBindingBridgeFactory, &protocol descriptor for EventBindingBridgeFactory);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EventBindingBridgeFactory.Type?);
    }
  }
}

void type metadata accessor for GestureContainerFactory.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GestureContainerFactory.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for GestureContainerFactory.Type, &lazy cache variable for type metadata for GestureContainerFactory, &protocol descriptor for GestureContainerFactory);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GestureContainerFactory.Type?);
    }
  }
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance GestureContainerFactoryInput(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance _GraphInputs.ImageRepresentationKey(a1, a2, a3, a4, type metadata accessor for GestureContainerFactory.Type?);
}

void type metadata accessor for TextAlwaysOnProvider.Type?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TextAlwaysOnProvider.Type?)
  {
    type metadata accessor for ImageStyleProtocol.Type(255, &lazy cache variable for type metadata for TextAlwaysOnProvider.Type, &lazy cache variable for type metadata for TextAlwaysOnProvider, &protocol descriptor for TextAlwaysOnProvider);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TextAlwaysOnProvider.Type?);
    }
  }
}

uint64_t closure #1 in addValue #1 <A>(key:) in PreferenceBridge.addValue(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AGCreateWeakAttribute();
  swift_getAssociatedTypeWitness();
  type metadata accessor for WeakAttribute();
  type metadata accessor for Array();
  return Array.append(_:)();
}

void GraphHost.graphInvalidation(from:)(uint64_t a1)
{
  if ((a1 & 0x100000000) == 0)
  {
    v2 = AGGraphGetAttributeGraph();
    Context = AGGraphGetContext();
    if (!Context)
    {
      __break(1u);
      return;
    }

    v4 = Context;

    swift_beginAccess();
    v5 = *AGGraphGetValue();
    swift_beginAccess();
    v6 = 0;
    if (v1[168] == 1)
    {
      swift_beginAccess();
      v6 = *(v4 + 168);
    }

    v1[168] = v6;
    if (v5)
    {

      v7 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v5, v7, 1, 1);

      return;
    }
  }

  if ((*(*v1 + 192))(a1))
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(ObjectType, v9);
    swift_unknownObjectRelease();
  }
}

uint64_t HostPreferencesCombiner.addChild(keys:values:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = AGCreateWeakAttribute();
  v6 = *(v2 + 8);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_5:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 + 1, 1, v6);
      v6 = result;
    }

    v8 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v8 >= v11 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v8 + 1;
LABEL_13:
    v12 = v6 + 16 * v8;
    *(v12 + 32) = v5;
    *(v12 + 40) = a2;
    *(v2 + 8) = v6;
    return result;
  }

  v8 = 0;
  v9 = 32;
  while (*(v6 + v9) != v4)
  {
    ++v8;
    v9 += 16;
    if (v7 == v8)
    {
      goto LABEL_5;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  if (v8 < *(v6 + 16))
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t static EnvironmentKey._valuesEqual(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = a2;
  v11 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), &v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v6);
  return v12;
}

BOOL static TupleStyleContext.acceptsAny<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA012StyleContextD0V_Tt1g5(a3, v18);
  v7 = v18[0];
  v8 = (v18[0] + 48);
  v9 = -*(v18[0] + 16);
  v10 = -1;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(v7 + 16))
    {
      __break(1u);
    }

    v11 = v8 + 3;
    v13 = *(v8 - 1);
    v12 = *v8;
    v18[0] = a2;
    v18[1] = a3;
    v18[2] = a4;
    v18[3] = a5;
    Visitor = type metadata accessor for TupleStyleContext.QueryVisitor(0, v18);
    TupleStyleContext.QueryVisitor.visit<A>(_:)(v13, Visitor, v13, v12);
    v8 = v11;
  }

  return v9 + v10 != -1;
}

uint64_t TupleStyleContext.QueryVisitor.visit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v8 = *(a2 + 16);
  v9 = 8 * v8;
  if (v8 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v26[1] = a3;
    MEMORY[0x1EEE9AC00](a1);
    if (v8)
    {
      v12 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
      v13 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v8;
      do
      {
        v12 += 8;
        *v13++ = swift_getMetatypeMetadata();
        --v14;
      }

      while (v14);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    v6 = a4;
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  if (*v5)
  {
    result = 1;
  }

  else
  {
    v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
    if (v8)
    {
      v20 = (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL);
      v21 = (v17 + 32);
      v22 = (v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = v8;
      do
      {
        if (v8 == 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = *v21;
        }

        v25 = *v20++;
        *(v18 + v24) = v25;
        *v22++ = v18 + v24;
        v21 += 4;
        --v23;
      }

      while (v23);
    }

    result = (*(v6 + 16))(v19);
  }

  *v5 = result & 1;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>, &type metadata for ExplicitPreferredColorSchemeKey, &protocol witness table for ExplicitPreferredColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ExplicitPreferredColorSchemeKey>>);
    }
  }
}

void lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge()
{
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge, &type metadata for VerticalEdge, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }
}

{
  if (!lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge)
  {
    swift_getWitnessTable(protocol conformance descriptor for VerticalEdge, &type metadata for VerticalEdge, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type VerticalEdge and conformance VerticalEdge);
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016PreferenceBridgeI033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v16);
    outlined init with take of AnyTrackedValue(v16, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (v13[1])(&type metadata for EnvironmentValues.PreferenceBridgeKey.Value, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016PreferenceBridgeF033_76C8A4B3FC8EE0F99045B3425CD62255LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>(0);
    v18 = v14;
    v19 = &protocol witness table for TrackedValue<A>;
    v17[0] = swift_allocObject();
    outlined init with copy of EnvironmentValues.PreferenceBridgeKey.Value(a2, v17[0] + 16);
    specialized Dictionary.subscript.setter(v17, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t sub_18D1B2DC4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>, &type metadata for EnvironmentValues.PreferenceBridgeKey, &protocol witness table for EnvironmentValues.PreferenceBridgeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PreferenceBridgeKey>>);
    }
  }
}

void *closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = a1[3];
  v48 = a1[2];
  v49 = v12;
  v50 = a1[4];
  v51 = *(a1 + 20);
  v13 = a1[1];
  v46 = *a1;
  v47 = v13;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a9;
  v25[1] = a2;
  v14 = type metadata accessor for ModifiedContent(255, a5, a6, a3);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeView(modifier:inputs:body:), a5, v25);
  v17 = v25[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v36 = v46;
  v37 = v47;
  v19 = v48;
  LODWORD(v38) = 0;
  v24 = v17;
  v42[0] = v46;
  v42[1] = v47;
  v43 = v51;
  v42[3] = v49;
  v42[4] = v50;
  v42[2] = v38;
  v32 = v38;
  v33 = v49;
  v34 = v50;
  v35 = v51;
  v30 = v46;
  v31 = v47;
  v20 = *(a7 + 24);
  outlined init with copy of _ViewInputs(&v46, v44);
  outlined init with copy of _ViewInputs(v42, v44);
  v20(&v24, &v30, a3, a4, a5, a7);
  v44[2] = v32;
  v44[3] = v33;
  v44[4] = v34;
  v45 = v35;
  v44[0] = v30;
  v44[1] = v31;
  outlined destroy of _ViewInputs(v44);
  LODWORD(v38) = v19;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a8, &v36);
    AGSubgraphEndTreeElement();
  }

  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  return outlined destroy of _ViewInputs(&v30);
}

void lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child()
{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children.Child, &type metadata for _VariadicView_Children.Child, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child);
  }
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v9[0] = &type metadata for _VariadicView_Children;
    v9[1] = MEMORY[0x1E69E69B8];
    v9[2] = &type metadata for _VariadicView_Children.Element;
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E69C0];
    v9[5] = &protocol witness table for _VariadicView_Children.Element;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id specialized ForEachState.init(inputs:)(uint64_t a1)
{
  *(v1 + 160) = 0;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 281) = 0u;
  *(v1 + 297) = 1;
  *(v1 + 304) = MEMORY[0x1E69E7CC0];
  *(v1 + 312) = 2;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 320) = MEMORY[0x1E69E7CC8];
  v4 = (v1 + *(*v1 + 208));
  v5 = MEMORY[0x1E69E7CD0];
  *v4 = MEMORY[0x1E69E7CD0];
  v4[1] = v5;
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 216)) = 0;
  *(v1 + *(*v1 + 224)) = -1;
  *(v1 + *(*v1 + 232)) = 0;
  *(v1 + *(*v1 + 240)) = 0;
  *(v1 + *(*v1 + 248)) = 0;
  *(v1 + *(*v1 + 256)) = 0;
  *(v1 + *(*v1 + 264)) = 0;
  *(v1 + *(*v1 + 272)) = v5;
  *(v1 + *(*v1 + 280)) = v3;
  outlined init with copy of _ViewListInputs(a1, v1 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v7 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v1 + 152) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  *(v1 + 160) = 0;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 297) = 0u;
  *(v1 + 313) = 1;
  *(v1 + 320) = MEMORY[0x1E69E7CC0];
  *(v1 + 328) = 2;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 336) = MEMORY[0x1E69E7CC8];
  v4 = (v1 + *(*v1 + 208));
  v5 = MEMORY[0x1E69E7CD0];
  *v4 = MEMORY[0x1E69E7CD0];
  v4[1] = v5;
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 216)) = 0;
  *(v1 + *(*v1 + 224)) = -1;
  *(v1 + *(*v1 + 232)) = 0;
  *(v1 + *(*v1 + 240)) = 0;
  *(v1 + *(*v1 + 248)) = 0;
  *(v1 + *(*v1 + 256)) = 0;
  *(v1 + *(*v1 + 264)) = 0;
  *(v1 + *(*v1 + 272)) = v5;
  *(v1 + *(*v1 + 280)) = v3;
  outlined init with copy of _ViewListInputs(a1, v1 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v7 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v1 + 152) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  *(v1 + 160) = 0;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 233) = 0u;
  *(v1 + 249) = 1;
  *(v1 + 256) = MEMORY[0x1E69E7CC0];
  *(v1 + 264) = 2;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 272) = MEMORY[0x1E69E7CC8];
  v4 = (v1 + *(*v1 + 208));
  v5 = MEMORY[0x1E69E7CD0];
  *v4 = MEMORY[0x1E69E7CD0];
  v4[1] = v5;
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(*v1 + 216)) = 0;
  *(v1 + *(*v1 + 224)) = -1;
  *(v1 + *(*v1 + 232)) = 0;
  *(v1 + *(*v1 + 240)) = 0;
  *(v1 + *(*v1 + 248)) = 0;
  *(v1 + *(*v1 + 256)) = 0;
  *(v1 + *(*v1 + 264)) = 0;
  *(v1 + *(*v1 + 272)) = v5;
  *(v1 + *(*v1 + 280)) = v3;
  outlined init with copy of _ViewListInputs(a1, v1 + 16);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v7 = result;
    outlined destroy of _ViewListInputs(a1);
    *(v1 + 152) = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Init and conformance ForEachList<A, B, C>.Init(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t specialized ForEachList.Init.updateValue()()
{
  v1 = v0;
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info, type metadata accessor for ForEachState.Info);
  v2 = *AGGraphGetValue();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 304);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v2 + 304) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v4 + 24) >> 1);
  }

  *(v2 + 312) = 2;

  v5 = *(v1 + 4) + 1;
  *(v1 + 4) = v5;
  v6 = *AGGraphGetValue();
  type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info(0, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>, type metadata accessor for ForEachList);
  v12 = v7;
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element> and conformance ForEachList<A, B, C>(&lazy protocol witness table cache variable for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element> and conformance ForEachList<A, B, C>, &lazy cache variable for type metadata for ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>, type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info);
  v13 = v8;
  v10 = v6;
  v11 = v5;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

{
  v1 = v0;
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info(0, &lazy cache variable for type metadata for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info, type metadata accessor for ForEachState.Info);
  v2 = *AGGraphGetValue();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 320);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v2 + 320) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v4 + 24) >> 1);
  }

  *(v2 + 328) = 2;

  v5 = *(v1 + 4) + 1;
  *(v1 + 4) = v5;
  v6 = *AGGraphGetValue();
  type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info(0, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>, type metadata accessor for ForEachList);
  v12 = v7;
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element> and conformance ForEachList<A, B, C>(&lazy protocol witness table cache variable for type ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview> and conformance ForEachList<A, B, C>, &lazy cache variable for type metadata for ForEachList<Slice<SubviewsCollection>, Subview.ID, Subview>, type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Info);
  v13 = v8;
  v10 = v6;
  v11 = v5;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

{
  v1 = v0;
  v14 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Info, type metadata accessor for ForEachState.Info);
  v2 = *AGGraphGetValue();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 248);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v4 + 16));
  }

  else
  {
    *(v2 + 248) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v4 + 24) >> 1);
  }

  *(v2 + 256) = 2;

  v5 = *(v0 + 4) + 1;
  *(v1 + 4) = v5;
  v6 = *AGGraphGetValue();
  type metadata accessor for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>(0);
  v12 = v7;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>> and conformance ForEachList<A, B, C>, type metadata accessor for ForEachList<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>, protocol conformance descriptor for ForEachList<A, B, C>);
  v13 = v8;
  v10 = v6;
  v11 = v5;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v10);
}

{
  v13 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info(0, &lazy cache variable for type metadata for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info, type metadata accessor for ForEachState.Info);
  v1 = *AGGraphGetValue();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v1 + 248);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v3 + 16));
  }

  else
  {
    *(v1 + 248) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v3 + 24) >> 1);
  }

  *(v1 + 256) = 2;

  v4 = *(v0 + 4) + 1;
  *(v0 + 4) = v4;
  v5 = *AGGraphGetValue();
  type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info(0, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, type metadata accessor for ForEachList);
  v11 = v6;
  lazy protocol witness table accessor for type ForEachList<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element> and conformance ForEachList<A, B, C>(&lazy protocol witness table cache variable for type ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView> and conformance ForEachList<A, B, C>, &lazy cache variable for type metadata for ForEachList<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>, type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Info);
  v12 = v7;
  v9 = v5;
  v10 = v4;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 4);
  type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info(0, &lazy cache variable for type metadata for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Info, type metadata accessor for ForEachState.Info);
  AGGraphGetValue();

  specialized ForEachState.invalidateViewCounts()();

  *(v0 + 4) = v1 + 1;
  v2 = *AGGraphGetValue();
  type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>(0);
  v8 = v3;
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>> and conformance ForEachList<A, B, C>, type metadata accessor for ForEachList<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>, protocol conformance descriptor for ForEachList<A, B, C>);
  v9 = v4;
  v6 = v2;
  v7 = v1 + 1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);

  AGGraphSetOutputValue();
  return __swift_destroy_boxed_opaque_existential_1(&v6);
}

void type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Info(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v9[0] = &type metadata for _VariadicView_Children;
    v9[1] = MEMORY[0x1E69E69B8];
    v9[2] = &type metadata for _VariadicView_Children.Element;
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E69C0];
    v9[5] = &protocol witness table for _VariadicView_Children.Element;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v9[0] = &type metadata for _VariadicView_Children;
    v9[1] = MEMORY[0x1E69E69B8];
    v9[2] = &type metadata for _VariadicView_Children.Element;
    v9[3] = v6;
    v9[4] = MEMORY[0x1E69E69C0];
    v9[5] = &protocol witness table for _VariadicView_Children.Element;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element()
{
  if (!lazy protocol witness table cache variable for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element)
  {
    swift_getWitnessTable(protocol conformance descriptor for _VariadicView_Children.Element, &type metadata for _VariadicView_Children.Element, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element);
  }
}

void specialized ForEachState.update(view:)(void *a1)
{
  v2 = v1;
  v224 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder);
  v190 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v191 = v172 - v5;
  _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0(0, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits, type metadata accessor for ForEachState.LazyEdits);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v172 - v8);
  v188 = v1[19];
  if (!AGSubgraphIsValid())
  {
    return;
  }

  v10 = AGMakeUniqueID();
  v194 = *(*v1 + 232);
  *(v194 + v1) = v10;
  v11 = *(*v1 + 240);
  LODWORD(v12) = *(v1 + v11);
  v193 = v11;
  *(v1 + v11) = v12 + 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v1[38];
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
  }

  else
  {
    v2[38] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v14 + 24) >> 1);
  }

  v2[39] = 2;
  swift_beginAccess();
  _s2os6LoggerVSgWOcTm_0((v2 + 22), &v217, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  v15 = *(&v218 + 1);
  _s2os6LoggerVSgWOhTm_0(&v217, &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  v189 = v2;
  if (v15)
  {
    if (!v2[25])
    {
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if (!v2[32])
    {
      outlined init with copy of _VariadicView_Children((v2 + 22), &v217);
      if (one-time initialization token for _lock != -1)
      {
        goto LABEL_173;
      }

      goto LABEL_19;
    }
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, &v217, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  swift_beginAccess();
  outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(&v217, (v2 + 22), &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
  swift_endAccess();
  v16 = MEMORY[0x1E69E7CD0];
  *v9 = MEMORY[0x1E69E7CD0];
  v9[1] = v16;
  v177 = v7;
  swift_storeEnumTagMultiPayload();
  v17 = *(*v2 + 208);
  swift_beginAccess();
  v176 = v17;
  outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v9, v2 + v17, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0);
  swift_endAccess();
  v18 = v191;
  outlined init with copy of _VariadicView_Children(a1, v191);
  v19 = a1[10];
  v20 = v190;
  v21 = v18 + *(v190 + 72);

  IndexSet.init()();
  v179 = type metadata accessor for IndexSetBuilder(0);
  v22 = v21 + *(v179 + 20);
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v23 = (v18 + *(v20 + 76));
  *v23 = v16;
  v23[1] = v16;
  *(v18 + 64) = v19;
  if (*(v2 + 172))
  {
    __break(1u);
    goto LABEL_184;
  }

  v24 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *(v2 + *(*v2 + 216)) = Counter;
  outlined init with copy of _VariadicView_Children(a1, v214);
  v26 = *v2;
  v27 = *(*v2 + 224);
  if ((*(v2 + v27) & 0x8000000000000000) != 0)
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_167;
  }

  v174 = *(*v2 + 224);
  v175 = v9;
  swift_beginAccess();
  v28 = v2[40];
  *&v196 = *(v28 + 16);
  v29 = *(*v2 + 272);
  swift_beginAccess();
  v173 = v29;
  v30 = *(v2 + v29);
  v184 = *(v30 + 16);
  v197 = v16;
  v31 = one-time initialization token for _lock;
  v192 = v28;

  if (v31 != -1)
  {
    goto LABEL_160;
  }

  while (1)
  {
    v32 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    v33 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v33);
    *&v217 = 2;
    v35 = (*(v34 + 16))(&v217, v33, v34);
    static Update.end()();
    _MovableLockUnlock(v32);
    if (!v35 || (_MovableLockLock(v32), specialized static Update.begin()(), v36 = a1[3], v37 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v36), *&v198 = 2, v38 = (*(v37 + 16))(&v198, v36, v37), static Update.end()(), _MovableLockUnlock(v32), !v38))
    {

      v178 = 0;
      v181 = 0;
      v182 = 0;
      v45 = 0;
      v46 = 1;
      v2 = v189;
      v9 = v175;
      v47 = v192;
LABEL_97:
      v134 = *(*v2 + 248);
      if ((*(v2 + v134) & 1) == 0)
      {
        v135 = v191;
        swift_beginAccess();
        v136 = v135 + *(v190 + 72);
        if ((v46 & 1) == 0)
        {
          v137 = v136 + *(v179 + 20);
          if (v182 >= v45)
          {
            *v137 = 0;
            *(v137 + 8) = 0;
            *(v137 + 16) = 1;
          }

          else if (v181 >= v45)
          {
            *v137 = v182;
            *(v137 + 8) = v45;
            *(v137 + 16) = 0;
          }
        }

        IndexSet.remove(integersIn:)();
        swift_endAccess();
      }

      if (v196)
      {
        v185 = v134;
        v187 = MEMORY[0x1E69E7CC0];
        v205[0] = MEMORY[0x1E69E7CC0];
        *&v195 = v47 + 64;
        v138 = _HashTable.startBucket.getter();
        v194 = (1 << *(v47 + 32));
        v139 = *(v47 + 36);
        v186 = v47 + 72;
        v30 = v139;
        v140 = v139;
        while (1)
        {
          if (v140 != v139)
          {
            goto LABEL_151;
          }

          if (v138 == v194)
          {
            break;
          }

          if (v138 < 0)
          {
            goto LABEL_152;
          }

          a1 = (1 << *(v47 + 32));
          if (v138 >= a1)
          {
            goto LABEL_152;
          }

          v141 = v138 >> 6;
          if ((*(v195 + 8 * (v138 >> 6)) & (1 << v138)) == 0)
          {
            goto LABEL_153;
          }

          v142 = *(*(v47 + 56) + 8 * v138);
          if (*(v142 + 166))
          {
          }

          else
          {
            v143 = *(v142 + 160);
            v144 = *(v189 + v193);

            if (v143 == v144)
            {
              v47 = v192;
            }

            else
            {

              MEMORY[0x193ABF170](v145);
              if (*((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v187 = v205[0];
              *&v196 = v196 - 1;
              swift_beginAccess();
              outlined init with copy of AnyHashable(v142 + 32, &v207);
              specialized Set._Variant.insert(_:)(&v217, &v207);
              outlined destroy of AnyHashable(&v217);
              swift_endAccess();
              v47 = v192;
              a1 = (1 << *(v192 + 32));
            }
          }

          if (v138 >= a1)
          {
            goto LABEL_154;
          }

          v146 = *(v195 + 8 * v141);
          if ((v146 & (1 << v138)) == 0)
          {
            goto LABEL_155;
          }

          if (v139 != *(v47 + 36))
          {
            goto LABEL_156;
          }

          v147 = v146 & (-2 << (v138 & 0x3F));
          if (v147)
          {

            a1 = (__clz(__rbit64(v147)) | v138 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v148 = v141 << 6;
            v149 = v141 + 1;
            v150 = (v186 + 8 * v141);
            while (v149 < (a1 + 63) >> 6)
            {
              v152 = *v150++;
              v151 = v152;
              v148 += 64;
              ++v149;
              if (v152)
              {
                outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v138, v30, 0);

                a1 = (__clz(__rbit64(v151)) + v148);
                goto LABEL_107;
              }
            }

            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v138, v30, 0);
          }

LABEL_107:
          v30 = *(v47 + 36);
          v140 = *(v47 + 36);
          v138 = a1;
          if (!v196)
          {
            goto LABEL_131;
          }
        }

        a1 = v194;
LABEL_131:

        v153 = v187;
        if (v187 >> 62)
        {
          v154 = __CocoaSet.count.getter();
          if (v154)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v154 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v154)
          {
LABEL_133:
            if (v154 < 1)
            {
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
            }

            v155 = 0;
            *&v195 = 0;
            v156 = v153 & 0xC000000000000001;
            *&v196 = v154;
            while (1)
            {
              if (v156)
              {
                v157 = MEMORY[0x193AC03C0](v155, v153);
              }

              else
              {
                v157 = *(v153 + 8 * v155 + 32);
              }

              AGSubgraphApply();
              AGSubgraphRemoveChild();
              *(v157 + 165) = 256;
              v158 = *(v157 + 24) - 1;
              *(v157 + 24) = v158;
              if (!v158)
              {
                break;
              }

LABEL_136:
              ++v155;

              if (v154 == v155)
              {
                goto LABEL_162;
              }
            }

            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v160 = Strong;
              swift_beginAccess();
              v161 = *(v160 + 320);
              if (*(v161 + 16))
              {

                v162 = specialized __RawDictionaryStorage.find<A>(_:)(v157 + 32);
                if (v163)
                {
                  v164 = v162;
                  v165 = *(v161 + 36);

                  swift_beginAccess();
                  specialized Dictionary._Variant.remove(at:)(&v217, v164, v165);
                  swift_endAccess();

                  outlined destroy of AnyHashable(&v217);
                  goto LABEL_147;
                }
              }

              v167 = v195;
              v168 = specialized _NativeDictionary.filter(_:)(v166, v157, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
              *&v195 = v167;

              *(v160 + 320) = v168;
            }

LABEL_147:
            IsValid = AGSubgraphIsValid();
            v153 = v187;
            if (IsValid)
            {
              AGSubgraphRef.willInvalidate(isInserted:)(1);
              AGSubgraphInvalidate();
            }

            v154 = v196;
            goto LABEL_136;
          }
        }

LABEL_162:

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(a1, v30, 0);
        v2 = v189;
        v9 = v175;
        v134 = v185;
      }

      else
      {
      }

      if (*(v2 + v134))
      {
        v48 = v178;
      }

      else
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      swift_beginAccess();
      *(v2 + v173) = v197;

      v26 = *v2;
      v27 = v174;
LABEL_167:
      *(v2 + *(v26 + 248)) = 0;
      *(v2 + v27) = v48;
      outlined destroy of _VariadicView_Children(v214);
      v170 = v191;
      swift_beginAccess();
      outlined init with copy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v170, v9, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0);
      outlined destroy of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder(v170, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.EditsBuilder, type metadata accessor for ForEachState.EditsBuilder, _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0);
      swift_storeEnumTagMultiPayload();
      v171 = v176;
      swift_beginAccess();
      outlined assign with take of ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits(v9, v2 + v171, &lazy cache variable for type metadata for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.LazyEdits, type metadata accessor for ForEachState.LazyEdits, _s7SwiftUI12ForEachStateC4InfoVyAA22_VariadicView_ChildrenVs11AnyHashableVAG7ElementV_GMaTm_0);
      swift_endAccess();
      return;
    }

    v12 = &v207;
    _VariadicView_Children.subscript.getter(0, &v207);
    v221 = v211;
    v222 = v212;
    v223 = v213;
    v217 = v207;
    v218 = v208;
    v219 = v209;
    v220 = v210;
    v39 = a1[10];
    v40 = v192;
    if (!v39)
    {
      goto LABEL_188;
    }

    v41 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if (v42)
    {

      v43 = partial apply for specialized closure #2 in KeyPath.makeGetFunction();
      v44 = v39;
      (partial apply for specialized closure #2 in KeyPath.makeGetFunction())(v206, &v217);
    }

    else
    {
      v102 = v41;
      v44 = swift_allocObject();
      *(v44 + 16) = v102;
      v43 = partial apply for specialized closure #1 in KeyPath.makeGetFunction();
      (partial apply for specialized closure #1 in KeyPath.makeGetFunction())(v206, &v217);
    }

    if (*(v40 + 16) && (v103 = specialized __RawDictionaryStorage.find<A>(_:)(v206), (v104 & 1) != 0))
    {
      v105 = *(*(v40 + 56) + 8 * v103);
    }

    else
    {
      v105 = 0;
    }

    v172[1] = v39;
    *&v207 = v105;
    type metadata accessor for ForEachState<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>.Item?(0);
    _ViewInputs.base.modify();

    LOBYTE(v207) = specialized Set.contains(_:)(v206, v30) & 1;
    _ViewInputs.base.modify();
    _MovableLockLock(v32);
    specialized static Update.begin()();
    v106 = v215;
    v107 = v216;
    __swift_project_boxed_opaque_existential_1(v214, v215);
    *&v207 = 2;
    v108 = (*(v107 + 16))(&v207, v106, v107);
    static Update.end()();
    _MovableLockUnlock(v32);
    *&v195 = v108;
    if (!v108)
    {
      v181 = 0;
      v182 = 0;
      v178 = 0;
      v180 = 0;
      v183 = 1;
LABEL_95:

      outlined destroy of AnyHashable(v206);
      outlined destroy of _VariadicView_Children.Element(&v217);

      goto LABEL_96;
    }

    v186 = v32;
    v187 = v43;
    v180 = 0;
    v181 = 0;
    v178 = 0;
    a1 = 0;
    v109 = v30 + 56;
    v182 = 0;
    v183 = 1;
    v185 = v44;
    while (1)
    {
      _VariadicView_Children.subscript.getter(a1, &v207);
      v202 = v211;
      v203 = v212;
      v204 = v213;
      v198 = v207;
      v199 = v208;
      v200 = v209;
      v201 = v210;
      (v187)(v205, &v198);
      outlined destroy of _VariadicView_Children.Element(&v198);
      if (!v196 && !v184)
      {

        outlined destroy of AnyHashable(v205);
        outlined destroy of AnyHashable(v206);
        outlined destroy of _VariadicView_Children.Element(&v217);

        *&v196 = 0;
LABEL_96:
        v2 = v189;
        v9 = v175;
        v47 = v192;
        v45 = v180;
        v46 = v183;
        goto LABEL_97;
      }

      v110 = v192;
      if (*(v192 + 16) && (v111 = specialized __RawDictionaryStorage.find<A>(_:)(v205), (v112 & 1) != 0))
      {
        v113 = *(*(v110 + 56) + 8 * v111);
        swift_beginAccess();
        *(v113 + 136) = a1;
        v114 = v189;
        v115 = *(v194 + v189);
        *(v113 + 144) = a1;
        *(v113 + 152) = v115;
        *(v113 + 160) = *(v114 + v193);
        *&v196 = v196 - 1;
        LODWORD(v115) = *(v113 + 166);
        v116 = v115 ^ 1;
        v117 = v115 == 0;
        v118 = v180;
        if (v117)
        {
          v118 = a1;
        }

        v180 = v118;
        v178 = a1;
        if (!*(v30 + 16))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v116 = 0;
        if (!*(v30 + 16))
        {
          goto LABEL_77;
        }
      }

      v119 = AnyHashable._rawHashValue(seed:)(*(v30 + 40));
      v120 = -1 << *(v30 + 32);
      v121 = v119 & ~v120;
      if ((*(v109 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121))
      {
        v122 = ~v120;
        while (1)
        {
          outlined init with copy of AnyHashable(*(v30 + 48) + 40 * v121, &v207);
          v123 = MEMORY[0x193AC01F0](&v207, v205);
          outlined destroy of AnyHashable(&v207);
          if (v123)
          {
            break;
          }

          v121 = (v121 + 1) & v122;
          if (((*(v109 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        outlined init with copy of AnyHashable(v205, &v198);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v207, &v198);
        swift_endAccess();
        outlined destroy of AnyHashable(&v207);
        --v184;
        v124 = v186;
        goto LABEL_91;
      }

LABEL_77:
      v124 = v186;
      if (!v116)
      {
        break;
      }

LABEL_91:
      _MovableLockLock(v124);
      specialized static Update.begin()();
      v131 = v215;
      v132 = v216;
      __swift_project_boxed_opaque_existential_1(v214, v215);
      *&v207 = 2;
      v133 = (*(v132 + 16))(&v207, v131, v132);
      static Update.end()();
      _MovableLockUnlock(v124);
      outlined destroy of AnyHashable(v205);
      if (a1 >= v133)
      {
        goto LABEL_157;
      }

      a1 = (a1 + 1);
      if (a1 == v195)
      {
        goto LABEL_95;
      }
    }

    v125 = v191;
    swift_beginAccess();
    v126 = v125 + *(v190 + 72);
    v127 = *(v179 + 20);
    if (v183)
    {
      v128 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_158;
      }

      if (v128 < a1)
      {
        goto LABEL_159;
      }

      goto LABEL_89;
    }

    if (v181 != a1)
    {
      IndexSet.insert(integersIn:)();
      v128 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_170;
      }

      if (v128 < a1)
      {
        goto LABEL_171;
      }

LABEL_89:
      v129 = a1;
LABEL_90:
      v130 = v126 + v127;
      v181 = v128;
      v182 = v129;
      *v130 = v129;
      *(v130 + 8) = v128;
      *(v130 + 16) = 0;
      swift_endAccess();
      v183 = 0;
      goto LABEL_91;
    }

    v128 = v181 + 1;
    v129 = v182;
    if (!__OFADD__(v181, 1))
    {
      if (v128 < v182)
      {
        goto LABEL_172;
      }

      goto LABEL_90;
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    swift_once();
LABEL_19:
    v49 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    v50 = *(&v218 + 1);
    v51 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v207 = 2;
    v52 = (*(v51 + 16))(&v207, v50, v51);
    static Update.end()();
    _MovableLockUnlock(v49);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v53 = *(&v218 + 1);
    v54 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v207 = 2;
    v55 = (*(v54 + 16))(&v207, v53, v54);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v55 < 0)
    {
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    _MovableLockLock(v49);
    specialized static Update.begin()();
    v56 = *(&v218 + 1);
    v57 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v207 = 2;
    v58 = (*(v57 + 16))(&v207, v56, v57);
    static Update.end()();
    _MovableLockUnlock(v49);
    outlined destroy of _VariadicView_Children(&v217);
    if (v52 < 0 || v58 < v52)
    {
      goto LABEL_175;
    }

    _MovableLockLock(v49);
    specialized static Update.begin()();
    v59 = a1[3];
    v60 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v59);
    *&v207 = 2;
    v61 = (*(v60 + 16))(&v207, v59, v60);
    static Update.end()();
    _MovableLockUnlock(v49);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v62 = a1[3];
    v63 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v62);
    *&v207 = 2;
    v64 = (*(v63 + 16))(&v207, v62, v63);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v64 < 0)
    {
      goto LABEL_176;
    }

    _MovableLockLock(v49);
    specialized static Update.begin()();
    v65 = a1[3];
    v66 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v65);
    *&v207 = 2;
    v67 = (*(v66 + 16))(&v207, v65, v66);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v61 < 0 || v67 < v61)
    {
      goto LABEL_177;
    }

    if (v52 == v61)
    {
      goto LABEL_34;
    }

    *&v217 = 0;
    *(&v217 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(204);
    v207 = v217;
    MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD7D0A0);
    MEMORY[0x193ABEDD0](0x2820746E756F6320, 0xE800000000000000);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v68 = a1[3];
    v69 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v68);
    *&v217 = 2;
    v70 = (*(v69 + 16))(&v217, v68, v69);
    static Update.end()();
    _MovableLockUnlock(v49);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v71 = a1[3];
    v72 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v71);
    *&v217 = 2;
    v73 = (*(v72 + 16))(&v217, v71, v72);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v73 < 0)
    {
      goto LABEL_179;
    }

    _MovableLockLock(v49);
    specialized static Update.begin()();
    v74 = a1[3];
    v75 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v74);
    *&v217 = 2;
    v76 = (*(v75 + 16))(&v217, v74, v75);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v70 < 0 || v76 < v70)
    {
      goto LABEL_180;
    }

    *&v217 = v70;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v77);

    MEMORY[0x193ABEDD0](0xD000000000000018, 0x800000018DD7CF60);
    if (!v189[25])
    {
      goto LABEL_187;
    }

    outlined init with copy of _VariadicView_Children((v189 + 22), &v217);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v78 = *(&v218 + 1);
    v79 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v198 = 2;
    v80 = (*(v79 + 16))(&v198, v78, v79);
    static Update.end()();
    _MovableLockUnlock(v49);
    _MovableLockLock(v49);
    specialized static Update.begin()();
    v81 = *(&v218 + 1);
    v82 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v198 = 2;
    v83 = (*(v82 + 16))(&v198, v81, v82);
    static Update.end()();
    _MovableLockUnlock(v49);
    if (v83 < 0)
    {
      goto LABEL_181;
    }

    _MovableLockLock(v49);
    specialized static Update.begin()();
    v84 = *(&v218 + 1);
    v85 = v219;
    __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
    *&v198 = 2;
    v86 = (*(v85 + 16))(&v198, v84, v85);
    static Update.end()();
    _MovableLockUnlock(v49);
    outlined destroy of _VariadicView_Children(&v217);
    if (v80 < 0 || v86 < v80)
    {
      goto LABEL_182;
    }

    *&v198 = v80;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v87);

    MEMORY[0x193ABEDD0](0xD0000000000000A6, 0x800000018DD7CF80);
    specialized static Log.externalWarning(_:)(v207, *(&v207 + 1));

LABEL_34:
    v88 = v189;
    if (!v189[25])
    {
      goto LABEL_185;
    }

    outlined init with copy of _VariadicView_Children((v189 + 22), &v207);
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(a1, &v217, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
    swift_beginAccess();
    outlined assign with take of ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?(&v217, (v88 + 22), &lazy cache variable for type metadata for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>?, type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>);
    outlined init with copy of _VariadicView_Children(&v207, &v217);
    if (!v88[25])
    {
      goto LABEL_186;
    }

    a1 = v88;
    outlined assign with take of _VariadicView_Children(&v217, (v88 + 22));
    swift_endAccess();
    swift_beginAccess();
    v89 = v88[40];
    v90 = 1 << *(v89 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & *(v89 + 64);
    v93 = (v90 + 63) >> 6;

    v30 = 0;
LABEL_40:
    if (v92)
    {
      v94 = v30;
      goto LABEL_50;
    }

    v95 = v93 <= v30 + 1 ? v30 + 1 : v93;
    v96 = v95 - 1;
LABEL_46:
    v94 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
      break;
    }

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
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_once();
  }

  if (v94 >= v93)
  {
    v99 = 0;
    v98 = 0;
    v92 = 0;
    v100 = 0uLL;
    v30 = v96;
    v101 = 0uLL;
    goto LABEL_51;
  }

  v92 = *(v89 + 64 + 8 * v94);
  ++v30;
  if (!v92)
  {
    goto LABEL_46;
  }

  v30 = v94;
LABEL_50:
  v97 = __clz(__rbit64(v92));
  v92 &= v92 - 1;
  outlined init with copy of AnyHashable(*(v89 + 48) + 40 * (v97 | (v94 << 6)), &v198);
  v195 = v198;
  v196 = v199;
  v98 = v200;

  v100 = v195;
  v101 = v196;
LABEL_51:
  v217 = v100;
  v218 = v101;
  *&v219 = v98;
  *(&v219 + 1) = v99;
  if (*(&v101 + 1))
  {
    *(v99 + 152) = *(v194 + a1);
    if (*(v99 + 160) == v12)
    {
      *(v99 + 160) = *(a1 + v193);
    }

    outlined destroy of AnyHashable(&v217);
    goto LABEL_40;
  }

  outlined destroy of _VariadicView_Children(&v207);
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _VariadicView_Children@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  *a1 = v6;
  return result;
}