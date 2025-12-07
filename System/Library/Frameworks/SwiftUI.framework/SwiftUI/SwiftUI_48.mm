Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityLargeContentViewBehavior()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityLargeContentViewBehavior(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unsigned __int8 *protocol witness for RawRepresentable.init(rawValue:) in conformance AccessibilityLargeContentViewBehavior@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

double closure #1 in AccessibilityLargeContentViewHitTestingTransform.value.getter(uint64_t a1, uint64_t a2)
{
  if ((*AGGraphGetValue() & 1) == 0)
  {
    v4 = *(a1 + 208);
    v18[12] = *(a1 + 192);
    v18[13] = v4;
    v18[14] = *(a1 + 224);
    v19 = *(a1 + 240);
    v5 = *(a1 + 144);
    v18[8] = *(a1 + 128);
    v18[9] = v5;
    v6 = *(a1 + 176);
    v18[10] = *(a1 + 160);
    v18[11] = v6;
    v7 = *(a1 + 80);
    v18[4] = *(a1 + 64);
    v18[5] = v7;
    v8 = *(a1 + 112);
    v18[6] = *(a1 + 96);
    v18[7] = v8;
    v9 = *(a1 + 16);
    v18[0] = *a1;
    v18[1] = v9;
    v10 = *(a1 + 48);
    v18[2] = *(a1 + 32);
    v18[3] = v10;
    outlined destroy of AccessibilityLargeContentViewTree(v18);
    _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v20);
    v11 = v32;
    *(a1 + 192) = v31;
    *(a1 + 208) = v11;
    *(a1 + 224) = v33;
    *(a1 + 240) = v34;
    v12 = v28;
    *(a1 + 128) = v27;
    *(a1 + 144) = v12;
    v13 = v30;
    *(a1 + 160) = v29;
    *(a1 + 176) = v13;
    v14 = v24;
    *(a1 + 64) = v23;
    *(a1 + 80) = v14;
    v15 = v26;
    *(a1 + 96) = v25;
    *(a1 + 112) = v15;
    v16 = v20[1];
    *a1 = v20[0];
    *(a1 + 16) = v16;
    result = *&v21;
    v17 = v22;
    *(a1 + 32) = v21;
    *(a1 + 48) = v17;
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityLargeContentViewHitTestingTransform@<X0>(uint64_t (**a1)()@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in AccessibilityLargeContentViewHitTestingTransform.value.getter;
  *(result + 24) = v4;
  *a1 = thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ()partial apply;
  a1[1] = result;
  return result;
}

double AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v4 = *(Value + 32);
  *(a1 + 16) = *(Value + 16);
  *(a1 + 32) = v4;

  return result;
}

double AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.platformItemList.getter()
{
  if (*(v0 + 20) != *MEMORY[0x1E698D3F8])
  {
    AGGraphGetValue();
  }

  return result;
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue()(uint64_t a1)
{
  v2 = v1;
  v126 = *MEMORY[0x1E69E9840];
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *&v79 = &v76 - v5;
  v6 = type metadata accessor for PlatformItemList.Item(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {
    v11 = v1[15];
    AGGraphClearUpdate();
    *&v78 = v6;
    v12 = v7;
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v14 = *(a1 + 32);
    v82 = *(a1 + 16);
    v83 = v14;
    v15 = type metadata accessor for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(0, &v82);
    AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(v15);
    AGSubgraphSetCurrent();

    v7 = v12;
    v6 = v78;
    AGGraphSetUpdate();
  }

  v16 = *(v1 + 5);
  v86 = *(v1 + 4);
  v87 = v16;
  v17 = *(v1 + 7);
  v88 = *(v1 + 6);
  v89 = v17;
  v18 = *(v1 + 1);
  v82 = *v1;
  v83 = v18;
  v19 = *(v1 + 3);
  v84 = *(v1 + 2);
  v85 = v19;
  AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter(v125);
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*Value);
  v21 = AGGraphGetValue();
  v22 = v21[1];
  v82 = *v21;
  v83 = v22;
  v23 = MEMORY[0x18D00B390]();
  v80 = 0uLL;
  *&v81 = v23;
  *(&v81 + 1) = v24;
  *&v106 = 0;
  v104 = 0u;
  v105 = 0u;
  BYTE8(v106) = 2;
  v82 = v125[0];
  v83 = v125[1];
  v84 = v125[2];

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(&v104);
  v25 = *(v1 + 5);
  v121 = *(v1 + 4);
  v122 = v25;
  v26 = *(v1 + 7);
  v123 = *(v1 + 6);
  v124 = v26;
  v27 = *(v1 + 1);
  v117 = *v1;
  v118 = v27;
  v28 = *(v1 + 3);
  v119 = *(v1 + 2);
  v120 = v28;
  v30 = AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.platformItemList.getter();
  v31 = v7;
  v32 = (v7 + 56);
  if (v29)
  {
    v33 = v79;
    PlatformItemList.mergedContentItem.getter(v29, v79);

    (*v32)(v33, 0, 1, v6);
    outlined init with take of PlatformItemList.Item(v33, v9);
  }

  else
  {
    *&v78 = v10;
    (*(v31 + 56))(v79, 1, 1, v6, v30);
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v93);
    v91 = 0u;
    memset(v92, 0, sizeof(v92));
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    v9[32] = 0;
    *(v9 + 3) = 0;
    *(v9 + 8) = 0u;
    *(v9 + 5) = -1;
    v9[56] = 1;
    v34 = v102;
    *(v9 + 12) = v101;
    *(v9 + 13) = v34;
    *(v9 + 14) = v103[0];
    *(v9 + 235) = *(v103 + 11);
    v35 = v98;
    *(v9 + 8) = v97;
    *(v9 + 9) = v35;
    v36 = v100;
    *(v9 + 10) = v99;
    *(v9 + 11) = v36;
    v37 = v94;
    *(v9 + 4) = v93;
    *(v9 + 5) = v37;
    v38 = v96;
    *(v9 + 6) = v95;
    *(v9 + 7) = v38;
    *(v9 + 19) = 0u;
    *(v9 + 20) = 0u;
    *(v9 + 17) = 0u;
    *(v9 + 18) = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 42) = 0x3FFFFFFFCLL;
    *(v9 + 344) = 0u;
    *(v9 + 360) = 0u;
    *(v9 + 376) = 0u;
    *(v9 + 392) = 0u;
    *(v9 + 51) = 0;
    *(v9 + 52) = 1;
    *(v9 + 424) = 0u;
    *(v9 + 440) = 0u;
    *(v9 + 456) = 0u;
    v9[472] = 0;
    *(v9 + 60) = 0;
    *(v9 + 488) = 0u;
    v9[504] = 0;
    *(v9 + 32) = 0u;
    v9[528] = 4;
    *(v9 + 536) = 0u;
    *(v9 + 552) = 0u;
    *(v9 + 568) = 0u;
    *(v9 + 584) = 0u;
    *(v9 + 600) = 0u;
    *(v9 + 616) = 0u;
    *(v9 + 632) = 0u;
    *(v9 + 648) = 0u;
    *(v9 + 664) = 0u;
    *(v9 + 680) = 0u;
    *(v9 + 696) = 0u;
    *(v9 + 712) = 0u;
    *(v9 + 728) = 0u;
    *(v9 + 744) = 0u;
    *(v9 + 760) = 0u;
    *(v9 + 776) = 0u;
    *(v9 + 792) = 0u;
    *(v9 + 808) = 0u;
    *(v9 + 824) = 0u;
    *(v9 + 840) = 0u;
    *(v9 + 107) = 0;
    *(v9 + 108) = 1;
    *(v9 + 872) = 0u;
    *(v9 + 888) = 0u;
    *(v9 + 904) = 0u;
    *(v9 + 920) = 0u;
    *(v9 + 936) = 0u;
    *(v9 + 476) = 1283;
    v9[954] = 3;
    v39 = v6[28];
    v40 = type metadata accessor for CommandOperation(0);
    (*(*(v40 - 8) + 56))(&v9[v39], 1, 1, v40);
    v9[v6[29]] = 0;
    v9[v6[30]] = 0;
    v9[v6[31]] = 2;
    v9[v6[32]] = 0;
    v9[v6[33]] = 0;
    v77 = v6[34];
    *v9 = 0;
    v41 = *(v9 + 13);
    v112 = *(v9 + 12);
    v113 = v41;
    v114[0] = *(v9 + 14);
    *(v114 + 11) = *(v9 + 235);
    v42 = *(v9 + 9);
    v108 = *(v9 + 8);
    v109 = v42;
    v43 = *(v9 + 11);
    v110 = *(v9 + 10);
    v111 = v43;
    v44 = *(v9 + 5);
    v104 = *(v9 + 4);
    v105 = v44;
    v45 = *(v9 + 7);
    v106 = *(v9 + 6);
    v107 = v45;
    v46 = MEMORY[0x1E69E6720];
    outlined destroy of PlatformItemList.Item?(&v104, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
    v47 = v102;
    *(v9 + 12) = v101;
    *(v9 + 13) = v47;
    *(v9 + 14) = v103[0];
    *(v9 + 235) = *(v103 + 11);
    v48 = v98;
    *(v9 + 8) = v97;
    *(v9 + 9) = v48;
    v49 = v100;
    *(v9 + 10) = v99;
    *(v9 + 11) = v49;
    v50 = v94;
    *(v9 + 4) = v93;
    *(v9 + 5) = v50;
    v51 = v96;
    *(v9 + 6) = v95;
    *(v9 + 7) = v51;
    v52 = *(v9 + 456);
    v115[2] = *(v9 + 440);
    v115[3] = v52;
    v116 = v9[472];
    v53 = *(v9 + 424);
    v115[0] = *(v9 + 408);
    v115[1] = v53;
    outlined destroy of PlatformItemList.Item?(v115, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v46, type metadata accessor for Image.Resolved?);
    *(v9 + 408) = xmmword_18CD633F0;
    *(v9 + 424) = 0u;
    *(v9 + 440) = 0u;
    *(v9 + 456) = 0u;
    v9[472] = 0;
    outlined assign with take of PlatformItemList.Item.Accessibility?(&v82, (v9 + 536));
    *&v9[v77] = 0;
    *(v9 + 6) = 0;
    if ((*(v31 + 48))(v79, 1, v6) != 1)
    {
      outlined destroy of PlatformItemList.Item?(v79, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for Attribute<(_:)>);
    }
  }

  v54 = *v9;
  if (*v9 || (v54 = *(v9 + 112)) != 0)
  {
    v55 = [v54 string];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = *(v9 + 13);
  v90 = *(v9 + 12);
  v91 = v59;
  v92[0] = *(v9 + 14);
  *(v92 + 11) = *(v9 + 235);
  v60 = *(v9 + 9);
  v86 = *(v9 + 8);
  v87 = v60;
  v61 = *(v9 + 11);
  v88 = *(v9 + 10);
  v89 = v61;
  v62 = *(v9 + 5);
  v82 = *(v9 + 4);
  v83 = v62;
  v63 = *(v9 + 7);
  v84 = *(v9 + 6);
  v85 = v63;
  v78 = v81;
  v79 = v80;
  v64 = *v2;
  v65 = *(v2 + 6);
  outlined init with copy of Image.Resolved?(&v82, &v104, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  if (v65 == *MEMORY[0x1E698D3F8])
  {
    v66 = 2;
  }

  else
  {
    v66 = *AGGraphGetValue();
  }

  v67 = (v66 == 2) | v66 & 1;
  v68 = swift_allocObject();
  *(v68 + 16) = v56;
  *(v68 + 24) = v58;
  v69 = v91;
  *(v68 + 160) = v90;
  *(v68 + 176) = v69;
  *(v68 + 192) = v92[0];
  *(v68 + 203) = *(v92 + 11);
  v70 = v87;
  *(v68 + 96) = v86;
  *(v68 + 112) = v70;
  v71 = v89;
  *(v68 + 128) = v88;
  *(v68 + 144) = v71;
  v72 = v83;
  *(v68 + 32) = v82;
  *(v68 + 48) = v72;
  v73 = v85;
  *(v68 + 64) = v84;
  *(v68 + 80) = v73;
  *(v68 + 219) = v93;
  *(v68 + 223) = BYTE4(v93);
  v74 = v78;
  *(v68 + 224) = v79;
  *(v68 + 240) = v74;
  *(v68 + 256) = v67;
  *(v68 + 257) = v64;
  *&v104 = partial apply for closure #2 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue();
  *(&v104 + 1) = v68;
  AGGraphSetOutputValue();

  return outlined destroy of (Image.Resolved?, Image.Resolved?)(v9, type metadata accessor for PlatformItemList.Item);
}

uint64_t AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if (*(*(v3 - 8) + 64))
  {
    closure #1 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(1, a1[2], v3, a1[4], a1[5]);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v5 = *(v1 + 80);
  v6 = *(v1 + 48);
  v26 = *(v1 + 64);
  v27 = v5;
  v7 = *(v1 + 80);
  v28 = *(v1 + 96);
  v8 = *(v1 + 48);
  v25[0] = *(v1 + 32);
  v25[1] = v8;
  v32 = v26;
  v33 = v7;
  v34 = *(v1 + 96);
  v29 = *(v1 + 112);
  LODWORD(v35[0]) = *(v1 + 112);
  v30 = v25[0];
  v31 = v6;
  v9 = a1[5];
  v10 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v30, 1, &v19);
  MEMORY[0x1EEE9AC00](v10);
  *&v30 = &type metadata for LargeContentViewerPlatformItemListFlags;
  *(&v30 + 1) = v3;
  *&v31 = &protocol witness table for LargeContentViewerPlatformItemListFlags;
  *(&v31 + 1) = v9;
  v11 = type metadata accessor for PlatformItemListGenerator(0, &v30);
  v17[2] = v11;
  v17[3] = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v11);
  outlined init with copy of _ViewInputs(v25, &v30);
  type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, closure #1 in Attribute.init<A>(_:)partial apply, v17, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v34 = v23;
  v35[0] = v24[0];
  *(v35 + 12) = *(v24 + 12);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  (*(*(v11 - 8) + 8))(&v30, v11);
  *(v1 + 20) = v18;
  v14 = *(v1 + 48);
  v19 = *(v1 + 32);
  v20 = v14;
  v21 = *(v1 + 64);
  result = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  if (result)
  {
    v16 = *(v1 + 48);
    v19 = *(v1 + 32);
    v20 = v16;
    v21 = *(v1 + 64);
    result = _GraphInputs.isEnabled.getter();
    *(v1 + 24) = result;
  }

  return result;
}

uint64_t closure #2 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.updateValue()(uint64_t a1, __int128 *a2)
{
  v4 = a2[13];
  v39 = a2[12];
  v40 = v4;
  v41 = a2[14];
  v42 = *(a2 + 120);
  v5 = a2[9];
  v35 = a2[8];
  v36 = v5;
  v6 = a2[11];
  v37 = a2[10];
  v38 = v6;
  v7 = a2[5];
  v31 = a2[4];
  v32 = v7;
  v8 = a2[7];
  v33 = a2[6];
  v34 = v8;
  v9 = a2[1];
  v27 = *a2;
  v28 = v9;
  v10 = a2[3];
  v29 = a2[2];
  v30 = v10;
  v11 = *(a1 + 208);
  v43[12] = *(a1 + 192);
  v43[13] = v11;
  v43[14] = *(a1 + 224);
  v44 = *(a1 + 240);
  v12 = *(a1 + 144);
  v43[8] = *(a1 + 128);
  v43[9] = v12;
  v13 = *(a1 + 176);
  v43[10] = *(a1 + 160);
  v43[11] = v13;
  v14 = *(a1 + 80);
  v43[4] = *(a1 + 64);
  v43[5] = v14;
  v15 = *(a1 + 112);
  v43[6] = *(a1 + 96);
  v43[7] = v15;
  v16 = *(a1 + 16);
  v43[0] = *a1;
  v43[1] = v16;
  v17 = *(a1 + 48);
  v43[2] = *(a1 + 32);
  v43[3] = v17;
  outlined destroy of AccessibilityLargeContentViewTree(v43);
  v57 = v39;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(&v45);
  v18 = v58;
  *(a1 + 192) = v57;
  *(a1 + 208) = v18;
  *(a1 + 224) = v59;
  *(a1 + 240) = v60;
  v19 = v54;
  *(a1 + 128) = v53;
  *(a1 + 144) = v19;
  v20 = v56;
  *(a1 + 160) = v55;
  *(a1 + 176) = v20;
  v21 = v50;
  *(a1 + 64) = v49;
  *(a1 + 80) = v21;
  v22 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v22;
  v23 = v46;
  *a1 = v45;
  *(a1 + 16) = v23;
  v24 = v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v24;
  return outlined init with copy of AccessibilityLargeContentViewItem(a2, v26);
}

uint64_t closure #1 in AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.makeContentViewer()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t modify #1 <A>(_:) in closure #1 in static AccessibilityLargeContentViewBehaviorModifier.makeTransform(behavior:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[13];
  v5 = a1[11];
  v206 = a1[12];
  v207 = v4;
  v6 = a1[13];
  v208 = a1[14];
  v7 = a1[9];
  v8 = a1[7];
  v202 = a1[8];
  v203 = v7;
  v9 = a1[9];
  v10 = a1[11];
  v204 = a1[10];
  v205 = v10;
  v11 = a1[5];
  v12 = a1[3];
  v198 = a1[4];
  v199 = v11;
  v13 = a1[5];
  v14 = a1[7];
  v200 = a1[6];
  v201 = v14;
  v15 = a1[1];
  v194 = *a1;
  v195 = v15;
  v16 = a1[3];
  v18 = *a1;
  v17 = a1[1];
  v196 = a1[2];
  v197 = v16;
  v210[12] = v206;
  v210[13] = v6;
  v210[14] = a1[14];
  v210[8] = v202;
  v210[9] = v9;
  v210[10] = v204;
  v210[11] = v5;
  v210[4] = v198;
  v210[5] = v13;
  v210[6] = v200;
  v210[7] = v8;
  v210[0] = v18;
  v210[1] = v17;
  v209 = *(a1 + 120);
  v211 = *(a1 + 120);
  v210[2] = v196;
  v210[3] = v12;
  result = getEnumTag for AccessibilityLargeContentViewTree(v210);
  if (!result)
  {
    v52 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v210);
    v110 = *(v52 + 192);
    v111 = *(v52 + 208);
    v112 = *(v52 + 224);
    LOBYTE(v113) = *(v52 + 240);
    v106 = *(v52 + 128);
    v107 = *(v52 + 144);
    v108 = *(v52 + 160);
    v109 = *(v52 + 176);
    v102 = *(v52 + 64);
    v103 = *(v52 + 80);
    v104 = *(v52 + 96);
    v105 = *(v52 + 112);
    v98 = *v52;
    v99 = *(v52 + 16);
    v100 = *(v52 + 32);
    v101 = *(v52 + 48);
    if (a2 == 1)
    {
      v53 = *(v52 + 241);
      v174 = v110;
      v175 = v111;
      v176 = v112;
      LOBYTE(v177) = v113;
      v170 = v106;
      v171 = v107;
      v172 = v108;
      v173 = v109;
      v166 = v102;
      v167 = v103;
      v168 = v104;
      v169 = v105;
      v162 = v98;
      v163 = v99;
      v164 = v100;
      v165 = v101;
      HIBYTE(v177) = v53;
      v190 = v206;
      v191 = v207;
      v192 = v208;
      v193 = v209;
      v186 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v182 = v198;
      v183 = v199;
      v184 = v200;
      v185 = v201;
      v178 = v194;
      v179 = v195;
      v180 = v196;
      v181 = v197;
      v54 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v178);
      outlined init with copy of AccessibilityLargeContentViewItem(v54, &v146);
      return outlined destroy of AccessibilityLargeContentViewItem(&v162);
    }

    v63 = a1[13];
    v126 = a1[12];
    v127 = v63;
    v128 = a1[14];
    v129 = *(a1 + 120);
    v64 = a1[9];
    v122 = a1[8];
    v123 = v64;
    v65 = a1[11];
    v124 = a1[10];
    v125 = v65;
    v66 = a1[5];
    v118 = a1[4];
    v119 = v66;
    v67 = a1[7];
    v120 = a1[6];
    v121 = v67;
    v68 = a1[1];
    v114 = *a1;
    v115 = v68;
    v69 = a1[3];
    v116 = a1[2];
    v117 = v69;
    v142 = v206;
    v143 = v207;
    v144 = v208;
    v145 = v209;
    v138 = v202;
    v139 = v203;
    v140 = v204;
    v141 = v205;
    v134 = v198;
    v135 = v199;
    v136 = v200;
    v137 = v201;
    v130 = v194;
    v131 = v195;
    v132 = v196;
    v133 = v197;
    v70 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v130);
    outlined init with copy of AccessibilityLargeContentViewItem(v70, &v178);
    outlined destroy of AccessibilityLargeContentViewTree(&v114);
    _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(&v146);
    v71 = v158;
    v72 = v159;
    v73 = v157;
    a1[12] = v158;
    a1[13] = v72;
    v74 = v159;
    a1[14] = v160;
    v76 = v154;
    v75 = v155;
    v77 = v153;
    a1[8] = v154;
    a1[9] = v75;
    v78 = v155;
    v80 = v156;
    v79 = v157;
    a1[10] = v156;
    a1[11] = v79;
    v82 = v150;
    v81 = v151;
    v83 = v149;
    a1[4] = v150;
    a1[5] = v81;
    v84 = v151;
    v86 = v152;
    v85 = v153;
    a1[6] = v152;
    a1[7] = v85;
    v87 = v147;
    *a1 = v146;
    a1[1] = v87;
    v88 = v149;
    v90 = v146;
    v89 = v147;
    v91 = v148;
    a1[2] = v148;
    a1[3] = v88;
    v174 = v71;
    v175 = v74;
    v176 = v160;
    v170 = v76;
    v171 = v78;
    v172 = v80;
    v173 = v73;
    v166 = v82;
    v167 = v84;
    v168 = v86;
    v169 = v77;
    v162 = v90;
    v163 = v89;
    *(a1 + 120) = v161;
    v177 = v161;
    v164 = v91;
    v165 = v83;
    outlined destroy of AccessibilityLargeContentViewTree(&v162);
    v190 = v110;
    v191 = v111;
    v192 = v112;
    LOBYTE(v193) = v113;
    v186 = v106;
    v187 = v107;
    v188 = v108;
    v189 = v109;
    v182 = v102;
    v183 = v103;
    v184 = v104;
    v185 = v105;
    v178 = v98;
    v179 = v99;
    v180 = v100;
    v181 = v101;
    HIBYTE(v193) = a2;
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(&v178);
    v92 = v191;
    a1[12] = v190;
    a1[13] = v92;
    a1[14] = v192;
    *(a1 + 120) = v193;
    v93 = v187;
    a1[8] = v186;
    a1[9] = v93;
    v94 = v189;
    a1[10] = v188;
    a1[11] = v94;
    v95 = v183;
    a1[4] = v182;
    a1[5] = v95;
    v96 = v185;
    a1[6] = v184;
    a1[7] = v96;
    v97 = v179;
    *a1 = v178;
    a1[1] = v97;
    v61 = v180;
    v62 = v181;
    goto LABEL_14;
  }

  if (result != 1)
  {
    return result;
  }

  v20 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v210);
  v21 = a1[3];
  v116 = a1[2];
  v117 = v21;
  v22 = a1[1];
  v114 = *a1;
  v115 = v22;
  v23 = a1[7];
  v120 = a1[6];
  v121 = v23;
  v24 = a1[5];
  v118 = a1[4];
  v119 = v24;
  v25 = a1[11];
  v124 = a1[10];
  v125 = v25;
  v26 = a1[9];
  v122 = a1[8];
  v123 = v26;
  v129 = *(a1 + 120);
  v27 = a1[14];
  v127 = a1[13];
  v128 = v27;
  v126 = a1[12];
  v142 = v206;
  v143 = v207;
  v144 = v208;
  v145 = v209;
  v138 = v202;
  v139 = v203;
  v140 = v204;
  v141 = v205;
  v134 = v198;
  v135 = v199;
  v136 = v200;
  v137 = v201;
  v130 = v194;
  v131 = v195;
  v132 = v196;
  v133 = v197;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v130);

  outlined destroy of AccessibilityLargeContentViewTree(&v114);
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(&v146);
  v28 = v158;
  v29 = v159;
  v30 = v157;
  a1[12] = v158;
  a1[13] = v29;
  v31 = v159;
  a1[14] = v160;
  v33 = v154;
  v32 = v155;
  v34 = v153;
  a1[8] = v154;
  a1[9] = v32;
  v35 = v155;
  v37 = v156;
  v36 = v157;
  a1[10] = v156;
  a1[11] = v36;
  v39 = v150;
  v38 = v151;
  v40 = v149;
  a1[4] = v150;
  a1[5] = v38;
  v41 = v151;
  v43 = v152;
  v42 = v153;
  a1[6] = v152;
  a1[7] = v42;
  v44 = v147;
  *a1 = v146;
  a1[1] = v44;
  v45 = v149;
  v47 = v146;
  v46 = v147;
  v48 = v148;
  a1[2] = v148;
  a1[3] = v45;
  v174 = v28;
  v175 = v31;
  v176 = v160;
  v170 = v33;
  v171 = v35;
  v172 = v37;
  v173 = v30;
  v166 = v39;
  v167 = v41;
  v168 = v43;
  v169 = v34;
  v162 = v47;
  v163 = v46;
  *(a1 + 120) = v161;
  v177 = v161;
  v164 = v48;
  v165 = v40;
  v190 = v206;
  v191 = v207;
  v192 = v208;
  v193 = v209;
  v186 = v202;
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v182 = v198;
  v183 = v199;
  v184 = v200;
  v185 = v201;
  v178 = v194;
  v179 = v195;
  v180 = v196;
  v181 = v197;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v178);

  outlined destroy of AccessibilityLargeContentViewTree(&v162);
  v49 = *(v20 + 16);
  outlined destroy of AccessibilityLargeContentViewTree(&v194);
  if (!v49)
  {
LABEL_12:
    *&v98 = v20;
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(&v98);
    v55 = v111;
    a1[12] = v110;
    a1[13] = v55;
    a1[14] = v112;
    *(a1 + 120) = v113;
    v56 = v107;
    a1[8] = v106;
    a1[9] = v56;
    v57 = v109;
    a1[10] = v108;
    a1[11] = v57;
    v58 = v103;
    a1[4] = v102;
    a1[5] = v58;
    v59 = v105;
    a1[6] = v104;
    a1[7] = v59;
    v60 = v99;
    *a1 = v98;
    a1[1] = v60;
    v61 = v100;
    v62 = v101;
LABEL_14:
    a1[2] = v61;
    a1[3] = v62;
    return result;
  }

  v50 = 0;
  v51 = 32;
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v20 = result;
    }

    if (v50 >= *(v20 + 16))
    {
      break;
    }

    ++v50;
    modify #1 <A>(_:) in closure #1 in static AccessibilityLargeContentViewBehaviorModifier.makeTransform(behavior:)((v20 + v51), a2);
    v51 += 248;
    if (v49 == v50)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentValues.accessibilityLargeContentViewerEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v1 = v3;
  if (v3 == 2)
  {
    v1 = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double EnvironmentValues._accessibilityLargeContentViewerEnabled.setter(char a1)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double key path setter for EnvironmentValues.accessibilityLargeContentViewerEnabled : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

double (*EnvironmentValues._accessibilityLargeContentViewerEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = *(a1 + 25);
  if (v5 == 2)
  {
    LOBYTE(v5) = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  *(a1 + 24) = v5 & 1;
  return EnvironmentValues._accessibilityLargeContentViewerEnabled.modify;
}

double EnvironmentValues._accessibilityLargeContentViewerEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>, &unk_1EFF8E8E8, &protocol witness table for AccessibilityLargeContentViewerKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityLargeContentViewerKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.accessibilityShowsLargeContentViewer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessibilityLargeContentViewBehaviorModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

void type metadata accessor for EnvironmentPropertyKey<AccessibilityLargeContentViewerKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void destroy for AccessibilityLargeContentViewItem(uint64_t a1)
{

  v2 = *(a1 + 144);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v3 = *(a1 + 24);
    if (v3 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 16), v3);
    }

    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 128), *(a1 + 136), v2, *(a1 + 152));
    }

    swift_unknownObjectRelease();

    v4 = *(a1 + 192);
  }
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 144);

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFCLL)
  {
    v6 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v6;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 187) = *(a2 + 187);
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    v9 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v9;
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
  }

  else
  {
    v11 = *(a2 + 24);
    if (v11 == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v12 = *(a2 + 16);
      outlined copy of GraphicsImage.Contents(v12, *(a2 + 24));
      *(a1 + 16) = v12;
      *(a1 + 24) = v11;
    }

    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 88) = *(a2 + 88);
    v13 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 122) = *(a2 + 122);
    *(a1 + 123) = *(a2 + 123);
    *(a1 + 104) = v13;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
    {
      v14 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v14;
    }

    else
    {
      v15 = *(a2 + 128);
      v16 = *(a2 + 136);
      v17 = *(a2 + 152);
      outlined copy of AccessibilityImageLabel(v15, v16, v5, v17);
      *(a1 + 128) = v15;
      *(a1 + 136) = v16;
      *(a1 + 144) = v5;
      *(a1 + 152) = v17;
    }

    v18 = *(a2 + 168);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = v18;
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 180) = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    v19 = *(a2 + 192);
    *(a1 + 192) = v19;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
    swift_unknownObjectRetain();

    v20 = v19;
  }

  v21 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v21;
  *(a1 + 240) = *(a2 + 240);
  return a1;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 144) & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 144) >> 1 == 4294967294)
  {
    if (v4 == 0x1FFFFFFFCLL)
    {
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v7;
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      v10 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v10;
      *(a1 + 80) = v8;
      *(a1 + 96) = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 160);
      v13 = *(a2 + 176);
      *(a1 + 187) = *(a2 + 187);
      *(a1 + 160) = v12;
      *(a1 + 176) = v13;
      *(a1 + 144) = v11;
    }

    else
    {
      v23 = *(a2 + 24);
      if (v23 == 255)
      {
        v29 = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 16) = v29;
      }

      else
      {
        v24 = *(a2 + 16);
        outlined copy of GraphicsImage.Contents(v24, *(a2 + 24));
        *(a1 + 16) = v24;
        *(a1 + 24) = v23;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      v30 = *(a2 + 60);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 60) = v30;
      v31 = *(a2 + 88);
      v32 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v32;
      *(a1 + 88) = v31;
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 122) = *(a2 + 122);
      *(a1 + 123) = *(a2 + 123);
      v33 = *(a2 + 144);
      if (v33 >> 1 == 0xFFFFFFFF)
      {
        v34 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v34;
      }

      else
      {
        v35 = *(a2 + 128);
        v36 = *(a2 + 136);
        v37 = *(a2 + 152);
        outlined copy of AccessibilityImageLabel(v35, v36, *(a2 + 144), v37);
        *(a1 + 128) = v35;
        *(a1 + 136) = v36;
        *(a1 + 144) = v33;
        *(a1 + 152) = v37;
      }

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v38 = *(a2 + 180);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 180) = v38;
      v39 = *(a2 + 192);
      *(a1 + 192) = v39;
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 202) = *(a2 + 202);
      swift_unknownObjectRetain();

      v40 = v39;
    }
  }

  else if (v4 == 0x1FFFFFFFCLL)
  {
    outlined destroy of Image.Resolved(a1 + 16);
    v14 = *(a2 + 64);
    v16 = *(a2 + 16);
    v15 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v14;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    v17 = *(a2 + 128);
    v19 = *(a2 + 80);
    v18 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
    *(a1 + 80) = v19;
    *(a1 + 96) = v18;
    v21 = *(a2 + 160);
    v20 = *(a2 + 176);
    v22 = *(a2 + 144);
    *(a1 + 187) = *(a2 + 187);
    *(a1 + 160) = v21;
    *(a1 + 176) = v20;
    *(a1 + 144) = v22;
  }

  else
  {
    v25 = *(a2 + 24);
    if (*(a1 + 24) == 255)
    {
      if (v25 == 255)
      {
        v43 = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 16) = v43;
      }

      else
      {
        v41 = *(a2 + 16);
        outlined copy of GraphicsImage.Contents(v41, *(a2 + 24));
        *(a1 + 16) = v41;
        *(a1 + 24) = v25;
      }
    }

    else if (v25 == 255)
    {
      outlined destroy of GraphicsImage.Contents(a1 + 16);
      v42 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v42;
    }

    else
    {
      v26 = *(a2 + 16);
      outlined copy of GraphicsImage.Contents(v26, *(a2 + 24));
      v27 = *(a1 + 16);
      *(a1 + 16) = v26;
      v28 = *(a1 + 24);
      *(a1 + 24) = v25;
      outlined consume of GraphicsImage.Contents(v27, v28);
    }

    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v44 = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 60) = v44;
    v45 = *(a2 + 88);
    v46 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v46;
    *(a1 + 88) = v45;
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 122) = *(a2 + 122);
    *(a1 + 123) = *(a2 + 123);
    v47 = *(a2 + 144);
    v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 144) >> 1 == 0xFFFFFFFFLL)
    {
      if (v48 == 0x1FFFFFFFELL)
      {
        v49 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v49;
      }

      else
      {
        v51 = *(a2 + 128);
        v52 = *(a2 + 136);
        v53 = *(a2 + 152);
        outlined copy of AccessibilityImageLabel(v51, v52, *(a2 + 144), v53);
        *(a1 + 128) = v51;
        *(a1 + 136) = v52;
        *(a1 + 144) = v47;
        *(a1 + 152) = v53;
      }
    }

    else if (v48 == 0x1FFFFFFFELL)
    {
      outlined destroy of AccessibilityImageLabel(a1 + 128);
      v50 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v50;
    }

    else
    {
      v54 = *(a2 + 128);
      v55 = *(a2 + 136);
      v56 = *(a2 + 152);
      outlined copy of AccessibilityImageLabel(v54, v55, *(a2 + 144), v56);
      v57 = *(a1 + 128);
      v58 = *(a1 + 136);
      v59 = *(a1 + 144);
      v60 = *(a1 + 152);
      *(a1 + 128) = v54;
      *(a1 + 136) = v55;
      *(a1 + 144) = v47;
      *(a1 + 152) = v56;
      outlined consume of AccessibilityImageLabel(v57, v58, v59, v60);
    }

    *(a1 + 160) = *(a2 + 160);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v61 = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 180) = v61;
    v62 = *(a1 + 192);
    v63 = *(a2 + 192);
    *(a1 + 192) = v63;
    v64 = v63;

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
  }

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 241) = *(a2 + 241);
  return a1;
}

