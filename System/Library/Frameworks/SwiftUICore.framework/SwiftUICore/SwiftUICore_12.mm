uint64_t sub_18D0C6798()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D0C67D0()
{

  return swift_deallocObject();
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, _OWORD *a3, __n128 *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = a3[1];
  v75 = *a3;
  v76 = v10;
  v11 = a3[3];
  v77 = *(a3 + 2);
  v78 = v11;
  v12 = a3[5];
  v79 = a3[4];
  v80[0] = v12;
  *(v80 + 12) = *(a3 + 92);
  v13 = DWORD2(v80[1]) >> 29;
  if (DWORD2(v80[1]) >> 29 == 2)
  {
    v41 = a6;
    v42 = a7;
    v15 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v56 = v75;
      v57.n128_u8[0] = v76 & 1;
      v16 = v15[1];
      v46 = *v15;
      v47 = v16;
      v48 = v15[2];
      LODWORD(v49) = v15[3].n128_u32[0];
      outlined init with copy of _ShapeStyle_Pack.Style?(&v46, &v68, a5, v41, v42, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v17 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v46, a5, v41, v42, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v54[0] = v17;
      LOBYTE(v68) = v9;
      _ShapeStyle_Pack.subscript.getter(&v68, 0, &v60);

      v45 = v9;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v56, &v60, &v45);
      v72 = v64;
      v73[0] = v65;
      v73[1] = v66;
      v74 = v67;
      v68 = v60;
      v69 = v61;
      v70 = v62;
      v71 = v63;
      outlined destroy of _ShapeStyle_Pack.Style(&v68);
    }

    else
    {
      v68 = v75;
      v69.n128_u8[0] = v76 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v68);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v75);
  }

  else
  {
    v14 = v77.n128_i64[1];
    if (v13 == 3)
    {
      if (v79)
      {
        v68 = v75;
        v69.n128_u8[0] = v76;
        *(v69.n128_u32 + 1) = *(&v76 + 1);
        v69.n128_u8[7] = (*(&v76 + 1) | ((*(&v76 + 5) | (BYTE7(v76) << 16)) << 32)) >> 48;
        *(&v69.n128_u16[2] + 1) = *(&v76 + 5);
        v69.n128_u64[1] = *(&v76 + 1);
        v70 = v77;
        v71 = v78;
        LOBYTE(v72) = v79;
        *(&v72 + 1) = *(&v79 + 1);
        BYTE7(v72) = (*(&v79 + 1) | ((*(&v79 + 5) | (BYTE7(v79) << 16)) << 32)) >> 48;
        *(&v72 + 5) = *(&v79 + 5);
        *(&v72 + 1) = *(&v79 + 1);
        v73[0] = v80[0];
        *&v73[1] = *&v80[1];
        DWORD2(v73[1]) = DWORD2(v80[1]) & 0x1FFFFFFF;
        _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v68);
        return;
      }

      if (LOBYTE(v75.f64[1]) != 2)
      {
        if (LOBYTE(v75.f64[1]) == 255)
        {
          *(v73 + 12) = *(a3 + 92);
          v18 = a3[5];
          v72 = a3[4];
          v73[0] = v18;
          v19 = *(a3 + 1);
          v68 = *a3;
          v69 = v19;
          v20 = a3[3];
          v70 = *(a3 + 2);
          v71 = v20;
          DWORD2(v73[1]) &= 0x1FFFFFFFu;
          v21 = a4;
          v22 = a7;
          v23 = a6;
          outlined init with copy of GraphicsImage(&v68, &v60);
          a6 = v23;
          a7 = v22;
          a4 = v21;
        }

        goto LABEL_14;
      }

      v27 = *(*&v75.f64[0] + 24);
      v28 = *(*&v75.f64[0] + 32);
      v29 = *(*&v75.f64[0] + 40);
      v30 = *(*&v75.f64[0] + 44);
      v31 = *(*&v75.f64[0] + 45);
      v32 = *(*&v75.f64[0] + 48);
      *&v46 = *(*&v75.f64[0] + 16);
      BYTE8(v46) = v27;
      v47.n128_u64[0] = v28;
      v33 = v28;
      v47.n128_u32[2] = v29;
      v47.n128_u8[12] = v30;
      v47.n128_u8[13] = v31;
      v48.n128_u64[0] = v32;
      LOBYTE(v56.f64[0]) = v9;
      v34 = a4[1];
      v62 = a4[2];
      LODWORD(v63) = a4[3].n128_u32[0];
      v35 = *a4;
      v61 = v34;
      v60 = v35;
      v36 = a7;
      v37 = a6;
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v75, &v68);
      v43 = v46;
      outlined copy of Image.Location(v33);
      v38 = v32;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v60, &v68, a5, v37, v36, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      v39 = *AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v60, a5, v37, v36, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      *&v68 = v39;
      specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v46, v14, &v56, &v68, a2, v40);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v75);

      outlined consume of Image.Location(v33);
    }

    else if (v13 != 5 || DWORD2(v80[1]) != -1610612736 || v76 | ((*(&v76 + 1) | ((*(&v76 + 5) | (BYTE7(v76) << 16)) << 32)) << 8) | v79 | ((*(&v79 + 1) | ((*(&v79 + 5) | (BYTE7(v79) << 16)) << 32)) << 8) | *&v75.f64[0] | *&v75.f64[1] | *(&v76 + 1) | v77.n128_u64[0] | v77.n128_u64[1] | v78 | *(&v78 + 1) | *(&v79 + 1) | *&v80[0] | *(&v80[0] + 1) | *&v80[1])
    {
LABEL_14:
      v24 = *a4;
      v57 = a4[1];
      v56 = v24;
      v58 = a4[2];
      v59 = a4[3].n128_u32[0];
      v25 = a6;
      v26 = a7;
      outlined init with copy of _ShapeStyle_Pack.Style?(&v56, &v68, a5, a6, a7, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      AGGraphGetValue();

      outlined destroy of _ShapeStyle_Pack.Style?(&v56, a5, v25, v26, type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>);
      LOBYTE(v60) = v9;
      _ShapeStyle_Pack.subscript.getter(&v60, 0, &v68);

      v64 = v72;
      v65 = v73[0];
      v66 = v73[1];
      v67 = v74;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      v53 = v74;
      v54[0] = v9;
      v54[1] = 0;
      v55 = 0;
      v50 = v72;
      v51 = v73[0];
      v52 = v73[1];
      v46 = v68;
      v47 = v69;
      v48 = v70;
      v49 = v71;
      outlined init with copy of _ShapeStyle_Pack.Style(&v60, &v68);
      _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v54, &v46, a3);
      v72 = v50;
      v73[0] = v51;
      v73[1] = v52;
      v74 = v53;
      v68 = v46;
      v69 = v47;
      v70 = v48;
      v71 = v49;
      outlined destroy of _ShapeStyle_Pack.Style?(&v68, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v53 = v67;
      v46 = v60;
      v47 = v61;
      v48 = v62;
      v49 = v63;
      _ShapeStyle_RenderedShape.render(style:)(&v46);
      _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
      outlined destroy of _ShapeStyle_Pack.Style(&v60);
    }
  }
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t *a2, _OWORD *a3, __n128 *a4)
{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<StyledTextContentView>, &type metadata for StyledTextContentView, &protocol witness table for StyledTextContentView);
}

{
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(a1, a2, a3, a4, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper);
}