uint64_t assignWithTake for AccessibilityLargeContentViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  if (*(a1 + 144) >> 1 == 4294967294)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 144);
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v11 = *(a1 + 24);
    if (v11 != 255)
    {
      v12 = *(a2 + 24);
      if (v12 != 255)
      {
        v13 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v12;
        outlined consume of GraphicsImage.Contents(v13, v11);
        goto LABEL_10;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 16);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
LABEL_10:
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 121) = *(a2 + 121);
    v14 = *(a1 + 144);
    *(a1 + 122) = *(a2 + 122);
    if (v14 >> 1 != 0xFFFFFFFF)
    {
      if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        v16 = *(a2 + 152);
        v17 = *(a1 + 128);
        v18 = *(a1 + 136);
        v19 = *(a1 + 152);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v5;
        *(a1 + 152) = v16;
        outlined consume of AccessibilityImageLabel(v17, v18, v14, v19);
        goto LABEL_15;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 128);
    }

    v15 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v15;
LABEL_15:
    *(a1 + 160) = *(a2 + 160);
    swift_unknownObjectRelease();
    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    *(a1 + 180) = *(a2 + 180);
    *(a1 + 184) = *(a2 + 184);
    v20 = *(a1 + 192);
    *(a1 + 192) = *(a2 + 192);

    *(a1 + 200) = *(a2 + 200);
    *(a1 + 202) = *(a2 + 202);
    goto LABEL_16;
  }

  outlined destroy of Image.Resolved(a1 + 16);
LABEL_4:
  v6 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v6;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 187) = *(a2 + 187);
  v7 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v7;
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  v9 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v9;
  v10 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v10;
LABEL_16:
  v21 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v21;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 241) = *(a2 + 241);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 242))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AccessibilityLargeContentViewItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 242) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double outlined copy of AccessibilityLargeContentViewTree(double result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned __int16 a32)
{
  v32 = a32 >> 14;
  if (v32 == 1)
  {
  }

  else if (!v32)
  {
    v37 = a5;

    return outlined copy of Image.Resolved?(a4, v37, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  return v39;
}

double outlined copy of Image.Resolved?(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a17 >> 1 != 4294967294)
  {
    outlined copy of GraphicsImage.Contents?(a1, a2);
    outlined copy of AccessibilityImageLabel?(a15, a16, a17, a18);
    v23 = a23;
    swift_unknownObjectRetain();
  }

  return result;
}

void outlined consume of Image.Resolved?(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a17 >> 1 != 4294967294)
  {
    outlined consume of GraphicsImage.Contents?(a1, a2);
    outlined consume of AccessibilityImageLabel?(a15, a16, a17, a18);
    swift_unknownObjectRelease();
  }
}

uint64_t initializeWithCopy for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  v23 = *(a2 + 144);
  v24 = *(a2 + 152);
  v25 = *(a2 + 160);
  v26 = *(a2 + 168);
  v27 = *(a2 + 176);
  v28 = *(a2 + 184);
  v29 = *(a2 + 192);
  v30 = *(a2 + 200);
  v31 = *(a2 + 208);
  v32 = *(a2 + 216);
  v33 = *(a2 + 224);
  v34 = *(a2 + 232);
  v35 = *(a2 + 240);
  v9 = *(a2 + 64);
  v11 = *(a2 + 8);
  v10 = *a2;
  v12 = *(a2 + 16);
  outlined copy of AccessibilityLargeContentViewTree(a3, *a2, v11, v12, v4, v5, v6, v7, v8, v9, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23;
  *(a1 + 152) = v24;
  *(a1 + 160) = v25;
  *(a1 + 168) = v26;
  *(a1 + 176) = v27;
  *(a1 + 184) = v28;
  *(a1 + 192) = v29;
  *(a1 + 200) = v30;
  *(a1 + 208) = v31;
  *(a1 + 216) = v32;
  *(a1 + 224) = v33;
  *(a1 + 232) = v34;
  *(a1 + 240) = v35;
  return a1;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v35 = *(a2 + 72);
  v36 = *(a2 + 80);
  v37 = *(a2 + 88);
  v38 = *(a2 + 96);
  v39 = *(a2 + 104);
  v40 = *(a2 + 112);
  v41 = *(a2 + 120);
  v42 = *(a2 + 128);
  v43 = *(a2 + 136);
  v44 = *(a2 + 144);
  v45 = *(a2 + 152);
  v46 = *(a2 + 160);
  v47 = *(a2 + 168);
  v48 = *(a2 + 176);
  v49 = *(a2 + 184);
  v50 = *(a2 + 192);
  v51 = *(a2 + 200);
  v52 = *(a2 + 208);
  v53 = *(a2 + 216);
  v54 = *(a2 + 224);
  v55 = *(a2 + 232);
  v56 = *(a2 + 240);
  v8 = *(a2 + 64);
  v9 = *(a2 + 40);
  v10 = *(a2 + 32);
  v12 = *(a2 + 56);
  v11 = *(a2 + 48);
  outlined copy of AccessibilityLargeContentViewTree(a3, *a2, v5, v6, v7, v10, v9, v11, v12, v8, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  v13 = *a1;
  v14 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  *(a1 + 32) = v10;
  *(a1 + 40) = v9;
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  *(a1 + 64) = v8;
  *(a1 + 72) = v35;
  *(a1 + 80) = v36;
  *(a1 + 88) = v37;
  v23 = *(a1 + 96);
  v24 = *(a1 + 112);
  *(a1 + 96) = v38;
  *(a1 + 104) = v39;
  *(a1 + 112) = v40;
  *(a1 + 120) = v41;
  v25 = *(a1 + 128);
  v26 = *(a1 + 144);
  *(a1 + 128) = v42;
  *(a1 + 136) = v43;
  *(a1 + 144) = v44;
  *(a1 + 152) = v45;
  v27 = *(a1 + 160);
  v28 = *(a1 + 176);
  *(a1 + 160) = v46;
  *(a1 + 168) = v47;
  *(a1 + 176) = v48;
  *(a1 + 184) = v49;
  v29 = *(a1 + 192);
  v30 = *(a1 + 208);
  *(a1 + 192) = v50;
  *(a1 + 200) = v51;
  *(a1 + 208) = v52;
  *(a1 + 216) = v53;
  v31 = *(a1 + 224);
  v32 = *(a1 + 232);
  *(a1 + 224) = v54;
  *(a1 + 232) = v55;
  v33 = *(a1 + 240);
  *(a1 + 240) = v56;
  outlined consume of AccessibilityLargeContentViewTree(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32, v33);
  return a1;
}

uint64_t assignWithTake for AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 240);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = *(a1 + 160);
  v20 = *(a1 + 176);
  v21 = *(a1 + 192);
  v22 = *(a1 + 208);
  v23 = *(a1 + 224);
  v24 = *(a1 + 232);
  v25 = *(a1 + 240);
  v26 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v26;
  v27 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v27;
  v28 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v28;
  v29 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v29;
  v30 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v30;
  v31 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v31;
  v32 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v32;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v4;
  outlined consume of AccessibilityLargeContentViewTree(v5, v6, v7, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  return a1;
}

uint64_t getEnumTag for AccessibilityLargeContentViewTree(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for AccessibilityLargeContentViewTree(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 240) & 0x301 | (a2 << 14);
    *(result + 200) &= 0xFFFFFFuLL;
    *(result + 240) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 232) = 0;
    *(result + 240) = 0x8000;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityLargeContentViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t assignWithTake for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t specialized static Image.Resolved.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v70 = a1[4];
  v71[0] = v3;
  *(v71 + 12) = *(a1 + 92);
  v4 = a1[1];
  v67[0] = *a1;
  v67[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v68 = a1[2];
  v69 = v5;
  v8 = a2[3];
  v9 = a2[5];
  v75 = a2[4];
  v76[0] = v9;
  *(v76 + 12) = *(a2 + 92);
  v10 = a2[1];
  v72[0] = *a2;
  v72[1] = v10;
  v11 = a2[3];
  v13 = *a2;
  v12 = a2[1];
  v73 = a2[2];
  v74 = v11;
  v14 = a1[5];
  v65 = v70;
  v66[0] = v14;
  *(v66 + 12) = *(a1 + 92);
  v61 = v7;
  v62 = v6;
  v16 = *(a1 + 14);
  v15 = *(a1 + 15);
  v18 = *(a1 + 16);
  v17 = *(a1 + 17);
  v53 = *(a1 + 18);
  v51 = *(a1 + 19);
  v50 = *(a1 + 160);
  v48 = *(a1 + 161);
  v63 = v68;
  v64 = v2;
  v19 = a2[5];
  v59 = v75;
  v60[0] = v19;
  *(v60 + 12) = *(a2 + 92);
  v20 = *(a1 + 41);
  v44 = *(a1 + 22);
  v42 = *(a1 + 186);
  v43 = *(a1 + 92);
  v22 = *(a2 + 14);
  v21 = *(a2 + 15);
  v24 = *(a2 + 16);
  v23 = *(a2 + 17);
  v52 = *(a2 + 18);
  v54 = *(a2 + 19);
  v49 = *(a2 + 160);
  v46 = *(a1 + 168);
  v47 = *(a2 + 161);
  v55 = v13;
  v56 = v12;
  v25 = *(a2 + 41);
  v45 = *(a2 + 168);
  v41 = *(a2 + 22);
  v39 = *(a2 + 186);
  v40 = *(a2 + 92);
  v57 = v73;
  v58 = v8;
  outlined init with copy of GraphicsImage(v67, v79);
  outlined init with copy of GraphicsImage(v72, v79);
  v26 = MEMORY[0x18D0041B0](&v61, &v55);
  v77[4] = v59;
  v78[0] = v60[0];
  *(v78 + 12) = *(v60 + 12);
  v77[0] = v55;
  v77[1] = v56;
  v77[2] = v57;
  v77[3] = v58;
  outlined destroy of GraphicsImage(v77);
  v79[4] = v65;
  v80[0] = v66[0];
  *(v80 + 12) = *(v66 + 12);
  v79[0] = v61;
  v79[1] = v62;
  v79[2] = v63;
  v79[3] = v64;
  outlined destroy of GraphicsImage(v79);
  if ((v26 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
    if (v24 >> 1 == 0xFFFFFFFF)
    {
      outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
      goto LABEL_11;
    }

LABEL_7:
    outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined consume of AccessibilityImageLabel?(v22, v21, v24, v23);
    goto LABEL_8;
  }

  *&v61 = v16;
  *(&v61 + 1) = v15;
  *&v62 = v18;
  *(&v62 + 1) = v17;
  if (v24 >> 1 == 0xFFFFFFFF)
  {
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
    outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
    outlined consume of AccessibilityImageLabel(v16, v15, v18, v17);
    goto LABEL_7;
  }

  *&v55 = v22;
  *(&v55 + 1) = v21;
  *&v56 = v24;
  *(&v56 + 1) = v23;
  outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
  outlined copy of AccessibilityImageLabel?(v22, v21, v24, v23);
  outlined copy of AccessibilityImageLabel?(v16, v15, v18, v17);
  v29 = MEMORY[0x18D0084D0](&v61, &v55);
  outlined consume of AccessibilityImageLabel(v55, *(&v55 + 1), v56, *(&v56 + 1));
  outlined consume of AccessibilityImageLabel(v61, *(&v61 + 1), v62, *(&v62 + 1));
  outlined consume of AccessibilityImageLabel?(v16, v15, v18, v17);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v53)
  {
    v30 = v54;
    if (v53 != v52)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v30 = v54;
    if (v52)
    {
      goto LABEL_8;
    }
  }

  v31 = (v51 | v30) == 0;
  if (v51 && v30)
  {
    v32 = *(v51 + 32);
    v61 = *(v51 + 16);
    v62 = v32;
    v33 = *(v51 + 64);
    v63 = *(v51 + 48);
    v64 = v33;
    v34 = *(v30 + 32);
    v55 = *(v30 + 16);
    v56 = v34;
    v35 = *(v30 + 64);
    v57 = *(v30 + 48);
    v58 = v35;
    v31 = MEMORY[0x18D00A980](&v61, &v55);
  }

  v27 = 0;
  if ((v31 & 1) != 0 && ((v50 ^ v49) & 1) == 0)
  {
    if (v48 == 3)
    {
      if (v47 == 3)
      {
        goto LABEL_25;
      }

LABEL_8:
      v27 = 0;
      return v27 & 1;
    }

    v27 = 0;
    if (v47 != 3 && v48 == v47)
    {
LABEL_25:
      if (v46)
      {
        if (v45)
        {
LABEL_31:
          *&v61 = v44;
          WORD4(v61) = v43;
          BYTE10(v61) = v42;
          *&v55 = v41;
          WORD4(v55) = v40;
          BYTE10(v55) = v39;
          v37 = v41;
          v38 = v44;
          v27 = MEMORY[0x18D008B00](&v61, &v55);

          return v27 & 1;
        }
      }

      else
      {
        v36 = v45;
        if (v20 != v25)
        {
          v36 = 1;
        }

        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_8;
    }
  }

  return v27 & 1;
}

BOOL specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 10);
  v138[8] = *(a1 + 9);
  v138[9] = v6;
  v139[0] = *(a1 + 11);
  *(v139 + 11) = *(a1 + 187);
  v7 = *(a1 + 6);
  v138[4] = *(a1 + 5);
  v138[5] = v7;
  v8 = *(a1 + 8);
  v138[6] = *(a1 + 7);
  v138[7] = v8;
  v9 = *(a1 + 2);
  v138[0] = *(a1 + 1);
  v138[1] = v9;
  v10 = *(a1 + 4);
  v138[2] = *(a1 + 3);
  v138[3] = v10;
  v11 = *(a1 + 26);
  v12 = *(a1 + 27);
  v13 = *(a1 + 28);
  v14 = *(a1 + 29);
  v15 = *(a1 + 240);
  v16 = *(a1 + 241);
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 10);
  v140[8] = *(a2 + 9);
  v140[9] = v19;
  v141[0] = *(a2 + 11);
  *(v141 + 11) = *(a2 + 187);
  v20 = *(a2 + 6);
  v140[4] = *(a2 + 5);
  v140[5] = v20;
  v21 = *(a2 + 8);
  v140[6] = *(a2 + 7);
  v140[7] = v21;
  v22 = *(a2 + 2);
  v140[0] = *(a2 + 1);
  v140[1] = v22;
  v23 = *(a2 + 4);
  v140[2] = *(a2 + 3);
  v140[3] = v23;
  v24 = *(a2 + 26);
  v25 = *(a2 + 27);
  v26 = *(a2 + 28);
  v27 = *(a2 + 29);
  v28 = *(a2 + 240);
  v29 = *(a2 + 241);
  if (v5)
  {
    if (!v18 || (v4 != v17 || v5 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v31 = *(a1 + 10);
  v32 = *(a1 + 8);
  __src[8] = *(a1 + 9);
  __src[9] = v31;
  v33 = *(a2 + 1);
  v34 = *(a2 + 2);
  v35 = *(a1 + 10);
  __src[10] = *(a1 + 11);
  *(&__src[10] + 11) = *(a1 + 187);
  v36 = *(a1 + 6);
  v37 = *(a1 + 4);
  __src[4] = *(a1 + 5);
  __src[5] = v36;
  v38 = *(a1 + 6);
  v39 = *(a1 + 8);
  __src[6] = *(a1 + 7);
  __src[7] = v39;
  v40 = *(a1 + 2);
  __src[0] = *(a1 + 1);
  __src[1] = v40;
  v41 = *(a1 + 4);
  v43 = *(a1 + 1);
  v42 = *(a1 + 2);
  __src[2] = *(a1 + 3);
  __src[3] = v41;
  *(&__src[22] + 11) = *(a2 + 187);
  v44 = *(a2 + 9);
  v45 = *(a2 + 11);
  __src[21] = *(a2 + 10);
  __src[22] = v45;
  v46 = *(a2 + 5);
  v47 = *(a2 + 7);
  v48 = *(a2 + 8);
  __src[17] = *(a2 + 6);
  __src[18] = v47;
  __src[20] = v44;
  __src[19] = v48;
  __src[12] = v33;
  v49 = *(a2 + 3);
  v50 = *(a2 + 4);
  __src[13] = v34;
  __src[14] = v49;
  __src[16] = v46;
  __src[15] = v50;
  v136[8] = __src[8];
  v136[9] = v35;
  v137[0] = *(a1 + 11);
  *(v137 + 11) = *(a1 + 187);
  v136[4] = __src[4];
  v136[5] = v38;
  v136[6] = __src[6];
  v136[7] = v32;
  v136[0] = v43;
  v136[1] = v42;
  v136[2] = __src[2];
  v136[3] = v37;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(v136) == 1)
  {
    v51 = *(a2 + 10);
    __dst[8] = *(a2 + 9);
    __dst[9] = v51;
    __dst[10] = *(a2 + 11);
    *(&__dst[10] + 11) = *(a2 + 187);
    v52 = *(a2 + 6);
    __dst[4] = *(a2 + 5);
    __dst[5] = v52;
    v53 = *(a2 + 8);
    __dst[6] = *(a2 + 7);
    __dst[7] = v53;
    v54 = *(a2 + 2);
    __dst[0] = *(a2 + 1);
    __dst[1] = v54;
    v55 = *(a2 + 4);
    __dst[2] = *(a2 + 3);
    __dst[3] = v55;
    if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
    {
      v56 = *(a1 + 10);
      v132 = *(a1 + 9);
      v133 = v56;
      v134[0] = *(a1 + 11);
      *(v134 + 11) = *(a1 + 187);
      v57 = *(a1 + 6);
      v128 = *(a1 + 5);
      v129 = v57;
      v58 = *(a1 + 8);
      v130 = *(a1 + 7);
      v131 = v58;
      v59 = *(a1 + 2);
      v124 = *(a1 + 1);
      v125 = v59;
      v60 = *(a1 + 4);
      v126 = *(a1 + 3);
      v127 = v60;
      v61 = MEMORY[0x1E6981730];
      outlined init with copy of Image.Resolved?(v138, &v112, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
      outlined init with copy of Image.Resolved?(v140, &v112, &lazy cache variable for type metadata for Image.Resolved?, v61);
      outlined destroy of PlatformItemList.Item?(&v124, &lazy cache variable for type metadata for Image.Resolved?, v61, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
      goto LABEL_17;
    }

    v84 = MEMORY[0x1E6981730];
    outlined init with copy of Image.Resolved?(v138, &v124, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of Image.Resolved?(v140, &v124, &lazy cache variable for type metadata for Image.Resolved?, v84);
LABEL_15:
    memcpy(__dst, __src, 0x17BuLL);
    outlined destroy of (Image.Resolved?, Image.Resolved?)(__dst, type metadata accessor for (Image.Resolved?, Image.Resolved?));
    return 0;
  }

  v62 = *(a1 + 10);
  v63 = *(a1 + 8);
  v132 = *(a1 + 9);
  v133 = v62;
  v64 = *(a1 + 10);
  v134[0] = *(a1 + 11);
  *(v134 + 11) = *(a1 + 187);
  v65 = *(a1 + 6);
  v66 = *(a1 + 4);
  v128 = *(a1 + 5);
  v129 = v65;
  v67 = *(a1 + 6);
  v68 = *(a1 + 8);
  v130 = *(a1 + 7);
  v131 = v68;
  v69 = *(a1 + 2);
  v124 = *(a1 + 1);
  v125 = v69;
  v70 = *(a1 + 4);
  v72 = *(a1 + 1);
  v71 = *(a1 + 2);
  v126 = *(a1 + 3);
  v127 = v70;
  v120 = v132;
  v121 = v64;
  v122[0] = *(a1 + 11);
  *(v122 + 11) = *(a1 + 187);
  v116 = v128;
  v117 = v67;
  v118 = v130;
  v119 = v63;
  v112 = v72;
  v113 = v71;
  v114 = v126;
  v115 = v66;
  v73 = *(a2 + 10);
  __dst[8] = *(a2 + 9);
  __dst[9] = v73;
  __dst[10] = *(a2 + 11);
  *(&__dst[10] + 11) = *(a2 + 187);
  v74 = *(a2 + 6);
  __dst[4] = *(a2 + 5);
  __dst[5] = v74;
  v75 = *(a2 + 8);
  __dst[6] = *(a2 + 7);
  __dst[7] = v75;
  v76 = *(a2 + 2);
  __dst[0] = *(a2 + 1);
  __dst[1] = v76;
  v77 = *(a2 + 4);
  __dst[2] = *(a2 + 3);
  __dst[3] = v77;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(__dst) == 1)
  {
    v78 = *(a1 + 10);
    v109 = *(a1 + 9);
    v110 = v78;
    v111[0] = *(a1 + 11);
    *(v111 + 11) = *(a1 + 187);
    v79 = *(a1 + 6);
    v105 = *(a1 + 5);
    v106 = v79;
    v80 = *(a1 + 8);
    v107 = *(a1 + 7);
    v108 = v80;
    v81 = *(a1 + 2);
    v101 = *(a1 + 1);
    v102 = v81;
    v82 = *(a1 + 4);
    v103 = *(a1 + 3);
    v104 = v82;
    v83 = MEMORY[0x1E6981730];
    outlined init with copy of Image.Resolved?(v138, v99, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    outlined init with copy of Image.Resolved?(v140, v99, &lazy cache variable for type metadata for Image.Resolved?, v83);
    outlined init with copy of Image.Resolved?(&v124, v99, &lazy cache variable for type metadata for Image.Resolved?, v83);
    outlined destroy of Image.Resolved(&v101);
    goto LABEL_15;
  }

  v85 = *(a2 + 10);
  v109 = *(a2 + 9);
  v110 = v85;
  v111[0] = *(a2 + 11);
  *(v111 + 11) = *(a2 + 187);
  v86 = *(a2 + 6);
  v105 = *(a2 + 5);
  v106 = v86;
  v87 = *(a2 + 8);
  v107 = *(a2 + 7);
  v108 = v87;
  v88 = *(a2 + 2);
  v101 = *(a2 + 1);
  v102 = v88;
  v89 = *(a2 + 4);
  v103 = *(a2 + 3);
  v104 = v89;
  v90 = MEMORY[0x1E6981730];
  outlined init with copy of Image.Resolved?(v138, v99, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  outlined init with copy of Image.Resolved?(v140, v99, &lazy cache variable for type metadata for Image.Resolved?, v90);
  outlined init with copy of Image.Resolved?(&v124, v99, &lazy cache variable for type metadata for Image.Resolved?, v90);
  v91 = specialized static Image.Resolved.== infix(_:_:)(&v112, &v101);
  v97[8] = v109;
  v97[9] = v110;
  v98[0] = v111[0];
  *(v98 + 11) = *(v111 + 11);
  v97[4] = v105;
  v97[5] = v106;
  v97[6] = v107;
  v97[7] = v108;
  v97[0] = v101;
  v97[1] = v102;
  v97[2] = v103;
  v97[3] = v104;
  outlined destroy of Image.Resolved(v97);
  v99[8] = v120;
  v99[9] = v121;
  v100[0] = v122[0];
  *(v100 + 11) = *(v122 + 11);
  v99[4] = v116;
  v99[5] = v117;
  v99[6] = v118;
  v99[7] = v119;
  v99[0] = v112;
  v99[1] = v113;
  v99[2] = v114;
  v99[3] = v115;
  outlined destroy of Image.Resolved(v99);
  v92 = *(a1 + 10);
  v109 = *(a1 + 9);
  v110 = v92;
  v111[0] = *(a1 + 11);
  *(v111 + 11) = *(a1 + 187);
  v93 = *(a1 + 6);
  v105 = *(a1 + 5);
  v106 = v93;
  v94 = *(a1 + 8);
  v107 = *(a1 + 7);
  v108 = v94;
  v95 = *(a1 + 2);
  v101 = *(a1 + 1);
  v102 = v95;
  v96 = *(a1 + 4);
  v103 = *(a1 + 3);
  v104 = v96;
  outlined destroy of PlatformItemList.Item?(&v101, &lazy cache variable for type metadata for Image.Resolved?, v90, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
  if ((v91 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v142.origin.x = v11;
  v142.origin.y = v12;
  v142.size.width = v13;
  v142.size.height = v14;
  v143.origin.x = v24;
  v143.origin.y = v25;
  v143.size.width = v26;
  v143.size.height = v27;
  result = CGRectEqualToRect(v142, v143);
  if (!result)
  {
    return result;
  }

  if (v15 != v28)
  {
    return 0;
  }

  return v16 == v29;
}

uint64_t specialized static AccessibilityLargeContentViewTree.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[13];
  v3 = a1[11];
  v98 = a1[12];
  v99 = v2;
  v4 = a1[13];
  v100 = a1[14];
  v5 = a1[9];
  v6 = a1[7];
  v94 = a1[8];
  v95 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v96 = a1[10];
  v97 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v90 = a1[4];
  v91 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v92 = a1[6];
  v93 = v12;
  v13 = a1[1];
  v87[0] = *a1;
  v87[1] = v13;
  v14 = a1[3];
  v15 = *a1;
  v16 = a1[1];
  v88 = a1[2];
  v89 = v14;
  v17 = a2[11];
  v114 = a2[12];
  v18 = a2[12];
  v115 = a2[13];
  v19 = a2[13];
  v116 = a2[14];
  v20 = a2[7];
  v110 = a2[8];
  v21 = a2[8];
  v111 = a2[9];
  v22 = a2[9];
  v112 = a2[10];
  v23 = a2[10];
  v113 = a2[11];
  v24 = a2[3];
  v106 = a2[4];
  v25 = a2[4];
  v107 = a2[5];
  v26 = a2[5];
  v108 = a2[6];
  v27 = a2[6];
  v109 = a2[7];
  v28 = a2[1];
  v102 = *a2;
  v29 = *a2;
  v103 = a2[1];
  v104 = a2[2];
  v30 = a2[2];
  v105 = a2[3];
  v118[12] = a1[12];
  v118[13] = a1[13];
  v118[14] = a1[14];
  v118[8] = a1[8];
  v118[9] = a1[9];
  v118[10] = a1[10];
  v118[11] = a1[11];
  v118[4] = a1[4];
  v118[5] = a1[5];
  v118[6] = a1[6];
  v118[7] = a1[7];
  v118[0] = *a1;
  v118[1] = a1[1];
  v118[2] = a1[2];
  v118[3] = a1[3];
  v31 = a2[14];
  v133 = v19;
  v134 = v31;
  v129 = v22;
  v130 = v23;
  v131 = v17;
  v132 = v18;
  v125 = v26;
  v126 = v27;
  v127 = v20;
  v128 = v21;
  v121 = v28;
  v122 = v30;
  v123 = v24;
  v124 = v25;
  v120 = v29;
  v136[12] = v98;
  v136[13] = v4;
  v136[14] = a1[14];
  v136[8] = v94;
  v136[9] = v7;
  v136[10] = v96;
  v136[11] = v3;
  v136[4] = v90;
  v136[5] = v11;
  v136[6] = v92;
  v136[7] = v6;
  v136[0] = v15;
  v136[1] = v16;
  v101 = *(a1 + 120);
  v117 = *(a2 + 120);
  v119 = *(a1 + 120);
  v135 = *(a2 + 120);
  v137 = *(a1 + 120);
  v136[2] = v88;
  v136[3] = v10;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v136);
  if (!Enum)
  {
    v39 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v136);
    v83 = v114;
    v84 = v115;
    v85 = v116;
    v86 = v117;
    v79 = v110;
    v80 = v111;
    v81 = v112;
    v82 = v113;
    v75 = v106;
    v76 = v107;
    v77 = v108;
    v78 = v109;
    v71 = v102;
    v72 = v103;
    v73 = v104;
    v74 = v105;
    if (!getEnumTag for AccessibilityLargeContentViewTree(&v71))
    {
      v40 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v71);
      v69[12] = *(v39 + 192);
      v69[13] = *(v39 + 208);
      v69[14] = *(v39 + 224);
      v70 = *(v39 + 240);
      v69[8] = *(v39 + 128);
      v69[9] = *(v39 + 144);
      v69[10] = *(v39 + 160);
      v69[11] = *(v39 + 176);
      v69[4] = *(v39 + 64);
      v69[5] = *(v39 + 80);
      v69[6] = *(v39 + 96);
      v69[7] = *(v39 + 112);
      v69[0] = *v39;
      v69[1] = *(v39 + 16);
      v69[2] = *(v39 + 32);
      v69[3] = *(v39 + 48);
      v41 = *(v40 + 208);
      v65 = *(v40 + 192);
      v66 = v41;
      v67 = *(v40 + 224);
      v68 = *(v40 + 240);
      v42 = *(v40 + 144);
      v61 = *(v40 + 128);
      v62 = v42;
      v43 = *(v40 + 176);
      v63 = *(v40 + 160);
      v64 = v43;
      v44 = *(v40 + 80);
      v57 = *(v40 + 64);
      v58 = v44;
      v45 = *(v40 + 112);
      v59 = *(v40 + 96);
      v60 = v45;
      v46 = *(v40 + 16);
      v54[0] = *v40;
      v54[1] = v46;
      v47 = *(v40 + 48);
      v55 = *(v40 + 32);
      v56 = v47;
      outlined init with copy of AccessibilityLargeContentViewTree(&v102, v53, *&v55);
      outlined init with copy of AccessibilityLargeContentViewTree(v87, v53, v48);
      outlined init with copy of AccessibilityLargeContentViewTree(&v102, v53, v49);
      outlined init with copy of AccessibilityLargeContentViewTree(v87, v53, v50);
      v38 = specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(v69, v54);
      outlined destroy of (Image.Resolved?, Image.Resolved?)(v118, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
      outlined destroy of AccessibilityLargeContentViewTree(&v102);
      outlined destroy of AccessibilityLargeContentViewTree(v87);
      return v38 & 1;
    }

LABEL_9:
    outlined init with copy of AccessibilityLargeContentViewTree(&v102, &v71, v34);
    outlined init with copy of AccessibilityLargeContentViewTree(v87, &v71, v51);
    outlined destroy of (Image.Resolved?, Image.Resolved?)(v118, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
    v38 = 0;
    return v38 & 1;
  }

  if (Enum != 1)
  {
    v83 = v114;
    v84 = v115;
    v85 = v116;
    v86 = v117;
    v79 = v110;
    v80 = v111;
    v81 = v112;
    v82 = v113;
    v75 = v106;
    v76 = v107;
    v77 = v108;
    v78 = v109;
    v71 = v102;
    v72 = v103;
    v73 = v104;
    v74 = v105;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v71) == 2)
    {
      outlined destroy of (Image.Resolved?, Image.Resolved?)(v118, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
      v38 = 1;
      return v38 & 1;
    }

    goto LABEL_9;
  }

  v33 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v136);
  v73 = v104;
  v74 = v105;
  v71 = v102;
  v72 = v103;
  v77 = v108;
  v78 = v109;
  v75 = v106;
  v76 = v107;
  v81 = v112;
  v82 = v113;
  v79 = v110;
  v80 = v111;
  v86 = v117;
  v84 = v115;
  v85 = v116;
  v83 = v114;
  if (getEnumTag for AccessibilityLargeContentViewTree(&v71) != 1)
  {
    goto LABEL_9;
  }

  v35 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v71);
  outlined init with copy of AccessibilityLargeContentViewTree(&v102, v69, v36);
  outlined init with copy of AccessibilityLargeContentViewTree(v87, v69, v37);
  v38 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(v33, v35);
  outlined destroy of (Image.Resolved?, Image.Resolved?)(v118, type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
  return v38 & 1;
}

uint64_t specialized static AccessibilityLargeContentViewTree.Key.reduce(value:nextValue:)(__int128 *a1, void (*a2)(__int128 *__return_ptr, uint64_t))
{
  v4 = a1[13];
  v116 = a1[12];
  v117 = v4;
  v118 = a1[14];
  v119 = *(a1 + 120);
  v5 = a1[9];
  v112 = a1[8];
  v113 = v5;
  v6 = a1[11];
  v114 = a1[10];
  v115 = v6;
  v7 = a1[5];
  v108 = a1[4];
  v109 = v7;
  v8 = a1[7];
  v110 = a1[6];
  v111 = v8;
  v9 = a1[1];
  v104 = *a1;
  v105 = v9;
  v10 = a1[3];
  v106 = a1[2];
  v107 = v10;
  v11 = outlined init with copy of AccessibilityLargeContentViewTree(&v104, v136, *&v106);
  a2(&v120, v11);
  v136[12] = v132;
  v136[13] = v133;
  v136[14] = v134;
  v136[8] = v128;
  v136[9] = v129;
  v136[10] = v130;
  v136[11] = v131;
  v136[4] = v124;
  v136[5] = v125;
  v136[6] = v126;
  v136[7] = v127;
  v136[0] = v120;
  v136[1] = v121;
  v136[2] = v122;
  v137 = v135;
  v136[3] = v123;
  if (getEnumTag for AccessibilityLargeContentViewTree(v136) == 2)
  {
    return outlined destroy of AccessibilityLargeContentViewTree(&v104);
  }

  v13 = a1[13];
  v100[12] = a1[12];
  v100[13] = v13;
  v100[14] = a1[14];
  v101 = *(a1 + 120);
  v14 = a1[9];
  v100[8] = a1[8];
  v100[9] = v14;
  v15 = a1[11];
  v100[10] = a1[10];
  v100[11] = v15;
  v16 = a1[5];
  v100[4] = a1[4];
  v100[5] = v16;
  v17 = a1[7];
  v100[6] = a1[6];
  v100[7] = v17;
  v18 = a1[1];
  v100[0] = *a1;
  v100[1] = v18;
  v19 = a1[3];
  v100[2] = a1[2];
  v100[3] = v19;
  outlined destroy of AccessibilityLargeContentViewTree(v100);
  v102[12] = v116;
  v102[13] = v117;
  v102[14] = v118;
  v103 = v119;
  v102[8] = v112;
  v102[9] = v113;
  v102[10] = v114;
  v102[11] = v115;
  v102[4] = v108;
  v102[5] = v109;
  v102[6] = v110;
  v102[7] = v111;
  v102[0] = v104;
  v102[1] = v105;
  v102[2] = v106;
  v102[3] = v107;
  result = getEnumTag for AccessibilityLargeContentViewTree(v102);
  if (!result)
  {
    destructiveProjectEnumData for AccessibilityLargeContentViewTree(v102);
    v96 = v132;
    v97 = v133;
    v98 = v134;
    v99 = v135;
    v92 = v128;
    v93 = v129;
    v94 = v130;
    v95 = v131;
    v88 = v124;
    v89 = v125;
    v90 = v126;
    v91 = v127;
    v84 = v120;
    v85 = v121;
    v86 = v122;
    v87 = v123;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v84) != 1)
    {
      type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
      v56 = swift_allocObject();
      v57 = v116;
      v58 = v118;
      *(v56 + 240) = v117;
      *(v56 + 256) = v58;
      v59 = v112;
      v60 = v114;
      v61 = v115;
      *(v56 + 176) = v113;
      *(v56 + 192) = v60;
      *(v56 + 208) = v61;
      *(v56 + 224) = v57;
      v62 = v108;
      v63 = v110;
      v64 = v111;
      *(v56 + 112) = v109;
      *(v56 + 128) = v63;
      *(v56 + 144) = v64;
      *(v56 + 160) = v59;
      v65 = v104;
      v66 = v105;
      *(v56 + 16) = xmmword_18CD63410;
      *(v56 + 32) = v65;
      v67 = v106;
      v68 = v107;
      *(v56 + 48) = v66;
      *(v56 + 64) = v67;
      *(v56 + 272) = v119;
      *(v56 + 80) = v68;
      *(v56 + 96) = v62;
      v69 = v133;
      *(v56 + 472) = v132;
      *(v56 + 488) = v69;
      *(v56 + 504) = v134;
      *(v56 + 520) = v135;
      v70 = v129;
      *(v56 + 408) = v128;
      *(v56 + 424) = v70;
      v71 = v131;
      *(v56 + 440) = v130;
      *(v56 + 456) = v71;
      v72 = v125;
      *(v56 + 344) = v124;
      *(v56 + 360) = v72;
      v73 = v127;
      *(v56 + 376) = v126;
      *(v56 + 392) = v73;
      v74 = v121;
      *(v56 + 280) = v120;
      *(v56 + 296) = v74;
      v75 = v123;
      *(v56 + 312) = v122;
      *(v56 + 328) = v75;
      *&v82[0] = v56;
      goto LABEL_14;
    }

    v22 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v84);
    type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v24 = v116;
    v25 = v118;
    *(v23 + 240) = v117;
    *(v23 + 256) = v25;
    v26 = v112;
    v27 = v114;
    v28 = v115;
    *(v23 + 176) = v113;
    *(v23 + 192) = v27;
    *(v23 + 208) = v28;
    *(v23 + 224) = v24;
    v29 = v108;
    v30 = v110;
    v31 = v111;
    *(v23 + 112) = v109;
    *(v23 + 128) = v30;
    *(v23 + 144) = v31;
    *(v23 + 160) = v26;
    v32 = v104;
    v33 = v105;
    *(v23 + 16) = xmmword_18CD63400;
    *(v23 + 32) = v32;
    v34 = v106;
    v35 = v107;
    *(v23 + 48) = v33;
    *(v23 + 64) = v34;
    *(v23 + 272) = v119;
    *(v23 + 80) = v35;
    *(v23 + 96) = v29;
    *&v82[0] = v23;
    v21 = v22;
LABEL_12:
    specialized Array.append<A>(contentsOf:)(v21);
LABEL_14:
    result = _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(v82);
    v76 = v82[13];
    a1[12] = v82[12];
    a1[13] = v76;
    a1[14] = v82[14];
    *(a1 + 120) = v83;
    v77 = v82[9];
    a1[8] = v82[8];
    a1[9] = v77;
    v78 = v82[11];
    a1[10] = v82[10];
    a1[11] = v78;
    v79 = v82[5];
    a1[4] = v82[4];
    a1[5] = v79;
    v80 = v82[7];
    a1[6] = v82[6];
    a1[7] = v80;
    v81 = v82[1];
    *a1 = v82[0];
    a1[1] = v81;
    v42 = v82[2];
    v43 = v82[3];
    goto LABEL_15;
  }

  if (result == 1)
  {
    v20 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v102);
    v86 = v122;
    v87 = v123;
    v84 = v120;
    v85 = v121;
    v90 = v126;
    v91 = v127;
    v88 = v124;
    v89 = v125;
    v94 = v130;
    v95 = v131;
    v92 = v128;
    v93 = v129;
    v99 = v135;
    v97 = v133;
    v98 = v134;
    v96 = v132;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v84) == 1)
    {
      v21 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v84);
    }

    else
    {
      type metadata accessor for Image.Resolved?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityLargeContentViewTree>, &type metadata for AccessibilityLargeContentViewTree, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      v44 = v132;
      v45 = v134;
      *(v21 + 240) = v133;
      *(v21 + 256) = v45;
      v46 = v128;
      v47 = v130;
      v48 = v131;
      *(v21 + 176) = v129;
      *(v21 + 192) = v47;
      *(v21 + 208) = v48;
      *(v21 + 224) = v44;
      v49 = v124;
      v50 = v126;
      v51 = v127;
      *(v21 + 112) = v125;
      *(v21 + 128) = v50;
      *(v21 + 144) = v51;
      *(v21 + 160) = v46;
      v52 = v120;
      v53 = v121;
      *(v21 + 16) = xmmword_18CD63400;
      *(v21 + 32) = v52;
      v54 = v122;
      v55 = v123;
      *(v21 + 48) = v53;
      *(v21 + 64) = v54;
      *(v21 + 272) = v135;
      *(v21 + 80) = v55;
      *(v21 + 96) = v49;
    }

    *&v82[0] = v20;
    goto LABEL_12;
  }

  v36 = v133;
  a1[12] = v132;
  a1[13] = v36;
  a1[14] = v134;
  *(a1 + 120) = v135;
  v37 = v129;
  a1[8] = v128;
  a1[9] = v37;
  v38 = v131;
  a1[10] = v130;
  a1[11] = v38;
  v39 = v125;
  a1[4] = v124;
  a1[5] = v39;
  v40 = v127;
  a1[6] = v126;
  a1[7] = v40;
  v41 = v121;
  *a1 = v120;
  a1[1] = v41;
  v42 = v122;
  v43 = v123;