void specialized ShapeStyledDisplayList.updateValue()()
{
  v6 = v0;
  v128 = *MEMORY[0x1E69E9840];
  v7 = *(v0 + 12);
  Value = AGGraphGetValue();
  v9 = *Value;
  v10 = *(Value + 8);
  v94 = *(Value + 16);
  if ((v11 & 1) != 0 || !WORD1(v6[3].Kind))
  {

    v13 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  *&__src[0].f64[0] = *(&v6[1].Description + 4);
  LODWORD(__src[0].f64[1]) = v7;

  v12 = AGGraphAnyInputsChanged();
  v13 = ++static DisplayList.Version.lastValue;
  if (v12)
  {
LABEL_6:
    v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
    if (!v13)
    {
      LOWORD(v14) = 0;
    }

    WORD1(v6[3].Kind) = v14;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_33;
  }

  Description = v6[2].Description;
  AGCreateWeakAttribute();
  v93 = v13;
  AGCreateWeakAttribute();
  v92 = Description;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = AGGraphGetValue();
  v24 = v21 - *v23;
  v25 = v22 - v23[1];
  type metadata accessor for CGSize(0);
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  _threadGeometryProxyData();
  _setThreadGeometryProxyData();
  if (v10 == 0.0)
  {
    v30 = v9;

    v36 = 0.0;
    v38 = 0.0;
  }

  else
  {
    v29 = *(**&v10 + 120);
    v30 = v9;

    v31 = swift_retain_n();
    v32 = v29(v31);
    v36 = CGRect.outset(by:)(v32, v33, v34, v35, 0.0, 0.0, v27, v28);
    v38 = v37;
    v27 = v39;
    v28 = v40;
  }

  v5 = __src;
  v1 = v109;
  _setThreadGeometryProxyData();
  v117.f64[0] = v30;
  v117.f64[1] = v10;
  *&v118.f64[0] = v94;
  *&v121 = 0;
  v123 = 0x40000000;
  v124 = v36;
  v125 = v38;
  v126 = v27;
  v127 = v28;
  v2 = *&v6->Kind;
  v4 = v116;
  memset(&v116[8], 0, 64);
  *v116 = v2;
  *&v116[72] = 0x20000000;
  *&v116[80] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v117, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v129.origin.x = v36;
  v129.origin.y = v38;
  v129.size.width = v27;
  v129.size.height = v28;
  *&v15 = CGRectOffset(v129, v24, v25);
  LODWORD(v9) = v6->Description;
  LOWORD(v3) = WORD1(v6[3].Kind);
  LOBYTE(v13) = v6[3].Kind;
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v41 = v121;
    v42 = v122;
    v43 = v119;
    v1[29] = v120;
    v1[30] = v41;
    v1[31] = v42;
    *(&v5[5] + 12) = *(v4 + 180);
    v44 = v118;
    *v5 = v117;
    v5[1] = v44;
    v4 = &v98;
    v45 = static GraphicsBlendMode.normal;
    v46 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    v5[2] = v43;
    WORD2(__src[6].f64[1]) = v3;
    __src[7].f64[0] = v15;
    __src[7].f64[1] = v16;
    __src[8].f64[0] = v17;
    __src[8].f64[1] = v18;
    __src[10].f64[0] = v15;
    __src[10].f64[1] = v16;
    __src[11].f64[0] = v17;
    __src[11].f64[1] = v18;
    __src[12] = v93;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = LODWORD(v9);
    BYTE4(__src[14].f64[1]) = v13;
    LODWORD(__src[15].f64[0]) = v92;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v45, v46);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v116, __src, v6);
    Kind = v6[3].Kind;
    if (v2 == 0.0)
    {
      break;
    }

    LODWORD(v93) = LOBYTE(v6[3].Kind);
    v48 = *(*&v2 + 56);
    *&v9 = v48;
    swift_beginAccess();
    v13 = *(*&v2 + 24);
    if (*(v13 + 16) <= v48)
    {
LABEL_25:
      *(*&v2 + 56) = 0;
      Kind = v93;
      break;
    }

    v6 = &type metadata for _ShapeStyle_Pack.Style;
    v3 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v2 + 56) = v48 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v2 + 24) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v48 < 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        if (v48 < 0)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (*(v13 + 16) <= *&v9)
      {
        break;
      }

      v56 = v13 + 232 * *&v9;
      *(v56 + 260) = 1;
      *(*&v2 + 24) = v13;
      swift_endAccess();
      v57 = *(v56 + 52);
      v58 = *(v56 + 56);
      v59 = *(v56 + 72);
      v60 = *(v56 + 104);
      v1[9] = *(v56 + 88);
      v1[10] = v60;
      v1[7] = v58;
      v1[8] = v59;
      v61 = *(v56 + 120);
      v62 = *(v56 + 152);
      v63 = *(v56 + 168);
      v1[12] = *(v56 + 136);
      v1[13] = v62;
      v1[11] = v61;
      v64 = v5[1];
      v104 = *v5;
      v105 = v64;
      *(v108 + 12) = *(v5 + 92);
      v65 = v5[3];
      v66 = v5[5];
      v107[1] = v5[4];
      v67 = v107[1];
      v108[0] = v66;
      v68 = v5[3];
      v69 = *v5;
      v70 = v5[1];
      v106 = v5[2];
      v107[0] = v68;
      v109[1] = v70;
      v110 = v106;
      *&__dst[7] = v63;
      v109[0] = v69;
      v71 = v5[5];
      *(v1 + 92) = *(&v5[5] + 12);
      v1[4] = v67;
      v1[5] = v71;
      v1[3] = v65;
      __src[6].f64[0] = 0.0;
      v5[4] = 0u;
      v5[5] = 0u;
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v98, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v104, &v98);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v109);

      __src[9].f64[0] = v2;
      LODWORD(__src[9].f64[1]) = v57;
      if (*&__dst[7])
      {
        v72 = v1[12];
        *&v101[16] = v1[11];
        v102[0] = v72;
        v102[1] = v1[13];
        v73 = *(v1 + 8);
        v98 = *(v1 + 7);
        v99 = v73;
        v74 = v1[10];
        v100 = *(v1 + 9);
        *v101 = v74;
        v103 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v98);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      v49 = v5[5];
      *&v101[16] = v5[4];
      v102[0] = v49;
      *(v102 + 12) = *(v5 + 92);
      v50 = v5[1];
      v98 = *v5;
      v99 = v50;
      v51 = v5[3];
      v100 = v5[2];
      *v101 = v51;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v98);
      v52 = v108[0];
      v5[4] = v107[1];
      v5[5] = v52;
      *(v5 + 92) = *(v108 + 12);
      v53 = v105;
      *v5 = v104;
      v5[1] = v53;
      v54 = v107[0];
      v5[2] = v106;
      v5[3] = v54;
      v48 = *(*&v2 + 56);
      *&v9 = v48;
      swift_beginAccess();
      v13 = *(*&v2 + 24);
      if (*(v13 + 16) <= v48)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v88 = v15;
    v89 = v16;
    v90 = v17;
    v91 = v18;
    swift_once();
    v18 = v91;
    v17 = v90;
    v16 = v89;
    v15 = v88;
  }

  v75 = (*&v116[72] >> 28) & 3;
  if (v75)
  {
    if (v75 == 1)
    {

      DisplayList.init(_:)(v76, __dst);
      v77 = *&__dst[0];
      v78 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      v79 = LODWORD(__src[14].f64[1]);
      v80 = __src[12].f64[0];
      v81 = v5[8];
      *v1 = v5[7];
      v1[1] = v81;
      *(v1 + 40) = xmmword_18DDA6ED0;
      v111 = v77;
      v112 = v78;
      v113 = v79;
      v110.f64[0] = v80;
      LOBYTE(__dst[0]) = Kind;
      DisplayList.Item.canonicalize(options:)(__dst);
      v82 = v1[3];
      v100 = *(v1 + 2);
      *v101 = v82;
      *&v101[12] = *(v1 + 60);
      v83 = *(v1 + 1);
      v98 = *v1;
      v99 = v83;
      v106 = v100;
      v107[0] = v82;
      *(v107 + 12) = *&v101[12];
      v104 = v98;
      v105 = v83;
      outlined init with copy of DisplayList.Item(&v98, __dst);
      DisplayList.init(_:)(&v104, &v95);
      v84 = v1[3];
      v1[9] = v1[2];
      v1[10] = v84;
      *(v1 + 172) = *(v1 + 60);
      v85 = v1[1];
      v1[7] = *v1;
      v1[8] = v85;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v95 = MEMORY[0x1E69E7CC0];
      v96 = 0;
      v97 = 0;
    }
  }

  else
  {
    v98 = *&v116[8];
    v99 = *&v116[24];
    v100 = *&v116[40];
    *v101 = *&v116[56];
    *&v101[16] = *&v116[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v101[24] = *&v116[80];
    __dst[0] = *&v116[8];
    __dst[1] = *&v116[24];
    __dst[2] = *&v116[40];
    __dst[3] = *&v116[56];
    *&__dst[4] = *&v116[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v116[80];
    outlined init with copy of DisplayList.Item(__dst, v109);
    DisplayList.init(_:)(&v98, &v95);
  }

  v86 = *&v116[24];
  v87 = *&v116[56];
  v1[2] = *&v116[40];
  v1[3] = v87;
  *(v1 + 60) = *&v116[68];
  *v1 = *&v116[8];
  v1[1] = v86;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(v109);
  memset(&v116[8], 0, 64);
  *&v116[72] = 0x20000000;
  *&v116[80] = 0;
  v98.f64[0] = v95;
  LOWORD(v98.f64[1]) = v96;
  HIDWORD(v98.f64[1]) = v97;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v117, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v100 = *&v116[32];
  *v101 = *&v116[48];
  *&v101[16] = *&v116[64];
  LODWORD(v102[0]) = *&v116[80];
  v98 = *v116;
  v99 = *&v116[16];
  outlined destroy of _ShapeStyle_RenderedLayers(&v98);
}

{
  v5 = v0;
  v93 = *MEMORY[0x1E69E9840];
  LODWORD(v0) = *(v0 + 3);
  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  if ((v9 & 1) != 0 || !WORD1(v5[3].Kind))
  {

    v11 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  *&__src[0].f64[0] = *(&v5[1].Description + 4);
  LODWORD(__src[0].f64[1]) = v0;

  v10 = AGGraphAnyInputsChanged();
  v11 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
LABEL_6:
    v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
    if (!v11)
    {
      LOWORD(v12) = 0;
    }

    WORD1(v5[3].Kind) = v12;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_30;
  }

  v2 = __src;
  Description = v5[2].Description;
  v63 = AGCreateWeakAttribute();
  v18 = AGCreateWeakAttribute();
  v19 = v18;
  v64 = HIDWORD(v18);
  v65 = Description;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v62 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v61 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v60 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v59 = HIDWORD(v26);
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = *(v34 + 8);
  _threadGeometryProxyData();
  *&__src[0].f64[0] = v63;
  *&__src[0].f64[1] = __PAIR64__(v64, v19);
  *&__src[1].f64[0] = __PAIR64__(v62, v21);
  *&__src[1].f64[1] = __PAIR64__(v61, v23);
  *&__src[2].f64[0] = __PAIR64__(v60, v25);
  v3 = v11;
  *&__src[2].f64[1] = __PAIR64__(v59, v27);
  v4 = v84;
  LODWORD(__src[3].f64[0]) = v11;
  _setThreadGeometryProxyData();
  v85 = v7;
  v86 = v8;
  _ShapeSet.Wrapper.pathSet(in:)(__dst, v35, v36);
  v37 = *(&__dst[0] + 1);
  v0 = *&__dst[0];
  _setThreadGeometryProxyData();
  v85 = v0;
  v86 = v37;
  v87 = 0;
  v88 = 0x20000000;
  v90 = 0;
  v89 = 0;
  v91 = v35;
  v92 = v36;
  v1 = *&v5->Kind;
  memset(&v84[8], 0, 64);
  *v84 = v1;
  *&v84[72] = 0x20000000;
  *&v84[80] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v85, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v94.origin.x = 0.0;
  v94.origin.y = 0.0;
  v94.size.width = v35;
  v94.size.height = v36;
  *&v13 = CGRectOffset(v94, v32, v33);
  LODWORD(v7) = v5->Description;
  LOWORD(v11) = WORD1(v5[3].Kind);
  LOBYTE(v0) = v5[3].Kind;
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v38 = static GraphicsBlendMode.normal;
    v39 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    v40 = *(v4 + 136);
    v41 = *(v4 + 168);
    __src[4] = *(v4 + 152);
    __src[5] = v41;
    *(v2 + 92) = *(v4 + 180);
    v42 = *(v4 + 104);
    __src[0] = *(v4 + 88);
    __src[1] = v42;
    __src[2] = *(v4 + 120);
    __src[3] = v40;
    WORD2(__src[6].f64[1]) = v11;
    __src[7].f64[0] = v13;
    __src[7].f64[1] = v14;
    __src[8].f64[0] = v15;
    __src[8].f64[1] = v16;
    __src[10].f64[0] = v13;
    __src[10].f64[1] = v14;
    __src[11].f64[0] = v15;
    __src[11].f64[1] = v16;
    __src[12] = v3;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v7;
    BYTE4(__src[14].f64[1]) = v0;
    LODWORD(__src[15].f64[0]) = v65;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v38, v39);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v84, __src, v5);
    Kind = v5[3].Kind;
    if (v1 == 0.0)
    {
      break;
    }

    v66 = v5[3].Kind;
    v3 = *(*&v1 + 56);
    v7 = v3;
    swift_beginAccess();
    v0 = *(*&v1 + 24);
    if (*(v0 + 2) <= v3)
    {
LABEL_22:
      *(*&v1 + 56) = 0;
      Kind = v66;
      break;
    }

    v4 = 1;
    v5 = &type metadata for _ShapeStyle_Pack.Style;
    v11 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(*&v1 + 56) = v3 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(*&v1 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v3 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v3 & 0x80000000) != 0)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (*(v0 + 2) <= v7)
      {
        break;
      }

      v45 = &v0[232 * v7];
      v45[260] = 1;
      *(*&v1 + 24) = v0;
      swift_endAccess();
      v46 = *(v45 + 13);
      v47 = *(v45 + 56);
      v48 = *(v45 + 72);
      v49 = *(v45 + 104);
      __dst[2] = *(v45 + 88);
      __dst[3] = v49;
      __dst[0] = v47;
      __dst[1] = v48;
      v50 = *(v45 + 120);
      v51 = *(v45 + 152);
      v52 = *(v45 + 21);
      __dst[5] = *(v45 + 136);
      __dst[6] = v51;
      __dst[4] = v50;
      v73 = __src[0];
      v74 = __src[1];
      *(v77 + 12) = *(v2 + 92);
      *&v76[16] = __src[4];
      v77[0] = __src[5];
      v75 = __src[2];
      *v76 = __src[3];
      v78 = __src[0];
      v79 = __src[1];
      *(v81 + 12) = *(v2 + 92);
      *&__dst[7] = v52;
      *&v80[32] = __src[4];
      v81[0] = __src[5];
      *v80 = __src[2];
      *&v80[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, v70, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v73, v70);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v78);

      __src[9].f64[0] = v1;
      LODWORD(__src[9].f64[1]) = v46;
      if (*&__dst[7])
      {
        *&v70[64] = __dst[4];
        *v71 = __dst[5];
        *&v71[16] = __dst[6];
        *v70 = __dst[0];
        *&v70[16] = __dst[1];
        *&v70[32] = __dst[2];
        *&v70[48] = __dst[3];
        v72 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(v70);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v70[64] = __src[4];
      *v71 = __src[5];
      *&v71[12] = *(v2 + 92);
      *v70 = __src[0];
      *&v70[16] = __src[1];
      *&v70[32] = __src[2];
      *&v70[48] = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(v70);
      __src[4] = *&v76[16];
      __src[5] = v77[0];
      *(v2 + 92) = *(v77 + 12);
      __src[0] = v73;
      __src[1] = v74;
      __src[2] = v75;
      __src[3] = *v76;
      v3 = *(*&v1 + 56);
      v7 = v3;
      swift_beginAccess();
      v0 = *(*&v1 + 24);
      if (*(v0 + 2) <= v3)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v55 = v13;
    v56 = v14;
    v57 = v15;
    v58 = v16;
    swift_once();
    v16 = v58;
    v15 = v57;
    v14 = v56;
    v13 = v55;
  }

  v53 = (*&v84[72] >> 28) & 3;
  if (v53)
  {
    if (v53 == 1)
    {

      DisplayList.init(_:)(v54, __dst);
      v78 = __src[7];
      v79 = __src[8];
      *&v80[8] = xmmword_18DDA6ED0;
      *&v80[24] = *&__dst[0];
      *&v80[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v80[40] = LODWORD(__src[14].f64[1]);
      *v80 = __src[12].f64[0];
      LOBYTE(__dst[0]) = Kind;
      DisplayList.Item.canonicalize(options:)(__dst);
      *&v70[32] = *v80;
      *&v70[48] = *&v80[16];
      *&v70[60] = *&v80[28];
      *v70 = v78;
      *&v70[16] = v79;
      v75 = *v80;
      *v76 = *&v80[16];
      *&v76[12] = *&v80[28];
      v73 = v78;
      v74 = v79;
      outlined init with copy of DisplayList.Item(v70, __dst);
      DisplayList.init(_:)(&v73, &v67);
      __dst[2] = *v80;
      __dst[3] = *&v80[16];
      *(&__dst[3] + 12) = *&v80[28];
      __dst[0] = v78;
      __dst[1] = v79;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
      v68 = 0;
      v69 = 0;
    }
  }

  else
  {
    *v70 = *&v84[8];
    *&v70[8] = *&v84[16];
    *&v70[24] = *&v84[32];
    *&v70[40] = *&v84[48];
    *&v70[56] = *&v84[64];
    *&v70[64] = *&v84[72] & 0xFFFFFFFFCFFFFFFFLL;
    *&v70[72] = *&v84[80];
    *&__dst[0] = *&v84[8];
    *(__dst + 8) = *&v84[16];
    *(&__dst[1] + 8) = *&v84[32];
    *(&__dst[2] + 8) = *&v84[48];
    *(&__dst[3] + 1) = *&v84[64];
    *&__dst[4] = *&v84[72] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v84[80];
    outlined init with copy of DisplayList.Item(__dst, &v78);
    DisplayList.init(_:)(v70, &v67);
  }

  *v80 = *&v84[40];
  *&v80[16] = *&v84[56];
  *&v80[28] = *&v84[68];
  v78 = *&v84[8];
  v79 = *&v84[24];
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v78);
  memset(&v84[8], 0, 64);
  *&v84[72] = 0x20000000;
  *&v84[80] = 0;
  *v70 = v67;
  *&v70[8] = v68;
  *&v70[12] = v69;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v85, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  *&v70[32] = *&v84[32];
  *&v70[48] = *&v84[48];
  *&v70[64] = *&v84[64];
  *v71 = *&v84[80];
  *v70 = *v84;
  *&v70[16] = *&v84[16];
  outlined destroy of _ShapeStyle_RenderedLayers(v70);
}

{
  v110 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 3);
  type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  LODWORD(v7) = *(Value + 8);
  LODWORD(v8) = *(Value + 9);
  if ((v9 & 1) != 0 || !*(v0 + 25))
  {

    v11 = ++static DisplayList.Version.lastValue;
    goto LABEL_6;
  }

  __src[0].f64[0] = *(v0 + 28);
  LODWORD(__src[0].f64[1]) = v4;

  v10 = AGGraphAnyInputsChanged();
  v11 = ++static DisplayList.Version.lastValue;
  if (v10)
  {
LABEL_6:
    v12 = (2 * ((33 * (v11 >> 16)) ^ v11)) | 1;
    if (!v11)
    {
      LOWORD(v12) = 0;
    }

    *(v0 + 25) = v12;
  }

  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_34;
  }

  v1 = __src;
  v68 = v7;
  v17 = *(v0 + 10);
  v70 = v11;
  v65 = AGCreateWeakAttribute();
  v18 = AGCreateWeakAttribute();
  v67 = v8;
  v19 = v18;
  v66 = HIDWORD(v18);
  v69 = v17;
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v64 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v63 = HIDWORD(v22);
  v24 = AGCreateWeakAttribute();
  v25 = v24;
  v62 = HIDWORD(v24);
  v26 = AGCreateWeakAttribute();
  v27 = v26;
  v61 = HIDWORD(v26);
  type metadata accessor for CGPoint(0);
  v28 = AGGraphGetValue();
  v29 = *v28;
  v30 = v28[1];
  v31 = AGGraphGetValue();
  v32 = v29 - *v31;
  v33 = v30 - v31[1];
  v34 = AGGraphGetValue();
  v35 = *v34;
  v36 = *(v34 + 8);
  _threadGeometryProxyData();
  *&__src[0].f64[0] = v65;
  *&__src[0].f64[1] = __PAIR64__(v66, v19);
  *&__src[1].f64[0] = __PAIR64__(v64, v21);
  *&__src[1].f64[1] = __PAIR64__(v63, v23);
  *&__src[2].f64[0] = __PAIR64__(v62, v25);
  v2 = &v92;
  *&__src[2].f64[1] = __PAIR64__(v61, v27);
  v3 = v70;
  LODWORD(__src[3].f64[0]) = v70;
  _setThreadGeometryProxyData();

  specialized Shape.effectivePath(in:)(v37, v108, 0.0, 0.0, v35, v36);
  v38 = v109;

  v39 = 0x10000;
  if (!v67)
  {
    v39 = 0;
  }

  v40 = 256;
  if (!v68)
  {
    v40 = 0;
  }

  v6 = v39 | v40 | v38;
  _setThreadGeometryProxyData();
  v98 = v108[1];
  v97 = v108[0];
  *&v99.f64[0] = v6;
  v101.f64[0] = 0.0;
  v103 = 0;
  v105 = 0;
  v104 = 0;
  v106 = v35;
  v107 = v36;
  v11 = *v0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  *v96 = 0u;
  v92 = v11;
  *&v96[16] = 0x20000000;
  *&v96[24] = 0;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v97, __src, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = v35;
  v111.size.height = v36;
  *&v13 = CGRectOffset(v111, v32, v33);
  LODWORD(v6) = *(v0 + 2);
  LOWORD(v8) = *(v0 + 25);
  LOBYTE(v7) = v0[48];
  __src[9].f64[0] = 0.0;
  LODWORD(__src[9].f64[1]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v41 = static GraphicsBlendMode.normal;
    v42 = byte_1ED52F818;
    *&__src[15].f64[1] = static GraphicsBlendMode.normal;
    LOBYTE(__src[16].f64[0]) = byte_1ED52F818;
    HIDWORD(__src[16].f64[0]) = 1065353216;
    LOBYTE(__src[16].f64[1]) = 0;
    __src[4] = v101;
    __src[5] = v102;
    *(&v1[5] + 12) = *(v2 + 180);
    __src[0] = v97;
    __src[1] = v98;
    __src[2] = v99;
    __src[3] = v100;
    WORD2(__src[6].f64[1]) = v8;
    __src[7].f64[0] = v13;
    __src[7].f64[1] = v14;
    __src[8].f64[0] = v15;
    __src[8].f64[1] = v16;
    __src[10].f64[0] = v13;
    __src[10].f64[1] = v14;
    __src[11].f64[0] = v15;
    __src[11].f64[1] = v16;
    __src[12] = v3;
    __src[13] = 0uLL;
    *&__src[14].f64[0] = 3221225472;
    LODWORD(__src[14].f64[1]) = v6;
    BYTE4(__src[14].f64[1]) = v7;
    LODWORD(__src[15].f64[0]) = v69;
    LOBYTE(__dst[0]) = 0;
    outlined copy of GraphicsBlendMode(v41, v42);
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v92, __src, v0);
    v43 = v0[48];
    if (!v11)
    {
      break;
    }

    v71 = v43;
    v2 = *(v11 + 56);
    v6 = v2;
    swift_beginAccess();
    v0 = *(v11 + 24);
    if (*(v0 + 2) <= v2)
    {
LABEL_26:
      *(v11 + 56) = 0;
      v2 = &v92;
      v43 = v71;
      break;
    }

    v3 = 1;
    v7 = &type metadata for _ShapeStyle_Pack.Style;
    v8 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?;
    while (1)
    {
      *(v11 + 56) = v2 + 1;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 24) = v0;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v2 & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v0 = specialized _ArrayBuffer._consumeAndCreateNew()(v0);
        if ((v2 & 0x80000000) != 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      if (*(v0 + 2) <= v6)
      {
        break;
      }

      v45 = &v0[232 * v6];
      v45[260] = 1;
      *(v11 + 24) = v0;
      swift_endAccess();
      v46 = *(v45 + 13);
      v47 = *(v45 + 56);
      v48 = *(v45 + 72);
      v49 = *(v45 + 104);
      __dst[2] = *(v45 + 88);
      __dst[3] = v49;
      __dst[0] = v47;
      __dst[1] = v48;
      v50 = *(v45 + 120);
      v51 = *(v45 + 152);
      v52 = *(v45 + 21);
      __dst[5] = *(v45 + 136);
      __dst[6] = v51;
      __dst[4] = v50;
      v81 = __src[0];
      v82 = __src[1];
      *(v85 + 12) = *(v1 + 92);
      *&v84[16] = __src[4];
      v85[0] = __src[5];
      v83 = __src[2];
      *v84 = __src[3];
      v86 = __src[0];
      v87 = __src[1];
      *(v89 + 12) = *(v1 + 92);
      *&__dst[7] = v52;
      *&v88[32] = __src[4];
      v89[0] = __src[5];
      *v88 = __src[2];
      *&v88[16] = __src[3];
      memset(__src, 0, 104);
      LODWORD(__src[6].f64[1]) = -1610612736;
      swift_retain_n();
      outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(__dst, &v75, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);
      outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v81, &v75);
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v86);

      *&__src[9].f64[0] = v11;
      LODWORD(__src[9].f64[1]) = v46;
      if (*&__dst[7])
      {
        *&v78[16] = __dst[4];
        *v79 = __dst[5];
        *&v79[16] = __dst[6];
        v75 = __dst[0];
        v76 = __dst[1];
        v77 = __dst[2];
        *v78 = __dst[3];
        v80 = *&__dst[7];
        _ShapeStyle_RenderedShape.render(style:)(&v75);
      }

      _ShapeStyle_RenderedLayers.endLayer(shape:)(__src);

      outlined destroy of GlassEntryView?(__dst, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720]);

      *&v78[16] = __src[4];
      *v79 = __src[5];
      *&v79[12] = *(v1 + 92);
      v75 = __src[0];
      v76 = __src[1];
      v77 = __src[2];
      *v78 = __src[3];
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v75);
      __src[4] = *&v84[16];
      __src[5] = v85[0];
      *(v1 + 92) = *(v85 + 12);
      __src[0] = v81;
      __src[1] = v82;
      __src[2] = v83;
      __src[3] = *v84;
      v2 = *(v11 + 56);
      v6 = v2;
      swift_beginAccess();
      v0 = *(v11 + 24);
      if (*(v0 + 2) <= v2)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v57 = v13;
    v58 = v14;
    v59 = v15;
    v60 = v16;
    swift_once();
    v16 = v60;
    v15 = v59;
    v14 = v58;
    v13 = v57;
  }

  v53 = (*&v96[16] >> 28) & 3;
  if (v53)
  {
    if (v53 == 1)
    {

      DisplayList.init(_:)(v54, __dst);
      v86 = __src[7];
      v87 = __src[8];
      *&v88[8] = xmmword_18DDA6ED0;
      *&v88[24] = *&__dst[0];
      *&v88[32] = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
      *&v88[40] = LODWORD(__src[14].f64[1]);
      *v88 = __src[12].f64[0];
      LOBYTE(__dst[0]) = v43;
      DisplayList.Item.canonicalize(options:)(__dst);
      v77 = *v88;
      *v78 = *&v88[16];
      *&v78[12] = *&v88[28];
      v75 = v86;
      v76 = v87;
      v83 = *v88;
      *v84 = *&v88[16];
      *&v84[12] = *&v88[28];
      v81 = v86;
      v82 = v87;
      outlined init with copy of DisplayList.Item(&v75, __dst);
      DisplayList.init(_:)(&v81, &v72);
      __dst[2] = *v88;
      __dst[3] = *&v88[16];
      *(&__dst[3] + 12) = *&v88[28];
      __dst[0] = v86;
      __dst[1] = v87;
      outlined destroy of DisplayList.Item(__dst);
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
      v73 = 0;
      v74 = 0;
    }
  }

  else
  {
    v75 = v93;
    v76 = v94;
    v77 = v95;
    *v78 = *v96;
    *&v78[16] = *&v96[16] & 0xFFFFFFFFCFFFFFFFLL;
    *&v78[24] = *&v96[24];
    __dst[0] = v93;
    __dst[1] = v94;
    __dst[2] = v95;
    __dst[3] = *v96;
    *&__dst[4] = *&v96[16] & 0xFFFFFFFFCFFFFFFFLL;
    DWORD2(__dst[4]) = *&v96[24];
    outlined init with copy of DisplayList.Item(__dst, &v86);
    DisplayList.init(_:)(&v75, &v72);
  }

  *v88 = v95;
  *&v88[16] = *v96;
  *&v88[28] = *&v96[12];
  v86 = v93;
  v87 = v94;
  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v86);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  *v96 = 0u;
  *&v96[16] = 0x20000000;
  *&v96[24] = 0;
  v75.f64[0] = v72;
  LOWORD(v75.f64[1]) = v73;
  HIDWORD(v75.f64[1]) = v74;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v97, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v55 = v2[3];
  v77 = v2[2];
  *v78 = v55;
  *&v78[16] = v2[4];
  *v79 = *&v96[24];
  v56 = v2[1];
  v75 = *v2;
  v76 = v56;
  outlined destroy of _ShapeStyle_RenderedLayers(&v75);
}