LABEL_15:
  a1[2] = v42;
  a1[3] = v43;
  return result;
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi0_(uint64_t result)
{
  v1 = *(result + 240) & 0x301 | 0x4000;
  *(result + 200) &= 0xFFFFFFuLL;
  *(result + 240) = v1;
  return result;
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi_(uint64_t result)
{
  v1 = *(result + 240) & 0x301;
  *(result + 200) &= 0xFFFFFFuLL;
  *(result + 240) = v1;
  return result;
}

void type metadata accessor for (Image.Resolved?, Image.Resolved?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Image.Resolved?, Image.Resolved?))
  {
    type metadata accessor for Image.Resolved?(255, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Image.Resolved?, Image.Resolved?));
    }
  }
}

uint64_t outlined destroy of (Image.Resolved?, Image.Resolved?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree)()
{
  if (!lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree));
    }
  }
}

uint64_t _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with copy of Image.Resolved?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Image.Resolved?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_18CD633F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  return result;
}

uint64_t assignWithCopy for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *(a1 + 120);
  *(a1 + 120) = v4;
  v6 = v4;

  return a1;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v4 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior()
{
  result = lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior;
  if (!lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLargeContentViewBehavior, &type metadata for AccessibilityLargeContentViewBehavior, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLargeContentViewBehavior and conformance AccessibilityLargeContentViewBehavior);
  }

  return result;
}

uint64_t AsOptional.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for AsOptional(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t static AsOptional._makeViewList(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of _ViewListInputs(a2, v17);
  _ViewListCountInputs.init(_:)();
  (*(a5 + 40))(&v12, a3, a5);
  v17[3] = v15;
  v17[4] = v16;
  v17[1] = v13;
  v17[2] = v14;
  v17[0] = v12;
  outlined destroy of _ViewListCountInputs(v17);
  *&v12 = a3;
  *(&v12 + 1) = a4;
  *&v13 = a5;
  *(&v13 + 1) = a6;
  type metadata accessor for AsOptional(255, &v12);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  *&v12 = a3;
  *(&v12 + 1) = a4;
  *&v13 = a5;
  *(&v13 + 1) = a6;
  v10 = type metadata accessor for AsOptional.Child(0, &v12);
  swift_getWitnessTable(protocol conformance descriptor for AsOptional<A, B>.Child, v10);
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AsOptional.Child.view.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = type metadata accessor for AsOptional(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t AsOptional.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  v28 = a6;
  v29 = type metadata accessor for Optional();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v24 - v11;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v13 = type metadata accessor for AsOptional(0, v30);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v24 = a4;
  v25 = a5;
  AsOptional.Child.view.getter(a2, a3, a4, a5, &v24 - v18);
  v26 = *&v19[*(v13 + 52)];
  v20 = *(v14 + 8);

  v20(v19, v13);
  if (v10)
  {
    v21 = *(a2 - 8);
    v22 = 1;
  }

  else
  {
    AsOptional.Child.view.getter(a2, a3, v24, v25, v16);
    v21 = *(a2 - 8);
    (*(v21 + 16))(v12, v16, a2);
    v20(v16, v13);
    v22 = 0;
  }

  (*(v21 + 56))(v12, v22, 1, a2);
  v26(v12);

  return (*(v27 + 8))(v12, v29);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance AsOptional<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AsOptional<A, B>, a3);

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t *initializeBufferWithCopyOfBuffer for AsOptional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t initializeWithTake for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsOptional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsOptional(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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

_DWORD *storeEnumTagSinglePayload for AsOptional(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsOptional.Child(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AsOptional.Child(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t OptionalFormatInputToString.get(base:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v7, AssociatedTypeWitness);
    dispatch thunk of FormatStyle.format(_:)();
    (*(v8 + 8))(v12, AssociatedTypeWitness);
    return v14;
  }
}

uint64_t OptionalFormatInputToString.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = *(v10 + 8);
  v20 = a1;
  v14(a1, v9, v11);
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v21 = v17;
  v22 = v18;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v19 + 8))(v7, AssociatedTypeWitness);
  (*(*(v8 - 8) + 56))(v13, 0, 1, v8);
  return (*(v10 + 32))(v20, v13, v9);
}

uint64_t protocol witness for Projection.get(base:) in conformance OptionalFormatInputToString<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OptionalFormatInputToString.get(base:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t FormatInputToString.set(base:newValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v15 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - v10;
  dispatch thunk of ParseableFormatStyle.parseStrategy.getter();
  v18 = a2;
  v19 = v17;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of ParseStrategy.parse(_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v12 = *(v9 - 8);
  (*(v12 + 56))(v11, 0, 1, v9);
  v13 = v15;
  (*(v12 + 8))(v15, v9);
  return (*(v12 + 32))(v13, v11, v9);
}

Swift::Int OptionalFormatInputToString.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance FormatInputToString<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FormatInputToString.get(base:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OptionalFormatInputToString<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t Optional<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  (*(*(a1 - 8) + 56))(v9, 0, 1, a1);
  (*(v7 + 32))(a3, v9, v6);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t Optional<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  v12[1] = a1;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(*(a2 - 8) + 56))(v10, 0, 1, a2);
  (*(v8 + 32))(a4, v10, v7);
  return (*(v8 + 56))(a4, 0, 1, v7);
}

uint64_t AnyToFormattedString.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  AnyToFormattedString.init(_:)(a1);
  return v2;
}

uint64_t AnyToFormattedString.init(_:)(void *a1)
{
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFormatter, 0x1E696AC40);
  swift_dynamicCast();
  *(v1 + 16) = v4;
  return v1;
}

uint64_t AnyToFormattedString.get(base:)(uint64_t a1)
{
  v2 = [*(v1 + 16) stringForObjectValue_];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void static AnyToFormattedString.applyFormatting(to:string:formatter:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v94 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v8 = *(v4 + 80);
  v9 = type metadata accessor for Optional();
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90 - v10;
  v96 = v8;
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  v24 = MEMORY[0x18D00C850](a2, a3, v21);
  v101[0] = 0;
  *&v98 = 0;
  v25 = [a4 getObjectValue:v101 forString:v24 errorDescription:&v98];

  v26 = v101[0];
  if (v25)
  {
    v91 = v98;
    v27 = v96;
    if (v26)
    {
      swift_unknownObjectRetain_n();
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v93 = v26;
        v30 = v94;
        v31 = v95;
        v32 = *(v95 + 16);
        v32(v23, v94, v27);
        type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for BinaryFloatingPoint, MEMORY[0x1E69E5D50]);
        if (swift_dynamicCast())
        {
          (*(v31 + 8))(v30, v27);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v101);
          __swift_project_boxed_opaque_existential_1(v101, v102);
          DynamicType = swift_getDynamicType();
          v34 = v103;
          [v29 doubleValue];
          *(&v99 + 1) = DynamicType;
          v100 = v34;
          __swift_allocate_boxed_opaque_existential_1(&v98);
          dispatch thunk of BinaryFloatingPoint.init(_:)();
        }

        else
        {
          v100 = 0;
          v98 = 0u;
          v99 = 0u;
          outlined destroy of BinaryFloatingPoint?(&v98, &lazy cache variable for type metadata for BinaryFloatingPoint?, &lazy cache variable for type metadata for BinaryFloatingPoint, MEMORY[0x1E69E5D50]);
          v32(v19, v30, v27);
          type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for BinaryInteger, MEMORY[0x1E69E6908]);
          if (!swift_dynamicCast())
          {
            v100 = 0;
            v98 = 0u;
            v99 = 0u;
            outlined destroy of BinaryFloatingPoint?(&v98, &lazy cache variable for type metadata for BinaryInteger?, &lazy cache variable for type metadata for BinaryInteger, MEMORY[0x1E69E6908]);
            v32(v16, v30, v27);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint, &protocol descriptor for OptionalBinaryFloatingPoint);
            v63 = swift_dynamicCast();
            v64 = v95;
            if (v63)
            {
              (*(v95 + 8))(v30, v27);
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v101);
              __swift_project_boxed_opaque_existential_1(v101, v102);
              v65 = swift_getDynamicType();
              v66 = v103;
              [v29 doubleValue];
              v68 = v67;
              v69 = *(v66 + 8);
              v70 = type metadata accessor for Optional();
              v71 = *(v70 - 8);
              MEMORY[0x1EEE9AC00](v70);
              v73 = &v90 - v72;
              v69(v65, v66, v68);
              v74 = *(v65 - 8);
              if ((*(v74 + 48))(v73, 1, v65) == 1)
              {
                __swift_destroy_boxed_opaque_existential_1(v101);
                swift_unknownObjectRelease();
                (*(v71 + 8))(v73, v70);
                v100 = 0;
                v98 = 0u;
                v99 = 0u;
              }

              else
              {
                *(&v99 + 1) = v65;
                v100 = v66;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
                (*(v74 + 32))(boxed_opaque_existential_1, v73, v65);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v101);
              }

              v86 = &lazy cache variable for type metadata for OptionalBinaryFloatingPoint?;
              v87 = &lazy cache variable for type metadata for OptionalBinaryFloatingPoint;
              v88 = &protocol descriptor for OptionalBinaryFloatingPoint;
            }

            else
            {
              v100 = 0;
              v98 = 0u;
              v99 = 0u;
              outlined destroy of BinaryFloatingPoint?(&v98, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint?, &lazy cache variable for type metadata for OptionalBinaryFloatingPoint, &protocol descriptor for OptionalBinaryFloatingPoint);
              v32(v92, v30, v27);
              type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for OptionalBinaryInteger, &protocol descriptor for OptionalBinaryInteger);
              if ((swift_dynamicCast() & 1) == 0)
              {
                swift_unknownObjectRelease();
                v100 = 0;
                v98 = 0u;
                v99 = 0u;
                outlined destroy of BinaryFloatingPoint?(&v98, &lazy cache variable for type metadata for OptionalBinaryInteger?, &lazy cache variable for type metadata for OptionalBinaryInteger, &protocol descriptor for OptionalBinaryInteger);
                goto LABEL_23;
              }

              (*(v64 + 8))(v30, v27);
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v101);
              __swift_project_boxed_opaque_existential_1(v101, v102);
              v75 = swift_getDynamicType();
              v76 = v103;
              v77 = [v29 integerValue];
              v78 = *(v76 + 8);
              v79 = type metadata accessor for Optional();
              v80 = *(v79 - 8);
              v81 = MEMORY[0x1EEE9AC00](v79);
              v83 = &v90 - v82;
              v78(v77, v75, v76, v81);
              v84 = *(v75 - 8);
              if ((*(v84 + 48))(v83, 1, v75) == 1)
              {
                __swift_destroy_boxed_opaque_existential_1(v101);
                swift_unknownObjectRelease();
                (*(v80 + 8))(v83, v79);
                v100 = 0;
                v98 = 0u;
                v99 = 0u;
              }

              else
              {
                *(&v99 + 1) = v75;
                v100 = v76;
                v89 = __swift_allocate_boxed_opaque_existential_1(&v98);
                (*(v84 + 32))(v89, v83, v75);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v101);
              }

              v86 = &lazy cache variable for type metadata for OptionalBinaryInteger?;
              v87 = &lazy cache variable for type metadata for OptionalBinaryInteger;
              v88 = &protocol descriptor for OptionalBinaryInteger;
            }

            type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, v86, v87, v88, MEMORY[0x1E69E6720]);
            goto LABEL_22;
          }

          (*(v95 + 8))(v30, v27);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v101);
          __swift_project_boxed_opaque_existential_1(v101, v102);
          v54 = swift_getDynamicType();
          v55 = v103;
          v97 = [v29 integerValue];
          *(&v99 + 1) = v54;
          v100 = v55;
          __swift_allocate_boxed_opaque_existential_1(&v98);
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(_:)();
        }

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v101);
LABEL_22:
        swift_dynamicCast();
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    v101[0] = v26;
    type metadata accessor for Swift.AnyObject?();
    swift_unknownObjectRetain();
    v43 = swift_dynamicCast();
    v44 = v95;
    v45 = *(v95 + 56);
    if (v43)
    {
      v45(v11, 0, 1, v27);
      v46 = v94;
      (*(v44 + 8))(v94, v27);
      (*(v44 + 32))(v46, v11, v27);
LABEL_23:
      swift_unknownObjectRelease();

      return;
    }

    v45(v11, 1, 1, v27);
    (*(v93 + 8))(v11, v9);
    v47 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v47 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {
      goto LABEL_23;
    }

    v101[0] = v27;
    swift_getMetatypeMetadata();
    v48 = String.init<A>(describing:)();
    v50 = v49;
    v51 = static os_log_type_t.fault.getter();
    v52 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_18CD63400;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    *(v53 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    os_log(_:dso:log:_:_:)(v51, &dword_18BD4A000, v52, "Failure setting binding's value. The supplied formatter does not produce values of type %@. This may be resolved by ensuring the binding and the output of the formatter are of the same type.", 190, 2, v53);
    swift_unknownObjectRelease();

LABEL_17:

    return;
  }

  v35 = v98;
  swift_unknownObjectRetain();
  static Semantics.v3.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    swift_unknownObjectRelease();

    return;
  }

  if (v35)
  {
    v36 = v35;
    v37 = static os_log_type_t.fault.getter();
    v38 = static Log.runtimeIssuesLog.getter();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_18CD63400;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    os_log(_:dso:log:_:_:)(v37, &dword_18BD4A000, v38, "%@", 2, 2, v39);
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  v56 = static os_log_type_t.fault.getter();
  v57 = static Log.runtimeIssuesLog.getter();
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_18CD63410;
  v59 = MEMORY[0x1E69E6158];
  *(v58 + 56) = MEMORY[0x1E69E6158];
  v60 = lazy protocol witness table accessor for type String and conformance String();
  *(v58 + 64) = v60;
  *(v58 + 32) = a2;
  *(v58 + 40) = a3;
  v101[0] = v96;
  swift_getMetatypeMetadata();

  v61 = String.init<A>(describing:)();
  *(v58 + 96) = v59;
  *(v58 + 104) = v60;
  *(v58 + 72) = v61;
  *(v58 + 80) = v62;
  os_log(_:dso:log:_:_:)(v56, &dword_18BD4A000, v57, "The string %@ could not be formatted into a value of type %@.", 63, 2, v58);
  swift_unknownObjectRelease();
}

uint64_t AnyToFormattedString.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int AnyToFormattedString.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Projection.get(base:) in conformance AnyToFormattedString<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AnyToFormattedString.get(base:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyToFormattedString<A1>(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnyToFormattedString.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TextField<>.init<A>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v26 = a5;
  v27 = a1;
  v29 = a4;
  v28 = a3;
  v32 = a9;
  v16 = *(a12 - 8);
  v30 = a11;
  v31 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v20 + 16))(&v25 - v22, a5, v19, v21);
  (*(v16 + 16))(v18, a6, a12);
  v36 = v27;
  v37 = a2;
  v38 = v28;
  v39 = v29;
  TextField.init<A>(_:format:prompt:label:)(v23, v18, v33, v34, v31, v30, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v35, v32, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138], a13);

  (*(v16 + 8))(a6, a12);
  return (*(v20 + 8))(v26, v19);
}

{
  v33 = a7;
  v34 = a8;
  v26 = a5;
  v27 = a1;
  v29 = a4;
  v28 = a3;
  v32 = a9;
  v16 = *(a12 - 8);
  v30 = a11;
  v31 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Binding();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  (*(v20 + 16))(&v25 - v22, a5, v19, v21);
  (*(v16 + 16))(v18, a6, a12);
  v36 = v27;
  v37 = a2;
  v38 = v28;
  v39 = v29;
  TextField.init<A>(_:format:prompt:label:)(v23, v18, v33, v34, v31, v30, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v35, v32, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138], a13);

  (*(v16 + 8))(a6, a12);
  return (*(v20 + 8))(v26, v19);
}

uint64_t TextField.init<A>(value:format:prompt:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a9;
  v24 = a10;
  v15 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a1, v18, v20);
  (*(v15 + 16))(v17, a2, a11);
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v26, v27, v28, v29, v30, v31, v25, v24, a11, a12, a13);
  (*(v15 + 8))(a2, a11);
  return (*(v19 + 8))(a1, v18);
}

{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v25 = a9;
  v24 = a10;
  v15 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a1, v18, v20);
  (*(v15 + 16))(v17, a2, a11);
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v26, v27, v28, v29, v30, v31, v25, v24, a11, a12, a13);
  (*(v15 + 8))(a2, a11);
  return (*(v19 + 8))(a1, v18);
}

uint64_t TextField<>.init<A, B>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a8;
  v28 = a9;
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v25 = a2;
  v26 = a11;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v19 + 16))(&v25 - v21, a2, v18, v20);
  (*(v15 + 16))(v17, a3, a10);
  v23 = v27;
  v34 = v27;
  v35 = a10;
  v36 = v26;
  v37 = a12;
  v38 = a1;
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v29, v30, v31, v32, partial apply for closure #1 in TextField<>.init<A, B>(_:value:format:prompt:), v33, v28, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138], a12);
  (*(v15 + 8))(a3, a10);
  (*(v19 + 8))(v25, v18);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

{
  v27 = a8;
  v28 = a9;
  v31 = a6;
  v32 = a7;
  v29 = a4;
  v30 = a5;
  v25 = a2;
  v26 = a11;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  (*(v19 + 16))(&v25 - v21, a2, v18, v20);
  (*(v15 + 16))(v17, a3, a10);
  v23 = v27;
  v34 = v27;
  v35 = a10;
  v36 = v26;
  v37 = a12;
  v38 = a1;
  TextField.init<A>(_:format:prompt:label:)(v22, v17, v29, v30, v31, v32, partial apply for closure #1 in TextField<>.init<A, B>(_:value:format:prompt:), v33, v28, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138], a12);
  (*(v15 + 8))(a3, a10);
  (*(v19 + 8))(v25, v18);
  return (*(*(v23 - 8) + 8))(a1, v23);
}

uint64_t closure #1 in TextField<>.init<A, B>(_:value:format:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t TextField<>.init<A>(_:value:formatter:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a9;
  v27 = a6;
  v25 = a10;
  v18 = type metadata accessor for Binding();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24 - v21;
  (*(v19 + 16))(&v24 - v21, a5, v18, v20);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v22, v27, v28, v29, v26, v25, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, x8_0, 0, 0, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v30, MEMORY[0x1E6981148], a11, MEMORY[0x1E6981138]);

  return (*(v19 + 8))(a5, v18);
}

uint64_t TextField.init<A>(value:formatter:prompt:label:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a1, v16, v18);
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, v23, v24, v25, v26, v27, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, x8_0, 0, 0, a7, a8, a9, a10, a11);
  return (*(v17 + 8))(a1, v16);
}

uint64_t TextField<>.init<A, B>(_:value:formatter:prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v24 = a6;
  v25 = a7;
  v22 = a4;
  v23 = a5;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a2, v16, v18);
  v27 = a8;
  v28 = a9;
  v29 = a10;
  v30 = a1;
  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, a3, v22, v23, v24, v25, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, 0, x8_0, 0, 0, partial apply for closure #2 in TextField<>.init<A, B>(_:value:formatter:prompt:), v26, MEMORY[0x1E6981148], a9, MEMORY[0x1E6981138]);
  (*(v17 + 8))(a2, v16);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t TextField<>.init<A>(_:value:formatter:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a7;
  v24 = a3;
  v27 = a9;
  v25 = a5;
  v26 = a10;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v23[-v20];
  (*(v18 + 16))(&v23[-v20], a5, v17, v19);
  v31 = a1;
  v32 = a2;
  v33 = v24;
  v34 = a4;

  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v21, v28, 0, 0, 0, 0, v29, a8, v27, v26, a11, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v30, MEMORY[0x1E6981148], a12, MEMORY[0x1E6981138]);

  return (*(v18 + 8))(v25, v17);
}

uint64_t TextField<>.init<A, B>(_:value:formatter:onEditingChanged:onCommit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a9;
  v16 = type metadata accessor for Binding();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a2, v16, v18);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a1;

  TextField.init<A>(_:formatter:prompt:onEditingChanged:onCommit:label:)(v20, v24, 0, 0, 0, 0, v25, a5, v22, v23, a7, partial apply for closure #1 in TextField<>.init<A, B>(_:value:formatter:onEditingChanged:onCommit:), v26, MEMORY[0x1E6981148], a10, MEMORY[0x1E6981138]);

  (*(v17 + 8))(a2, v16);
  return (*(*(a8 - 8) + 8))(a1, a8);
}

uint64_t closure #1 in TextField<>.init<A>(_:value:format:prompt:)@<X0>(uint64_t a5@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

void type metadata accessor for Swift.AnyObject?()
{
  if (!lazy cache variable for type metadata for Swift.AnyObject?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Swift.AnyObject?);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t outlined destroy of BinaryFloatingPoint?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for _ContiguousArrayStorage<CVarArg>(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double PickerContent.onHover(perform:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v12);
  (*(v11 + 32))(a5, v14, a3);
  v16 = (a5 + *(type metadata accessor for _OnHoverPickerContent(0, a3, a4, v15) + 36));
  *v16 = a1;
  v16[1] = a2;

  return result;
}

uint64_t _OnHoverPickerContent._identifiedView.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v14 - v8;
  (*(v3 + 56))(v4, v3, v7);
  v10 = (v1 + *(a1 + 36));
  v11 = *v10;
  v12 = v10[1];
  swift_getAssociatedConformanceWitness();
  View.onHover(perform:)(v11, v12, AssociatedTypeWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for _OnHoverPickerContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _OnHoverPickerContent<A>);
  *(a1 + 8) = result;
  return result;
}

void specialized implicit closure #2 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TableColumnCollection.Entry(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  outlined copy of TableColumnCustomizationID.Base(*v3, v5, v6, v7, v8);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

double outlined copy of TableColumnCustomizationID.Base(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }

  return result;
}

uint64_t Array<A>.withResolvedOffsets.getter(uint64_t a1, double a2)
{
  type metadata accessor for (offset: Int, element: TableCellFormula)(0, a2);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v27 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v27 - v11;
  v30 = type metadata accessor for TableCellFormula(0);
  v12 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v17 = 0;
    v16 = v32;
    v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v29 = v15;
    v18 = a1 + v28;
    v27 = *(v12 + 72);
    do
    {
      v19 = *(v4 + 48);
      v20 = v31;
      outlined init with copy of TableCellFormula(v18, &v31[v19], type metadata accessor for TableCellFormula);
      *v9 = v17;
      outlined init with take of TableCellFormula(&v20[v19], v9 + *(v4 + 48), type metadata accessor for TableCellFormula);
      outlined init with copy of TableCellFormula(v9, v6, type metadata accessor for (offset: Int, element: TableCellFormula));
      outlined init with take of TableCellFormula(v6 + *(v4 + 48), v14, type metadata accessor for TableCellFormula);
      outlined init with take of TableCellFormula(v9, v6, type metadata accessor for (offset: Int, element: TableCellFormula));
      v21 = *(v4 + 48);
      v22 = &v14[*(v30 + 40)];
      *v22 = *v6;
      v22[8] = 0;
      outlined destroy of TableCellFormula(v6 + v21, type metadata accessor for TableCellFormula);
      v32 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v16 = v32;
      }

      ++v17;
      *(v16 + 16) = v24 + 1;
      v25 = v27;
      outlined init with take of TableCellFormula(v14, v16 + v28 + v24 * v27, type metadata accessor for TableCellFormula);
      v18 += v25;
    }

    while (v29 != v17);
  }

  return v16;
}

void type metadata accessor for (offset: Int, element: TableCellFormula)(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for (offset: Int, element: TableCellFormula))
  {
    type metadata accessor for TableCellFormula(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula));
    }
  }
}

Swift::Bool __swiftcall TableDataSourceAdaptor.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *(v1 + 40);
  if (*(v2 + 16) <= forSectionAt)
  {
LABEL_11:
    __break(1u);
    return forSectionAt;
  }

  if (*(v2 + 96 * forSectionAt + 40))
  {
    LOBYTE(forSectionAt) = 1;
  }

  else if (forSectionAt)
  {
    LOBYTE(forSectionAt) = 0;
  }

  else
  {
    LOBYTE(forSectionAt) = (*(v1 + 168) & 1) == 0 && *(v1 + 169) != 2;
  }

  return forSectionAt;
}

uint64_t TableDataSourceAdaptor.headerDisplayMode.getter()
{
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 2;
  }

  outlined init with copy of TableSections.Item(v1 + 32, v9);
  if (v10 == 1)
  {
    return 2;
  }

  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v2 = *&v9[0];
  outlined destroy of TableSections.Item(v4);
  if (v2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *TableDataSourceAdaptor.configureHeader(_:transaction:forSectionAt:)(void *result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v3 + 40);
  if (*(v4 + 16) <= a3)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v4 + 96 * a3;
  v8 = *(v7 + 32);
  outlined init with copy of TableColumnCollection(v3 + 48, v18);
  v9 = *(v3 + 112);
  v10 = *(v3 + 120);
  v11 = *(v3 + 128);
  v12 = *(v3 + 104);
  v17[0] = v6;
  v17[1] = a2;
  v18[6] = v9;
  v18[7] = v10;
  v18[8] = v11;
  v19 = v12;
  v20 = v8 == 0;
  if (*(v7 + 40) == 1)
  {
    v13 = outlined init with copy of TableRowList(v3, v16);
    MEMORY[0x1EEE9AC00](v13);
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v9, v10);
    v14 = v6;
    outlined copy of Transaction?(a2);
    static Update.ensure<A>(_:)();
    outlined destroy of TableRowList(v16);
  }

  else
  {
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v9, v10);
    v15 = v6;
    outlined copy of Transaction?(a2);
    ViewTraitCollection.init()();
    CollectionViewTableHeaderVisitor.visitCommon(view:traits:)(0, v16);
  }

  return outlined destroy of CollectionViewTableHeaderVisitor(v17);
}

uint64_t TableDataSourceAdaptor.configureCell(_:transaction:context:)(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyHashable?(a3 + 160, &v27, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (*(&v28 + 1))
  {
    v20[0] = v27;
    v20[1] = v28;
    v21 = KeyPath;
    static _ViewList_ID.explicit<A>(_:)();
    v6 = v27;
    v7 = DWORD1(v27);
    if (!*(*(&v27 + 1) + 16))
    {

      outlined destroy of AnyHashable(v20);
      v8 = 0;
      goto LABEL_10;
    }

    v8 = *(*(&v27 + 1) + 32);
    v9 = *(*(&v27 + 1) + 52);

    outlined destroy of AnyHashable(v20);
  }

  else
  {
    outlined destroy of Binding<AnyTableColumnCustomization>(&v27, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v23 = *(a3 + 152);
    *&v27 = 0;
    BYTE8(v27) = 1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    _ViewList_ID.init(implicitID:)();
    v6 = v20[0];
    v7 = DWORD1(v20[0]);
    v8 = *(*(&v20[0] + 1) + 16);

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_10;
    }

    v8 = *(*(&v20[0] + 1) + 32);
    v9 = *(*(&v20[0] + 1) + 52);

    swift_bridgeObjectRelease_n();
  }

  if (v9)
  {
    v7 = -1;
  }

LABEL_10:
  v10 = *(a3 + 152);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v11 = 52.0;
  }

  else
  {
    v11 = 44.0;
  }

  *&v27 = swift_getKeyPath();
  BYTE8(v27) = 0;
  *&v28 = swift_getKeyPath();
  BYTE8(v28) = 0;
  KeyPath = swift_getKeyPath();
  v30 = 0;
  v31 = swift_getKeyPath();
  v32 = 0;
  v34 = 0;
  v33 = 0;
  v35 = 0;
  v12 = swift_getKeyPath();
  v26 = 0;
  v36 = v12;
  v37 = 0;
  v39 = 1;
  v40 = 0;
  *&v20[0] = v10;

  ViewTraitCollection.listRowInsets.getter();
  *&v20[0] = v10;
  v23 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v25 = v10;
  v23 = 1;
  v24 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v23);
  v13 = *&v20[0];
  v14 = BYTE8(v20[0]);
  outlined consume of ListItemTint?(1);
  v39 = v13;
  v40 = v14;
  v41 = 0;
  v42 = v11;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = 1;
  v38 = 0;
  v15 = &a1[direct field offset for ListCollectionViewCellBase.viewListID];
  *v15 = 0;
  v15[1] = 0;

  v16 = direct field offset for TableCollectionViewCell.isHeader;
  v17 = a1[direct field offset for TableCollectionViewCell.isHeader];
  a1[direct field offset for TableCollectionViewCell.isHeader] = 0;
  if (v17 == 1)
  {
    [a1 setNeedsUpdateConfiguration];
    [a1 setAutomaticallyUpdatesBackgroundConfiguration_];
  }

  specialized ListCollectionViewCellBase.configureAccessories<A>(context:)(a3);
  outlined init with copy of TableRowView(a3 + 16, v20);
  outlined init with copy of CollectionViewCellModifier(&v27, &v22);
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(v20, a2);
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v20, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  *&v20[0] = *(a3 + 152);
  LOBYTE(v23) = 0;

  ViewTraitCollection.listItemBackground(kind:)(&v23);

  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA08TableRowE0VG_Tt0g5Tm(v18, a2);

  return outlined destroy of CollectionViewCellModifier(&v27);
}