{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  v7 = *(Value + 9);
  if ((v8 & 1) != 0 || !*(v0 + 50))
  {
    v10 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v0 + 28);
    LODWORD(__dst[1]) = v3;

    v9 = AGGraphAnyInputsChanged();
    v10 = ++static DisplayList.Version.lastValue;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = (2 * ((33 * (v10 >> 16)) ^ v10)) | 1;
  if (!v10)
  {
    LOWORD(v11) = 0;
  }

  *(v0 + 50) = v11;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v45 = v12;
    v46 = v13;
    v47 = v14;
    v48 = v15;
    swift_once();
    v15 = v48;
    v14 = v47;
    v13 = v46;
    v12 = v45;
    goto LABEL_15;
  }

  v16 = *(v0 + 40);
  v17 = AGCreateWeakAttribute();
  v56 = v6;
  v18 = v17;
  v54 = HIDWORD(v17);
  v19 = AGCreateWeakAttribute();
  v55 = v7;
  v20 = v19;
  v53 = HIDWORD(v19);
  v57 = v16;
  v21 = AGCreateWeakAttribute();
  v22 = v21;
  v52 = HIDWORD(v21);
  v23 = AGCreateWeakAttribute();
  v24 = v23;
  v51 = HIDWORD(v23);
  v25 = AGCreateWeakAttribute();
  v26 = v25;
  v50 = HIDWORD(v25);
  v27 = AGCreateWeakAttribute();
  v28 = v27;
  v49 = HIDWORD(v27);
  type metadata accessor for CGPoint(0);
  v29 = AGGraphGetValue();
  v30 = *v29;
  v31 = v29[1];
  v32 = AGGraphGetValue();
  v33 = v30 - *v32;
  v34 = v31 - v32[1];
  v35 = AGGraphGetValue();
  v36 = *v35;
  v37 = *(v35 + 8);
  _threadGeometryProxyData();
  __dst[0] = __PAIR64__(v54, v18);
  __dst[1] = __PAIR64__(v53, v20);
  __dst[2] = __PAIR64__(v52, v22);
  v1 = &v62;
  __dst[3] = __PAIR64__(v51, v24);
  v2 = v10;
  __dst[4] = __PAIR64__(v50, v26);
  __dst[5] = __PAIR64__(v49, v28);
  LODWORD(__dst[6]) = v10;
  _setThreadGeometryProxyData();

  specialized Shape.effectivePath(in:)(v38, v83, v36);
  v39 = v84;

  v40 = 0x10000;
  if (!v55)
  {
    v40 = 0;
  }

  v41 = 256;
  if (!v56)
  {
    v41 = 0;
  }

  v5 = v40 | v41 | v39;
  _setThreadGeometryProxyData();
  v69 = v83[0];
  v70 = v83[1];
  *&v71 = v5;
  *&v73 = 0;
  v75 = 0;
  v77 = 0;
  v76 = 0;
  v78 = v36;
  v79 = v37;
  v42 = *v0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v68 = 0;
  v67 = 0x20000000;
  v62 = v42;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v69, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v86.origin.x = 0.0;
  v86.origin.y = 0.0;
  v86.size.width = v36;
  v86.size.height = v37;
  *&v12 = CGRectOffset(v86, v33, v34);
  LODWORD(v5) = *(v0 + 8);
  LOWORD(v6) = *(v0 + 50);
  LOBYTE(v10) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v73;
  __src[5] = v74;
  *(&__src[5] + 12) = *(v1 + 180);
  __src[0] = v69;
  __src[1] = v70;
  __src[2] = v71;
  __src[3] = v72;
  WORD6(__src[6]) = v6;
  *&__src[7] = v12;
  *(&__src[7] + 1) = v13;
  *&__src[8] = v14;
  *(&__src[8] + 1) = v15;
  *&__src[10] = v12;
  *(&__src[10] + 1) = v13;
  *&__src[11] = v14;
  *(&__src[11] + 1) = v15;
  __src[12] = v2;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v5;
  BYTE12(__src[14]) = v10;
  LODWORD(__src[15]) = v57;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v62, __src, v0);
  LOBYTE(__dst[0]) = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v58);
  *&v81[0] = v58;
  WORD4(v81[0]) = v59;
  HIDWORD(v81[0]) = v60;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v69, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v81[2] = *(v1 + 2);
  v81[3] = v43;
  v81[4] = *(v1 + 4);
  v82 = v68;
  v44 = *(v1 + 1);
  v81[0] = *v1;
  v81[1] = v44;
  outlined destroy of _ShapeStyle_RenderedLayers(v81);
}

{
  v3 = v0;
  v82 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 12);
  type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = *(Value + 8);
  v8 = *(Value + 16);
  v9 = *(Value + 24);
  v10 = *(Value + 32);
  v54 = *(Value + 33);
  v53 = *(Value + 34);
  if ((v11 & 1) != 0 || !*(v3 + 50))
  {
    outlined copy of Path.Storage(v7, v6, v8, v9, v10);
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    __dst[0] = *(v3 + 28);
    LODWORD(__dst[1]) = v4;
    outlined copy of Path.Storage(v7, v6, v8, v9, v10);
    v12 = AGGraphAnyInputsChanged();
    v13 = ++static DisplayList.Version.lastValue;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
  if (!v13)
  {
    LOWORD(v14) = 0;
  }

  *(v3 + 50) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_17:
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v41 = v18;
    swift_once();
    v18 = v41;
    v17 = v40;
    v16 = v39;
    v15 = v38;
    goto LABEL_15;
  }

  v51 = v13;
  v19 = *(v3 + 40);
  v50 = v10;
  v52 = v8;
  v47 = AGCreateWeakAttribute();
  v46 = AGCreateWeakAttribute();
  v49 = v19;
  v45 = AGCreateWeakAttribute();
  v43 = AGCreateWeakAttribute();
  v20 = AGCreateWeakAttribute();
  v21 = v20;
  v44 = HIDWORD(v20);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v42 = HIDWORD(v22);
  type metadata accessor for CGPoint(0);
  v24 = AGGraphGetValue();
  v25 = *v24;
  v26 = v24[1];
  v27 = AGGraphGetValue();
  v28 = v25 - *v27;
  v29 = v26 - v27[1];
  v30 = AGGraphGetValue();
  v31 = *v30;
  v32 = *(v30 + 8);
  _threadGeometryProxyData();
  __dst[0] = v47;
  __dst[1] = v46;
  v1 = v6;
  __dst[2] = v45;
  __dst[3] = v43;
  __dst[4] = __PAIR64__(v44, v21);
  __dst[5] = __PAIR64__(v42, v23);
  v2 = v9;
  LODWORD(__dst[6]) = v13;
  _setThreadGeometryProxyData();
  v77 = v7;
  v78 = v6;
  v79 = v52;
  v80 = v9;
  v81 = v50;
  outlined copy of Path.Storage(v7, v6, v52, v9, v50);
  specialized Shape.effectivePath(in:)(v75, v31);
  v6 = v76;
  v48 = v7;
  LOBYTE(v7) = v50;
  outlined consume of Path.Storage(v48, v1, v52, v9, v50);
  v33 = 0x10000;
  if (!v53)
  {
    v33 = 0;
  }

  v34 = 256;
  if (!v54)
  {
    v34 = 0;
  }

  v13 = v33 | v34 | v6;
  v9 = &v72;
  _setThreadGeometryProxyData();
  v62 = v75[1];
  v61 = v75[0];
  *&v63 = v13;
  *&v65 = 0;
  DWORD2(v66[1]) = 0;
  v67 = 0;
  v68 = 0;
  v69 = v31;
  v70 = v32;
  v35 = *v3;
  *(v59 + 8) = 0u;
  *(&v59[1] + 8) = 0u;
  *(&v59[2] + 8) = 0u;
  *(&v59[3] + 8) = 0u;
  *(&v59[4] + 1) = 0x20000000;
  v60 = 0;
  *&v59[0] = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v61, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v83.origin.x = 0.0;
  v83.origin.y = 0.0;
  v83.size.width = v31;
  v83.size.height = v32;
  *&v15 = CGRectOffset(v83, v28, v29);
  LODWORD(v13) = *(v3 + 8);
  v10 = *(v3 + 50);
  LOBYTE(v6) = *(v3 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  *(&__src[15] + 1) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = byte_1ED52F818;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  __src[4] = v65;
  __src[5] = v66[0];
  *(&__src[5] + 12) = *(v66 + 12);
  __src[0] = v61;
  __src[1] = v62;
  __src[2] = v63;
  __src[3] = v64;
  WORD6(__src[6]) = v10;
  *&__src[7] = v15;
  *(&__src[7] + 1) = v16;
  *&__src[8] = v17;
  *(&__src[8] + 1) = v18;
  *&__src[10] = v15;
  *(&__src[10] + 1) = v16;
  *&__src[11] = v17;
  *(&__src[11] + 1) = v18;
  __src[12] = v51;
  __src[13] = 0uLL;
  *&__src[14] = 3221225472;
  DWORD2(__src[14]) = v13;
  BYTE12(__src[14]) = v6;
  LODWORD(__src[15]) = v49;
  LOBYTE(__dst[0]) = 0;
  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v59, __src, v3);
  LOBYTE(__dst[0]) = *(v3 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v55);
  v72 = v55;
  v73 = v56;
  v74 = v57;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v61, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v36 = v59[3];
  *(v9 + 2) = v59[2];
  *(v9 + 3) = v36;
  *(v9 + 4) = v59[4];
  *(v9 + 20) = v60;
  v37 = v59[1];
  *v9 = v59[0];
  *(v9 + 1) = v37;
  outlined destroy of _ShapeStyle_RenderedLayers(&v72);
  outlined consume of Path.Storage(v48, v1, v52, v2, v7);
}

{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 12);
  type metadata accessor for _ShapeView<Rectangle, MeshGradient>(0);
  Value = AGGraphGetValue();
  v5 = *(Value + 44);
  v6 = Value[2];
  v7 = *Value;
  v71 = Value[1];
  *v72 = v6;
  *&v72[12] = v5;
  v70 = v7;
  v8 = v71;
  v9 = v6;
  *&v10 = v5 >> 32;
  if ((v11 & 1) != 0 || !*(v0 + 50))
  {
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v70, __dst, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
    v13 = ++static DisplayList.Version.lastValue;
  }

  else
  {
    *&__src[0] = *(v0 + 28);
    DWORD2(__src[0]) = v3;
    outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v70, __dst, type metadata accessor for _ShapeView<Rectangle, MeshGradient>);
    v12 = AGGraphAnyInputsChanged();
    v13 = ++static DisplayList.Version.lastValue;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v14 = (2 * ((33 * (v13 >> 16)) ^ v13)) | 1;
  if (!v13)
  {
    LOWORD(v14) = 0;
  }

  *(v0 + 50) = v14;