void specialized TableSections.firstIndexPath<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v13 = *(v3 + 16);
  if (v13)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      *v23 = v5;
      outlined init with copy of TableSections.Item(v6, &v23[8]);
      if (*&v23[56] == 1)
      {
        goto LABEL_10;
      }

      v12 = *v23;
      *v23 = *&v23[8];
      *&v23[16] = *&v23[24];
      *&v23[32] = *&v23[40];
      *&v23[48] = *&v23[56];
      *&v23[64] = *&v23[72];
      *&v23[80] = *&v23[88];
      v19 = a1;
      v20 = *&v23[16];
      v21 = 0;
      v22 = 0;
      v7 = outlined init with copy of AnyHashable?(&v23[24], &v14, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
      if (*(&v15 + 1))
      {
        v17[0] = v14;
        v17[1] = v15;
        v18 = v16;
        MEMORY[0x1EEE9AC00](v7);

        static Update.ensure<A>(_:)();
        outlined destroy of TableRowList(v17);
      }

      else
      {

        v8 = outlined destroy of Binding<AnyTableColumnCustomization>(&v14, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
        MEMORY[0x1EEE9AC00](v8);
        static Update.ensure<A>(_:)();
      }

      if (v21 == 1)
      {
        MEMORY[0x18D0006A0](v22, v12);
        outlined destroy of TableSections.Item(v23);

        v10 = type metadata accessor for IndexPath();
        (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
        return;
      }

      ++v5;
      outlined destroy of TableSections.Item(v23);

      v6 += 96;
      if (v13 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

void TableDataSourceAdaptor.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9 = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewList_ID.Canonical, @inout Bool) -> ();
  v10 = v6;
  v11 = 0;
  outlined init with copy of TableRowList(v3, v8);

  static Update.ensure<A>(_:)();
  outlined destroy of TableRowList(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

unint64_t TableDataSourceAdaptor.contextForItem(index:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = result;
  v6 = *(v3 + 40);
  if (*(v6 + 16) <= result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = v6 + 32;
  v9 = v6 + 32 + 96 * result;
  result = outlined init with copy of TableSections.Item(v9, v38);
  v10 = *(v3 + 170);
  if (v10 == 1)
  {
    v11 = *(v9 + 80);
    v12 = *(v9 + 88);
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v14 < a2 || v11 > a2 || v14 < v11)
    {
      goto LABEL_33;
    }

    v13 = __OFSUB__(a2, v11);
    v17 = a2 - v11;
    if (v13)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v18 = (*(v3 + 169) != 2) & ~*(v3 + 168);
    v13 = __OFADD__(v18, v17);
    v19 = v18 + v17;
    if (v13)
    {
LABEL_35:
      __break(1u);
      return result;
    }

    v27 = a3;
    if (v4)
    {
      v26 = v19;

      v20 = 0;
      v21 = v4;
      while (1)
      {
        outlined init with copy of TableSections.Item(v8, v33);
        v22 = v34;
        result = outlined destroy of TableSections.Item(v33);
        v13 = __OFADD__(v20, v22);
        v20 += v22;
        if (v13)
        {
          break;
        }

        v8 += 96;
        if (!--v21)
        {

          v19 = v26 + v20;
          if (!__OFADD__(v26, v20))
          {
            goto LABEL_19;
          }

          __break(1u);
          break;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_19:
    a3 = v27;
  }

  else
  {
    v19 = 0;
  }

  memset(v36, 0, 203);
  v23 = *(v3 + 96);
  v33[0] = v4;
  v33[1] = a2;
  v34 = v19;
  v35 = v10 ^ 1;
  v37 = v23;
  v24 = outlined init with copy of AnyHashable?(&v39, &v28, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList);
  if (*(&v29 + 1))
  {
    v31[0] = v28;
    v31[1] = v29;
    v32 = v30;
    MEMORY[0x1EEE9AC00](v24);
  }

  else
  {

    outlined destroy of Binding<AnyTableColumnCustomization>(&v28, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
    v25 = outlined init with copy of TableRowList(v3, v31);
    MEMORY[0x1EEE9AC00](v25);
  }

  static Update.ensure<A>(_:)();
  outlined destroy of TableSections.Item(v38);
  outlined destroy of TableRowList(v31);
  outlined init with copy of TableCellFormula(v36, a3, type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?);
  result = outlined destroy of TableContentVisitor<TableDataSourceAdaptor>(v33);
  if (*(a3 + 144))
  {
    *(a3 + 200) = *(v3 + 104);
  }

  return result;
}

uint64_t protocol witness for CollectionViewListDataSourceBase.style.getter in conformance TableDataSourceAdaptor@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E69DC248];
  if (!v3)
  {
    v6 = MEMORY[0x1E69DC240];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void protocol witness for ListCoreDataSource.firstIndexPath(viewListID:) in conformance TableDataSourceAdaptor(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    specialized TableSections.firstIndexPath<A>(for:)(v3, a2);
  }

  else
  {
    v4 = type metadata accessor for IndexPath();
    v5 = *(*(v4 - 8) + 56);

    v5(a2, 1, 1, v4);
  }
}

uint64_t protocol witness for ListCoreDataSource.separatorConfiguration(forRowAt:) in conformance TableDataSourceAdaptor(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double protocol witness for ListDiffable.sectionIDs.getter in conformance TableDataSourceAdaptor@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);
  a1[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
  a1[2] = 0;

  return result;
}

unint64_t *protocol witness for ListDiffable.rowIDs(forSectionAt:) in conformance TableDataSourceAdaptor@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 40);
    if (v3 < *(v4 + 16))
    {
      v5 = v4 + 96 * v3;
      v6 = *(v5 + 96);
      v7 = *(v5 + 104);
      *a2 = v6;
      *(a2 + 8) = v7;
      *(a2 + 16) = *(v5 + 112);
      return outlined copy of ResolvedTableRowIDs.Storage(v6, v7);
    }
  }

  __break(1u);
  return result;
}

void _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0d5TableE4CellC_Tt0g5Tm(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v9 = v5;
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  if (!a1)
  {
    specialized PlatformListViewBase<>.backgroundHost.setter(0, a4, a5);
    return;
  }

  v39 = a3;
  (a3)(v16);
  v19 = type metadata accessor for UIBackgroundConfiguration();
  v20 = (*(v19 - 8) + 48);
  v38 = *v20;
  if (v38(v18, 1, v19))
  {
    outlined destroy of UIBackgroundConfiguration?(v18, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_4:
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
    v22 = objc_allocWithZone(v21);

    v24 = specialized _UIHostingView.init(rootView:)(v23);
    UIHostingViewBase.isHiddenForReuse.setter();
    v25 = v24;
    specialized PlatformListViewBase<>.backgroundHost.setter(v24, a4, a5);

    goto LABEL_5;
  }

  v30 = UIBackgroundConfiguration.customView.getter();
  v31 = v18;
  v32 = v30;
  outlined destroy of UIBackgroundConfiguration?(v31, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v32)
  {
    goto LABEL_4;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  v37 = v33;
  v34 = swift_dynamicCastClass();
  if (!v34)
  {

    goto LABEL_4;
  }

  v35 = v34;
  if (a2 == 1)
  {
    v36 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x60);
    swift_beginAccess();
    *(v35 + v36) = a1;

    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>, protocol conformance descriptor for _UIHostingView<A>);
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  else
  {

    specialized _UIHostingView.setRootView(_:transaction:)(a1, a2, &unk_1EFF8EE40, partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:));

    outlined consume of ListItemTint?(a2);
  }

LABEL_5:
  v39();
  if (v38(v14, 1, v19))
  {
    outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
    goto LABEL_20;
  }

  v20 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  if (!swift_dynamicCastClass())
  {
LABEL_21:

    __break(1u);
    return;
  }

  v26 = _s7SwiftUI14_UIHostingViewC2asyqd__Sgqd__mlFAA15ModifiedContentVyAA03AnyD0VAA13EmptyModifierVG_AA23ContainerBackgroundHost_pTt0g5();
  v28 = v27;

  if (v26)
  {
    ObjectType = swift_getObjectType();
    (*(v28 + 8))(32, 1, ObjectType, v28);
    swift_unknownObjectRelease();
  }

  [v9 setBackgroundColor_];
}

uint64_t specialized ListCollectionViewCellBase.configureAccessories<A>(context:)(uint64_t a1)
{
  v2 = type metadata accessor for UICellAccessory.ReorderOptions();
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = (&v68 - v5);
  v6 = type metadata accessor for UICellAccessory.DeleteOptions();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v68 - v9);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UICellAccessory.LayoutDimension?, MEMORY[0x1E69DBF38]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v68 - v12;
  v13 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UICellAccessory.DisplayedState();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v84 = type metadata accessor for UICellAccessory();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v74 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v81 = &v68 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v68 - v34;
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(v88, v33, 1);
  v36 = v88[3];
  outlined destroy of Binding<AnyTableColumnCustomization>(v88, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  if (v36)
  {
    v70 = a1;
    if (*(a1 + 200) == 1)
    {
      (*(v18 + 104))(v28, *MEMORY[0x1E69DBF18], v17);
      v37 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v37 - 8) + 56))(v83, 1, 1, v37);
      UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
      static UICellAccessory.multiselect(displayed:options:)();
      v38 = v16;
      v39 = v17;
      (*(v14 + 8))(v38, v13);
      (*(v18 + 8))(v28, v17);
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v42 = v40[2];
      v41 = v40[3];
      if (v42 >= v41 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v40);
      }

      a1 = v70;
      v40[2] = v42 + 1;
      (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v42, v35, v84);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      v39 = v17;
      a1 = v70;
    }
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
    v39 = v17;
  }

  v43 = *(a1 + 152);
  v88[0] = v43;
  ViewTraitCollection.deleteInteraction.getter(v10);
  v44 = type metadata accessor for DeleteInteraction(0);
  if ((*(*(v44 - 8) + 48))(v10, 1, v44) == 1)
  {
    outlined destroy of UIBackgroundConfiguration?(v10, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
LABEL_12:
    v46 = *(a1 + 201);
    if (!*(a1 + 201))
    {
      goto LABEL_25;
    }

    v88[0] = v43;
    v86 = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if ((v87 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v45 = *(v10 + *(v44 + 24));
  outlined destroy of TableCellFormula(v10, type metadata accessor for DeleteInteraction);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = *(a1 + 201);
LABEL_14:
  if (v46 > 2)
  {
    if (v46 != 3)
    {
      goto LABEL_25;
    }

    v47 = MEMORY[0x1E69DBF28];
  }

  else
  {
    v47 = MEMORY[0x1E69DBF20];
    if (v46 < 2)
    {
      v47 = MEMORY[0x1E69DBF18];
    }
  }

  v48 = v76;
  (*(v18 + 104))(v76, *v47, v39);
  v49 = v77;
  (*(v18 + 32))(v77, v48, v39);
  v50 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v50 - 8) + 56))(v83, 1, 1, v50);
  v51 = v78;
  UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.delete(displayed:options:actionHandler:)();
  (*(v79 + 8))(v51, v80);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
  }

  v53 = v40[2];
  v52 = v40[3];
  if (v53 >= v52 >> 1)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v40);
  }

  (*(v18 + 8))(v49, v39);
  v40[2] = v53 + 1;
  (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v53, v81, v84);
  v43 = *(a1 + 152);
LABEL_25:
  v88[0] = v43;
  v54 = v85;
  ViewTraitCollection.moveInteraction.getter(v85);
  v55 = type metadata accessor for MoveInteraction(0);
  if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
  {
    outlined destroy of UIBackgroundConfiguration?(v54, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  }

  else
  {
    v56 = *v54;
    outlined destroy of TableCellFormula(v54, type metadata accessor for MoveInteraction);
    if (v56)
    {
      v57 = *(a1 + 202);
      v58 = v57 >= 2;
      if (v57 > 2)
      {
        v61 = v74;
        v60 = v75;
        if (v57 != 3)
        {
          return UICollectionViewListCell.accessories.setter();
        }

        v59 = MEMORY[0x1E69DBF28];
      }

      else
      {
        v59 = MEMORY[0x1E69DBF20];
        if (!v58)
        {
          v59 = MEMORY[0x1E69DBF18];
        }

        v61 = v74;
        v60 = v75;
      }

      v62 = v69;
      (*(v18 + 104))(v69, *v59, v39);
      (*(v18 + 32))(v60, v62, v39);
      v63 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
      v64 = v71;
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      static UICellAccessory.reorder(displayed:options:)();
      (*(v72 + 8))(v64, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2] + 1, 1, v40);
      }

      v66 = v40[2];
      v65 = v40[3];
      if (v66 >= v65 >> 1)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v40);
      }

      (*(v18 + 8))(v60, v39);
      v40[2] = v66 + 1;
      (*(v82 + 32))(v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v66, v61, v84);
    }
  }

  return UICollectionViewListCell.accessories.setter();
}

void specialized PlatformListViewBase<>.backgroundHost.setter(void *a1, void (*a2)(void), void (*a3)(char *))
{
  v21 = a3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = a1;
  a2();
  if ((*(v6 + 48))(v14, 1, v5))
  {
    outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_3:
    v16 = 0;
    goto LABEL_4;
  }

  v19 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v14, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v19)
  {
    goto LABEL_3;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>(0);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
  }

LABEL_4:
  if (a1)
  {

    if (v16 && (swift_unknownObjectRelease(), v16 == a1))
    {
    }

    else
    {
      v17 = v15;
      UIHostingViewBase.isHiddenForReuse.setter();
      static UIBackgroundConfiguration.clear()();
      v18 = v17;
      UIBackgroundConfiguration.customView.setter();
      (*(v6 + 16))(v11, v8, v5);
      (*(v6 + 56))(v11, 0, 1, v5);
      v21(v11);

      (*(v6 + 8))(v8, v5);
    }
  }

  else if (v16)
  {
    swift_unknownObjectRelease();
    static UIBackgroundConfiguration.listCell()();
    (*(v6 + 56))(v11, 0, 1, v5);
    v21(v11);
  }
}

void *specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = result;
    UIHostingViewBase.viewGraph.getter();

    v4 = *((*v2 & *v3) + 0x60);
    swift_beginAccess();
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v3 + v4, v5, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v5, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = result;
    UIHostingViewBase.viewGraph.getter();

    v4 = *((*v2 & *v3) + 0x60);
    swift_beginAccess();
    v5 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v3 + v4, v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v5, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v5, &type metadata for CollectionViewCellModifier);
  }

  return result;
}

{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = result;
    UIHostingViewBase.viewGraph.getter();

    v4 = *((*v2 & *v3) + 0x60);
    swift_beginAccess();
    outlined init with copy of TabItem.RootView(v3 + v4, v5);
    AGGraphSetValue();

    return outlined destroy of TabItem.RootView(v5);
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = result;
    UIHostingViewBase.viewGraph.getter();

    v4 = *((*v2 & *v3) + 0x60);
    swift_beginAccess();
    v5 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v3 + v4, v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v5, &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    AGGraphSetValue();

    return outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v6, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v5, &type metadata for ListTableCellModifier);
  }

  return result;
}

{
  v6 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    v3 = result;
    UIHostingViewBase.viewGraph.getter();

    v4 = *((*v2 & *v3) + 0x60);
    swift_beginAccess();
    outlined init with copy of BridgedNavigationView.RootView(v3 + v4, v5);
    AGGraphSetValue();

    return outlined destroy of BridgedNavigationView.RootView(v5);
  }

  return result;
}

void specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();

    AGGraphSetValue();
  }
}

void key path getter for EnvironmentValues.uiKitCellState : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

double key path setter for EnvironmentValues.uiKitCellState : EnvironmentValues(_BYTE *a1, void *a2)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void *key path getter for EnvironmentValues.headerProminence : EnvironmentValues@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.headerProminence.getter();
  *a2 = v4;
  return result;
}

double key path getter for EnvironmentValues.prominentHeaderStyling : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);
    PropertyList.subscript.getter();
  }

  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for EnvironmentValues.prominentHeaderStyling : EnvironmentValues(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = v3;
  v5 = *(a1 + 48);
  v19 = *(a1 + 64);
  v6 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v6;
  v11 = v4;
  v12 = v17;
  v7 = *(a1 + 64);
  v13 = v5;
  v14 = v7;
  v20 = *(a1 + 80);
  v15 = *(a1 + 80);
  v10 = v16[0];
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);

  outlined init with copy of ListContentStyling(v16, v9);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey);
  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t outlined init with copy of TableCellFormula(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TableCellFormula(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Binding<AnyTableColumnCustomization>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for TableRowList?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)()
{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return specialized closure #1 in TableRowList.visitRows<A>(applying:from:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?)
  {
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor()
{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
  if (!lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor);
  }

  return result;
}

uint64_t outlined destroy of TableContentVisitor<TableDataSourceAdaptor>(uint64_t a1)
{
  type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(0, &lazy cache variable for type metadata for TableContentVisitor<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for TableContentVisitor);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>();
    v7[0] = v3;
    v7[1] = MEMORY[0x1E6981E70];
    v7[2] = v4;
    v7[3] = MEMORY[0x1E6981E60];
    v5 = type metadata accessor for UIHostingConfiguration(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TableRowView and conformance TableRowView();
    v5[1] = lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowView and conformance TableRowView()
{
  result = lazy protocol witness table cache variable for type TableRowView and conformance TableRowView;
  if (!lazy protocol witness table cache variable for type TableRowView and conformance TableRowView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowView, &type metadata for TableRowView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowView and conformance TableRowView);
  }

  return result;
}

uint64_t outlined destroy of TableCellFormula(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<TableRowView, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *partial apply for specialized closure #1 in _UIHostingView.setRootView(_:transaction:)()
{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

{
  return specialized closure #1 in _UIHostingView.setRootView(_:transaction:)(v0);
}

double outlined copy of Binding<[SwiftUIAnySortComparator]>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void specialized TableDataSourceAdaptor.configureGlobalHeader(_:transaction:)(void *a1)
{
  type metadata accessor for TableGlobalHeader();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    [v4 setAutomaticallyUpdatesContentConfiguration_];
    v6 = *(v1 + 112);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    outlined init with copy of TableColumnCollection(v1 + 48, v13);
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v6, v7);
    v9 = TableDataSourceAdaptor.headerDisplayMode.getter();
    v10 = *(v1 + 104);
    v12[0] = v6;
    v12[1] = v7;
    v12[2] = v8;
    v13[41] = v9;
    v13[42] = v10;
    v11 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(v12, v4 + v11);
    swift_endAccess();
    [v4 setNeedsUpdateConfiguration];
  }
}

uint64_t outlined assign with take of TableHeaderView?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TableRowList?(0, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t destroy for TableDataSourceAdaptor(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (*(a1 + 88))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 48));
  }

  if (*(a1 + 120))
  {
  }

  if (*(a1 + 144))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 88);

  if (v5)
  {
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 72) = v6;
    (**(v6 - 8))(a1 + 48, a2 + 48);
  }

  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);

  if (!v7)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 144);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_9;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a2 + 144);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v8;
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;

LABEL_9:
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  return a1;
}

uint64_t assignWithCopy for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  if (a1 != a2)
  {
    outlined destroy of TableColumnCollection.Backing(a1 + 48);
    if (*(a2 + 88))
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 88) = 1;
    }

    else
    {
      v4 = *(a2 + 72);
      *(a1 + 72) = v4;
      *(a1 + 80) = *(a2 + 80);
      (**(v4 - 8))(a1 + 48, a2 + 48);
      *(a1 + 88) = 0;
    }
  }

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (v5)
    {
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      outlined destroy of TableCellFormula(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v6 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v6;
    }
  }

  else if (v5)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  v8 = *(a2 + 144);
  if (*(a1 + 144))
  {
    if (v8)
    {
      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
    }

    else
    {
      outlined destroy of Binding<AnyTableColumnCustomization>(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      v9 = *(a2 + 152);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = v9;
    }
  }

  else if (v8)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v10 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v10;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  return a1;
}

void type metadata accessor for Binding<[SwiftUIAnySortComparator]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [SwiftUIAnySortComparator], &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>);
    }
  }
}

__n128 __swift_memcpy171_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t assignWithTake for TableDataSourceAdaptor(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  if (a1 != a2)
  {
    outlined destroy of TableColumnCollection.Backing(a1 + 48);
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
    *(a1 + 73) = *(a2 + 73);
  }

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);

      if (!*(a1 + 144))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    outlined destroy of TableCellFormula(a1 + 112, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  if (!*(a1 + 144))
  {
LABEL_12:
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    goto LABEL_13;
  }

LABEL_9:
  if (!*(a2 + 144))
  {
    outlined destroy of Binding<AnyTableColumnCustomization>(a1 + 136, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
    goto LABEL_12;
  }

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

LABEL_13:
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableDataSourceAdaptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 171))
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

uint64_t storeEnumTagSinglePayload for TableDataSourceAdaptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 170) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 171) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 171) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs()
{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs;
  if (!lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for LazyMapSequence<[TableSections.Item], Int>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](&lazy protocol witness table cache variable for type [TableSections.Item] and conformance [A], MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6CC0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[TableSections.Item], Int> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[TableSections.Item], Int>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[TableSections.Item], Int>)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [TableSections.Item], &type metadata for TableSections.Item, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](&lazy protocol witness table cache variable for type [TableSections.Item] and conformance [A], MEMORY[0x1E69E6328]);
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<[TableSections.Item], Int>);
    }
  }
}

void type metadata accessor for TableRowList?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t lazy protocol witness table accessor for type [TableSections.Item] and conformance [A](unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableRowList?(255, &lazy cache variable for type metadata for [TableSections.Item], &type metadata for TableSections.Item, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowID and conformance TableRowID()
{
  result = lazy protocol witness table cache variable for type TableRowID and conformance TableRowID;
  if (!lazy protocol witness table cache variable for type TableRowID and conformance TableRowID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableRowID, &type metadata for TableRowID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowID and conformance TableRowID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableRowID and conformance TableRowID;
  if (!lazy protocol witness table cache variable for type TableRowID and conformance TableRowID)
  {
    result = swift_getWitnessTable("uN\vbXk\b", &type metadata for TableRowID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowID and conformance TableRowID);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TableDataSourceAdaptor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier()
{
  result = lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier;
  if (!lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListTableCellModifier, &type metadata for ListTableCellModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListTableCellModifier and conformance ListTableCellModifier);
  }

  return result;
}

void type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, &type metadata for ListTableCellModifier, lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t closure #1 in TableRowList.visitRows<A>(applying:from:)specialized partial apply()
{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

{
  return partial apply for specialized closure #1 in TableRowList.visitRows<A>(applying:from:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneRestorationBehavior.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneRestorationBehavior.Role(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

double Scene.restorationBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.restorationBehavior(_:), v6, a2, a3);

  return result;
}

char *closure #1 in Scene.restorationBehavior(_:)(char *result, char a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return result;
    }

    if (v3 == 1)
    {
      v6 = 0;
    }

    else
    {
      v7 = v2 + 569;
      v6 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v3 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        *v7 = a2;
        v7[568] = a2;
        v7 += 1136;
        v8 -= 2;
      }

      while (v8);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    v9 = v3 - v6;
    v10 = &v2[568 * v6 + 569];
    do
    {
      *v10 = a2;
      v10 += 568;
      --v9;
    }

    while (v9);
LABEL_12:
    *v5 = v2;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role;
  if (!lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SceneRestorationBehavior.Role, &type metadata for SceneRestorationBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRestorationBehavior.Role and conformance SceneRestorationBehavior.Role);
  }

  return result;
}

uint64_t destroy for TableHeaderView(uint64_t *a1)
{
  if (a1[1])
  {
  }

  if ((a1[8] & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1 + 3);
  }
}

uint64_t initializeWithCopy for TableHeaderView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (!v4)
  {
    *a1 = *a2;
    *(a1 + 16) = a2[2];
    v5 = *(a2 + 64);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(a2 + 3);
    *(a1 + 48) = v6;
    (**(v6 - 8))(a1 + 24, a2 + 3);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];

  v5 = *(a2 + 64);
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 24) = a2[3];

LABEL_6:
  *(a1 + 64) = v5;
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t *assignWithCopy for TableHeaderView(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      *a1 = *a2;

      a1[1] = a2[1];

      a1[2] = a2[2];

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v5 = a2[2];
      *a1 = *a2;
      a1[2] = v5;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = *a2;
    a1[2] = a2[2];
    *a1 = v6;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of TableColumnCollection.Backing((a1 + 3));
  if (a2[8])
  {
    a1[3] = a2[3];
    *(a1 + 64) = 1;
  }

  else
  {
    v7 = a2[6];
    a1[6] = v7;
    a1[7] = a2[7];
    (**(v7 - 8))(a1 + 3, a2 + 3);
    *(a1 + 64) = 0;
  }

LABEL_14:
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  return a1;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t *assignWithTake for TableHeaderView(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    v4 = a2[1];
    if (v4)
    {
      *a1 = *a2;

      a1[1] = v4;

      a1[2] = a2[2];

      if (a1 == a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *a1 = *a2;
  a1[2] = a2[2];
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of TableColumnCollection.Backing((a1 + 3));
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 49) = *(a2 + 49);
  }

LABEL_8:
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  return a1;
}

uint64_t storeEnumTagSinglePayload for TableHeaderView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double protocol witness for View.body.getter in conformance TableHeaderView@<D0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  outlined init with copy of TableColumnCollection(v2 + 24, a1 + 80);
  v7 = *(v2 + 65);
  v8 = *(v2 + 66);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 121) = v7;
  *(a1 + 122) = v8;

  return outlined copy of Binding<[SwiftUIAnySortComparator]>?(v4, v5);
}

void TableHeaderViewCore.body.getter(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v41 = a1;
  type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(0, a2);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>(0);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>(0);
  closure #1 in TableHeaderViewCore.body.getter(v3, &v7[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = &v7[*(v5 + 44)];
  *v25 = KeyPath;
  v25[8] = 0;
  *(v25 + 2) = v24;
  *(v25 + 12) = 0;
  specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24));
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v7, v11, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
  v34 = &v11[*(v9 + 36)];
  *v34 = 2;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  if (one-time initialization token for tableHeaderFont != -1)
  {
    swift_once();
  }

  v35 = static ListMetrics.tableHeaderFont;
  v36 = swift_getKeyPath();
  outlined init with take of ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(v11, v14);
  v37 = &v14[*(v40 + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = swift_getKeyPath();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v14, v18, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>);
  v39 = &v18[*(v16 + 36)];
  *v39 = v38;
  *(v39 + 1) = 1;
  v39[16] = 0;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v18, v21, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v21, v41, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, StyleContextWriter<TableStyleContext>>);
}