LABEL_9:
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_25:
    v45 = v15;
    v46 = v16;
    v47 = v17;
    v48 = v18;
    swift_once();
    v18 = v48;
    v17 = v47;
    v16 = v46;
    v15 = v45;
    goto LABEL_23;
  }

  v1 = &v54;
  v2 = __src;
  v19 = *(v0 + 40);
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  v49 = v19;
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  AGCreateWeakAttribute();
  type metadata accessor for CGPoint(0);
  v20 = AGGraphGetValue();
  v21 = *v20;
  v22 = v20[1];
  v23 = AGGraphGetValue();
  v24 = v21 - *v23;
  v25 = v22 - v23[1];
  v26 = AGGraphGetValue();
  v27 = *v26;
  v28 = *(v26 + 8);
  _threadGeometryProxyData();
  v8 = v13;
  _setThreadGeometryProxyData();
  v74.origin.x = 0.0;
  v74.origin.y = 0.0;
  v74.size.width = v27;
  v74.size.height = v28;
  IsNull = CGRectIsNull(v74);
  if (IsNull)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v27;
  }

  if (IsNull)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v28;
  }

  v31 = 6;
  if (!IsNull)
  {
    v31 = 0;
  }

  v32 = 0x10000;
  if (!v72[27])
  {
    v32 = 0;
  }

  v33 = 256;
  if (!v72[26])
  {
    v33 = 0;
  }

  *&v34 = v33 | v32 | v31;
  _setThreadGeometryProxyData();
  v61[0] = 0.0;
  v61[1] = 0.0;
  v61[2] = v30;
  v61[3] = v10;
  v61[4] = v34;
  v61[8] = 0.0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = v27;
  v66 = v28;
  v35 = *v0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0x20000000;
  v60 = 0;
  v54 = v35;

  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(v61, __dst, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  v75.origin.x = 0.0;
  v75.origin.y = 0.0;
  v75.size.width = v27;
  v75.size.height = v28;
  *&v15 = CGRectOffset(v75, v24, v25);
  v3 = *(v0 + 8);
  v9 = *(v0 + 50);
  LOBYTE(v10) = *(v0 + 48);
  *&__src[9] = 0;
  DWORD2(__src[9]) = 0;
  if (one-time initialization token for normal != -1)
  {
    goto LABEL_25;
  }

LABEL_23:
  v36 = static GraphicsBlendMode.normal;
  v37 = byte_1ED52F818;
  *(v2 + 31) = static GraphicsBlendMode.normal;
  LOBYTE(__src[16]) = v37;
  DWORD1(__src[16]) = 1065353216;
  BYTE8(__src[16]) = 0;
  v38 = *(v1 + 17);
  v39 = *(v1 + 21);
  v2[4] = *(v1 + 19);
  v2[5] = v39;
  *(v2 + 92) = *(v1 + 180);
  v40 = *(v1 + 13);
  __src[0] = *(v1 + 11);
  __src[1] = v40;
  __src[2] = *(v1 + 15);
  __src[3] = v38;
  WORD6(__src[6]) = v9;
  *(v2 + 14) = v15;
  *(v2 + 15) = v16;
  *(v2 + 16) = v17;
  *(v2 + 17) = v18;
  *(v2 + 20) = v15;
  *(v2 + 21) = v16;
  *(v2 + 22) = v17;
  *(v2 + 23) = v18;
  *(v2 + 24) = v8;
  *(v2 + 25) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 28) = 3221225472;
  DWORD2(__src[14]) = v3;
  BYTE12(__src[14]) = LOBYTE(v10);
  LODWORD(__src[15]) = v49;
  __dst[0] = 0;
  outlined copy of GraphicsBlendMode(v36, v37);
  specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, &v54, __src, v0);
  __dst[0] = *(v0 + 48);
  _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v50);
  v41 = v51;
  v42 = v52;
  v1[63] = v50;
  WORD4(v68[0]) = v41;
  HIDWORD(v68[0]) = v42;
  AGGraphSetOutputValue();
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v61, type metadata accessor for (shape: _ShapeStyle_RenderedShape.Shape, frame: CGRect));
  memcpy(__dst, __src, 0x109uLL);
  outlined destroy of _ShapeStyle_RenderedShape(__dst);

  v43 = *(v1 + 3);
  v68[2] = *(v1 + 2);
  v68[3] = v43;
  v68[4] = *(v1 + 4);
  v69 = v60;
  v44 = *(v1 + 1);
  v68[0] = *v1;
  v68[1] = v44;
  outlined destroy of _ShapeStyle_RenderedLayers(v68);
}

CGSize __swiftcall ResolvedStyledText.StringDrawing.size(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  swift_beginAccess();
  v4 = v1[21];
  v5 = v1[22];
  v7 = v1[23];
  v6 = v1[24];
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v11, width, height, v4, v5, v7, v6);
  swift_endAccess();
  v8 = *v11;
  v9 = *&v11[1];
  result.height = v9;
  result.width = v8;
  return result;
}