uint64_t closure #1 in TableHeaderViewCore.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v119 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StaticTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SortableTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v107 - v12;
  type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>(0);
  v125 = v13;
  v121 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v110 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v107 - v16;
  type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v116 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v122 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v107 - v22;
  type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v120 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v107 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  v124 = type metadata accessor for TableColumnCollection.Entry(0);
  v35 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v114 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v107 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v107 - v41;
  outlined init with copy of TableColumnCollection(a1 + 56, v141);
  specialized Collection.dropFirst(_:)(1uLL, v158);
  v126 = a1;
  if (*(a1 + 97))
  {
    if (*(a1 + 97) == 1)
    {
      specialized Collection.first.getter(v34);
      v43 = v124;
      if ((*(v35 + 48))(v34, 1, v124) == 1)
      {
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v34, type metadata accessor for TableColumnCollection.Entry?);
        _s7SwiftUI15ModifiedContentVyACyAA5ColorVAA16_FlexFrameLayoutVGAA01_gH0VGSgWOi0_(&v147);
      }

      else
      {
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v34, v42, type metadata accessor for TableColumnCollection.Entry);
        v59 = static Color.clear.getter();
        v60 = &v42[*(v43 + 28)];
        v160 = v60[32];
        v61 = *(v60 + 1);
        v159[0] = *v60;
        v159[1] = v61;
        specialized View.tableColumnFrame(_:alignment:)(v159, v42[*(v43 + 36)], v59, v127);

        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v42, type metadata accessor for TableColumnCollection.Entry);
        v141[8] = v127[8];
        v141[9] = v127[9];
        *&v141[10] = v128;
        v141[4] = v127[4];
        v141[5] = v127[5];
        v141[6] = v127[6];
        v141[7] = v127[7];
        v141[0] = v127[0];
        v141[1] = v127[1];
        v141[2] = v127[2];
        v141[3] = v127[3];
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
        v155 = v141[8];
        v156 = v141[9];
        v157 = *&v141[10];
        v151 = v141[4];
        v152 = v141[5];
        v154 = v141[7];
        v153 = v141[6];
        v147 = v141[0];
        v148 = v141[1];
        v150 = v141[3];
        v149 = v141[2];
      }

      v51 = v123;
      v62 = v120;
      outlined init with copy of Slice<TableColumnCollection>(v158, v145);
      outlined init with copy of TableHeaderViewCore(v126, v141);
      v63 = swift_allocObject();
      v64 = v141[5];
      *(v63 + 80) = v141[4];
      *(v63 + 96) = v64;
      *(v63 + 111) = *(&v141[5] + 15);
      v65 = v141[1];
      *(v63 + 16) = v141[0];
      *(v63 + 32) = v65;
      v66 = v141[3];
      *(v63 + 48) = v141[2];
      *(v63 + 64) = v66;
      type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>, MEMORY[0x1E6981870]);
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry, protocol conformance descriptor for TableColumnCollection.Entry);
      ForEach<>.init(_:content:)();
      v138 = v155;
      v139 = v156;
      v140 = v157;
      v134 = v151;
      v135 = v152;
      v136 = v153;
      v137 = v154;
      v130 = v147;
      v131 = v148;
      v132 = v149;
      v133 = v150;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v142, v129, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v143[8] = v138;
      v143[9] = v139;
      v143[4] = v134;
      v143[5] = v135;
      v143[7] = v137;
      v143[6] = v136;
      v143[0] = v130;
      v143[1] = v131;
      v143[3] = v133;
      v143[2] = v132;
      v141[8] = v138;
      v141[9] = v139;
      v141[4] = v134;
      v141[5] = v135;
      v141[6] = v136;
      v141[7] = v137;
      v141[0] = v130;
      v141[1] = v131;
      v144 = v140;
      *&v141[10] = v140;
      v141[2] = v132;
      v141[3] = v133;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v129, &v141[10] + 8, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v143, v145, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v142, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Slice<TableColumnCollection>(v158);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v129, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v145[8] = v138;
      v145[9] = v139;
      v146 = v140;
      v145[4] = v134;
      v145[5] = v135;
      v145[7] = v137;
      v145[6] = v136;
      v145[0] = v130;
      v145[1] = v131;
      v145[3] = v133;
      v145[2] = v132;
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v145, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?);
      memcpy(v62, v141, 0x110uLL);
      v67 = MEMORY[0x1E697F948];
      type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>.Storage, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      v68 = v62;
      goto LABEL_21;
    }

    v54 = v126;
    specialized Collection.first.getter(v28);
    v55 = v124;
    if ((*(v35 + 48))(v28, 1, v124) == 1)
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v28, type metadata accessor for TableColumnCollection.Entry?);
      v56 = 1;
      v57 = v123;
      v58 = v116;
LABEL_25:
      (*(v121 + 56))(v58, v56, 1, v125);
      outlined init with copy of Slice<TableColumnCollection>(v158, &v147);
      outlined init with copy of TableHeaderViewCore(v54, v141);
      v99 = swift_allocObject();
      v100 = v141[5];
      *(v99 + 80) = v141[4];
      *(v99 + 96) = v100;
      *(v99 + 111) = *(&v141[5] + 15);
      v101 = v141[1];
      *(v99 + 16) = v141[0];
      *(v99 + 32) = v101;
      v102 = v141[3];
      *(v99 + 48) = v141[2];
      *(v99 + 64) = v102;
      type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>, MEMORY[0x1E6981870]);
      lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry, protocol conformance descriptor for TableColumnCollection.Entry);
      ForEach<>.init(_:content:)();
      v103 = v122;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v58, v122, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v141, &v147, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      v104 = v119;
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v103, v119, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(0, &lazy cache variable for type metadata for (VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>), type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v147, v104 + *(v105 + 48), type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v141, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v58, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined destroy of Slice<TableColumnCollection>(v158);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v147, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>);
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v103, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
      outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v104, v57, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>);
      type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>.Storage, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F948]);
      return swift_storeEnumTagMultiPayload();
    }

    v78 = v114;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v28, v114, type metadata accessor for TableColumnCollection.Entry);
    v79 = specialized Environment.wrappedValue.getter(*v54, *(v54 + 8));
    v80 = static HorizontalAlignment.center.getter();
    v81 = v110;
    *v110 = v80;
    *(v81 + 8) = 0;
    *(v81 + 16) = 1;
    v82 = *(v54 + 40);
    v57 = v123;
    v58 = v116;
    if (v82)
    {
      v83 = *(v54 + 32);
      v84 = *(v54 + 48);
      outlined init with copy of SwiftUIAnySortComparator?(v78 + *(v55 + 44), v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v141[1] + 1))
      {

        outlined destroy of AccessibilityTableContext?(v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        v85 = v78;
        v86 = v109;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v85, v109, type metadata accessor for TableColumnCollection.Entry);
        v87 = v108;
        *(v86 + *(v108 + 20)) = v79;
        v88 = (v86 + *(v87 + 24));
        *v88 = v83;
        v88[1] = v82;
        v88[2] = v84;
        *(v86 + *(v87 + 28)) = 0;
        v89 = v86;
        v78 = v114;
        v90 = v111;
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v89, v111, type metadata accessor for SortableTableHeaderButton);
LABEL_24:
        type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>(0);
        outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v90, v81 + *(v98 + 44));
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v78, type metadata accessor for TableColumnCollection.Entry);
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v81, v58, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
        v56 = 0;
        goto LABEL_25;
      }

      outlined destroy of AccessibilityTableContext?(v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    }

    v96 = v113;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v78, v113, type metadata accessor for TableColumnCollection.Entry);
    v90 = v111;
    v97 = v112;
    *(v96 + *(v112 + 20)) = v79;
    *(v96 + *(v97 + 24)) = 0;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v96, v90, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_24;
  }

  v44 = v39;
  v45 = v117;
  v46 = v118;
  v47 = v23;
  v48 = v126;
  specialized Collection.first.getter(v31);
  v49 = v124;
  if ((*(v35 + 48))(v31, 1, v124) != 1)
  {
    v69 = v44;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v31, v44, type metadata accessor for TableColumnCollection.Entry);
    v70 = specialized Environment.wrappedValue.getter(*v48, *(v48 + 8));
    v71 = v45;
    *v45 = static HorizontalAlignment.center.getter();
    *(v45 + 1) = 0;
    v45[16] = 1;
    v72 = *(v48 + 40);
    if (v72)
    {
      v73 = *(v48 + 32);
      v74 = *(v48 + 48);
      outlined init with copy of SwiftUIAnySortComparator?(v69 + *(v49 + 44), v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v141[1] + 1))
      {

        outlined destroy of AccessibilityTableContext?(v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        v75 = v109;
        outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v69, v109, type metadata accessor for TableColumnCollection.Entry);
        v76 = v108;
        *(v75 + *(v108 + 20)) = v70;
        v77 = (v75 + *(v76 + 24));
        *v77 = v73;
        v77[1] = v72;
        v77[2] = v74;
        *(v75 + *(v76 + 28)) = 0;
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v75, v46, type metadata accessor for SortableTableHeaderButton);
LABEL_19:
        type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>(0);
        outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v46, v71 + *(v93 + 44));
        outlined destroy of Binding<[SwiftUIAnySortComparator]>(v69, type metadata accessor for TableColumnCollection.Entry);
        outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v71, v47, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
        v50 = 0;
        v52 = v120;
        v53 = v115;
        v51 = v123;
        goto LABEL_20;
      }

      outlined destroy of AccessibilityTableContext?(v141, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    }

    v91 = v113;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v69, v113, type metadata accessor for TableColumnCollection.Entry);
    v92 = v112;
    *(v91 + *(v112 + 20)) = v70;
    *(v91 + *(v92 + 24)) = 0;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v91, v46, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_19;
  }

  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v31, type metadata accessor for TableColumnCollection.Entry?);
  v50 = 1;
  v51 = v123;
  v52 = v120;
  v53 = v115;
LABEL_20:
  (*(v121 + 56))(v47, v50, 1, v125);
  outlined init with copy of Slice<TableColumnCollection>(v158, &v147);
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
  type metadata accessor for UUID();
  type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>(0);
  lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>, lazy protocol witness table accessor for type ModifiedContent<Color, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697E040]);
  lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TableColumnCollection.Entry and conformance TableColumnCollection.Entry, type metadata accessor for TableColumnCollection.Entry, protocol conformance descriptor for TableColumnCollection.Entry);
  ForEach<>.init(_:content:)();
  v94 = v122;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v47, v122, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v141, &v147, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v94, v53, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(0, &lazy cache variable for type metadata for (VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>), type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v147, v53 + *(v95 + 48), type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v141, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v47, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined destroy of Slice<TableColumnCollection>(v158);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v147, type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v94, type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?);
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v53, v52, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>);
  v67 = MEMORY[0x1E697F948];
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>.Storage, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  v68 = v52;
LABEL_21:
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v68, v51, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>.Storage, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, v67);
  return swift_storeEnumTagMultiPayload();
}