void type metadata accessor for [Date](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(void **a1, int a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a8;
  v43 = a7;
  v42 = a5;
  v41 = a2;
  v11 = type metadata accessor for TypesettingConfiguration(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  isEscapingClosureAtFileLocation = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Text.Resolved(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *a1;
  v19 = a1[1];
  v45 = *a3;
  v21 = *a4;
  v20 = a4[1];
  Text.Style.init()(v17);
  v44 = v15[7];
  *&v17[v44] = 0;
  v22 = v15[8];
  v27 = &v17[v15[9]];
  *v27 = 0;
  v27[1] = 0;
  v23 = &v17[v15[10]];
  *(v23 + 16) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 5) = MEMORY[0x1E69E7CC0];
  *(v23 + 6) = v24;
  *(v23 + 56) = 0u;
  *(v23 + 72) = 0u;
  *(v23 + 11) = 0;
  *(v23 + 6) = xmmword_18DD85510;
  *(v23 + 14) = v24;

  *(v23 + 14) = v24;
  *(v23 + 15) = 0;
  v25 = MEMORY[0x1E69E7CD0];
  *(v23 + 17) = 0;
  *(v23 + 18) = 0;
  *(v23 + 16) = v25;
  v23[152] = 3;
  v17[v22] = v41;
  *v27 = v21;
  v27[1] = v20;
  v26 = v18;
  LOBYTE(v27) = v43;
  v28 = v42;
  v29 = _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5(v18, v19, isEscapingClosureAtFileLocation);
  if (v27 & 1) == 0 || ((*(*v28 + 112))(v29))
  {
    goto LABEL_5;
  }

  if (one-time initialization token for automatic != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v30 = type metadata accessor for TypesettingLanguage(0);
    v31 = __swift_project_value_buffer(v30, static TypesettingLanguage.automatic);
    outlined assign with copy of TypesettingLanguage(v31, isEscapingClosureAtFileLocation, type metadata accessor for TypesettingLanguage);
LABEL_5:
    v32 = type metadata accessor for Text.Style(0);
    outlined assign with copy of TypesettingLanguage(isEscapingClosureAtFileLocation, &v17[*(v32 + 84)], type metadata accessor for TypesettingConfiguration);
    specialized Text.resolve<A>(into:in:with:)(v17, v26, v19, v45, v28, v46, v27 & 1, v47);
    v27 = *&v17[v44];
    if (!v27)
    {
      break;
    }

    v33 = v27;
    v34 = [v33 length];

    aBlock = v26;
    v49 = v19;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v34, v33, &aBlock);
    v35 = v33;
    if ([v35 length] < 1)
    {

      break;
    }

    v47 = isEscapingClosureAtFileLocation;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      swift_once();
    }

    v36 = static NSAttributedStringKey.resolvableTextSegment;
    v26 = [v35 length];
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = &v54;
    v19 = swift_allocObject();
    v19[2] = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    v19[3] = v37;
    v52 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    v53 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v51 = &block_descriptor_8;
    v38 = _Block_copy(&aBlock);
    v28 = v35;

    [v28 enumerateAttribute:v36 inRange:0 options:v26 usingBlock:{0, v38}];
    _Block_release(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(&v54, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      outlined destroy of TimelineSchedule?(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      outlined destroy of TimelineSchedule?(&v54, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);

      isEscapingClosureAtFileLocation = v47;
      goto LABEL_13;
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  outlined destroy of TimelineSchedule?(&v54, &lazy cache variable for type metadata for TimelineSchedule?, type metadata accessor for TimelineSchedule, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
LABEL_13:
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(isEscapingClosureAtFileLocation, type metadata accessor for TypesettingConfiguration);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v17, type metadata accessor for Text.Resolved);
  return v27;
}

uint64_t sub_18D0C7FCC()
{

  return swift_deallocObject();
}

uint64_t sub_18D0C804C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t assignWithTake for Text.Style(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  if (*a1 < 2uLL)
  {
    goto LABEL_4;
  }

  if (v6 < 2)
  {
    outlined destroy of Font(a1);
    v6 = *a2;
LABEL_4:
    *a1 = v6;
    goto LABEL_6;
  }

  *a1 = v6;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  outlined consume of Gradient.ProviderTag(v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  if ((*(a1 + 88) - 1) < 2)
  {
LABEL_9:
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

  v8 = *(a2 + 88);
  if ((v8 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 80);
    goto LABEL_9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;

LABEL_11:
  if ((*(a1 + 104) - 1) < 2)
  {
LABEL_14:
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_16;
  }

  v9 = *(a2 + 104);
  if ((v9 - 1) < 2)
  {
    outlined destroy of Text.LineStyle(a1 + 96);
    goto LABEL_14;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;

LABEL_16:
  if (*(a1 + 176) == 1)
  {
LABEL_19:
    v11 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v11;
    *(a1 + 208) = *(a2 + 208);
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    v13 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v13;
    goto LABEL_21;
  }

  v10 = *(a2 + 176);
  if (v10 == 1)
  {
    outlined destroy of Text.Encapsulation(a1 + 112);
    goto LABEL_19;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
LABEL_21:
  if (*(a1 + 248) == 1)
  {
LABEL_24:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    goto LABEL_26;
  }

  v14 = *(a2 + 248);
  if (v14 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes(a1 + 216);
    goto LABEL_24;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v14;

LABEL_26:
  v15 = *(a1 + 288);
  if (v15 == 1)
  {
LABEL_29:
    v17 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v17;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_30;
  }

  v16 = *(a2 + 288);
  if (v16 == 1)
  {
    outlined destroy of AccessibilityTextAttributes(a1 + 256);
    goto LABEL_29;
  }

  v55 = (a1 + 264);
  v56 = (a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 257) = *(a2 + 257);
  if (v15)
  {
    if (v16)
    {
      v57 = *(a2 + 280);
      v58 = *(a1 + 264);
      v59 = *(a1 + 272);
      v60 = *(a1 + 280);
      *v55 = *v56;
      *(a1 + 280) = v57;
      outlined consume of Text.Storage(v58, v59, v60);
      *(a1 + 288) = *(a2 + 288);

      goto LABEL_30;
    }

    outlined destroy of Text(a1 + 264);
  }

  v62 = *(a2 + 280);
  *v55 = *v56;
  *(a1 + 280) = v62;
LABEL_30:
  v18 = *(a1 + 296);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v19 = a3[21];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v26 = v25(v20, 2, v22);
  v27 = v25(v21, 2, v23);
  if (v26)
  {
    if (!v27)
    {
      v28 = type metadata accessor for Locale.Language();
      (*(*(v28 - 8) + 32))(v20, v21, v28);
      v20[*(v23 + 48)] = v21[*(v23 + 48)];
      (*(v24 + 56))(v20, 0, 2, v23);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v27)
  {
    outlined destroy of ParagraphStyleResolutionContext(v20, type metadata accessor for (Locale.Language, TypesettingLanguage.Flags));
LABEL_35:
    v29 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v20, v21, *(*(v29 - 8) + 64));
    goto LABEL_36;
  }

  v61 = type metadata accessor for Locale.Language();
  (*(*(v61 - 8) + 40))(v20, v21, v61);
  v20[*(v23 + 48)] = v21[*(v23 + 48)];
LABEL_36:
  v30 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v31 = &v20[v30];
  v32 = &v21[v30];
  *v31 = *v32;
  v31[8] = v32[8];
  *(a1 + a3[22]) = *(a2 + a3[22]);

  v33 = a3[23];
  v34 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  v37 = v36(a1 + v33, 1, v34);
  v38 = v36(a2 + v33, 1, v34);
  if (v37)
  {
    if (!v38)
    {
      (*(v35 + 32))(a1 + v33, a2 + v33, v34);
      (*(v35 + 56))(a1 + v33, 0, 1, v34);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    (*(v35 + 8))(a1 + v33, v34);
LABEL_41:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
    memcpy((a1 + v33), (a2 + v33), *(*(v39 - 8) + 64));
    goto LABEL_42;
  }

  (*(v35 + 40))(a1 + v33, a2 + v33, v34);
LABEL_42:
  v40 = a3[24];
  v41 = type metadata accessor for AttributedString.TextAlignment();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(a1 + v40, 1, v41);
  v45 = v43(a2 + v40, 1, v41);
  if (v44)
  {
    if (!v45)
    {
      (*(v42 + 32))(a1 + v40, a2 + v40, v41);
      (*(v42 + 56))(a1 + v40, 0, 1, v41);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v45)
  {
    (*(v42 + 8))(a1 + v40, v41);
LABEL_47:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
    memcpy((a1 + v40), (a2 + v40), *(*(v46 - 8) + 64));
    goto LABEL_48;
  }

  (*(v42 + 40))(a1 + v40, a2 + v40, v41);
LABEL_48:
  v47 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  v48 = type metadata accessor for AttributedString.LineHeight();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  v51 = v50(a1 + v47, 1, v48);
  v52 = v50(a2 + v47, 1, v48);
  if (!v51)
  {
    if (!v52)
    {
      (*(v49 + 40))(a1 + v47, a2 + v47, v48);
      goto LABEL_54;
    }

    (*(v49 + 8))(a1 + v47, v48);
    goto LABEL_53;
  }

  if (v52)
  {
LABEL_53:
    _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v47), (a2 + v47), *(*(v53 - 8) + 64));
    goto LABEL_54;
  }

  (*(v49 + 32))(a1 + v47, a2 + v47, v48);
  (*(v49 + 56))(a1 + v47, 0, 1, v48);
LABEL_54:
  *(a1 + a3[27]) = *(a2 + a3[27]);

  return a1;
}

uint64_t EnvironmentValues.stringResolutionDate.setter(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  _s10Foundation4DateVSgWOcTm_0(a1, v16, &lazy cache variable for type metadata for Date?, v13);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v16, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v21 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = v32;
    v23 = *v32;
    v24 = v30;
    _s10Foundation4DateVSgWOcTm_0(v7, v30, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v22, v24);

    _s10Foundation4DateVSgWOhTm_2(v24, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    if (v22[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v23, *v22);
    }

    _s10Foundation4DateVSgWOhTm_2(v33, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    return _s10Foundation4DateVSgWOhTm_2(v7, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v12, v20, v17);
    v26 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    v28 = v31;
    v27 = v32;
    v29 = *v32;
    _s10Foundation4DateVSgWOcTm_0(v12, v31, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v27, v28);

    _s10Foundation4DateVSgWOhTm_2(v28, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    if (v27[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v29, *v27);
    }

    _s10Foundation4DateVSgWOhTm_2(v33, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOhTm_2(v12, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for [Date](0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v47);
  if (!v48)
  {
    _sypSgWOhTm_4(v47, type metadata accessor for Any?);
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  v17 = swift_dynamicCast();
  (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    v18 = &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?;
    v19 = type metadata accessor for ResolvableTextSegmentAttribute.Value;
    v20 = MEMORY[0x1E69E6720];
    v21 = type metadata accessor for [Date];
    v22 = v12;
    return _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(v22, v18, v19, v20, v21);
  }

  outlined init with take of ResolvableTextSegmentAttribute.Value(v12, v16);
  if ([a5 attribute:*&v16[*(v13 + 20)] atIndex:a2 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v40 = v42;
  v41 = v43;
  if (!*(&v43 + 1))
  {
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    _sypSgWOhTm_4(&v40, type metadata accessor for Any?);
    v44 = 0u;
    v45 = 0u;
    AssociatedConformanceWitness = 0;
LABEL_16:
    v18 = &lazy cache variable for type metadata for ResolvableStringAttribute?;
    v19 = &lazy cache variable for type metadata for ResolvableStringAttribute;
    v20 = &protocol descriptor for ResolvableStringAttribute;
    v21 = type metadata accessor for ScrollStateRequest?;
    v22 = &v44;
    return _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(v22, v18, v19, v20, v21);
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_15;
  }

  if (!*(&v45 + 1))
  {
LABEL_15:
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    goto LABEL_16;
  }

  outlined init with take of AnyTrackedValue(&v44, v47);
  outlined init with copy of TimelineSchedule?(a6, &v40);
  if (*(&v41 + 1))
  {
    outlined init with take of AnyTrackedValue(&v40, &v44);
    v23 = v48;
    v24 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v25 = *(&v45 + 1);
    v26 = AssociatedConformanceWitness;
    v27 = __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    ResolvableStringAttribute.reduceSchedule<A>(with:)(v27, v23, v25, v24, v26, &v40);
    _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    outlined assign with take of TimelineSchedule?(&v40, a6);
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(&v40, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    v29 = v48;
    v30 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v39[0] = *(v30 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v32 = type metadata accessor for Optional();
    v39[1] = v39;
    v33 = *(v32 - 8);
    v34 = MEMORY[0x1EEE9AC00](v32);
    v36 = v39 - v35;
    (v39[0])(v29, v30, v34);
    v37 = *(AssociatedTypeWitness - 8);
    if ((*(v37 + 48))(v36, 1, AssociatedTypeWitness) == 1)
    {
      _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      (*(v33 + 8))(v36, v32);
      AssociatedConformanceWitness = 0;
      v44 = 0u;
      v45 = 0u;
    }

    else
    {
      *(&v45 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
      (*(v37 + 32))(boxed_opaque_existential_1, v36, AssociatedTypeWitness);
      _sypSgWOhTm_4(v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }

    outlined assign with take of TimelineSchedule?(&v44, a6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t outlined assign with take of Text.Style(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Style(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL NSAttributedString.isDynamic.getter()
{
  if ([v0 length] < 1)
  {
    return 0;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.updateSchedule;
  [v0 length];
  v2 = [v0 attribute:v1 atIndex:0 effectiveRange:0];
  v3 = v2 != 0;
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  _sypSgWOhTm_4(v5, type metadata accessor for Any?);
  return v3;
}

char *initializeWithCopy for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    a1[*(v7 + 64)] = a2[*(v7 + 64)];
    *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

unint64_t ResolvedStyledText.isDynamic.getter()
{
  v1 = *(v0 + 216);
  if (v1)
  {
    if ([*(v0 + 216) length] < 1)
    {
      return 0;
    }

    else
    {
      if (one-time initialization token for updateSchedule != -1)
      {
        swift_once();
      }

      v2 = static NSAttributedStringKey.updateSchedule;
      [v1 length];
      v3 = [v1 attribute:v2 atIndex:0 effectiveRange:0];
      v1 = v3 != 0;
      if (v3)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v5, 0, sizeof(v5));
      }

      _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    }
  }

  return v1;
}

SwiftUI::Time_optional __swiftcall ResolvedTextHelper.NextUpdate.time()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for Date?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  MEMORY[0x1EEE9AC00](Update);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ResolvableStringResolutionContext(v2, v16, type metadata accessor for ResolvedTextHelper.NextUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v2;
      v35 = v3;
      outlined destroy of Date?(v2, type metadata accessor for ResolvedTextHelper.NextUpdate);
      v19 = *v16;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = *(v16 + v20[16]);
      v22 = *(v16 + v20[20]);
      v23 = v16 + v20[12];
      v33 = *(v8 + 32);
      v33(v13, v23, v7);
      ResolvedStyledText.schedule.getter(v37);
      v24 = v38;
      if (v38)
      {
        v32 = v22;
        v25 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        v36 = v21;
        TimelineSchedule.nextEntry(after:mode:limit:)(v13, &v36, 60, 0, v24, v25, v6);
        (*(v8 + 56))(v6, 0, 1, v7);
        __swift_destroy_boxed_opaque_existential_1(v37);
        if ((*(v8 + 48))(v6, 1, v7) != 1)
        {
          v33(v10, v6, v7);
          Date.timeIntervalSince(_:)();
          v30 = v29;

          v31 = *(v8 + 8);
          v31(v10, v7);
          v31(v13, v7);
          v28 = v19 + v30;
          v27 = v34;
          v3 = v35;
          goto LABEL_11;
        }

        (*(v8 + 8))(v13, v7);
      }

      else
      {

        (*(v8 + 8))(v13, v7);
        _sypSgWOhTm_6(v37, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
        (*(v8 + 56))(v6, 1, 1, v7);
      }

      v27 = v34;
      outlined destroy of Date?(v6, type metadata accessor for Date?);
      v28 = INFINITY;
      v3 = v35;
LABEL_11:
      *v27 = v28;
      LOBYTE(EnumCaseMultiPayload) = swift_storeEnumTagMultiPayload();
      v26 = 0;
      *v3 = v28;
      goto LABEL_12;
    }

    *v3 = 0;
    v26 = 1;
  }

  else
  {
    v26 = 0;
    *v3 = *v16;
  }

LABEL_12:
  *(v3 + 8) = v26;
  result.value = *&v18;
  result.is_nil = EnumCaseMultiPayload;
  return result;
}

uint64_t AccessibilityStyledTextContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *v2;
  v12 = v2[1];
  v21 = v2[2];
  v20 = *(v2 + 24);
  v13 = v2[5];
  v19 = v2[4];
  v14 = *(v2 + 48);
  v24[0] = v11;
  v24[1] = v13;
  v25 = v14;
  v15 = *(v3 + 24);

  v15(v24, v12, v21, v20, v19, v11, v4, v3);

  swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v22 + 8);
  v16(v7, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v10, AssociatedTypeWitness);
}

uint64_t outlined init with copy of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void destroy for Text.ResolvedProperties(void *a1)
{

  outlined consume of ResolvedTextSuffix(a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13]);

  v2 = a1[17];
}

id NSMutableAttributedString.setUpdateSchedule(_:)(uint64_t a1)
{
  outlined init with copy of TimelineSchedule?(a1, &v4);
  if (v5)
  {
    outlined init with take of AnyTrackedValue(&v4, v6);
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    [v1 addAttribute:v2 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v1, sel_length)}];
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgWOhTm_0(&v4, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, type metadata accessor for ScrollStateRequest?);
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    return [v1 removeAttribute:static NSAttributedStringKey.updateSchedule range:{0, objc_msgSend(v1, sel_length)}];
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

double TextChildQuery.renderer.getter()
{
  type metadata accessor for TextRendererBoxBase();
  if (AGGraphGetWeakValue())
  {
  }

  return result;
}

uint64_t TextChildQuery.unresolvedText.getter()
{
  Value = AGGraphGetValue();
  v1 = *Value;
  outlined copy of Text.Storage(*Value, *(Value + 8), *(Value + 16));

  return v1;
}

uint64_t outlined init with take of ResolvableStringResolutionContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for Text.ResolvedProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);

  outlined copy of ResolvedTextSuffix(v6, v7, v8, v9, v10, v11, v12);
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  v13 = *(a2 + 112);
  v14 = *(a2 + 120);
  *(a1 + 104) = v12;
  *(a1 + 112) = v13;
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  v17 = *(a2 + 144);
  *(a1 + 136) = v16;
  *(a1 + 144) = v17;
  *(a1 + 152) = *(a2 + 152);

  v18 = v16;
  return a1;
}

void destroy for Text.Resolved(uint64_t a1, uint64_t a2)
{
  if (*a1 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(a1 + 16));

  if ((*(a1 + 88) - 1) >= 2)
  {
  }

  if ((*(a1 + 104) - 1) >= 2)
  {
  }

  if (*(a1 + 176) != 1)
  {
  }

  if (*(a1 + 248) != 1)
  {
  }

  if (*(a1 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(a1 + 264), *(a1 + 272), *(a1 + 280));
  }

  v4 = type metadata accessor for Text.Style(0);
  v5 = v4[21];
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  if (!(*(*(v6 - 8) + 48))(a1 + v5, 2, v6))
  {
    v7 = type metadata accessor for Locale.Language();
    (*(*(v7 - 8) + 8))(a1 + v5, v7);
  }

  v8 = v4[23];
  v9 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a1 + v8, 1, v9))
  {
    (*(v10 + 8))(a1 + v8, v9);
  }

  v11 = v4[24];
  v12 = type metadata accessor for AttributedString.TextAlignment();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a1 + v11, 1, v12))
  {
    (*(v13 + 8))(a1 + v11, v12);
  }

  v14 = v4[26];
  v15 = type metadata accessor for AttributedString.LineHeight();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(a1 + v14, 1, v15))
  {
    (*(v16 + 8))(a1 + v14, v15);
  }

  v17 = a1 + *(a2 + 32);

  outlined consume of ResolvedTextSuffix(*(v17 + 56), *(v17 + 64), *(v17 + 72), *(v17 + 80), *(v17 + 88), *(v17 + 96), *(v17 + 104));

  v18 = *(v17 + 136);
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018LineHeightMultipleV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017TextJustificationV033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017HyphenationFactorV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MinimumLineHeightV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017MaximumLineHeightV0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011LineSpacingV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA019HyphenationDisabledV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key, &type metadata for TextLayoutProperties.Key);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>>);
    }
  }
}

void *initializeWithCopy for ResolvedTextSuffix(void *a1, void **a2, __n128 a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  outlined copy of ResolvedTextSuffix(*a2, v5, v6, v7, v8, v9, v10);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return a1;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013TextAlignmentV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011WritingModeV0023_82074A2E22E8635055FCB3Z8D5E40280LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
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

uint64_t EnvironmentValues.multilineTextAlignment.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013TextAlignmentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v1);
    if (!v3)
    {
      return 0;
    }

    v2 = *(v3 + 72);
  }

  if (v2 == 3)
  {
    return 0;
  }

  return v2;
}

void lazy protocol witness table accessor for type String and conformance String()
{
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type String and conformance String);
  }
}

{
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    swift_getWitnessTable(MEMORY[0x1E6969DE0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type String and conformance String);
  }
}

{
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    swift_getWitnessTable(MEMORY[0x1E69E6198], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type String and conformance String);
  }
}

uint64_t initializeWithCopy for Font.Context(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
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

void lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
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

void Text.Resolved.append<A>(_:in:with:isUniqueSizeVariant:)(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v35 = a4;
  v11 = type metadata accessor for Text.Resolved(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19 = *a2;
  v18 = a2[1];
  v36 = *a3;
  (*(v20 + 16))(&v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a5, v16);
  v21 = String.init<A>(_:)();
  v39 = v19;
  v40 = v18;
  v23 = String.caseConvertedIfNeeded(_:)(&v39, v21, v22);
  v25 = v24;

  v26 = v37;
  outlined init with copy of Text.Style(v37, v14, type metadata accessor for Text.Resolved);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v25;
  v28 = v26 + v12[10];
  v39 = v19;
  v40 = v18;
  LODWORD(a2) = v14[v12[8]];
  v38 = v36;

  v29 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in static ResolvableTextSegmentAttribute.buildResolvableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:), v27, &v39, a2, &v38, v28);
  v30 = v19;

  outlined destroy of ParagraphStyleResolutionContext(v14, type metadata accessor for Text.Resolved);
  v39 = v19;
  v40 = v18;
  Text.Resolved.append(_:with:in:)(v23, v25, v29, &v39);
  v31 = *(v26 + v12[7]);
  if (v31)
  {
    if ([v31 isEmptyOrTerminatedByParagraphSeparator])
    {
      v32 = [v31 length];

      v39 = v30;
      v40 = v18;
      Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v32, v31, &v39);
    }

    else
    {
    }

    if (v35)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    *(v28 + 32) |= v33;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18D0CC18C()
{

  return swift_deallocObject();
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>);
    }
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5@<D0>(void *a1@<X0>, __int16 *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 36);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for TextJustification, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 36);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOWORD(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsTighteningKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for Text.WritingMode, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013TextAlignmentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 3;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for TextAlignment?, &type metadata for TextAlignment, MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 3;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013AvoidsOrphansV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextJustificationKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SensitiveContentKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

void Text.Resolved.append(_:with:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a4[1];
  v28 = *a4;
  v7 = v28;
  v29 = v6;
  v8 = String.caseConvertedIfNeeded(_:)(&v28, a1, a2);
  v28 = v7;
  v29 = v6;
  v10 = String.redactedIfNeeded(_:)(&v28, v8, v9);
  v12 = v11;

  if (v6)
  {

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v7);

    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v7);
    if (!v14 || *(v14 + 72) != 1)
    {
      goto LABEL_8;
    }
  }

  v15 = v5 + *(type metadata accessor for Text.Resolved(0) + 32);
  v16 = *(v15 + 32);
  if ((v16 & 4) == 0)
  {
    *(v15 + 32) = v16 | 4;
  }

LABEL_8:
  v17 = *(type metadata accessor for Text.Resolved(0) + 20);
  v18 = *(v5 + v17);
  if (v18)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v20 = v18;
    v21 = MEMORY[0x193ABEC20](v10, v12);

    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v27 = [v19 initWithString:v21 attributes:isa];

    [v20 appendAttributedString_];
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v24 = MEMORY[0x193ABEC20](v10, v12);

    type metadata accessor for NSAttributedStringKey(0);
    _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;
    v26 = [v23 initWithString:v24 attributes:v25];

    *(v5 + v17) = v26;
  }
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>>(0);
    v19 = v14;
    v20 = &protocol witness table for TrackedValue<A>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    outlined init with copy of WeakBox<GlassContainerCache>(a2, boxed_opaque_existential_1, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BodyHeadOutdentKey>>(0);
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AvoidsOrphansKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ParagraphTypesetting, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA020ParagraphTypesettingF033_D39DBD719189F2769C15C168465CE407LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ParagraphTypesettingKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for Text.WritingDirectionStrategy, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  v5 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt0B5(a1, v8);
  if (v5)
  {
    return _s7SwiftUI7WeakBoxVyAA19GlassContainerCacheCGWOcTm_0(v5 + *(*v5 + 248), a2, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720], _s7SwiftUI27GlassEffectBackdropObserverCSgMaTm_1);
  }

  v7 = type metadata accessor for AttributedString.LineHeight();
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA016AllowsTighteningV033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
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

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014UnderlineStyleI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.LineStyle?, &type metadata for Text.LineStyle, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>(0);
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    v19[1] = v15;
    outlined copy of Text.LineStyle?(v14, v15);
    specialized Dictionary.subscript.setter(v19, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018StrikethroughStyleI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.LineStyle?, &type metadata for Text.LineStyle, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018StrikethroughStyleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>(0);
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    v19[1] = v15;
    outlined copy of Text.LineStyle?(v14, v15);
    specialized Dictionary.subscript.setter(v19, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2g5Tm(uint64_t a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t *a6@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, a2, a3, a4, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v9);
  v10 = a5(a1);
  if (v10)
  {
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    outlined copy of Text.LineStyle?(v11, v12);
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  *a6 = v11;
  a6[1] = v12;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA09TextScaleI0VG_Tt1g5@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.Scale?, &type metadata for Text.Scale, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA09TextScaleF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA018StrikethroughStyleV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<StrikethroughStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextScaleKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA09TextScaleV0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
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

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WritingModeKey>>);
    }
  }
}

double outlined copy of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<UnderlineStyleKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<TextAlignmentKey>>);
    }
  }
}

uint64_t sub_18D0CE800(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Text.Modifier(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

double outlined consume of EffectAnimator<A>.State<A>(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

void Font.TextStyleProvider.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*v0)
  {
    case 0xB:
    case 0xC:
    case 0xD:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D0CE95CLL);
    default:
      MEMORY[0x193AC11A0]();
      if (v1 != 4)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v1);
        if (!v3)
        {
          goto LABEL_4;
        }

LABEL_9:
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(0);
      if (v3)
      {
        goto LABEL_9;
      }

LABEL_4:
      Hasher._combine(_:)(1u);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x193AC11E0](v4);
      return;
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultKerningV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultKerningV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
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

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ResolvedShapeStyles, Attribute<_ShapeStyle_Pack>>(0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
    v8 = 0;
    v40 = (v5 + 64);
    v41 = v5;
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
    v38 = v3;
    v39 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v42 = v6;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v43 = (v11 - 1) & v11;
LABEL_15:
      v18 = v15 | (v8 << 6);
      v19 = *(v5 + 48) + 24 * v18;
      v20 = *(*(v5 + 56) + 4 * v18);
      v22 = *v19;
      v21 = *(v19 + 4);
      v24 = *(v19 + 8);
      v23 = *(v19 + 12);
      v25 = *(v19 + 16);
      v26 = *(v19 + 20);
      v27 = *(v19 + 21);
      v44 = v20;
      v45 = *(v19 + 22);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v25);
      MEMORY[0x193AC11A0](v26);
      if (v27 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v27);
      }

      Hasher._combine(_:)(v45 & 1);
      v28 = Hasher._finalize()();
      v7 = v42;
      v29 = -1 << *(v42 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v12 + 8 * v31);
          if (v35 != -1)
          {
            v13 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v42 + 48) + 24 * v13;
      *v14 = v22;
      *(v14 + 4) = v21;
      *(v14 + 8) = v24;
      *(v14 + 12) = v23;
      *(v14 + 16) = v25;
      *(v14 + 20) = v26;
      *(v14 + 21) = v27;
      *(v14 + 22) = v45;
      *(*(v42 + 56) + 4 * v13) = v44;
      ++*(v42 + 16);
      v5 = v41;
      v11 = v43;
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v39)
      {
        break;
      }

      v17 = v40[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v40, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v36;
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
  type metadata accessor for _DictionaryStorage<AnyHashable2, WeakBox<AnyLocationBase>>(0);
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      if (v4)
      {
        _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v21 + v20, v33, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
      }

      else
      {
        outlined init with copy of WeakBox<AnyLocationBase>(v21 + v20, v33);
      }

      Hasher.init(_seed:)();
      (*(*v22 + 120))(v32);
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v22;
      _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v33, *(v7 + 56) + v16, &lazy cache variable for type metadata for WeakBox<AnyLocationBase>, type metadata accessor for AnyLocationBase, type metadata accessor for WeakBox, type metadata accessor for [(AbstractHomogeneousCollection, Int)]);
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Any>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5FE8]);
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v32);
      }

      else
      {
        outlined init with copy of Any(v21, v32);
      }

      v22 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
      outlined init with take of Any(v32, (*(v7 + 56) + 32 * v15));
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewInfo);
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 20 * v23;
      v58 = *v24;
      v57 = *(v24 + 8);
      v25 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = *(v5 + 56) + (v23 << 7);
      if (v44)
      {
        v46 = *v27;
        v45 = *(v27 + 8);
        v48 = *(v27 + 24);
        v50 = *(v27 + 32);
        v51 = *(v27 + 48);
        v49 = *(v27 + 64);
        v47 = *(v27 + 65);
        v52 = *(v27 + 72);
        v53 = *(v27 + 80);
        v66 = *(v27 + 88);
        v67 = *(v27 + 104);
        v54 = *(v27 + 108);
        v55 = *(v27 + 112);
        v56 = *(v27 + 113);
        v28 = *(v27 + 120);
      }

      else
      {
        v30 = *(v27 + 32);
        v29 = *(v27 + 48);
        v31 = *v27;
        *&v60[16] = *(v27 + 16);
        v61 = v30;
        *v60 = v31;
        v32 = *(v27 + 112);
        v34 = *(v27 + 64);
        v33 = *(v27 + 80);
        *&v64[16] = *(v27 + 96);
        v65 = v32;
        v63 = v34;
        *v64 = v33;
        v62 = v29;
        v28 = *(&v32 + 1);
        v55 = v32;
        v56 = BYTE1(v32);
        v54 = *&v64[28];
        v52 = *(&v34 + 1);
        v53 = v33;
        v50 = v30;
        v51 = v29;
        v49 = v34;
        v47 = BYTE1(v34);
        v48 = *&v60[24];
        v45 = *&v60[8];
        v46 = *v60;
        outlined init with copy of DisplayList.ViewUpdater.ViewInfo(v60, v59);
        v66 = *&v64[8];
        v67 = *&v64[24];
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v58);
      Hasher._combine(_:)(HIDWORD(v58));
      Hasher._combine(_:)(v57);
      Hasher._combine(_:)(HIDWORD(v57));
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      v35 = Hasher._finalize()();
      v36 = -1 << *(v7 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v57;
        v16 = v58;
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
      v17 = v57;
      v16 = v58;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = *(v7 + 48) + 20 * v15;
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = v25;
      *(v18 + 17) = v26;
      v19 = *(v7 + 56) + (v15 << 7);
      *v19 = v46;
      *(v19 + 8) = v45;
      *(v19 + 24) = v48;
      *(v19 + 32) = v50;
      *(v19 + 48) = v51;
      *(v19 + 64) = v49;
      *(v19 + 65) = v47;
      *(v19 + 72) = v52;
      *(v19 + 80) = v53;
      *(v19 + 88) = v66;
      *(v19 + 104) = v67;
      *(v19 + 108) = v54;
      *(v19 + 112) = v55;
      *(v19 + 113) = v56;
      *(v19 + 120) = v28;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<OpaquePointer, DisplayList.ViewUpdater.ViewCache.Key>, MEMORY[0x1E69E6B70], &type metadata for DisplayList.ViewUpdater.ViewCache.Key, MEMORY[0x1E69E6B78]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
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
      v22 = *(v5 + 56) + 20 * v20;
      v23 = *(v22 + 17);
      v24 = *(v22 + 16);
      v26 = *v22;
      v25 = *(v22 + 8);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 20 * v15;
      *v16 = v26;
      *(v16 + 8) = v25;
      *(v16 + 16) = v24;
      *(v16 + 17) = v23;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity, &type metadata for ViewIdentity, &type metadata for GlassContainer.ItemData);
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
      v18 = v17 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v19 = *(*(v5 + 48) + 4 * v18);
        v20 = *(v5 + 56) + 40 * v18;
        v39 = *v20;
        v40 = *(v20 + 16);
        v21 = *(v20 + 32);
      }

      else
      {
LABEL_16:
        v19 = *(*(v5 + 48) + 4 * v18);
        v24 = *(v5 + 56) + 40 * v18;
        v25 = *(v24 + 32);
        v26 = *(v24 + 16);
        v36 = *v24;
        v37 = v26;
        v38 = v25;
        outlined init with copy of GlassContainer.ItemData(&v36, &v39);
        v39 = v36;
        v40 = v37;
        v21 = v38;
      }

      v41 = v21;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
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
      *(*(v7 + 48) + 4 * v15) = v19;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v39;
      *(v16 + 16) = v40;
      *(v16 + 32) = v41;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v12 = (v23 - 1) & v23;
        v18 = __clz(__rbit64(v23)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NamedImage.BitmapKey(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<NamedImage.BitmapKey, NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>>(0);
  v38 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v2;
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
      v23 = *(v37 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      v25 = 96 * v22;
      if (v38)
      {
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v24, v7, type metadata accessor for NamedImage.BitmapKey);
        _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(*(v8 + 56) + v25, v40, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for _ContiguousArrayStorage<Any>);
      }

      else
      {
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v24, v7, type metadata accessor for NamedImage.BitmapKey);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(*(v8 + 56) + v25, v40, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
      }

      Hasher.init(_seed:)();
      NamedImage.BitmapKey.hash(into:)(v39);
      v26 = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v7, *(v10 + 48) + v23 * v18, type metadata accessor for NamedImage.BitmapKey);
      _s7SwiftUI10NamedImageO11_BitmapInfoVy_AC012WeakOrStrongD8ContentsOGWObTm_0(v40, *(v10 + 56) + 96 * v18, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for _ContiguousArrayStorage<Any>);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AccessibilityCustomAttributes.Value(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AccessibilityCustomAttributes.Value>, type metadata accessor for AccessibilityCustomAttributes.Value, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v28, v42, type metadata accessor for AccessibilityCustomAttributes.Value);
      }

      else
      {
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v28, v42, type metadata accessor for AccessibilityCustomAttributes.Value);
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
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v42, *(v9 + 56) + v27 * v17, type metadata accessor for AccessibilityCustomAttributes.Value);
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
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, _ViewList_ID.Canonical>, MEMORY[0x1E69E6530], &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6540]);
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v4 & 1) == 0)
      {
      }

      v25 = MEMORY[0x193AC1170](*(v7 + 40), v21);
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
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

    if ((v4 & 1) == 0)
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
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>, type metadata accessor for LazyLayoutCacheItem, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v37 = (v5 + 64);
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
    v36 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = v15 | (v8 << 6);
      v19 = *(v5 + 48) + 16 * v18;
      v20 = *v19;
      v39 = *(v19 + 4);
      v21 = *(v19 + 8);
      v22 = *(*(v5 + 56) + 8 * v18);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v39);
      if (v21)
      {
        Hasher._combine(_:)(1u);
        v38 = v11;
        v23 = v7;
        v24 = a2;
        v25 = v5;
        v26 = *(*v21 + 120);

        v26(v40);
        v5 = v25;
        a2 = v24;
        v7 = v23;
        v11 = v38;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 16 * v13;
      *v14 = v20;
      *(v14 + 4) = v39;
      *(v14 + 8) = v21;
      *(*(v7 + 56) + 8 * v13) = v22;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v36)
      {
        break;
      }

      v17 = v37[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key, &type metadata for Spacing.Key, &type metadata for Spacing.Value);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
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
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v5 + 56) + 40 * v21;
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = *(v23 + 32);
      v38 = *(v23 + 16);
      v39 = *v23;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v25);
      Hasher._combine(_:)(v24);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v39;
      *(v17 + 16) = v38;
      *(v17 + 32) = v26;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for NamedImage.VectorKey(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>(0);
  v36 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34 = v2;
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
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v24, v7, type metadata accessor for NamedImage.VectorKey);
        outlined init with take of NamedImage.VectorInfo(*(v8 + 56) + 88 * v22, v38);
      }

      else
      {
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v24, v7, type metadata accessor for NamedImage.VectorKey);
        outlined init with copy of NamedImage.VectorInfo(*(v8 + 56) + 88 * v22, v38);
      }

      Hasher.init(_seed:)();
      NamedImage.VectorKey.hash(into:)(v37);
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
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v7, *(v10 + 48) + v23 * v18, type metadata accessor for NamedImage.VectorKey);
      outlined init with take of NamedImage.VectorInfo(v38, *(v10 + 56) + 88 * v18);
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CUIDesignLibraryCacheKey, CUIDesignLibraryCacheKey.Entry>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey, &type metadata for CUIDesignLibraryCacheKey, &type metadata for CUIDesignLibraryCacheKey.Entry);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v4;
    v8 = 0;
    v43 = (v5 + 64);
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v44 = v5;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
LABEL_15:
      v21 = *(v5 + 56);
      v22 = 24 * (v18 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v23 + 16);
      v25 = (v21 + v22);
      v26 = *(v23 + 10);
      v27 = *(v23 + 9);
      v28 = *(v23 + 8);
      v29 = *v23;
      v46 = *(v25 + 20);
      v30 = *(v25 + 4);
      v32 = *v25;
      v31 = v25[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v29);
      MEMORY[0x193AC11A0](v28);
      MEMORY[0x193AC11A0](v27);
      MEMORY[0x193AC11A0](v26);
      v47 = v24;
      MEMORY[0x193AC11A0](v24);
      v33 = Hasher._finalize()();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = 24 * v14;
      v16 = *(v7 + 48) + v15;
      v5 = v44;
      *v16 = v29;
      *(v16 + 8) = v28;
      *(v16 + 9) = v27;
      *(v16 + 10) = v26;
      *(v16 + 16) = v47;
      v17 = *(v7 + 56) + v15;
      *v17 = v32;
      *(v17 + 8) = v31;
      *(v17 + 16) = v30;
      *(v17 + 20) = v46;
      ++*(v7 + 16);
      v11 = v45;
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

      if (v8 >= v12)
      {
        break;
      }

      v20 = v43[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Font.RatioKey, CGFloat>, lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey, &type metadata for Font.RatioKey, MEMORY[0x1E69E7DE0]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_41:

    goto LABEL_42;
  }

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
    v22 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v25 = v22 | (v8 << 6);
    v26 = (*(v5 + 48) + 2 * v25);
    v27 = v26[1];
    v15 = *v26;
    v35 = *v26;
    v28 = *(*(v5 + 56) + 8 * v25);
    Hasher.init(_seed:)();
    switch(v15)
    {
      case 1:
        v15 = 1;
        goto LABEL_7;
      case 2:
        v15 = 2;
        goto LABEL_7;
      case 3:
        v15 = 3;
        goto LABEL_7;
      case 4:
        v15 = 4;
        goto LABEL_7;
      case 5:
        v15 = 5;
        goto LABEL_7;
      case 6:
        v15 = 6;
        goto LABEL_7;
      case 7:
        v15 = 7;
        goto LABEL_7;
      case 8:
        v15 = 8;
        goto LABEL_7;
      case 9:
        v15 = 9;
        goto LABEL_7;
      case 10:
        v15 = 10;
        goto LABEL_7;
      case 11:
      case 12:
      case 13:
        goto LABEL_45;
      default:
LABEL_7:
        MEMORY[0x193AC11A0](v15);
        MEMORY[0x193AC11A0](v27);
        v16 = Hasher._finalize()();
        v17 = -1 << *(v7 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v14 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v14 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = 0;
          v30 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v30 && (v29 & 1) != 0)
            {
              goto LABEL_44;
            }

            v31 = v19 == v30;
            if (v19 == v30)
            {
              v19 = 0;
            }

            v29 |= v31;
            v32 = *(v14 + 8 * v19);
          }

          while (v32 == -1);
          v20 = __clz(__rbit64(~v32)) + (v19 << 6);
        }

        *(v14 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v21 = (*(v7 + 48) + 2 * v20);
        *v21 = v35;
        v21[1] = v27;
        *(*(v7 + 56) + 8 * v20) = v28;
        ++*(v7 + 16);
        break;
    }
  }

  v23 = v8;
  while (1)
  {
    v8 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D2229D4);
    }

    if (v8 >= v13)
    {
      break;
    }

    v24 = v9[v8];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v12 = (v24 - 1) & v24;
      goto LABEL_17;
    }
  }

  if (v34)
  {
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
    goto LABEL_41;
  }

  v3 = v2;