unint64_t specialized Collection.dropFirst(_:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = result;
    outlined init with copy of TableColumnCollection.Backing(v2, v19);
    if (v20)
    {
      v6 = *(*&v19[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v6 = (*(v8 + 8))(v7, v8);
      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);
    if (v4 && v9 < v4)
    {
      outlined init with copy of TableColumnCollection.Backing(v3, v19);
      if (v20)
      {
        v10 = *(*&v19[0] + 16);
      }

      else
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
        v11 = v17;
        v12 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        v10 = (*(v12 + 8))(v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
      v10 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v4);
    }

    outlined init with copy of TableColumnCollection.Backing(v3, v19);
    if (v20)
    {
      v13 = *(*&v19[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, v16);
      v14 = v17;
      v15 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v13 = (*(v15 + 8))(v14, v15);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
    }

    if (v13 >= v10)
    {
      specialized Collection<>.subscript.getter(v10, v13, a2);
      return outlined destroy of TableColumnCollection(v3);
    }
  }

  __break(1u);
  return result;
}

__n128 closure #2 in closure #1 in TableHeaderViewCore.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static Color.clear.getter();
  v6 = type metadata accessor for TableColumnCollection.Entry(0);
  v7 = a1 + *(v6 + 28);
  v17 = *(v7 + 32);
  v8 = *(v7 + 16);
  v16[0] = *v7;
  v16[1] = v8;
  specialized View.tableColumnFrame(_:alignment:)(v16, *(a1 + *(v6 + 36)), v5, v14);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v14[9];
  *(a2 + 128) = v14[8];
  *(a2 + 144) = v9;
  *(a2 + 160) = v15;
  v10 = v14[5];
  *(a2 + 64) = v14[4];
  *(a2 + 80) = v10;
  v11 = v14[7];
  *(a2 + 96) = v14[6];
  *(a2 + 112) = v11;
  v12 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v12;
  result = v14[3];
  *(a2 + 32) = v14[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t closure #1 in closure #1 in TableHeaderViewCore.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StaticTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SortableTableHeaderButton(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TableColumnCollection.Entry(0);
  v25 = *(a1 + *(v16 + 24));
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v17 = a2[5];
  if (!v17)
  {
    goto LABEL_5;
  }

  v24 = a3;
  v18 = a2[4];
  v19 = a2[6];
  outlined init with copy of SwiftUIAnySortComparator?(a1 + *(v16 + 44), v26, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!v27)
  {
    outlined destroy of AccessibilityTableContext?(v26, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    a3 = v24;
LABEL_5:
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(a1, v9, type metadata accessor for TableColumnCollection.Entry);
    *&v9[*(v7 + 20)] = 0;
    *&v9[*(v7 + 24)] = v25;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v9, v15, type metadata accessor for StaticTableHeaderButton);
    goto LABEL_6;
  }

  outlined destroy of AccessibilityTableContext?(v26, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(a1, v12, type metadata accessor for TableColumnCollection.Entry);
  *&v12[v10[5]] = 0;
  v20 = &v12[v10[6]];
  *v20 = v18;
  *(v20 + 1) = v17;
  *(v20 + 2) = v19;
  *&v12[v10[7]] = v25;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v12, v15, type metadata accessor for SortableTableHeaderButton);
  a3 = v24;
LABEL_6:
  type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(0, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>.Storage, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>(0);
  return outlined init with take of _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>(v15, a3 + *(v21 + 44));
}

uint64_t SortableTableHeaderButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v27 = a1;
  v4 = type metadata accessor for SortableTableHeaderButton(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SortableTableHeaderButton;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v3, v8, type metadata accessor for SortableTableHeaderButton);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v25 = type metadata accessor for SortableTableHeaderButton;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v8, v14 + v13, type metadata accessor for SortableTableHeaderButton);
  *v12 = 4;
  v15 = &v12[*(v10 + 44)];
  *v15 = partial apply for closure #1 in SortableTableHeaderButton.sortableButton.getter;
  v15[1] = v14;
  v24 = type metadata accessor for ButtonAction(0);
  swift_storeEnumTagMultiPayload();
  closure #2 in SortableTableHeaderButton.sortableButton.getter(v3, &v12[*(v10 + 48)]);
  v28[0] = *(v3 + *(v5 + 36));
  v16 = v28[0];
  v29 = 3;
  v17 = v27;
  specialized View.accessibilityTableContext(_:)(v28, v27);
  outlined destroy of AccessibilityTableContext?(v28, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v12, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  type metadata accessor for StaticIf<IsVisionEnabledPredicate, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>>(0);
  v23 = *(v18 + 44);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v3, v8, v26);
  v19 = swift_allocObject();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(v8, v19 + v13, v25);
  *v12 = 4;
  v20 = &v12[*(v10 + 44)];
  *v20 = closure #1 in SortableTableHeaderButton.sortableButton.getterpartial apply;
  v20[1] = v19;
  swift_storeEnumTagMultiPayload();
  closure #2 in SortableTableHeaderButton.sortableButton.getter(v3, &v12[*(v10 + 48)]);
  v28[0] = v16;
  v29 = 3;
  specialized View.accessibilityTableContext(_:)(v28, v17 + v23);
  outlined destroy of AccessibilityTableContext?(v28, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  return outlined destroy of Binding<[SwiftUIAnySortComparator]>(v12, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
}

uint64_t closure #1 in SortableTableHeaderButton.sortableButton.getter(uint64_t a1, double a2)
{
  v3 = a1 + *(type metadata accessor for SortableTableHeaderButton(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  result = outlined init with copy of SwiftUIAnySortComparator?(a1 + *(v7 + 44), v9, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (v10)
  {
    sort(_:comparator:)(v4, v5, v6, v9);
    return outlined destroy of SwiftUIAnySortComparator(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sort(_:comparator:)(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  v7 = result;
  v61[1] = result;
  v61[2] = a2;
  v61[3] = a3;
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>(0);
  v9 = v8;

  MEMORY[0x18D00ACC0](v61, v9);
  if (*(v61[0] + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v61[0] + 32, &v53);
  }

  else
  {

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  outlined init with copy of SwiftUIAnySortComparator(a4, &v50);
  outlined init with copy of SwiftUIAnySortComparator?(&v53, &v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of SwiftUIAnySortComparator?(&v50, &v42, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (*(&v37 + 1))
  {
    outlined init with copy of SwiftUIAnySortComparator?(&v36, v34, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (*(&v43 + 1))
    {
      v32[2] = v46;
      v32[3] = v47;
      v32[4] = v48;
      v33 = v49;
      v31[0] = v42;
      v31[1] = v43;
      v32[0] = v44;
      v32[1] = v45;
      v10 = MEMORY[0x18D00E7E0](&v35, v32);
      outlined destroy of SwiftUIAnySortComparator(v31);
      outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of SwiftUIAnySortComparator(v34);
      outlined destroy of AccessibilityTableContext?(&v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if ((v10 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_11:
      *&v53 = v7;
      *(&v53 + 1) = a2;
      *&v54 = a3;
      MEMORY[0x18D00ACC0](&v50, v9);
      specialized Array.remove(at:)(0, &v36);
      outlined destroy of SwiftUIAnySortComparator(&v36);
      v34[0] = v50;
      dispatch thunk of AnyLocation.set(_:transaction:)();

      outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
      v11 = (*(a4 + 104))(a4);
      (*(&v39 + 1))(&v53, &v36, (v11 & 1) == 0);
      outlined assign with take of AnyHashable(&v53, v38);
      v50 = v7;
      v51 = a2;
      v52 = a3;
      MEMORY[0x18D00ACC0](v34, v9);
      v57 = v38[2];
      v58 = v39;
      v59 = v40;
      v60 = v41;
      v53 = v36;
      v54 = v37;
      v55 = v38[0];
      v56 = v38[1];
      v12 = v34[0];
      v13 = *(v34[0] + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v12;
      if (!isUniquelyReferenced_nonNull_native || v13 >= *(v12 + 3) >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v12);
        v34[0] = v12;
      }

      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v53);
      *&v53 = v12;
      goto LABEL_35;
    }

    outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of SwiftUIAnySortComparator(v34);
  }

  else
  {
    outlined destroy of AccessibilityTableContext?(&v50, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (!*(&v43 + 1))
    {
      outlined destroy of AccessibilityTableContext?(&v36, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      goto LABEL_11;
    }
  }

  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v36, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
LABEL_17:
  *&v53 = v7;
  *(&v53 + 1) = a2;
  *&v54 = a3;
  v30 = v9;
  result = MEMORY[0x18D00ACC0](&v50, v9);
  v15 = v50;
  v16 = *(v50 + 2);
  if (v16)
  {
    v17 = 0;
    v18 = (v50 + 32);
    while (1)
    {
      if (v17 >= *(v15 + 2))
      {
        __break(1u);
        goto LABEL_38;
      }

      outlined init with copy of SwiftUIAnySortComparator(v18, &v36);
      v19 = MEMORY[0x18D00E7E0](v38, a4 + 32);
      result = outlined destroy of SwiftUIAnySortComparator(&v36);
      if (v19)
      {
        break;
      }

      ++v17;
      v18 += 120;
      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }

    *&v53 = v7;
    *(&v53 + 1) = a2;
    *&v54 = a3;
    MEMORY[0x18D00ACC0](&v50, v9);
    v26 = v17;
LABEL_30:
    specialized Array.remove(at:)(v26, &v36);
    outlined destroy of SwiftUIAnySortComparator(&v36);
    v34[0] = v50;
    dispatch thunk of AnyLocation.set(_:transaction:)();

    goto LABEL_31;
  }

LABEL_22:

  v50 = v7;
  v51 = a2;
  v52 = a3;
  MEMORY[0x18D00ACC0](v34, v9);
  v20 = v34[0];
  outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
  v21 = (*(a4 + 104))(a4);
  (*(&v39 + 1))(&v53, &v36, (v21 & 1) == 0);
  result = outlined assign with take of AnyHashable(&v53, v38);
  v22 = *(v20 + 16);
  if (!v22)
  {
LABEL_27:

    outlined destroy of SwiftUIAnySortComparator(&v36);
    v9 = v30;
LABEL_31:
    *&v53 = v7;
    *(&v53 + 1) = a2;
    *&v54 = a3;
    MEMORY[0x18D00ACC0](&v50, v9);
    outlined init with copy of SwiftUIAnySortComparator(a4, &v36);
    v27 = v50;
    v28 = *(v50 + 2);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v27;
    if (!v29 || v28 >= *(v27 + 3) >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v28 + 1, 1, v27);
      v50 = v27;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, &v36);
    *&v36 = v27;
LABEL_35:
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v23 = 0;
  v24 = v20 + 32;
  while (v23 < *(v20 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v24, &v53);
    v25 = MEMORY[0x18D00E7E0](&v55, v38);
    result = outlined destroy of SwiftUIAnySortComparator(&v53);
    if (v25)
    {

      outlined destroy of SwiftUIAnySortComparator(&v36);
      *&v53 = v7;
      *(&v53 + 1) = a2;
      v9 = v30;
      *&v54 = a3;
      MEMORY[0x18D00ACC0](&v50, v30);
      v26 = v23;
      goto LABEL_30;
    }

    ++v23;
    v24 += 120;
    if (v22 == v23)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

__n128 closure #2 in SortableTableHeaderButton.sortableButton.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in SortableTableHeaderButton.sortableButton.getter(a1, &v38);
  v5 = v38;
  v6 = v39;
  v7 = BYTE8(v39);
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 1;
  type metadata accessor for SortableTableHeaderButton(0);
  EdgeInsets.init(_all:)();
  v25[0] = v4;
  v25[1] = 0;
  v26 = 1;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = KeyPath;
  v31 = 0;
  v32 = 2;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v37 = 0;
  v13 = type metadata accessor for TableColumnCollection.Entry(0);
  v14 = a1 + *(v13 + 28);
  v24 = *(v14 + 32);
  v15 = *(v14 + 16);
  v23[0] = *v14;
  v23[1] = v15;
  specialized View.tableColumnFrame(_:alignment:)(v23, *(a1 + *(v13 + 36)), &v38);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v25, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
  v16 = v51;
  *(a2 + 192) = v50;
  *(a2 + 208) = v16;
  *(a2 + 224) = v52;
  v17 = v47;
  *(a2 + 128) = v46;
  *(a2 + 144) = v17;
  v18 = v49;
  *(a2 + 160) = v48;
  *(a2 + 176) = v18;
  v19 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v19;
  v20 = v45;
  *(a2 + 96) = v44;
  *(a2 + 112) = v20;
  v21 = v39;
  *a2 = v38;
  *(a2 + 16) = v21;
  result = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = result;
  return result;
}

void closure #1 in closure #2 in SortableTableHeaderButton.sortableButton.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for TableColumnCollection.Entry(0);
  v4 = *(a1 + *(v3 + 48));
  v5 = (a1 + *(type metadata accessor for SortableTableHeaderButton(0) + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v62 = *v5;
  v63 = v7;
  v64 = v8;
  type metadata accessor for Binding<[SwiftUIAnySortComparator]>(0);
  v10 = v9;

  MEMORY[0x18D00ACC0](&v61, v10);
  if (*(v61 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v61 + 32, &v53);
  }

  else
  {

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  v11 = *(v3 + 44);
  outlined init with copy of SwiftUIAnySortComparator?(a1 + v11, &v40, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!*(&v41 + 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v49[2] = v44;
  v50 = v45;
  v51 = v46;
  v52 = v47;
  v48[0] = v40;
  v48[1] = v41;
  v49[0] = v42;
  v49[1] = v43;
  outlined init with copy of SwiftUIAnySortComparator?(&v53, v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined init with copy of SwiftUIAnySortComparator?(v48, &v32, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!v31)
  {
    outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (!*(&v33 + 1))
    {
      outlined destroy of AccessibilityTableContext?(v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      goto LABEL_11;
    }

LABEL_13:
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(v30, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
    goto LABEL_14;
  }

  outlined init with copy of SwiftUIAnySortComparator?(v30, v28, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (!*(&v33 + 1))
  {
    outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of SwiftUIAnySortComparator(v28);
    goto LABEL_13;
  }

  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  v12 = MEMORY[0x18D00E7E0](v29, &v22);
  outlined destroy of SwiftUIAnySortComparator(&v20);
  outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  outlined destroy of SwiftUIAnySortComparator(v28);
  outlined destroy of AccessibilityTableContext?(v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (v12)
  {
LABEL_11:
    specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEA00000000007075);
    v14 = v13;

    v15 = 0;
LABEL_28:

    outlined copy of _ConditionalContent<Image, Image>?(v14, v15);
    outlined consume of _ConditionalContent<Image, Image>?(v14, v15);
    *a2 = v4;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    outlined consume of _ConditionalContent<Image, Image>?(v14, v15);

    return;
  }

LABEL_14:
  v62 = v6;
  v63 = v7;
  v64 = v8;
  MEMORY[0x18D00ACC0](&v61, v10);
  if (*(v61 + 16))
  {
    outlined init with copy of SwiftUIAnySortComparator(v61 + 32, &v53);
  }

  else
  {

    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  outlined init with copy of SwiftUIAnySortComparator?(a1 + v11, &v40, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
  if (*(&v41 + 1))
  {
    outlined init with copy of SwiftUIAnySortComparator(&v40, v48);
    v16 = (*(&v46 + 1))(&v40);
    (*(&v50 + 1))(v30, v48, (v16 & 1) == 0);
    outlined assign with take of AnyHashable(v30, v49);
    outlined destroy of SwiftUIAnySortComparator(&v40);
    outlined init with copy of SwiftUIAnySortComparator?(&v53, v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined init with copy of SwiftUIAnySortComparator?(v48, &v32, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    if (v31)
    {
      outlined init with copy of SwiftUIAnySortComparator?(v30, v28, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (*(&v33 + 1))
      {
        v24 = v36;
        v25 = v37;
        v26 = v38;
        v27 = v39;
        v20 = v32;
        v21 = v33;
        v22 = v34;
        v23 = v35;
        v17 = MEMORY[0x18D00E7E0](v29, &v22);
        outlined destroy of SwiftUIAnySortComparator(&v20);
        outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        outlined destroy of SwiftUIAnySortComparator(v28);
        outlined destroy of AccessibilityTableContext?(v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
        if ((v17 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of SwiftUIAnySortComparator(v28);
    }

    else
    {
      outlined destroy of AccessibilityTableContext?(&v53, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      outlined destroy of AccessibilityTableContext?(v48, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
      if (!*(&v33 + 1))
      {
        outlined destroy of AccessibilityTableContext?(v30, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
LABEL_24:
        specialized Image.init(systemName:)(0x2E6E6F7276656863, 0xEC0000006E776F64);
        v14 = v18;

        v15 = 1;
        goto LABEL_28;
      }
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(v30, type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
LABEL_27:
    v14 = 0;
    v15 = -1;
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
}

void specialized View.accessibilityTableContext(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40) == 255)
  {

    specialized View.accessibility()(a2);
  }

  else
  {
    outlined init with copy of SwiftUIAnySortComparator?(a1, &v8, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    if (v9[24] == 255)
    {
      __break(1u);
    }

    else
    {
      v7[0] = v8;
      v7[1] = *v9;
      *(&v7[1] + 9) = *&v9[9];
      lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();
      AccessibilityProperties.init<A>(_:_:)();
      static AccessibilityAttachment.properties(_:)();
      outlined destroy of AccessibilityProperties(v10);
      type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
      v4 = swift_allocObject();
      memcpy((v4 + 16), v7, 0x128uLL);
      outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v2, a2, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
      type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
      v6 = (a2 + *(v5 + 36));
      *v6 = v4;
      v6[1] = 0;
    }
  }
}

uint64_t StaticTableHeaderButton.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = static VerticalAlignment.center.getter();
  v6 = type metadata accessor for TableColumnCollection.Entry(0);
  v7 = *(v3 + v6[12]);

  v8 = AnyShapeStyle.init<A>(_:)();
  v9 = type metadata accessor for StaticTableHeaderButton(0);
  EdgeInsets.init(_all:)();
  LOBYTE(__src[0]) = 1;
  LOBYTE(v35[0]) = 0;
  v56[0] = v5;
  v56[1] = 0;
  v57 = 1;
  v58 = v7;
  v59 = v8;
  v60 = 2;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = 0;
  v14 = (v3 + v6[7]);
  v15 = *v14;
  v54[1] = v14[1];
  v55 = *(v14 + 32);
  v54[0] = v15;
  specialized View.tableColumnFrame(_:alignment:)(v54, *(v3 + v6[9]), v52);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v56, type metadata accessor for ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>);
  v75 = v52[9];
  v76 = v52[10];
  v77 = v52[11];
  v71 = v52[5];
  v72 = v52[6];
  v73 = v52[7];
  v74 = v52[8];
  v67 = v52[1];
  v68 = v52[2];
  v69 = v52[3];
  v70 = v52[4];
  v78 = v53;
  v66 = v52[0];
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v35);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x128uLL);
  v51 = v78;
  v49 = v76;
  v50 = v77;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v41 = v68;
  v42 = v69;
  v43 = v70;
  v44 = v71;
  v39 = v66;
  v40 = v67;
  __src[10] = v76;
  __src[11] = v77;
  __src[6] = v72;
  __src[7] = v73;
  __src[8] = v74;
  __src[9] = v75;
  __src[2] = v68;
  __src[3] = v69;
  __src[4] = v70;
  __src[5] = v71;
  __src[0] = v66;
  __src[1] = v67;
  *&__src[12] = v78;
  *(&__src[12] + 1) = v17;
  *&__src[13] = v16;
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v66, v35, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>);
  AccessibilityTraitSet.init(traits:)();
  v19 = *(v18 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v17 + 16, 0, v19);
  v35[10] = v49;
  v35[11] = v50;
  v35[6] = v45;
  v35[7] = v46;
  v35[8] = v47;
  v35[9] = v48;
  v35[2] = v41;
  v35[3] = v42;
  v35[4] = v43;
  v35[5] = v44;
  v35[0] = v39;
  v35[1] = v40;
  v36 = v51;
  v37 = v17;
  v38 = v16;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, v32, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v35, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>);
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v17 + 16, 0x4000000040uLL);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v66, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>);
  v32[0] = *(v3 + *(v9 + 24));
  v33 = 3;
  result = outlined init with copy of SwiftUIAnySortComparator?(v32, &v28, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (v29[24] == 255)
  {
    __break(1u);
  }

  else
  {
    v30 = v28;
    v31[0] = *v29;
    *(v31 + 9) = *&v29[9];
    swift_beginAccess();
    outlined init with copy of SwiftUIAnySortComparator?(&v30, v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

    AccessibilityProperties.subscript.setter();
    swift_endAccess();
    outlined destroy of AccessibilityTableContext?(&v30, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

    result = outlined destroy of AccessibilityTableContext?(v32, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    v21 = __src[11];
    *(a2 + 160) = __src[10];
    *(a2 + 176) = v21;
    *(a2 + 192) = __src[12];
    *(a2 + 208) = *&__src[13];
    v22 = __src[7];
    *(a2 + 96) = __src[6];
    *(a2 + 112) = v22;
    v23 = __src[9];
    *(a2 + 128) = __src[8];
    *(a2 + 144) = v23;
    v24 = __src[3];
    *(a2 + 32) = __src[2];
    *(a2 + 48) = v24;
    v25 = __src[5];
    *(a2 + 64) = __src[4];
    *(a2 + 80) = v25;
    v26 = __src[1];
    *a2 = __src[0];
    *(a2 + 16) = v26;
  }

  return result;
}

uint64_t TableSectionHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  specialized Environment.wrappedValue.getter(v6, v7);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  EdgeInsets.init(_all:)();
  v51 = 0;
  v50 = 0;
  *&v44 = v3;
  *(&v44 + 1) = KeyPath;
  LOBYTE(v45) = 0;
  *(&v45 + 1) = v5;
  LOWORD(v46) = 0;
  BYTE8(v46) = 2;
  *&v47 = v8;
  *(&v47 + 1) = v9;
  *&v48 = v10;
  *(&v48 + 1) = v11;
  v49 = 0;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v43 = -1;
  outlined destroy of AccessibilityTableContext?(&v40, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  v43 = 4;
  type metadata accessor for VStack<TableHeaderViewCore>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v30);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v13 = swift_allocObject();
  memcpy((v13 + 16), __src, 0x128uLL);
  LOBYTE(v39) = v49;
  v37 = v47;
  v38 = v48;
  v35 = v45;
  v36 = v46;
  v34 = v44;
  __src[2] = v46;
  __src[3] = v47;
  __src[4] = v48;
  __src[0] = v44;
  __src[1] = v45;
  *&__src[5] = v39;
  *(&__src[5] + 1) = v13;
  *&__src[6] = v12;
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityTraitSet>, MEMORY[0x1E697FB88], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(&v44, v30, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>);
  AccessibilityTraitSet.init(traits:)();
  v15 = *(v14 + 32);
  swift_setDeallocating();
  swift_deallocClassInstance();
  swift_beginAccess();
  closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v13 + 16, 0, v15);
  v30[2] = v36;
  v30[3] = v37;
  v30[4] = v38;
  v30[0] = v34;
  v30[1] = v35;
  v31 = v39;
  v32 = v13;
  v33 = v12;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, &v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
  outlined destroy of Binding<[SwiftUIAnySortComparator]>(v30, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v13 + 16, 0x4000000040uLL);
  if (v43 == 255)
  {
    goto LABEL_4;
  }

  result = outlined init with copy of SwiftUIAnySortComparator?(&v40, &v20, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (v21[24] != 255)
  {
    v25 = v20;
    v26[0] = *v21;
    *(v26 + 9) = *&v21[9];
    swift_beginAccess();
    outlined init with copy of SwiftUIAnySortComparator?(&v25, v27, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

    AccessibilityProperties.subscript.setter();
    swift_endAccess();
    outlined destroy of AccessibilityTableContext?(&v25, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_4:
    v27[2] = __src[2];
    v27[3] = __src[3];
    v27[4] = __src[4];
    v28 = __src[5];
    v27[0] = __src[0];
    v27[1] = __src[1];
    *&v21[16] = __src[2];
    v22 = __src[3];
    v23 = __src[4];
    LOBYTE(v24) = __src[5];
    v20 = __src[0];
    *v21 = __src[1];
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(__src, &v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v44, type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>);
    outlined destroy of Binding<[SwiftUIAnySortComparator]>(&v40, type metadata accessor for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>);
    result = outlined destroy of Binding<[SwiftUIAnySortComparator]>(__src, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>, AccessibilityAttachmentModifier>);
    v17 = v22;
    *(a1 + 32) = *&v21[16];
    *(a1 + 48) = v17;
    *(a1 + 64) = v23;
    v18 = v24;
    v19 = *v21;
    *a1 = v20;
    *(a1 + 16) = v19;
    *(a1 + 80) = v18;
    *(a1 + 88) = v13;
    *(a1 + 96) = v12;
    return result;
  }

  __break(1u);
  return result;
}

double EnvironmentValues.tableHeaderLeadingMargin.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

__n128 TableHeaderLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, __n128 *a6@<X8>)
{
  v11 = static VerticalAlignment.firstTextLineCenter.getter();
  v12 = specialized Environment.wrappedValue.getter(a4, a5 & 0x1FF);
  if (v13)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if (static Solarium.isEnabled(for:)())
    {
      v14 = 0x4028000000000000;
    }

    else
    {
      v14 = 0x4024000000000000;
    }
  }

  else
  {
    v14 = v12;
  }

  LOBYTE(v18[0]) = a3 & 1;
  closure #1 in TableHeaderLabelStyle.makeBody(configuration:)(a2, a3 & 1, v18);
  v15 = v18[0];
  v16 = v18[3];
  result = *&v18[1];
  a6->n128_u64[0] = v11;
  a6->n128_u64[1] = v14;
  a6[1].n128_u8[0] = 0;
  a6[1].n128_u64[1] = v15;
  a6[2] = result;
  a6[3].n128_u64[0] = v16;
  return result;
}

__n128 closure #1 in TableHeaderLabelStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((specialized Environment.wrappedValue.getter(a1, a2 & 1) & 1) == 0)
  {
    LODWORD(v5) = 1;
  }

  AnyShapeStyle.init<A>(_:)();
  static Font.Weight.regular.getter();
  type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>(0);
  lazy protocol witness table accessor for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<AnyShapeStyle> and conformance _DefaultForegroundStyleModifier<A>, &protocol witness table for LabelStyleConfiguration.Icon);
  View.fontWeight(_:)();

  result = v6;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 24) = v7;
  return result;
}

void specialized View.accessibility()(uint64_t a1@<X8>)
{
  AccessibilityProperties.init()();
  outlined init with copy of AccessibilityProperties(v8, v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v8);
  type metadata accessor for [SwiftUIAnySortComparator](0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x128uLL);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(v1, a1, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>>);
  v5 = (a1 + *(v4 + 36));
  *v5 = v3;
  v5[1] = 0;
}

double key path getter for EnvironmentValues.tableHeaderLeadingMargin : EnvironmentValues@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

double key path setter for EnvironmentValues.tableHeaderLeadingMargin : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>, &type metadata for TableHeaderLeadingMarginKey, &protocol witness table for TableHeaderLeadingMarginKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TableHeaderLeadingMarginKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityTableContext?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for [SwiftUIAnySortComparator](0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Binding<[SwiftUIAnySortComparator]>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?))
  {
    type metadata accessor for [SwiftUIAnySortComparator](255, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SwiftUIAnySortComparator?, SwiftUIAnySortComparator?));
    }
  }
}

uint64_t destroy for TableHeaderViewCore(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  if (*(a1 + 40))
  {
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1((a1 + 56));
  }
}

uint64_t initializeWithCopy for TableHeaderViewCore(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  if (!v8)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    v9 = *(a2 + 96);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = *(a2 + 80);
    *(a1 + 80) = v10;
    (**(v10 - 8))(a1 + 56, a2 + 56);
    goto LABEL_6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  *(a1 + 48) = *(a2 + 48);

  v9 = *(a2 + 96);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 56) = *(a2 + 56);

LABEL_6:
  *(a1 + 96) = v9;
  *(a1 + 97) = *(a2 + 97);
  return a1;
}

uint64_t assignWithCopy for TableHeaderViewCore(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v12)
    {
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 32, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v12)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v14;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of TableColumnCollection.Backing(a1 + 56);
  if (*(a2 + 96))
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 96) = 1;
  }

  else
  {
    v15 = *(a2 + 80);
    *(a1 + 80) = v15;
    *(a1 + 88) = *(a2 + 88);
    (**(v15 - 8))(a1 + 56, a2 + 56);
    *(a1 + 96) = 0;
  }

LABEL_14:
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TableHeaderViewCore(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  if (*(a1 + 40))
  {
    v11 = a2[5];
    if (v11)
    {
      *(a1 + 32) = a2[4];

      *(a1 + 40) = v11;

      *(a1 + 48) = a2[6];

      if (a1 == a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 32, type metadata accessor for Binding<[SwiftUIAnySortComparator]>);
  }

  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = a2[6];
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of TableColumnCollection.Backing(a1 + 56);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
  }

LABEL_8:
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableHeaderViewCore(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 99))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for TableHeaderViewCore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double destroy for TableSectionHeaderView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));

  return result;
}

uint64_t initializeWithCopy for TableSectionHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TableSectionHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TableSectionHeaderView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 48) = a2[6];

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableSectionHeaderView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TableSectionHeaderView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VStack<TableHeaderViewCore> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for VStack<TableHeaderViewCore>, lazy protocol witness table accessor for type TableHeaderViewCore and conformance TableHeaderViewCore, &unk_1EFF8F378, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable(MEMORY[0x1E6981870], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TableHeaderViewCore> and conformance VStack<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderViewCore and conformance TableHeaderViewCore()
{
  result = lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore;
  if (!lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableHeaderViewCore, &unk_1EFF8F378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderViewCore and conformance TableHeaderViewCore);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode()
{
  result = lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode;
  if (!lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableHeaderView.ColumnDisplayMode, &type metadata for TableHeaderView.ColumnDisplayMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderView.ColumnDisplayMode and conformance TableHeaderView.ColumnDisplayMode);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle()
{
  result = lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle;
  if (!lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, a2);
    v4 = v3;
    v6 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(v5);
    v8 = type metadata accessor for AccessibilityTableCellModifier(a1, v4, v6, v7);
    if (!v9)
    {
      atomic_store(v8, &lazy cache variable for type metadata for AccessibilityTableCellModifier<ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(double a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v1;
    v6[5] = v2;
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout>(255, a1);
    v5 = v4;
    v6[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>, MEMORY[0x1E6981900]);
    v6[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, LabelStyleWritingModifier<TableHeaderLabelStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<TableHeaderLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of SwiftUIAnySortComparator?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for [SwiftUIAnySortComparator](0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>)
  {
    type metadata accessor for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>(255, a2);
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TableHeaderLabelStyle>, lazy protocol witness table accessor for type TableHeaderLabelStyle and conformance TableHeaderLabelStyle, &type metadata for TableHeaderLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v2 = type metadata accessor for ModifiedContent();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for ModifiedContent<HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>, LabelStyleWritingModifier<TableHeaderLabelStyle>>);
    }
  }
}

void type metadata accessor for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>();
    v2 = type metadata accessor for HStack();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for HStack<_ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>)
  {
    type metadata accessor for EnvironmentPropertyKey<TableHeaderLeadingMarginKey>(255, &lazy cache variable for type metadata for ModifiedContent<Color, _FlexFrameLayout>, MEMORY[0x1E69815C0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection()
{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCollection, &type metadata for TableColumnCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCollection, &type metadata for TableColumnCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCollection, &type metadata for TableColumnCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection;
  if (!lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCollection, &type metadata for TableColumnCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCollection and conformance TableColumnCollection);
  }

  return result;
}

void type metadata accessor for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>, type metadata accessor for SortableTableHeaderButton, type metadata accessor for StaticTableHeaderButton, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type SortableTableHeaderButton and conformance SortableTableHeaderButton, type metadata accessor for SortableTableHeaderButton, protocol conformance descriptor for SortableTableHeaderButton);
    v5[1] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type StaticTableHeaderButton and conformance StaticTableHeaderButton, type metadata accessor for StaticTableHeaderButton, protocol conformance descriptor for StaticTableHeaderButton);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection();
    result = swift_getWitnessTable(MEMORY[0x1E69E74F0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<TableColumnCollection> and conformance <> Slice<A>);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for Slice<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E74D0]);
    type metadata accessor for UUID();
    a3(255);
    lazy protocol witness table accessor for type Slice<TableColumnCollection> and conformance <> Slice<A>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = type metadata accessor for ForEach();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>>, type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>)
  {
    v6[6] = v0;
    v6[7] = v1;
    type metadata accessor for _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>>(255);
    v4 = v3;
    v5 = MEMORY[0x1E6981F48];
    v6[0] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, MEMORY[0x1E6981F48]);
    v6[1] = lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>, _FlexFrameLayout>> and conformance Button<A>(&lazy protocol witness table cache variable for type TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>, v5);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>?, ForEach<Slice<TableColumnCollection>, UUID, VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>>)>, TupleView<(VStack<_ConditionalContent<SortableTableHeaderButton, StaticTableHeaderButton>>?, ForEach<Slice<TableColumnCollection>, UUID, ModifiedContent<ModifiedContent<Color, _FlexFrameLayout>, _FrameLayout>>)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}