LABEL_42:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<RemovableAttributeDescriptor>>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>(0);
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
    v15 = v41;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 24 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v45 = *(v23 + 12);
      v44 = *(v23 + 16);
      v46 = *(v23 + 17);
      v26 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        outlined copy of Material.ID(v24, v25);
      }

      Hasher.init(_seed:)();
      v43 = v26;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = 10;
        }

        else if (v24 > 3)
        {
          if (v24 > 5)
          {
            if (v24 == 6)
            {
              v29 = 6;
            }

            else
            {
              v29 = 7;
            }
          }

          else if (v24 == 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = 5;
          }
        }

        else if (v24 > 1)
        {
          if (v24 == 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = v24 != 0;
        }

        MEMORY[0x193AC11A0](v29);
      }

      else if (v25)
      {
        MEMORY[0x193AC11A0](9);
        (*(*v24 + 176))(v47);
      }

      else
      {
        v27 = *(v24 + 48);
        MEMORY[0x193AC11A0](8);
        String.hash(into:)();
        String.hash(into:)();
        if (v27)
        {
          Hasher._combine(_:)(1u);
          v28 = v27;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 = v40;
        v15 = v41;
      }

      Hasher._combine(_:)(v45);
      Hasher._combine(_:)(v44);
      MEMORY[0x193AC11A0](v46);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
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
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_58:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 24 * v16;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(v18 + 12) = v45;
      *(v18 + 16) = v44;
      *(v18 + 17) = v46;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
      v12 = v42;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_58;
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
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_56;
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

LABEL_56:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, DisplayList.ViewUpdater.ViewCache.AsyncValues>, MEMORY[0x1E69E5FE0], &type metadata for DisplayList.ViewUpdater.ViewCache.AsyncValues, MEMORY[0x1E69E5FE8]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v21 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
      *(*(v7 + 56) + 16 * v15) = v31;
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
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
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
  type metadata accessor for _DictionaryStorage<String, CAPresentationModifier>(0);
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
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.CallbackKey, RBDisplayListContents>, type metadata accessor for RBDisplayListContents, lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.CallbackKey and conformance DisplayList.GraphicsRenderer.Cache.CallbackKey, &type metadata for DisplayList.GraphicsRenderer.Cache.CallbackKey);
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
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *(v21 + 4);
      v40 = *v21;
      v23 = *(v21 + 8);
      v39 = *(v21 + 12);
      v38 = *(v21 + 16);
      v24 = *(v21 + 24);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v40);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(v38);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      MEMORY[0x193AC11E0](*&v26);
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
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v40;
      *(v16 + 4) = v22;
      *(v16 + 8) = v23;
      *(v16 + 12) = v39;
      *(v16 + 16) = v38;
      *(v16 + 24) = v24;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, SymbolRenderer.CachedResolvedSymbol>, MEMORY[0x1E69E69B8], &type metadata for SymbolRenderer.CachedResolvedSymbol, MEMORY[0x1E69E69C0]);
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
        v43 = *(v24 + 32);
        v41 = v25;
        v42 = v26;
        v27 = *(v5 + 56) + 24 * v23;
        v40 = *v27;
        v28 = *(v27 + 16);
      }

      else
      {
        outlined init with copy of AnyHashable(v24, &v41);
        v29 = *(v5 + 56) + 24 * v23;
        v28 = *(v29 + 16);
        v40 = *v29;
        swift_unknownObjectRetain();
      }

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
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
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

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Int>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6530], MEMORY[0x1E69E69C0]);
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CGFloat, Int>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6530]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v20 = *(v5 + 48);
      v21 = *(v20 + 8 * v19);
      v22 = *(*(v5 + 56) + 8 * v19);
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = *(v20 + 8 * v19);
      }

      v24 = MEMORY[0x193AC1170](*(v7 + 40), *&v23);
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
      *(*(v7 + 56) + 8 * v15) = v22;
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
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, TypeConformance<InvalidatableAttributeDescriptor>>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, ObservationEntry>, MEMORY[0x1E69E5FE0], &type metadata for ObservationEntry, MEMORY[0x1E69E5FE8]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v21 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
      *(*(v7 + 56) + 16 * v15) = v31;
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
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBDisplayListInterpolatorOptionKey, Any>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ColorCacheKey, NamedColorInfo>, lazy protocol witness table accessor for type ColorCacheKey and conformance ColorCacheKey, &type metadata for ColorCacheKey, &type metadata for NamedColorInfo);
  v40 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v22 = (*(v5 + 48) + 32 * v20);
      v41 = *v22;
      v42 = v22[1];
      v44 = v22[2];
      v23 = *(v22 + 2);
      v43 = *(v22 + 1);
      v24 = *(v22 + 3);
      v25 = *(v21 + 8 * v20);
      if ((v40 & 1) == 0)
      {
        v26 = v25;

        v27 = v24;
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v41);
      MEMORY[0x193AC11A0](v42);
      MEMORY[0x193AC11A0](v44);
      String.hash(into:)();
      if (v24)
      {
        Hasher._combine(_:)(1u);
        v28 = v24;
        NSObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v41;
      *(v16 + 1) = v42;
      *(v16 + 2) = v44;
      *(v16 + 8) = v43;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v39;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
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

LABEL_36:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ContentTransition.NamedKey, RBTransition>(0);
  v47 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v50 = v6;
  if (*(v5 + 16))
  {
    v45 = v2;
    v46 = v5;
    v7 = 0;
    v8 = (v5 + 64);
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
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (1)
    {
      if (!v11)
      {
        v18 = v7;
        while (1)
        {
          v7 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v7 >= v12)
          {
            break;
          }

          v19 = v8[v7];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v48 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v47 & 1) == 0)
        {

          v3 = v45;
          goto LABEL_54;
        }

        v44 = 1 << *(v5 + 32);
        v3 = v45;
        if (v44 >= 64)
        {
          bzero(v8, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v44;
        }

        *(v5 + 16) = 0;
        goto LABEL_53;
      }

      v17 = __clz(__rbit64(v11));
      v48 = (v11 - 1) & v11;
LABEL_15:
      v20 = v17 | (v7 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 10);
      v24 = *(v21 + 8);
      v25 = *(v21 + 11);
      v26 = *(v21 + 12);
      v49 = *(v21 + 13);
      v51 = *(*(v5 + 56) + 8 * v20);
      if ((v47 & 1) == 0)
      {
        v27 = v51;
      }

      v28 = v24 | (v23 << 16);
      Hasher.init(_seed:)();
      v29 = (v22 >> 38) & 3;
      if (!v29)
      {
        break;
      }

      if (v29 == 1)
      {
        MEMORY[0x193AC11A0](6);
        v5 = v46;
        ContentTransition.NumericTextConfiguration.hash(into:)();
LABEL_21:
        v30 = v25;
        v31 = v26;
        goto LABEL_31;
      }

      v30 = v25;
      v32 = *&v28 & 0xFFFFFFLL;
      if (v22 <= 0x8000000001)
      {
        v31 = v26;
        v35 = (v22 ^ 0x8000000000 | v32) != 0;
        goto LABEL_30;
      }

      v31 = v26;
      if (!(v22 ^ 0x8000000002 | v32))
      {
        v35 = 2;
LABEL_30:
        MEMORY[0x193AC11A0](v35);
LABEL_31:
        v33 = v49;
        goto LABEL_32;
      }

      v33 = v49;
      if (v22 ^ 0x8000000003 | v32)
      {
        v34 = 4;
      }

      else
      {
        v34 = 3;
      }

      MEMORY[0x193AC11A0](v34);
LABEL_32:
      if (v30 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v30 & 1);
      }

      if (v31 == 3)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x193AC11A0](v31);
      }

      Hasher._combine(_:)(v33);
      v36 = Hasher._finalize()();
      v37 = -1 << *(v50 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v13 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v15 = v28;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v13 + 8 * v39);
          if (v43 != -1)
          {
            v14 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_56:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v38) & ~*(v13 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v15 = v28;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = *(v50 + 48) + 16 * v14;
      *v16 = v22;
      *(v16 + 10) = BYTE2(v28);
      *(v16 + 8) = v15;
      *(v16 + 11) = v30;
      *(v16 + 12) = v31;
      *(v16 + 13) = v33;
      *(*(v50 + 56) + 8 * v14) = v51;
      ++*(v50 + 16);
      v11 = v48;
    }

    MEMORY[0x193AC11A0](5);
    Hasher._combine(_:)(v22 & 1);
    goto LABEL_21;
  }

LABEL_53:

LABEL_54:
  *v3 = v50;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheChildren>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, &type metadata for LazyLayoutCacheChildren);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v40 = (v5 + 64);
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
    v39 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v20 = 16 * (v17 | (v8 << 6));
      v21 = *(v5 + 48) + v20;
      v43 = *v21;
      v42 = *(v21 + 4);
      v22 = *(v21 + 8);
      v23 = (*(v5 + 56) + v20);
      v24 = *v23;
      v25 = v23[1];
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v43);
      Hasher._combine(_:)(v42);
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v41 = v11;
        v26 = v7;
        v27 = a2;
        v28 = v5;
        v29 = *(*v22 + 120);

        v29(v44);
        v5 = v28;
        a2 = v27;
        v7 = v26;
        v11 = v41;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v12 + 8 * v33);
          if (v37 != -1)
          {
            v13 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = 16 * v13;
      v15 = *(v7 + 48) + v14;
      *v15 = v43;
      *(v15 + 4) = v42;
      *(v15 + 8) = v22;
      v16 = (*(v7 + 56) + v14);
      *v16 = v24;
      v16[1] = v25;
      ++*(v7 + 16);
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

      if (v8 >= v39)
      {
        break;
      }

      v19 = v40[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v40 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AnyFontModifier>, type metadata accessor for AnyFontModifier);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<Material.ResolvedMaterial, [Material.Layer]>(0);
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
    v15 = v41;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v42 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v44 = *(v23 + 12);
      v26 = *(*(v5 + 56) + 8 * v22);
      if ((v15 & 1) == 0)
      {
        outlined copy of Material.ID(v24, v25);
      }

      Hasher.init(_seed:)();
      v43 = v26;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v29 = 10;
        }

        else if (v24 > 3)
        {
          if (v24 > 5)
          {
            if (v24 == 6)
            {
              v29 = 6;
            }

            else
            {
              v29 = 7;
            }
          }

          else if (v24 == 4)
          {
            v29 = 4;
          }

          else
          {
            v29 = 5;
          }
        }

        else if (v24 > 1)
        {
          if (v24 == 2)
          {
            v29 = 2;
          }

          else
          {
            v29 = 3;
          }
        }

        else
        {
          v29 = v24 != 0;
        }

        MEMORY[0x193AC11A0](v29);
      }

      else if (v25)
      {
        MEMORY[0x193AC11A0](9);
        (*(*v24 + 176))(v45);
      }

      else
      {
        v27 = *(v24 + 48);
        MEMORY[0x193AC11A0](8);
        String.hash(into:)();
        String.hash(into:)();
        if (v27)
        {
          Hasher._combine(_:)(1u);
          v28 = v27;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v5 = v40;
        v15 = v41;
      }

      Hasher._combine(_:)(v44);
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v43;
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
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_58:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v43;
LABEL_7:
      *(v14 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v7 + 48) + 16 * v16;
      *v18 = v24;
      *(v18 + 8) = v25;
      *(v18 + 12) = v44;
      *(*(v7 + 56) + 8 * v16) = v17;
      ++*(v7 + 16);
      v12 = v42;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_58;
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
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v15 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_56;
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

LABEL_56:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ScrollTargetRole.Role, [ScrollableCollection]>(0);
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
      MEMORY[0x193AC11A0](v20);
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
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<ObjectIdentifier, [(AbstractHomogeneousCollection, Int)]>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, HomogeneousLookupTable>, type metadata accessor for HomogeneousLookupTable);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, _DisplayList_StableIdentity>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity, &type metadata for _DisplayList_Identity, &type metadata for _DisplayList_StableIdentity);
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
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
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v25;
      v16[1] = v24;
      v16[2] = v23;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, Any>, MEMORY[0x1E69E6530], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6540]);
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v32);
      }

      else
      {
        outlined init with copy of Any(v21, v32);
      }

      v22 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
      outlined init with take of Any(v32, (*(v7 + 56) + 32 * v15));
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
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & AnyViewFactory.Type>, type metadata accessor for Decodable & AnyViewFactory.Type, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<CachedVectorImageContents.CacheKey, CGImageRef>, type metadata accessor for CGImageRef, lazy protocol witness table accessor for type CachedVectorImageContents.CacheKey and conformance CachedVectorImageContents.CacheKey, &type metadata for CachedVectorImageContents.CacheKey);
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
        v22 = v21;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        outlined init with take of Any(v24, v35);
      }

      else
      {
        outlined init with copy of Any(v24, v35);
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
      outlined init with take of Any(v35, (*(v7 + 56) + 32 * v15));
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
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>(0);
  v39 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
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
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(*(v9 + 56) + 8 * v23, v44, type metadata accessor for WeakBox<CUICatalog>);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(*(v9 + 56) + 8 * v23, v44, type metadata accessor for WeakBox<CUICatalog>);
      }

      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
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
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v44, *(v11 + 56) + 8 * v19, type metadata accessor for WeakBox<CUICatalog>);
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
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<RBImageRendererProperty, Any>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Solarium.EnablementIdiom, (Solarium.EnablementLevel, Solarium.EnablementCriteria)>, type metadata accessor for (Solarium.EnablementLevel, Solarium.EnablementCriteria), lazy protocol witness table accessor for type Solarium.EnablementIdiom and conformance Solarium.EnablementIdiom, &type metadata for Solarium.EnablementIdiom);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *(v22 + 8);
      v24 = *v22;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DynamicTypeSize, CGFloat>, lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata for DynamicTypeSize, MEMORY[0x1E69E7DE0]);
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
      MEMORY[0x193AC11A0](v20);
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UnsafeRawPointer, String>, MEMORY[0x1E69E6270], MEMORY[0x1E69E6158], MEMORY[0x1E69E6278]);
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
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      v25 = MEMORY[0x193AC1160](*(v7 + 40), v21);
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
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6168]);
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<UUID, NamedImage.DecodedInfo>(0);
  v49 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v55 = v5;
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
    v45 = v2;
    v46 = (v6 + 16);
    v47 = v8;
    v48 = v6;
    v51 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v50;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v48 + 72) * v25;
      v27 = 48 * v25;
      v53 = *(v48 + 72);
      v54 = v22;
      if (v49)
      {
        (*v51)(v18, v26, v55);
        v28 = *(v8 + 56) + v27;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v28 + 32);
        v52 = *(v28 + 40);
      }

      else
      {
        (*v46)(v18, v26, v55);
        v34 = *(v8 + 56) + v27;
        v29 = *v34;
        v30 = *(v34 + 8);
        v31 = *(v34 + 16);
        v32 = *(v34 + 24);
        v33 = *(v34 + 32);
        v52 = *(v34 + 40);
        outlined copy of GraphicsImage.Contents(v29, v30);
      }

      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v10 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v18 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v18 = v50;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v51)((*(v10 + 48) + v53 * v19), v18, v55);
      v20 = *(v10 + 56) + 48 * v19;
      *v20 = v29;
      *(v20 + 8) = v30;
      *(v20 + 16) = v31;
      *(v20 + 24) = v32;
      *(v20 + 32) = v33;
      *(v20 + 40) = v52;
      ++*(v10 + 16);
      v8 = v47;
      v15 = v54;
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
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v8 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v12, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v43;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, CGFloat>, MEMORY[0x1E69E6530], MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6540]);
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
      v22 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
  type metadata accessor for _DictionaryStorage<AGSubgraphRef, [(_:)]>(0);
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
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for AGSubgraphRef(0);
      lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, protocol conformance descriptor for AGSubgraphRef);
      _CFObject.hash(into:)();
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AttributeInfoTrace.History>, MEMORY[0x1E69E6158], &type metadata for AttributeInfoTrace.History, MEMORY[0x1E69E6168]);
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
      v25 = *(v5 + 56) + 12 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 12 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, UInt32>, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E7668], MEMORY[0x1E69E5FE8]);
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
      v21 = *(*(v5 + 56) + 4 * v19);
      v22 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, SeedValue<GlassContainer.EntryState>>(0);
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
      v17 = v16 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v18 = *(*(v5 + 48) + 8 * v17);
        v19 = (*(v5 + 56) + 640 * v17);
      }

      else
      {
LABEL_16:
        v18 = *(*(v5 + 48) + 8 * v17);
        memcpy(__dst, (*(v5 + 56) + 640 * v17), 0x27CuLL);
        outlined init with copy of SeedValue<GlassContainer.EntryState>(__dst, __src, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
        v19 = __dst;
      }

      memcpy(__src, v19, 0x27CuLL);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v18);
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
      *(*(v7 + 48) + 8 * v15) = v18;
      memcpy((*(v7 + 56) + 640 * v15), __src, 0x27CuLL);
      ++*(v7 + 16);
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
        v12 = (v21 - 1) & v21;
        v17 = __clz(__rbit64(v21)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
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
  type metadata accessor for _DictionaryStorage<ResolvedIDs.Key, SeedValue<GlassContainer.Entry.StableID>>(0);
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
      v42 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v46 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = *(v5 + 56) + 16 * v22;
      v44 = *v28;
      v43 = *(v28 + 8);
      if ((v41 & 1) == 0)
      {
        outlined copy of ResolvedIDs.Key(v24, v25, v26, v46, v27);
      }

      Hasher.init(_seed:)();
      v45 = v27;
      if (v27 < 0)
      {
        MEMORY[0x193AC11A0](1);
        v29 = v24;
        Hasher._combine(_:)(v24);
      }

      else
      {
        MEMORY[0x193AC11A0](0);
        if (v27)
        {
          if (v27 == 1)
          {
            MEMORY[0x193AC11A0](2);
            v29 = v24;
            Hasher._combine(_:)(v24);
            if (v25)
            {
              Hasher._combine(_:)(1u);
              (*(*v25 + 120))(v47);
              MEMORY[0x193AC11A0](v26);
            }

            else
            {
              Hasher._combine(_:)(0);
            }
          }

          else
          {
            MEMORY[0x193AC11A0](0);
            v29 = v24;
          }
        }

        else
        {
          MEMORY[0x193AC11A0](1);
          v29 = v24;
          _Glass.Variant.ID.hash(into:)(v47);
          Hasher._combine(_:)(BYTE1(v25) & 1);
          (*(*v26 + 120))(v47);
          MEMORY[0x193AC11A0](v46);
        }
      }

      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v16 = v26;
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

LABEL_44:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v16 = v26;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 40 * v15;
      *v17 = v29;
      *(v17 + 8) = v25;
      *(v17 + 16) = v16;
      *(v17 + 24) = v46;
      *(v17 + 32) = v45;
      v18 = *(v7 + 56) + 16 * v15;
      *v18 = v44;
      *(v18 + 8) = v43;
      ++*(v7 + 16);
      v5 = v40;
      v12 = v42;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
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
        v42 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_42;
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

LABEL_42:
  *v3 = v7;
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<Bool>>);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, Attribute<PlatformGlassInteractionState>>);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, [GlassContainer.Entry.StableID]>(0);
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
      MEMORY[0x193AC11A0](v20);
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, Int>, lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6530]);
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      if (v24)
      {
        Hasher._combine(_:)(1u);
        (*(*v24 + 120))(v38);
        MEMORY[0x193AC11A0](v25);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, Int>, lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6530]);
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
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
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, AnyFontModifier>, type metadata accessor for AnyFontModifier, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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
  v5 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v38 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
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
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v25, v7, type metadata accessor for LocalizedStringKey.FormatArgument);
      }

      else
      {
        outlined init with copy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v25, v7, type metadata accessor for LocalizedStringKey.FormatArgument);
      }

      v26 = MEMORY[0x193AC1170](*(v10 + 40), v23);
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      _s7SwiftUI24ObservationGraphMutationV8mutation_0C00C8TrackingV11_AccessListV06accessI0tWObTm_0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for LocalizedStringKey.FormatArgument);
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AttributedString.Keys>, MEMORY[0x1E69E5FE0], &type metadata for AttributedString.Keys, MEMORY[0x1E69E5FE8]);
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

      v22 = MEMORY[0x193AC1170](*(v7 + 40), v20);
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
  type metadata accessor for _DictionaryStorage<DisplayList.GraphicsRenderer.Cache.AnimatorKey, _DisplayList_AnyEffectAnimator>(0);
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
      v30 = *(*(v5 + 48) + 16 * v19);
      v20 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of AnyTrackedValue(v20, v31);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v20, v31);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v30);
      Hasher._combine(_:)(DWORD1(v30));
      Hasher._combine(_:)(DWORD2(v30));
      Hasher._combine(_:)(HIDWORD(v30));
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v30;
      outlined init with take of AnyTrackedValue(v31, *(v7 + 56) + 40 * v15);
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
      v29 = 1 << *(v5 + 32);
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
        outlined init with take of AnyTrackedValue(v24, v35);
      }

      else
      {
        outlined init with copy of AnyTrackedValue(v24, v35);
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v22);
      MEMORY[0x193AC11A0](v23);
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
      outlined init with take of AnyTrackedValue(v35, *(v7 + 56) + 40 * v15);
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
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, UInt32>, MEMORY[0x1E69E6158], MEMORY[0x1E69E7668], MEMORY[0x1E69E6168]);
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
      v24 = *(*(v5 + 56) + 4 * v20);
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
      *(*(v7 + 56) + 4 * v15) = v24;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollEdgeEffectTag.ID, Int>, lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6530]);
  v34 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v35 = *(*(v5 + 56) + 8 * v19);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);
        do
        {
          v23 = *v22++;
          Hasher._combine(_:)(v23);
          --v21;
        }

        while (v21);
      }

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

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
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
      v22 = MEMORY[0x193AC1150](*(v7 + 40), v20, 4);
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
  type metadata accessor for _DictionaryStorage<_ProposedSize, ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer>(0);
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_46;
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
          goto LABEL_44;
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
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v38 = *(v21 + 16);
      v39 = *(v21 + 24);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v23)
      {
        Hasher._combine(_:)(0);
        if (v39)
        {
          goto LABEL_27;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v22;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x193AC11E0](v26);
        if (v39)
        {
LABEL_27:
          Hasher._combine(_:)(0);
          goto LABEL_28;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v38;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x193AC11E0](v25);
LABEL_28:
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

LABEL_46:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v38;
      *(v16 + 24) = v39;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v36;
    }
  }

LABEL_44:
  *v3 = v7;
}

{
  v3 = v2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, Int>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, MEMORY[0x1E69E6530]);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v37 = (v5 + 64);
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
    v36 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = v15 | (v8 << 6);
      v19 = *(v5 + 48) + 16 * v18;
      v20 = *v19;
      v39 = *(v19 + 4);
      v21 = *(v19 + 8);
      v22 = *(*(v5 + 56) + 8 * v18);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v39);
      if (v21)
      {
        Hasher._combine(_:)(1u);
        v38 = v11;
        v23 = v7;
        v24 = a2;
        v25 = v5;
        v26 = *(*v21 + 120);

        v26(v40);
        v5 = v25;
        a2 = v24;
        v7 = v23;
        v11 = v38;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v7 + 48) + 16 * v13;
      *v14 = v20;
      *(v14 + 4) = v39;
      *(v14 + 8) = v21;
      *(*(v7 + 56) + 8 * v13) = v22;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v36)
      {
        break;
      }

      v17 = v37[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v37, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v37 = -1 << v35;
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ForegroundLayerLevel, _ColorMatrix>, lazy protocol witness table accessor for type _ForegroundLayerLevel and conformance _ForegroundLayerLevel, &type metadata for _ForegroundLayerLevel, &type metadata for _ColorMatrix);
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 80 * v20);
      v35 = v22[2];
      v36 = v22[3];
      v37 = v22[4];
      v33 = *v22;
      v34 = v22[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
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
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 80 * v15);
      v16[2] = v35;
      v16[3] = v36;
      v16[4] = v37;
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
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, &type metadata for EventBinding);
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
      MEMORY[0x193AC11A0](v22);
      MEMORY[0x193AC11A0](v23);
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
  type metadata accessor for _DictionaryStorage<GlassContainer.Entry.ModelID, SeedValue<GlassEffectContainerTintConfiguration.Element>>(0);
  v43 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
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
    for (i = v5; ; v5 = i)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
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

        if ((v43 & 1) == 0)
        {

          v3 = v41;
          goto LABEL_41;
        }

        v40 = 1 << *(v5 + 32);
        v3 = v41;
        if (v40 >= 64)
        {
          bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v40;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *(v23 + 8);
      v48 = *v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = *(v23 + 32);
      v28 = (v22 + 32 * v21);
      v45 = *v28;
      v46 = *(v28 + 1);
      v29 = *(v28 + 6);
      v44 = *(v28 + 7);
      if ((v43 & 1) == 0)
      {
        outlined copy of GlassContainer.Entry.ModelID(v48, v24, v26, v25, v27);
      }

      Hasher.init(_seed:)();
      v47 = v26;
      if (!v27)
      {
        break;
      }

      v30 = v25;
      if (v27 != 1)
      {
        v31 = 0;
        goto LABEL_23;
      }

      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v48);
      if (v24)
      {
        Hasher._combine(_:)(1u);
        (*(*v24 + 120))(v49);
        v31 = v47;
LABEL_23:
        MEMORY[0x193AC11A0](v31);
        goto LABEL_24;
      }

      Hasher._combine(_:)(0);
LABEL_24:
      v32 = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      *v16 = v48;
      *(v16 + 8) = v24;
      *(v16 + 16) = v47;
      *(v16 + 24) = v30;
      *(v16 + 32) = v27;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v45;
      *(v17 + 8) = v46;
      *(v17 + 24) = v29;
      *(v17 + 28) = v44;
      ++*(v7 + 16);
    }

    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(v49);
    Hasher._combine(_:)(BYTE1(v24) & 1);
    (*(*v26 + 120))(v49);
    v30 = v25;
    v31 = v25;
    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<Axis, FocusableFillerBounds.Metrics>, lazy protocol witness table accessor for type Axis and conformance Axis, &type metadata for Axis, &type metadata for FocusableFillerBounds.Metrics);
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v33 = v22[1];
      v34 = *v22;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
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
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v34;
      v16[1] = v33;
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
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, PinnedSection>, MEMORY[0x1E69E7668], &type metadata for PinnedSection, MEMORY[0x1E69E7678]);
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
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + (v20 << 6));
      v33 = *v22;
      v34 = v22[1];
      *v35 = v22[2];
      *&v35[9] = *(v22 + 41);
      v23 = MEMORY[0x193AC1150](*(v7 + 40), v21, 4);
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
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v33;
      v16[1] = v34;
      v16[2] = *v35;
      *(v16 + 41) = *&v35[9];
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
  type metadata accessor for _DictionaryStorage<_NSRange, [NSAttributedStringKey : Any]>(0);
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
      v30 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v30);
      MEMORY[0x193AC11A0](*(&v30 + 1));
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
      *(*(v7 + 48) + 16 * v15) = v30;
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
  type metadata accessor for KeyedEncodingContainer<_DisplayList_StableIdentity.CodingKeys>(0, &lazy cache variable for type metadata for RangeSet<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E7BE0]);
  v44 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v36 - v7;
  v8 = *v2;
  type metadata accessor for _DictionaryStorage<NSAttributedStringKey, RangeSet<AttributedTextFormatting.Constraints.Index>>(0);
  v40 = v4;
  v9 = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = v9;
  if (*(v8 + 16))
  {
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
    v36 = v2;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v41 = (v6 + 32);
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 56);
      v24 = *(*(v8 + 48) + 8 * v22);
      v42 = *(v39 + 72);
      v25 = v23 + v42 * v22;
      if (v40)
      {
        (*v41)(v43, v25, v44);
      }

      else
      {
        (*v37)(v43, v25, v44);
        v26 = v24;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v27 = Hasher._finalize()();

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
      *(*(v10 + 48) + 8 * v18) = v24;
      (*v41)((*(v10 + 56) + v42 * v18), v43, v44);
      ++*(v10 + 16);
      v8 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<AttributedString.AnyAttribute, AttributedString.Keys>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, &type metadata for AttributedString.Keys);
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v33 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v32 & 1) == 0)
      {
        outlined copy of AttributedString.AnyAttribute(v33, v22);
      }

      Hasher.init(_seed:)();
      if (v22 < 0)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        dispatch thunk of static AttributedStringKey.name.getter();
      }

      String.hash(into:)();

      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v16 = v33;
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
      v16 = v33;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
  type metadata accessor for _DictionaryStorage<AGSubgraphRef.Map.Key, [ScrapeableContent.Node]>(0);
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
        v22 = v20;
      }

      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<ScrollAnchorStorage.Role, UnitPoint>, lazy protocol witness table accessor for type ScrollAnchorStorage.Role and conformance ScrollAnchorStorage.Role, &type metadata for ScrollAnchorStorage.Role, &type metadata for UnitPoint);
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
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v21);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.ViewUpdater.ViewCache.Key, DisplayList.ViewUpdater.ViewCache.AnimatorInfo>, lazy protocol witness table accessor for type DisplayList.ViewUpdater.ViewCache.Key and conformance DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.Key, &type metadata for DisplayList.ViewUpdater.ViewCache.AnimatorInfo);
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 20 * v24;
      v27 = *(v26 + 4);
      v47 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 12);
      v45 = *(v26 + 17);
      v46 = *(v26 + 16);
      v30 = v25 + 56 * v24;
      if (v44)
      {
        v31 = *v30;
        v32 = *(v30 + 16);
        v33 = *(v30 + 32);
        v51 = *(v30 + 48);
        v49 = v32;
        v50 = v33;
        v48 = v31;
      }

      else
      {
        outlined init with copy of DisplayList.ViewUpdater.ViewCache.AnimatorInfo(v30, &v48);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v47);
      Hasher._combine(_:)(v27);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v46);
      Hasher._combine(_:)(v45);
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
      v16 = *(v7 + 48) + 20 * v15;
      *v16 = v47;
      *(v16 + 4) = v27;
      *(v16 + 8) = v28;
      *(v16 + 12) = v29;
      *(v16 + 16) = v46;
      *(v16 + 17) = v45;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v48;
      v19 = v49;
      v20 = v50;
      *(v17 + 48) = v51;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
      v5 = v43;
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

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<CAHostingLayerEvent.MouseButton, Int>, lazy protocol witness table accessor for type CAHostingLayerEvent.MouseButton and conformance CAHostingLayerEvent.MouseButton, &type metadata for CAHostingLayerEvent.MouseButton, MEMORY[0x1E69E6530]);
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v20);
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBindingBridge.TrackedEventState>, lazy protocol witness table accessor for type EventID and conformance EventID, &type metadata for EventID, &type metadata for EventBindingBridge.TrackedEventState);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
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
      v23 = *(v5 + 56) + v22;
      v24 = (*(v5 + 48) + v22);
      v26 = *v24;
      v25 = v24[1];
      v39 = *(v23 + 8);
      v27 = *v23;
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v26);
      MEMORY[0x193AC11A0](v25);
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v26;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v39;
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
        goto LABEL_33;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewDebug.Property, Any>, lazy protocol witness table accessor for type _ViewDebug.Property and conformance _ViewDebug.Property, &type metadata for _ViewDebug.Property, MEMORY[0x1E69E7CA0] + 8);
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
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
      outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
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
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical, &type metadata for _ViewList_ID.Canonical, &type metadata for CanvasSymbols.Child);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v42 = (v5 + 64);
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
    v41 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v48 = *v21;
      v47 = *(v21 + 4);
      v22 = *(v21 + 8);
      v23 = *(v5 + 56) + 48 * v20;
      v24 = *(v23 + 8);
      v44 = *(v23 + 16);
      v25 = *(v23 + 24);
      v26 = *(v23 + 32);
      v45 = *v23;
      v46 = *(v23 + 40);
      if ((v4 & 1) == 0)
      {

        v27 = v45;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v48);
      Hasher._combine(_:)(v47);
      if (v22)
      {
        Hasher._combine(_:)(1u);
        v43 = v24;
        v28 = v11;
        v29 = v7;
        v30 = *(*v22 + 120);

        v30(v49);
        v7 = v29;
        v11 = v28;
        v24 = v43;
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v31 = Hasher._finalize()();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v14 = v25;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v14 = v25;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v7 + 48) + 16 * v13;
      *v15 = v48;
      *(v15 + 4) = v47;
      *(v15 + 8) = v22;
      v16 = *(v7 + 56) + 48 * v13;
      *v16 = v45;
      *(v16 + 8) = v24;
      *(v16 + 16) = v44;
      *(v16 + 24) = v14;
      *(v16 + 32) = v26;
      *(v16 + 40) = v46;
      ++*(v7 + 16);
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

      if (v8 >= v41)
      {
        break;
      }

      v19 = v42[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v42, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v42 = -1 << v39;
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
  type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ProposedSize, CGSize>, type metadata accessor for CGSize, lazy protocol witness table accessor for type _ProposedSize and conformance _ProposedSize, &type metadata for _ProposedSize);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_44;
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

        if (v37)
        {
          v36 = 1 << *(v5 + 32);
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

        v3 = v2;
        goto LABEL_42;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v40 = *(v22 + 24);
      v23 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      v39 = *(v21 + 16 * v20);
      Hasher.init(_seed:)();
      if (v24 == 1)
      {
        Hasher._combine(_:)(0);
        if (v40)
        {
          goto LABEL_25;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x193AC11E0](v27);
        if (v40)
        {
LABEL_25:
          Hasher._combine(_:)(0);
          goto LABEL_26;
        }
      }

      Hasher._combine(_:)(1u);
      if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0;
      }

      MEMORY[0x193AC11E0](v26);
LABEL_26:
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

LABEL_44:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v40;
      *(*(v7 + 56) + 16 * v15) = v39;
      ++*(v7 + 16);
      v5 = v38;
    }
  }

LABEL_42:
  *v3 = v7;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<ViewIdentity, GlassContainer.ItemData>(0, &lazy cache variable for type metadata for _DictionaryStorage<TintPlacement, AnyShapeStyle>, lazy protocol witness table accessor for type TintPlacement and conformance TintPlacement, &type metadata for TintPlacement, &type metadata for AnyShapeStyle);
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
      MEMORY[0x193AC11A0](0);
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