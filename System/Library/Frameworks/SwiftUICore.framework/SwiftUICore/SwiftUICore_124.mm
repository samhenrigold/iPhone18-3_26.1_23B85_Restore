void NSAttributedString.naturalWritingDirection(in:)(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = v3;
  memset((v4 + 32), 255, v3);
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = v3;
  memset((v5 + 32), 255, v3);
  [v2 length];
  [v2 length];
  CFAttributedStringGetStatisticalWritingDirections();

  if (*(v5 + 16))
  {
  }

  else
  {
    __break(1u);
  }
}

__n128 protocol witness for ViewModifier.body(content:) in conformance FlexInteractionModifier@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

CGFloat PlatformGlassInteractionState.projectionTransform(rect:)@<D0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = a2 * 0.5;
  v10 = a3 * 0.5;
  CGAffineTransformMakeTranslation(&t1, -(a2 * 0.5), -(a3 * 0.5));
  tx = t1.tx;
  ty = t1.ty;
  v29 = *&t1.c;
  v32 = *&t1.a;
  CGAffineTransformMakeScale(&t1, v5, v6);
  v13 = *&t1.a;
  v14 = *&t1.c;
  v15 = *&t1.tx;
  *&t1.a = v32;
  *&t1.c = v29;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v13;
  *&t2.c = v14;
  *&t2.tx = v15;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v16 = v35.tx;
  v17 = v35.ty;
  v30 = *&v35.c;
  v33 = *&v35.a;
  CGAffineTransformMakeTranslation(&t1, v9, v10);
  v18 = *&t1.a;
  v19 = *&t1.c;
  v20 = *&t1.tx;
  *&t1.a = v33;
  *&t1.c = v30;
  t1.tx = v16;
  t1.ty = v17;
  *&t2.a = v18;
  *&t2.c = v19;
  *&t2.tx = v20;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v21 = v35.tx;
  v22 = v35.ty;
  v31 = *&v35.c;
  v34 = *&v35.a;
  CGAffineTransformMakeTranslation(&t1, v7, v8);
  v23 = *&t1.a;
  v24 = *&t1.c;
  v25 = *&t1.tx;
  *&t1.a = v34;
  *&t1.c = v31;
  t1.tx = v21;
  t1.ty = v22;
  *&t2.a = v23;
  *&t2.c = v24;
  *&t2.tx = v25;
  CGAffineTransformConcat(&v35, &t1, &t2);
  result = v35.a;
  v27 = *&v35.c;
  v28 = *&v35.tx;
  *a1 = *&v35.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v27;
  *(a1 + 40) = 0;
  *(a1 + 48) = v28;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 protocol witness for GeometryEffect.effectValue(size:) in conformance FlexStateModifier@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  PlatformGlassInteractionState.projectionTransform(rect:)(v6, a2, a3);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

void lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier>(255);
    v4[0] = &protocol witness table for _ViewModifier_Content<A>;
    v4[1] = &protocol witness table for FlexStateModifier;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<FlexInteractionModifier>, FlexStateModifier> and conformance <> ModifiedContent<A, B>);
  }
}

double EnvironmentValues.lineLimit.setter(uint64_t a1, char a2, void (*a3)(void *, uint64_t, void, uint64_t *, __n128), void (*a4)(uint64_t, void, __n128))
{
  v7 = v4;
  v10 = *v7;
  swift_retain_n();
  (a3)(v7, a1, a2 & 1, &v12);

  if (v7[1])
  {
    (a4)(v10, *v7);
  }

  return result;
}

double protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance LineLimitModifier(uint64_t a1, uint64_t *a2)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a2, v4, v5);

  v7 = a2[1];
  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV09LineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v6, *a2);
  }

  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV014LowerLineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(a2, v9, v10);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV014LowerLineLimitK033_32CC33FA2019BEDFCE31FB4066945274LLVG_Ttg5(v11, *a2);
  }

  return result;
}

uint64_t View.lineLimit(_:)()
{
  return View.modifier<A>(_:)();
}

{
  return View.modifier<A>(_:)();
}

{
  return View.modifier<A>(_:)();
}

void (*EnvironmentValues.lineLimit.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
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
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV09LineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.lineLimit.modify;
}

void (*EnvironmentValues.lowerLineLimit.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2)
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
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV014LowerLineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.lowerLineLimit.modify;
}

void EnvironmentValues.lineLimit.modify(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t, void *, __n128), void (*a4)(uint64_t, void, __n128))
{
  v7 = *a1;
  v8 = **a1;
  v9 = *(*a1 + 8);
  swift_retain_n();
  v10 = v7[6];
  if (a2)
  {
    v11 = v7 + 2;
  }

  else
  {
    v11 = v7 + 3;
  }

  (a3)(v7[4], v8, v9, v11);

  if (v10)
  {
    (a4)(v7[5], *v7[4]);
  }

  free(v7);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Int?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>)
  {
    type metadata accessor for Int?();
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>);
    }
  }
}

uint64_t ResolvedStyledText.StringDrawing.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, void **a7, double a8, double a9, double a10, double a11, uint64_t a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, char a20)
{
  v29 = swift_allocObject();
  v30 = a2[7];
  v102 = a2[6];
  v103 = v30;
  v104 = a2[8];
  v105 = *(a2 + 144);
  v31 = a2[3];
  v98 = a2[2];
  v99 = v31;
  v32 = a2[5];
  v100 = a2[4];
  v101 = v32;
  v33 = a2[1];
  v96 = *a2;
  v97 = v33;
  v34 = *a4;
  v78 = a4[1];
  v79 = *a4;
  v80 = *a6;
  v76 = a7[1];
  v77 = *a7;
  v74 = a7[3];
  v75 = a7[2];
  v72 = a7[5];
  v73 = a7[4];
  v71 = a7[6];
  if (v105)
  {
    v70 = 1;
  }

  else if (a1 && NSAttributedString.isDynamic.getter())
  {
    v70 = v34 & 1;
  }

  else
  {
    v70 = 0;
  }

  v69 = v96;
  v35 = v97;
  v36 = *(&v101 + 1);
  v37 = v102;
  if (a1)
  {
    v68 = a8;
    if (a20)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = a19;
    }

    v39 = a1;
    v40 = v39;
    if (v38 != 1.0)
    {
      v41 = [v39 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

      v40 = v41;
    }

    v36 = *(&v101 + 1);
    v37 = v102;
    a8 = v68;
  }

  else
  {
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v40 = static NSAttributedString.emptyString;
  }

  v42 = *(&v100 + 1) != 0.0;
  v95 = BYTE8(v96);
  v94 = BYTE8(v97);
  if (a20)
  {
    v43 = *&v98;
  }

  else
  {
    v43 = 1.0;
  }

  outlined consume of ResolvedTextSuffix(v77, v76, v75, v74, v73, v72, v71);

  v44 = v95;
  v45 = v94;
  *(v29 + 352) = 0;
  *(v29 + 360) = v40;
  *(v29 + 368) = v69;
  *(v29 + 376) = v44;
  *(v29 + 384) = v35;
  *(v29 + 392) = v45;
  *(v29 + 400) = v43;
  *(v29 + 408) = v36;
  *(v29 + 416) = v37;
  *(v29 + 424) = v70;
  *(v29 + 425) = v42;
  *(v29 + 426) = a5 & 1;
  *(v29 + 432) = MEMORY[0x1E69E7CC0];
  *(v29 + 200) = 0;
  *(v29 + 208) = 1;
  v46 = (v29 + 280);
  v93 = 1;
  *(v29 + 216) = a1;
  *(v29 + 224) = a8;
  *(v29 + 232) = a9;
  *(v29 + 240) = a10;
  *(v29 + 248) = a11;
  *(v29 + 256) = v79;
  *(v29 + 257) = v78;
  *(v29 + 258) = a5 & 1;
  *(v29 + 260) = v80;
  *(v29 + 264) = a17;
  *(v29 + 272) = a18;
  v47 = a2[7];
  *(v29 + 112) = a2[6];
  *(v29 + 128) = v47;
  *(v29 + 144) = a2[8];
  *(v29 + 160) = *(a2 + 144);
  v48 = a2[3];
  *(v29 + 48) = a2[2];
  *(v29 + 64) = v48;
  v49 = a2[5];
  *(v29 + 80) = a2[4];
  *(v29 + 96) = v49;
  v50 = a2[1];
  *(v29 + 16) = *a2;
  *(v29 + 32) = v50;
  if (*(a3 + 32))
  {
    if (a1)
    {
      v90 = 0uLL;
      v91 = 0uLL;
      v88 = 0uLL;
      v89 = 0uLL;
      v92 = 1;
      v86 = BYTE8(v102);
      v87 = v103;
      v51 = a2[7];
      v84[6] = a2[6];
      v84[7] = v51;
      v84[8] = a2[8];
      v85 = *(a2 + 144);
      v52 = a2[3];
      v84[2] = a2[2];
      v84[3] = v52;
      v53 = a2[5];
      v84[4] = a2[4];
      v84[5] = v53;
      v54 = a2[1];
      v84[0] = *a2;
      v84[1] = v54;
      outlined init with copy of TextLayoutProperties(&v96, v83);
      v55 = a1;
      outlined init with copy of TextLayoutProperties(&v96, v83);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v55, &v88, v84);
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;

      outlined destroy of TextLayoutProperties(&v96);
      v64 = v91;
      *(v29 + 312) = v90;
      *(v29 + 328) = v64;
      *(v29 + 344) = v92;
      v65 = v89;
      *v46 = v88;
      *(v29 + 296) = v65;
      *(v29 + 168) = v57;
      *(v29 + 176) = v59;
      *(v29 + 184) = v61;
      *(v29 + 192) = v63;
    }

    else
    {
      *(v29 + 312) = 0uLL;
      *(v29 + 328) = 0uLL;
      *v46 = 0uLL;
      *(v29 + 296) = 0uLL;
      *(v29 + 344) = 1;
      *(v29 + 168) = 0uLL;
      *(v29 + 184) = 0uLL;
    }
  }

  else
  {
    *(v29 + 312) = 0u;
    *(v29 + 328) = 0u;
    *v46 = 0u;
    *(v29 + 296) = 0u;
    *(v29 + 344) = 1;
    v66 = *(a3 + 16);
    *(v29 + 168) = *a3;
    *(v29 + 184) = v66;
  }

  return v29;
}

id one-time initialization function for emptyString()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  static NSAttributedString.emptyString = result;
  return result;
}

uint64_t ResolvedStyledText.StringDrawing.init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(void *a1, __int128 *a2, uint64_t a3, char *a4, char a5, __int16 *a6, void **a7, double a8, double a9, double a10, double a11, uint64_t a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, char a20)
{
  v21 = v20;
  v28 = a2[7];
  *&v98[16] = a2[6];
  v99 = v28;
  v100 = a2[8];
  v101 = *(a2 + 144);
  v29 = a2[3];
  v95 = a2[2];
  v96 = v29;
  v30 = a2[5];
  v97 = a2[4];
  *v98 = v30;
  v31 = a2[1];
  v93 = *a2;
  v94 = v31;
  v32 = *a4;
  v75 = a4[1];
  v77 = *a6;
  v73 = a7[1];
  v74 = *a7;
  v71 = a7[3];
  v72 = a7[2];
  v69 = a7[5];
  v70 = a7[4];
  v68 = a7[6];
  v79 = a1;
  if (v101)
  {
    v67 = 1;
  }

  else if (a1)
  {
    if (NSAttributedString.isDynamic.getter())
    {
      v67 = v32 & 1;
    }

    else
    {
      v67 = 0;
    }

    a1 = v79;
  }

  else
  {
    v67 = 0;
  }

  v33 = v93;
  v34 = BYTE8(v93);
  v35 = v94;
  v36 = BYTE8(v94);
  v66 = *&v98[8];
  v76 = v32;
  if (a1)
  {
    if (a20)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = a19;
    }

    v38 = a1;
    v39 = v38;
    if (v37 != 1.0)
    {
      v65 = a5;
      v40 = [v38 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

      v39 = v40;
      a5 = v65;
    }
  }

  else
  {
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v39 = static NSAttributedString.emptyString;
  }

  v92 = BYTE8(v93);
  v41 = *(&v97 + 1) != 0.0;
  v91 = BYTE8(v94);
  v42 = 1.0;
  if (a20)
  {
    v42 = *&v95;
  }

  v43 = a5 & 1;
  *(v21 + 352) = 0;
  *(v21 + 360) = v39;
  *(v21 + 368) = v33;
  *(v21 + 376) = v34;
  *(v21 + 384) = v35;
  *(v21 + 392) = v36;
  *(v21 + 400) = v42;
  *(v21 + 408) = v66;
  *(v21 + 424) = v67;
  *(v21 + 425) = v41;
  *(v21 + 426) = v43;
  *(v21 + 432) = MEMORY[0x1E69E7CC0];
  outlined consume of ResolvedTextSuffix(v74, v73, v72, v71, v70, v69, v68);

  *(v21 + 200) = 0;
  *(v21 + 208) = 1;
  v90 = 1;
  *(v21 + 280) = 0u;
  *(v21 + 296) = 0u;
  *(v21 + 312) = 0u;
  *(v21 + 328) = 0u;
  *(v21 + 344) = 1;
  *(v21 + 216) = v79;
  *(v21 + 224) = a8;
  *(v21 + 232) = a9;
  *(v21 + 240) = a10;
  *(v21 + 248) = a11;
  *(v21 + 256) = v76;
  *(v21 + 257) = v75;
  *(v21 + 258) = v43;
  *(v21 + 260) = v77;
  *(v21 + 264) = a17;
  *(v21 + 272) = a18;
  v44 = a2[7];
  *(v21 + 112) = a2[6];
  *(v21 + 128) = v44;
  *(v21 + 144) = a2[8];
  *(v21 + 160) = *(a2 + 144);
  v45 = a2[3];
  *(v21 + 48) = a2[2];
  *(v21 + 64) = v45;
  v46 = a2[5];
  *(v21 + 80) = a2[4];
  *(v21 + 96) = v46;
  v47 = a2[1];
  *(v21 + 16) = *a2;
  *(v21 + 32) = v47;
  if (*(a3 + 32))
  {
    if (v79)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v89 = 1;
      v83 = v98[24];
      v84 = v99;
      v48 = a2[7];
      v81[6] = a2[6];
      v81[7] = v48;
      v81[8] = a2[8];
      v82 = *(a2 + 144);
      v49 = a2[3];
      v81[2] = a2[2];
      v81[3] = v49;
      v50 = a2[5];
      v81[4] = a2[4];
      v81[5] = v50;
      v51 = a2[1];
      v81[0] = *a2;
      v81[1] = v51;
      outlined init with copy of TextLayoutProperties(&v93, v80);
      v52 = v79;
      outlined init with copy of TextLayoutProperties(&v93, v80);
      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v52, &v85, v81);
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;

      outlined destroy of TextLayoutProperties(&v93);
      v61 = v88;
      *(v21 + 312) = v87;
      *(v21 + 328) = v61;
      *(v21 + 344) = v89;
      v62 = v86;
      *(v21 + 280) = v85;
      *(v21 + 296) = v62;
      *(v21 + 168) = v54;
      *(v21 + 176) = v56;
      *(v21 + 184) = v58;
      *(v21 + 192) = v60;
    }

    else
    {
      *(v21 + 344) = 1;
      *(v21 + 168) = 0u;
      *(v21 + 184) = 0u;
    }
  }

  else
  {
    *(v21 + 344) = 1;
    v63 = *(a3 + 16);
    *(v21 + 168) = *a3;
    *(v21 + 184) = v63;
  }

  return v21;
}

Swift::Void __swiftcall ResolvedStyledText.StringDrawing.resetCache()()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  swift_beginAccess();
  v11 = *(v0 + 424);
  v12 = *(v0 + 88);
  v13 = *(v0 + 426);
  if (v1)
  {
    if (v3)
    {
      v2 = 1.0;
    }

    if (v2 == 1.0)
    {
      v14 = v1;
    }

    else
    {
      v14 = [v1 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
    }
  }

  else
  {
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v14 = static NSAttributedString.emptyString;
  }

  v21 = v5;
  v20 = v7;
  v15 = 1.0;
  if (v3)
  {
    v15 = v8;
  }

  v16 = *(v0 + 400);
  v18[2] = *(v0 + 384);
  v18[3] = v16;
  v18[4] = *(v0 + 416);
  v19 = *(v0 + 432);
  v17 = *(v0 + 368);
  v18[0] = *(v0 + 352);
  v18[1] = v17;
  *(v0 + 352) = 0;
  *(v0 + 360) = v14;
  *(v0 + 368) = v4;
  *(v0 + 376) = v5;
  *(v0 + 384) = v6;
  *(v0 + 392) = v7;
  *(v0 + 400) = v15;
  *(v0 + 408) = v9;
  *(v0 + 416) = v10;
  *(v0 + 424) = v11;
  *(v0 + 425) = v12 != 0.0;
  *(v0 + 426) = v13;
  *(v0 + 432) = MEMORY[0x1E69E7CC0];
  outlined destroy of NSAttributedString.MetricsCache(v18);
}

void ResolvedStyledText.StringDrawing.drawingScale(size:)(double a1, double a2)
{
  swift_beginAccess();
  if (*(v2 + 208) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 48) != 1.0)
    {
      swift_beginAccess();
      v5 = *(v2 + 168);
      v6 = *(v2 + 176);
      v8 = *(v2 + 184);
      v7 = *(v2 + 192);
      swift_beginAccess();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v9, a1, a2, v5, v6, v8, v7);
      swift_endAccess();
    }
  }
}

double ResolvedStyledText.StringDrawing.size(in:context:)(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  v7 = v3[21];
  v8 = v3[22];
  v9 = v3[23];
  v10 = v3[24];
  swift_beginAccess();
  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&a1, &v12, a2, a3, v7, v8, v9, v10);
  swift_endAccess();
  return v12;
}

double thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void ResolvedStyledText.StringDrawing.linkURL(at:in:)(double a1, double a2, double a3, double a4)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *v11 = a1;
  *&v11[1] = a2;
  *&v11[2] = a3;
  *&v11[3] = a4;
  v11[4] = v4;
  v9 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x88);
  v10 = static CoreGlue2.shared;

  v9(v11);
}

uint64_t ResolvedStyledText.StringDrawing.__ivar_destroyer()
{
  v1 = *(v0 + 360);

  return swift_unknownObjectRelease();
}

uint64_t ResolvedStyledText.StringDrawing.deinit()
{
  v1 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v1;
  v7[8] = *(v0 + 144);
  v8 = *(v0 + 160);
  v2 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v2;
  v3 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v3;
  v4 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v4;
  outlined destroy of TextLayoutProperties(v7);

  v5 = *(v0 + 360);

  swift_unknownObjectRelease();
  return v0;
}

double destroy for NSAttributedString.MetricsCache(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t initializeWithCopy for NSAttributedString.MetricsCache(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 80) = a2[10];
  swift_unknownObjectRetain();
  v4 = v3;

  return a1;
}

uint64_t *assignWithCopy for NSAttributedString.MetricsCache(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v6 = v4;

  v7 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  a1[2] = v7;
  v8 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  a1[4] = v8;
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  a1[10] = a2[10];

  return a1;
}

uint64_t assignWithTake for NSAttributedString.MetricsCache(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for NSAttributedString.MetricsCache(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for NSAttributedString.MetricsCache(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSAttributedString.Metrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NSAttributedString.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall ResolvableTextSegmentAttribute.Value.isAttributeRequiredForResolution(_:includeNonFunctionalAttributes:)(NSAttributedStringKey _, Swift::Bool includeNonFunctionalAttributes)
{
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_13:
    v15 = 1;
    return v15 & 1;
  }

  if (one-time initialization token for updateSchedule != -1)
  {
    swift_once();
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    goto LABEL_12;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_13;
  }

  v18 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
LABEL_12:

    goto LABEL_13;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) != 0 || !includeNonFunctionalAttributes)
  {
    return v15 & 1;
  }

  v23 = *(v2 + *(v18 + 24));
  v24 = *(v23 + 16);
  if (!v24)
  {
    v15 = 0;
    return v15 & 1;
  }

  v25 = 0;
  v26 = (v23 + 56);
  while (v25 < *(v23 + 16))
  {
    v29 = *(v26 - 1);
    v30 = *v26;
    v31 = *(v29 + 16);

    if (!v31)
    {
      goto LABEL_23;
    }

    v32 = specialized __RawDictionaryStorage.find<A>(_:)(_);
    if ((v33 & 1) == 0)
    {

LABEL_23:
      memset(v35, 0, sizeof(v35));
      v27 = _sypSgWOhTm_8(v35, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
      *&v35[0] = _;
      MEMORY[0x1EEE9AC00](v27);
      v34[2] = v35;

      v28 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v34, v30);

      result = swift_bridgeObjectRelease_n();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_24;
    }

    outlined init with copy of Any(*(v29 + 56) + 32 * v32, v35);

    swift_bridgeObjectRelease_n();
    result = _sypSgWOhTm_8(v35, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
LABEL_24:
    v15 = 0;
    ++v25;
    v26 += 4;
    if (v24 == v25)
    {
      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

void static ResolvableTextSegmentAttribute.toggleAttributes(in:)(id a1)
{
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v2 = static NSAttributedStringKey.resolvableTextSegment;
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:);
  *(v5 + 24) = v4;
  v8[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v8[3] = &block_descriptor_18;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v7 enumerateAttribute:v2 inRange:0 options:v3 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

void *static ResolvableTextSegmentAttribute.legacySegment(resolvableAttributeKey:length:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _sypSgMaTm_6(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ResolvableTextSegmentAttribute.Value.Run>, &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDA6EB0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v6);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (result[2])
    {
      v17 = MEMORY[0x1E69E7CD0];
      MEMORY[0x1EEE9AC00](result);
      v10 = v9;
      specialized _NativeDictionary.filter(_:)(v7, partial apply for closure #1 in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:));
      v12 = v11;

      specialized Sequence.filter(_:)(v10, v12, &v17);
      v14 = v13;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    *(v5 + 32) = 0;
    *(v5 + 40) = a2;
    *(v5 + 48) = v12;
    *(v5 + 56) = v14;
    UUID.init()();
    v15 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    *(a3 + *(v15 + 20)) = a1;
    *(a3 + *(v15 + 24)) = v5;

    return a1;
  }

  return result;
}

void static ResolvableTextSegmentAttribute.update(_:in:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableStringResolutionContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v7 = static NSAttributedStringKey.resolvableTextSegment;
  v8 = [a1 length];
  _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ResolvableStringResolutionContext);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:);
  *(v11 + 24) = v10;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13_2;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  [v13 enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{2, v12}];
  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void PlatformAttributeResolver.platformAttributes(for:includeDefaultValueAttributes:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AttributeContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v77 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = *(v10 + 16);
  v83 = v18;
  v16(&v77 - v17, a1, v15);
  v100 = Dictionary<>.init(_:)();
  v19 = type metadata accessor for PlatformAttributeResolver(0);
  _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v3 + v19[5], v8, type metadata accessor for Text.Style);
  Dictionary<>.transferAttributedStringStyles(to:)(v8);
  v21 = *v3;
  v20 = v3[1];
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v23 = v19[7];
  v24 = (v3 + v19[6]);
  v25 = v24[1];
  *&v98[0] = *v24;
  *(&v98[0] + 1) = v25;
  *&v95 = *(v3 + v23);
  v84 = v19;
  v26 = v19[9];

  v27 = v3;

  v28 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:), v22, v98, 1, &v95, v3 + v26);

  v29 = v100;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v98[0] = v29;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v98);

  v31 = *&v98[0];
  v100 = *&v98[0];
  if (a2)
  {
    outlined destroy of ResolvableTextSegmentAttribute.Value(v8, type metadata accessor for Text.Style);
  }

  else
  {
    v78 = v8;
    v32 = *&v98[0] + 64;
    v33 = 1 << *(*&v98[0] + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(*&v98[0] + 64);
    v36 = (v33 + 63) >> 6;
    v80 = (v10 + 8);

    v37 = 0;
    v87 = v31;
    v79 = v31;
    v38 = v84;
    v81 = v3;
    while (v35)
    {
      v39 = v37;
LABEL_17:
      v42 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v43 = v42 | (v39 << 6);
      v44 = *(*(v87 + 48) + 8 * v43);
      outlined init with copy of Any(*(v87 + 56) + 32 * v43, v94);
      *&v95 = v44;
      outlined init with take of Any(v94, (&v95 + 8));
      v45 = v44;
LABEL_18:
      v98[0] = v95;
      v98[1] = v96;
      v99 = v97;
      v46 = v95;
      if (!v95)
      {

        outlined destroy of ResolvableTextSegmentAttribute.Value(v78, type metadata accessor for Text.Style);
        return;
      }

      outlined init with take of Any((v98 + 8), v94);
      v47 = *(v27 + v38[8]);
      if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v49 & 1) != 0))
      {
        outlined init with copy of Any(*(v47 + 56) + 32 * v48, &v95);
        outlined init with take of Any(&v95, v93);
        v91 = v46;
        outlined init with copy of Any(v94, &v92);
        type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
        v50 = static _DictionaryStorage.allocate(capacity:)();
        v51 = v46;

        _sypSgWOcTm_0(&v91, &v95, &lazy cache variable for type metadata for (NSAttributedStringKey, Any), type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E7CA0] + 8, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
        v52 = v95;
        v53 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
        if (v54)
        {
          goto LABEL_36;
        }

        v50[(v53 >> 6) + 8] |= 1 << v53;
        *(v50[6] + 8 * v53) = v52;
        outlined init with take of Any((&v95 + 8), (v50[7] + 32 * v53));
        v55 = v50[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_37;
        }

        v50[2] = v57;

        _sypSgWOhTm_8(&v91, &lazy cache variable for type metadata for (NSAttributedStringKey, Any), type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E7CA0] + 8, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
        AttributeContainer.init(_:)();
        v89 = v51;
        outlined init with copy of Any(v93, &v90);
        v58 = static _DictionaryStorage.allocate(capacity:)();
        v59 = v51;

        _sypSgWOcTm_0(&v89, &v95, &lazy cache variable for type metadata for (NSAttributedStringKey, Any), type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E7CA0] + 8, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
        v60 = v95;
        v61 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
        if (v62)
        {
          goto LABEL_38;
        }

        v58[(v61 >> 6) + 8] |= 1 << v61;
        *(v58[6] + 8 * v61) = v60;
        outlined init with take of Any((&v95 + 8), (v58[7] + 32 * v61));
        v63 = v58[2];
        v56 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v56)
        {
          goto LABEL_39;
        }

        v85 = v59;
        v58[2] = v64;

        _sypSgWOhTm_8(&v89, &lazy cache variable for type metadata for (NSAttributedStringKey, Any), type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E7CA0] + 8, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
        v65 = v82;
        AttributeContainer.init(_:)();
        v66 = v86;
        v67 = static AttributeContainer.== infix(_:_:)();
        v68 = *v80;
        v69 = v65;
        v70 = v83;
        (*v80)(v69, v83);
        v68(v66, v70);
        if (v67)
        {
          v71 = v85;
          v72 = specialized __RawDictionaryStorage.find<A>(_:)(v85);
          v38 = v84;
          if (v73)
          {
            v74 = v72;
            v75 = v100;
            v76 = swift_isUniquelyReferenced_nonNull_native();
            v88 = v75;
            if (!v76)
            {
              specialized _NativeDictionary.copy()();
              v75 = v88;
            }

            outlined init with take of Any((*(v75 + 56) + 32 * v74), &v95);
            specialized _NativeDictionary._delete(at:)();

            __swift_destroy_boxed_opaque_existential_1(v93);
            __swift_destroy_boxed_opaque_existential_1(v94);
            v79 = v75;
            v100 = v75;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v93);
            __swift_destroy_boxed_opaque_existential_1(v94);
            v95 = 0u;
            v96 = 0u;
          }

          _sypSgWOhTm_8(&v95, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
          v27 = v81;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v93);
          __swift_destroy_boxed_opaque_existential_1(v94);
          v27 = v81;
          v38 = v84;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v94);
      }
    }

    if (v36 <= v37 + 1)
    {
      v40 = v37 + 1;
    }

    else
    {
      v40 = v36;
    }

    v41 = v40 - 1;
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {
        v35 = 0;
        v97 = 0;
        v37 = v41;
        v95 = 0u;
        v96 = 0u;
        goto LABEL_18;
      }

      v35 = *(v32 + 8 * v39);
      ++v37;
      if (v35)
      {
        v37 = v39;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }
}

id static NSAttributedStringKey.resolvableTextSegment.getter()
{
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v1 = static NSAttributedStringKey.resolvableTextSegment;

  return v1;
}

uint64_t areEqual #1 (_:_:) in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v10);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Equatable, MEMORY[0x1E69E6028]);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v8, v11);
    v3 = v12;
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = areEqual #1 <A>(_:_:) in areEqual #1 (_:_:) in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)(v5, a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of ResolvableStringAttribute?(v8, &lazy cache variable for type metadata for Equatable?, &lazy cache variable for type metadata for Equatable, MEMORY[0x1E69E6028], type metadata accessor for ScrollStateRequest?);
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t areEqual #1 <A>(_:_:) in areEqual #1 (_:_:) in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v18);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t closure #1 in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      outlined init with copy of Any(*(a3 + 56) + 32 * v6, v9);
      outlined init with take of Any(v9, v10);
      if (areEqual #1 (_:_:) in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)(v10, a2))
      {
        specialized Set._Variant.insert(_:)(v9, a1);

        __swift_destroy_boxed_opaque_existential_1(v10);
        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  return 1;
}

uint64_t ResolvableTextSegmentAttribute.Value.Run.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.Run.CodingKeys>, lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v8;
  v19 = v9;
  v20 = 0;
  _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E6538], MEMORY[0x1E69E66B0]);
  v11 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = v15;
    v18 = v16;
    v20 = 1;
    lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = v12;
    v20 = 2;
    type metadata accessor for ProxyCodable<[NSAttributedStringKey]>(0);
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type ProxyCodable<[NSAttributedStringKey]> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<[NSAttributedStringKey]>, protocol conformance descriptor for ProxyCodable<A>);

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void ResolvableTextSegmentAttribute.Value.Run.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableTextSegmentAttribute.Value.Run.CodingKeys>, lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, MEMORY[0x1E69E6F48]);
  v15 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v18 = 0;
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, MEMORY[0x1E69E6560], MEMORY[0x1E69E66E0]);
    v10 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v16;
    v12 = v17;
    v18 = 1;
    lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v16;
    type metadata accessor for ProxyCodable<[NSAttributedStringKey]>(0);
    v18 = 2;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type ProxyCodable<[NSAttributedStringKey]> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<[NSAttributedStringKey]>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v10);
    v13 = v16;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65676E6172;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResolvableTextSegmentAttribute.Value.Run.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResolvableTextSegmentAttribute.Value.init(resolvableAttributeKey:resolvedString:range:)(id a1@<X1>, id a2@<X0>, uint64_t a3@<X2>, id a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    a4 = [a1 length];
    a3 = 0;
  }

  UUID.init()();
  v11 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  *(a6 + *(v11 + 20)) = a2;
  v36 = MEMORY[0x1E69E7CC0];
  v12 = swift_allocObject();
  *(v12 + 16) = &v36;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in NSAttributedString.runs(in:)partial apply;
  *(v13 + 24) = v12;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_63;
  v14 = _Block_copy(aBlock);

  v34 = a3;
  [a1 enumerateAttributesInRange:a3 options:a4 usingBlock:{0, v14}];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v16 = v36;

  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = v11;
    v32 = a1;
    v33 = a6;
    v18 = MEMORY[0x1E69E7CC0];
    aBlock[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = v18;
    v20 = 0;
    v21 = a3;
    v22 = aBlock[0];
    v23 = (v16 + 40);
    v24 = MEMORY[0x1E69E7CC8];
    while (v20 < *(v16 + 16))
    {
      v25 = *(v23 - 1);
      v26 = v25 - v21;
      if (__OFSUB__(v25, v21))
      {
        goto LABEL_17;
      }

      v27 = v26 + *v23;
      if (__OFADD__(v26, *v23))
      {
        goto LABEL_18;
      }

      if (v27 < v26)
      {
        goto LABEL_19;
      }

      aBlock[0] = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v19 = MEMORY[0x1E69E7CC0];
        v21 = v34;
        v22 = aBlock[0];
      }

      ++v20;
      *(v22 + 16) = v29 + 1;
      v30 = (v22 + 32 * v29);
      v30[4] = v26;
      v30[5] = v27;
      v30[6] = v24;
      v30[7] = v19;
      v23 += 3;
      if (v17 == v20)
      {

        a6 = v33;
        v11 = v31;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_15:
  *(a6 + *(v11 + 24)) = v22;
}

Swift::Void __swiftcall ResolvableTextSegmentAttribute.Value.restoreDefault(in:of:)(__C::_NSRange in, NSMutableAttributedString of)
{
  location = in.location;
  v22 = *(v2 + *(type metadata accessor for ResolvableTextSegmentAttribute.Value(0) + 24));
  v20 = *(v22 + 16);
  if (v20)
  {
    v4 = 0;
    v19 = v22 + 32;
    while (v4 < *(v22 + 16))
    {
      v6 = (v19 + 32 * v4);
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[3];

      v11 = MEMORY[0x193AC38C0](v10);
      v12 = location + v7;
      if (__OFADD__(location, v7))
      {
        goto LABEL_13;
      }

      v13 = __OFSUB__(v8, v7);
      v14 = v8 - v7;
      if (v13)
      {
        goto LABEL_14;
      }

      v15 = v11;
      v16 = *(v9 + 16);
      if (v16)
      {
        v17 = (v9 + 32);
        do
        {
          v18 = *v17++;
          [(objc_class *)of.super.super.isa removeAttribute:v18 range:v12, v14, v19];
          --v16;
        }

        while (v16);
      }

      ++v4;
      type metadata accessor for NSAttributedStringKey(0);
      _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [(objc_class *)of.super.super.isa addAttributes:isa range:v12, v14];

      objc_autoreleasePoolPop(v15);
      if (v4 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

Swift::Void __swiftcall ResolvableTextSegmentAttribute.Value.toggleAttributes(in:of:)(__C::_NSRange in, NSMutableAttributedString of)
{
  length = in.length;
  location = in.location;
  v67 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v62 - v7;
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v65 = static NSAttributedStringKey.resolvableTextSegment;
    [objc_class removeAttribute:sel_removeAttribute_range_ range:?];
    v8 = MEMORY[0x1E69E7CC0];
    v87[0] = MEMORY[0x1E69E7CC0];
    v9 = swift_allocObject();
    *(v9 + 16) = v87;
    v10 = swift_allocObject();
    *(v10 + 16) = closure #1 in NSAttributedString.runs(in:)partial apply;
    *(v10 + 24) = v9;
    v85 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v86 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v84 = &block_descriptor_75;
    v11 = _Block_copy(&aBlock);
    v77 = location;

    v12 = v77;

    [(objc_class *)of.super.super.isa enumerateAttributesInRange:v12 options:length usingBlock:0, v11];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v13 = v8;
    v14 = v87[0];

    v15.location = v12;
    ResolvableTextSegmentAttribute.Value.restoreDefault(in:of:)(v15, of);
    v87[0] = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = v87;
    v17 = swift_allocObject();
    *(v17 + 16) = closure #1 in NSAttributedString.runs(in:)partial apply;
    *(v17 + 24) = v16;
    v85 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v86 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v84 = &block_descriptor_86;
    v18 = _Block_copy(&aBlock);

    v19 = v77;

    isa = of.super.super.isa;
    [of.super.super.isa 0x1E7248FA3];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      goto LABEL_61;
    }

    location = v87[0];

    v20 = *(v14 + 16);
    v79 = location[2];
    v21 = v79 <= v20 ? v20 : v79;
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0, MEMORY[0x1E69E7CC0]);
    v23 = v22;
    v24 = *(v14 + 16);
    v25 = v14;
    if (!v24)
    {
      break;
    }

    v63 = length;
    v26 = 0;
    v27 = 0;
    v72 = location + 6;
    v73 = v25 + 32;
    v70 = v24;
    v71 = v25;
    v76 = location;
    while (v27 >= v79)
    {
LABEL_42:
      v30 = __OFSUB__(v27--, 1);
      if (v30)
      {
        goto LABEL_56;
      }

      ++v26;
      if (v27 < 0)
      {
        if (v26 == v24)
        {
LABEL_47:
          v56 = v23;

          length = v63;
          goto LABEL_48;
        }

        v27 = 0;
      }

      else if (v26 == v24)
      {
        goto LABEL_47;
      }

      if (v26 >= *(v25 + 16))
      {
        goto LABEL_57;
      }
    }

    v28 = (v73 + 24 * v26);
    length = *v28;
    v29 = v28[1];
    v30 = __OFADD__(*v28, v29);
    v78 = *v28 + v29;
    if (v30)
    {
      goto LABEL_58;
    }

    v31 = v28[2];
    v74 = v26;
    v75 = v31;
    v32 = v23;

    v34 = v76;
    v35 = v32;
    location = &v72[3 * v27];
    while (v27 < v34[2])
    {
      v36 = *(location - 2);
      v37 = *(location - 1);
      v30 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v30)
      {
        goto LABEL_50;
      }

      if (v38 >= v78)
      {
        v39 = v78;
      }

      else
      {
        v39 = v38;
      }

      if (v36 >= length && v36 < v78)
      {
        v42 = v39 - v36;
        if (__OFSUB__(v39, v36))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (length < v36 || length >= v38)
        {
          v55 = v35;
LABEL_41:

          v24 = v70;
          v25 = v71;
          v23 = v55;
          location = v76;
          v26 = v74;
          goto LABEL_42;
        }

        v42 = v39 - length;
        if (__OFSUB__(v39, length))
        {
          goto LABEL_55;
        }

        v36 = length;
      }

      of.super.super.isa = (v36 - v19);
      if (__OFSUB__(v36, v19))
      {
        goto LABEL_51;
      }

      v43 = (of.super.super.isa + v42);
      if (__OFADD__(of.super.super.isa, v42))
      {
        goto LABEL_52;
      }

      if (v43 < of.super.super.isa)
      {
        goto LABEL_53;
      }

      v44 = *location;
      if (*(*location + 16))
      {
        aBlock = MEMORY[0x1E69E7CD0];
        MEMORY[0x1EEE9AC00](v33);
        *(&v62 - 2) = v44;
        *(&v62 - 1) = &aBlock;
        v45 = length;
        v46 = v75;
        v80 = v47;

        specialized _NativeDictionary.filter(_:)(v46, closure #1 in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)partial apply);
        v49 = v48;
        length = v45;

        specialized Sequence.filter(_:)(v44, v49, &aBlock);
        v51 = v50;

        v34 = v76;
        v35 = v80;
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC8];
        v51 = MEMORY[0x1E69E7CC0];
      }

      v53 = *(v35 + 16);
      v52 = *(v35 + 24);
      if (v53 >= v52 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v35);
        v35 = v33;
        v34 = v76;
      }

      *(v35 + 16) = v53 + 1;
      v54 = (v35 + 32 * v53);
      v54[4].super.super.isa = of.super.super.isa;
      v54[5].super.super.isa = v43;
      v54[6].super.super.isa = v49;
      v54[7].super.super.isa = v51;
      ++v27;
      location += 3;
      v19 = v77;
      if (v79 == v27)
      {
        v55 = v35;
        v27 = v79;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v56 = v22;

LABEL_48:
  v57 = v68;
  UUID.init()();
  v58 = v67;
  v59 = *(v67 + 20);
  v60 = *(v69 + v59);
  *(v57 + v59) = v60;
  *(v57 + *(v58 + 24)) = v56;
  _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v57, v66, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  v61 = v60;
  [(objc_class *)isa addAttribute:v65 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() range:v19, length];
  swift_unknownObjectRelease();
  outlined destroy of ResolvableTextSegmentAttribute.Value(v57, type metadata accessor for ResolvableTextSegmentAttribute.Value);
}

void ResolvableTextSegmentAttribute.Value.update(_:of:in:)(Swift::Int a1, uint64_t a2, objc_class *a3, void *a4)
{
  v5 = v4;
  v114 = a4;
  v118 = a2;
  v8 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v100 - v13;
  v110 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v110);
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v100 - v15;
  v113 = type metadata accessor for AttributedString();
  v17 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v100 - v21;
  v117.super.super.isa = a3;
  v22 = [(objc_class *)a3 attributesAtIndex:a1 effectiveRange:0, v20];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16) || (v24 = *(v5 + *(v8 + 20)), v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v26 & 1) == 0))
  {

    goto LABEL_7;
  }

  v106 = v8;
  outlined init with copy of Any(*(v23 + 56) + 32 * v25, &aBlock);

  outlined init with take of Any(&aBlock, &v127);
  outlined init with copy of Any(&v127, v123);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
  v27 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v121 = 0;
    aBlock = 0u;
    v120 = 0u;
    outlined destroy of ResolvableStringAttribute?(&aBlock, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute, type metadata accessor for ScrollStateRequest?);
    goto LABEL_8;
  }

  v105 = v24;
  v116 = a1;
  outlined init with take of AnyTrackedValue(&aBlock, v124);
  v28 = v125;
  v29 = v126;
  __swift_project_boxed_opaque_existential_1(v124, v125);
  (*(v29 + 40))(v114, v28, v29);
  v30 = v17;
  v31 = v113;
  if ((*(v17 + 48))(v16, 1, v113) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v127);
    outlined destroy of ResolvableStringAttribute?(v16, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], type metadata accessor for AttributedString.AdaptiveImageGlyph?);
    __swift_destroy_boxed_opaque_existential_1(v124);
LABEL_7:
    v27 = MEMORY[0x1E69E7CA0];
LABEL_8:
    _sypSgMaTm_6(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, v27 + 8, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18DDA6EB0;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    MEMORY[0x193ABEDD0](0xD00000000000002DLL, 0x800000018DD7C870);
    v33 = _NSRange.description.getter();
    MEMORY[0x193ABEDD0](v33);

    MEMORY[0x193ABEDD0](543584032, 0xE400000000000000);
    v34 = [(objc_class *)v117.super.super.isa description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    MEMORY[0x193ABEDD0](v35, v37);

    MEMORY[0x193ABEDD0](34, 0xE100000000000000);
    MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
    v38 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v38);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v124[0] = 84;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v39);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v40 = aBlock;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 32) = v40;
    print(_:separator:terminator:)();

    return;
  }

  (*(v17 + 32))(v115, v16, v31);
  v41 = v116;
  v42.location = v116;
  isa = v117.super.super.isa;
  ResolvableTextSegmentAttribute.Value.restoreDefault(in:of:)(v42, v117);
  v44 = v30;
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v103 = static NSAttributedStringKey.resolvableTextSegment;
    v45 = v118;
    [objc_class removeAttribute:sel_removeAttribute_range_ range:?];
    [(objc_class *)isa removeAttribute:v105 range:v41, v45];
    v46 = [(objc_class *)isa attributesAtIndex:v41 effectiveRange:0];
    v107 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = *(v44 + 2);
    v47 = v111;
    v104(v111, v115, v31);
    AttributedString.characters.getter();
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v48 = String.init<A>(_:)();
    v50 = v49;
    v51 = *(v44 + 1);
    v110 = v44 + 8;
    v102 = v51;
    v51(v47, v31);
    v52 = (v114 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));
    v53 = v41;
    v54 = v52[1];
    *&aBlock = *v52;
    *(&aBlock + 1) = v54;

    v55 = String.redactedIfNeeded(_:)(&aBlock, v48, v50);
    v57 = v56;

    v58 = v52[1];
    *&aBlock = *v52;
    *(&aBlock + 1) = v58;

    v59 = String.caseConvertedIfNeeded(_:)(&aBlock, v55, v57);
    v61 = v60;

    v62 = MEMORY[0x193ABEC20](v59, v61);

    v63 = v118;
    [(objc_class *)isa replaceCharactersInRange:v53 withString:v118, v62];

    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    v104(v47, v115, v31);
    v64 = NSAttributedString.init(_:)();
    v65 = [v64 length];
    v66 = swift_allocObject();
    v66[2] = isa;
    v66[3] = v53;
    v66[4] = v63;
    v67 = swift_allocObject();
    *(v67 + 16) = partial apply for closure #1 in ResolvableTextSegmentAttribute.Value.update(_:of:in:);
    *(v67 + 24) = v66;
    v114 = v66;
    v121 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v122 = v67;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v120 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v120 + 1) = &block_descriptor_97;
    v68 = _Block_copy(&aBlock);
    v44 = isa;

    [v64 enumerateAttributesInRange:0 options:v65 usingBlock:{0, v68}];
    _Block_release(v68);
    LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

    v69 = v115;
    if (v68)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v111 = v64;
    v70 = [v64 length];
    v71 = v105;
    v72 = v112;
    UUID.init()();
    v73 = v106;
    v74 = *(v106 + 20);
    v104 = v71;
    *&v72[v74] = v71;
    v123[0] = MEMORY[0x1E69E7CC0];
    v75 = swift_allocObject();
    *(v75 + 16) = v123;
    v76 = swift_allocObject();
    *(v76 + 16) = closure #1 in NSAttributedString.runs(in:)partial apply;
    *(v76 + 24) = v75;
    v121 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v122 = v76;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v120 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    *(&v120 + 1) = &block_descriptor_108;
    v77 = _Block_copy(&aBlock);

    v105 = v70;
    [(objc_class *)v44 enumerateAttributesInRange:v116 options:v70 usingBlock:0, v77];
    _Block_release(v77);
    LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

    if (v77)
    {
      goto LABEL_37;
    }

    v78 = v123[0];

    v31 = *(v78 + 2);
    if (!v31)
    {
      break;
    }

    v101 = v44;
    *&aBlock = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v79 = 0;
    v41 = 0;
    v80 = aBlock;
    isa = (v78 + 48);
    v117.super.super.isa = v78;
    while (v79 < *(v78 + 2))
    {
      v81 = *(isa - 2);
      v82 = v81 - v116;
      if (__OFSUB__(v81, v116))
      {
        goto LABEL_32;
      }

      v44 = v80;
      v83 = *(isa - 1);
      v84 = *isa;
      v85 = v82 + v83;
      v86 = __OFADD__(v82, v83);

      if (v86)
      {
        goto LABEL_33;
      }

      if (v85 < v82)
      {
        goto LABEL_34;
      }

      if (*(v84 + 16))
      {
        v123[0] = MEMORY[0x1E69E7CD0];
        MEMORY[0x1EEE9AC00](v87);
        *(&v100 - 2) = v84;
        *(&v100 - 1) = v123;
        specialized _NativeDictionary.filter(_:)(v107, closure #1 in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)partial apply);
        v89 = v88;

        specialized Sequence.filter(_:)(v84, v89, v123);
        v118 = v90;
      }

      else
      {

        v89 = MEMORY[0x1E69E7CC8];
        v118 = MEMORY[0x1E69E7CC0];
      }

      v80 = v44;
      *&aBlock = v44;
      v92 = *(v44 + 2);
      v91 = *(v44 + 3);
      v44 = (v92 + 1);
      if (v92 >= v91 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1);
        v80 = aBlock;
      }

      ++v79;
      *(v80 + 2) = v44;
      v93 = (v80 + 32 * v92);
      v93[4] = v82;
      v93[5] = v85;
      v94 = v118;
      v93[6] = v89;
      v93[7] = v94;
      isa = (isa + 24);
      v78 = v117.super.super.isa;
      if (v31 == v79)
      {

        v73 = v106;
        v69 = v115;
        v44 = v101;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v95 = v112;
  *&v112[*(v73 + 24)] = v80;
  v96 = v108;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v95, v108, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v96, v109, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  v97 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  outlined destroy of ResolvableTextSegmentAttribute.Value(v96, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  v98 = v116;
  v99 = v105;
  [(objc_class *)v44 addAttribute:v103 value:v97 range:v116, v105];
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v124, v125);
  [(objc_class *)v44 addAttribute:v104 value:_bridgeAnythingToObjectiveC<A>(_:)() range:v98, v99];

  swift_unknownObjectRelease();
  v102(v69, v113);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  __swift_destroy_boxed_opaque_existential_1(v124);
}

void closure #1 in ResolvableTextSegmentAttribute.Value.update(_:of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (__OFADD__(a6, a2))
  {
    __break(1u);
  }

  else
  {
    isa = v9.super.isa;
    [a5 addAttributes_range_];
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ResolvableTextSegmentAttribute.Value.CodingKeys()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 1936618866;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResolvableTextSegmentAttribute.Value.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResolvableTextSegmentAttribute.Value.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvableTextSegmentAttribute.Value.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResolvableTextSegmentAttribute.Value.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvableTextSegmentAttribute.Value.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>, lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
    v16 = *(v3 + *(v10 + 20));
    v11 = v16;
    v15 = 1;
    type metadata accessor for CodableRawRepresentable<NSAttributedStringKey>(0);
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSAttributedStringKey> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSAttributedStringKey>, protocol conformance descriptor for CodableRawRepresentable<A>);
    v12 = v11;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v16 = *(v3 + *(v10 + 24));
    v15 = 2;
    _sypSgMaTm_6(0, &lazy cache variable for type metadata for [ResolvableTextSegmentAttribute.Value.Run], &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [ResolvableTextSegmentAttribute.Value.Run] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResolvableTextSegmentAttribute.Value.Run] and conformance <A> [A], lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int ResolvableTextSegmentAttribute.Value.hashValue.getter()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

void ResolvableTextSegmentAttribute.Value.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for UUID();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>, lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, MEMORY[0x1E69E6F48]);
  v20 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys();
  v21 = v7;
  v11 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v17;
    v12 = v18;
    v22 = v8;
    v14 = a1;
    LOBYTE(v24) = 0;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v15 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 32))(v10, v15, v3);
    type metadata accessor for CodableRawRepresentable<NSAttributedStringKey>(0);
    v23 = 1;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSAttributedStringKey> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSAttributedStringKey>, protocol conformance descriptor for CodableRawRepresentable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v10[*(v22 + 20)] = v24;
    _sypSgMaTm_6(0, &lazy cache variable for type metadata for [ResolvableTextSegmentAttribute.Value.Run], &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E62F8]);
    v23 = 2;
    lazy protocol witness table accessor for type [ResolvableTextSegmentAttribute.Value.Run] and conformance <A> [A](&lazy protocol witness table cache variable for type [ResolvableTextSegmentAttribute.Value.Run] and conformance <A> [A], lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v21, v20);
    *&v10[*(v22 + 24)] = v24;
    _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v10, v16, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    __swift_destroy_boxed_opaque_existential_1(v14);
    outlined destroy of ResolvableTextSegmentAttribute.Value(v10, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ResolvableTextSegmentAttribute.Value()
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvableTextSegmentAttribute.Value(uint64_t a1)
{
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t closure #1 in static ResolvableTextSegmentAttribute.update(_:in:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, objc_class *a5, void *a6)
{
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-v12];
  v14 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1E69E7CA0];
  _sypSgWOcTm_0(a1, v21, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
  if (v22)
  {
    v19 = swift_dynamicCast();
    (*(v15 + 56))(v13, v19 ^ 1u, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v13, v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      ResolvableTextSegmentAttribute.Value.update(_:of:in:)(a2, a3, a5, a6);
      return outlined destroy of ResolvableTextSegmentAttribute.Value(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }
  }

  else
  {
    _sypSgWOhTm_8(v21, &lazy cache variable for type metadata for Any?, v18 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  return outlined destroy of ResolvableStringAttribute?(v13, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720], type metadata accessor for AttributedString.AdaptiveImageGlyph?);
}

void *static ResolvableTextSegmentAttribute.buildDynamicTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, char *a2, uint64_t *a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7, char **a8)
{
  v8 = a3[1];
  v9 = *a5;
  if ((*a5 & 0x80) != 0)
  {
    v12 = *a3;
    v13 = v8;
    v11 = v9;
    return static ResolvableTextSegmentAttribute.buildResolvableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, a2, &v12, a4 & 1, &v11, a6, a7, a8);
  }

  else
  {
    v12 = *a3;
    v13 = v8;
    v11 = v9;
    return static ResolvableTextSegmentAttribute.buildUpdatableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, a2, &v12, a4 & 1, &v11, a6, a7, a8);
  }
}

void *static ResolvableTextSegmentAttribute.buildResolvableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, char *a2, uint64_t a3, int a4, void **a5, uint64_t a6, uint64_t a7, char **a8)
{
  v126 = a2;
  v127 = a8;
  LODWORD(v125) = a4;
  v128 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  MEMORY[0x1EEE9AC00](v128);
  v116 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v112 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v112 - v16);
  v118 = type metadata accessor for PlatformAttributeResolver(0);
  MEMORY[0x1EEE9AC00](v118);
  v120 = (&v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = *a3;
  v25 = *(a3 + 8);
  v129 = *a5;
  v27 = v25;
  v121 = v19;
  v28 = *(v19 + 16);
  v123 = &v112 - v29;
  v124 = a7;
  v28(v24);
  v117 = v17;
  v122 = v27;
  if (v27)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v26, v133);

    if (*&v133[0])
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v26, v133);

      v30 = *&v133[0];
      v31 = v123;
      v32 = v127;
LABEL_4:
      v131[0] = v30;
      v33 = v124;
      LODWORD(v115) = (*(v32 + 72))(v22, v131, v124, v32);
      v34 = *(v121 + 8);
      v34(v31, v33);
      (v28)(v31, v22, v33);

      v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v35);
      if (!v36 || (value = v26, v36[9]))
      {
        type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(0, v37, v38, v39);
        *(swift_allocObject() + 72) = 0;
        _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
        value = PropertyList.Element.init(keyType:before:after:)(v41, 0, v26).value;
      }

      v42 = v128;
      v43 = v122;
      if (v122)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v26, value);
      }

      v44 = value;
      if (v115)
      {
        v45 = 256;
      }

      else
      {
        v45 = 0;
      }

      v34(v22, v124);
      v46 = *(a6 + 32) | v45;
      v47 = v44;
      *(a6 + 32) = v46;
      v27 = v43;
      goto LABEL_18;
    }

LABEL_17:
    v47 = v26;
    v42 = v128;
LABEL_18:
    v31 = v123;
    v32 = v127;
    goto LABEL_19;
  }

  v49 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v48);
  if (!v49)
  {
    goto LABEL_17;
  }

  v31 = v123;
  v32 = v127;
  if (v49[9])
  {
    v50 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v26);
    if (v50)
    {
      v30 = v50[9];
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_4;
  }

  v47 = v26;
  v42 = v128;
LABEL_19:
  *&v133[0] = v47;
  *(&v133[0] + 1) = v27;
  v131[0] = v129;

  v51 = v125;
  static ResolvableTextSegmentAttribute.buildStaticTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(v31, v126, v133, v125 & 1, v131, a6, v124, v32);
  v53 = v52;

  if (v53)
  {
    v113 = v53;
    v115 = v53;
    v54 = [v115 string];
    v55 = v27;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v56;
    v58 = v57;

    v59 = v47;
    v60 = swift_allocObject();
    *(v60 + 16) = v56;
    *(v60 + 24) = v58;
    *&v133[0] = v59;
    *(&v133[0] + 1) = v55;
    v131[0] = v129;

    v61 = v126;
    v62 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(partial apply for closure #1 in static ResolvableTextSegmentAttribute.buildResolvableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:), v60, v133, v51 & 1, v131, a6);
    v125 = v62;

    v63 = v118;
    v64 = v120;
    _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v61, v120 + *(v118 + 20), type metadata accessor for Text.Style);
    *v64 = v114;
    v64[1] = v58;
    v65 = (v64 + v63[6]);
    v66 = v122;
    *v65 = v59;
    v65[1] = v66;
    *(v64 + v63[7]) = v129;
    *(v64 + v63[8]) = v62;
    v67 = (v64 + v63[9]);
    v68 = *(a6 + 112);
    v67[6] = *(a6 + 96);
    v67[7] = v68;
    v67[8] = *(a6 + 128);
    *(v67 + 137) = *(a6 + 137);
    v69 = *(a6 + 48);
    v67[2] = *(a6 + 32);
    v67[3] = v69;
    v70 = *(a6 + 80);
    v67[4] = *(a6 + 64);
    v67[5] = v70;
    v71 = *(a6 + 16);
    *v67 = *a6;
    v67[1] = v71;
    v72 = v127;
    v73 = v127[8];
    v118 = v59;

    v74 = v124;

    (v73)(v64, v74, v72);
    v75 = v67[7];
    v76 = v67[5];
    v138 = v67[6];
    v139 = v75;
    v77 = v67[7];
    v140[0] = v67[8];
    *(v140 + 9) = *(v67 + 137);
    v78 = v67[3];
    v80 = v67[1];
    v134 = v67[2];
    v79 = v134;
    v135 = v78;
    v81 = v67[3];
    v82 = v67[5];
    v136 = v67[4];
    v83 = v136;
    v137 = v82;
    v84 = v67[1];
    v133[0] = *v67;
    v85 = v133[0];
    v133[1] = v84;
    *(a6 + 96) = v138;
    *(a6 + 112) = v77;
    *(a6 + 128) = v67[8];
    *(a6 + 137) = *(v67 + 137);
    *(a6 + 32) = v79;
    *(a6 + 48) = v81;
    *(a6 + 64) = v83;
    *(a6 + 80) = v76;
    *a6 = v85;
    *(a6 + 16) = v80;
    outlined init with copy of Text.ResolvedProperties(v133, v131);
    v114 = *(v72 + 2);
    v86 = static ResolvableStringAttributeRepresentation.attribute.getter(v74, v114);
    v87 = v115;
    v88 = [v87 length];
    v89 = v119;
    UUID.init()();
    *&v89[*(v42 + 20)] = v86;
    v130 = MEMORY[0x1E69E7CC0];
    v90 = swift_allocObject();
    *(v90 + 16) = &v130;
    v91 = swift_allocObject();
    v91[2] = partial apply for closure #1 in NSAttributedString.runs(in:);
    v91[3] = v90;
    v131[4] = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v132 = v91;
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 1107296256;
    v131[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v131[3] = &block_descriptor_51;
    v92 = _Block_copy(v131);
    v93 = v132;

    [v87 enumerateAttributesInRange:0 options:v88 usingBlock:{0, v92}];
    _Block_release(v92);
    LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

    if ((v88 & 1) == 0)
    {
      v91 = v130;

      v72 = v91[2];
      if (!v72)
      {

        v94 = MEMORY[0x1E69E7CC0];
        v72 = v87;
        v87 = v117;
        v92 = &selRef_addEffect_;
LABEL_38:
        v106 = v119;
        *&v119[*(v42 + 24)] = v94;
        _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v106, v87, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        v107 = static ResolvableStringAttributeRepresentation.attribute.getter(v74, v114);
        v93 = v123;
        v91 = &selRef_newInterpolatorWithFrom_to_options_;
        [v72 addAttribute:v107 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v72, v92[152])}];

        swift_unknownObjectRelease();
        if (one-time initialization token for resolvableTextSegment == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_47;
      }

      v115 = v87;
      v131[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
      v74 = 0;
      v94 = v131[0];
      v87 = (v91 + 6);
      v126 = v72;
      v127 = v91;
      while (v74 < v91[2])
      {
        v95 = v94;
        v96 = *(v87 - 1);
        v97 = *v87;
        v91 = *(v87 - 2);
        v92 = (v91 + v96);
        v93 = __OFADD__(v91, v96);

        if (v93)
        {
          goto LABEL_44;
        }

        if (v92 < v91)
        {
          goto LABEL_45;
        }

        if (*(v97 + 16))
        {
          v130 = MEMORY[0x1E69E7CD0];
          MEMORY[0x1EEE9AC00](v98);
          *(&v112 - 2) = v97;
          *(&v112 - 1) = &v130;
          specialized _NativeDictionary.filter(_:)(v125, closure #1 in ResolvableTextSegmentAttribute.Value.Run.init(range:oldAttributes:newAttributes:)partial apply);
          v100 = v99;

          specialized Sequence.filter(_:)(v97, v100, &v130);
          v129 = v101;
        }

        else
        {

          v100 = MEMORY[0x1E69E7CC8];
          v129 = MEMORY[0x1E69E7CC0];
        }

        v94 = v95;
        v131[0] = v95;
        v102 = v95[2];
        v103 = v94[3];
        v93 = v102 + 1;
        if (v102 >= v103 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v102 + 1, 1);
          v94 = v131[0];
        }

        ++v74;
        v94[2] = v93;
        v104 = &v94[4 * v102];
        v104[4] = v91;
        v104[5] = v92;
        v42 = v128;
        v105 = v129;
        v104[6] = v100;
        v104[7] = v105;
        v87 += 3;
        v72 = v126;
        v91 = v127;
        v92 = &selRef_addEffect_;
        if (v126 == v74)
        {

          v72 = v115;

          v74 = v124;
          v87 = v117;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    swift_once();
LABEL_39:
    v108 = static NSAttributedStringKey.resolvableTextSegment;
    _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v87, v116, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    v109 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v110 = [v72 v92[152]];

    [v72 v91[168]];
    swift_unknownObjectRelease();
    outlined destroy of ResolvableTextSegmentAttribute.Value(v87, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    outlined destroy of ResolvableTextSegmentAttribute.Value(v120, type metadata accessor for PlatformAttributeResolver);
    (*(v121 + 8))(v93, v74);

    return v113;
  }

  (*(v121 + 8))(v31, v124);

  return v53;
}

void *static ResolvableTextSegmentAttribute.buildUpdatableTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a2;
  v61 = a6;
  v59 = a4;
  v57 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v53[-v15];
  v16 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v53[-v22];
  v25 = *a3;
  v24 = *(a3 + 8);
  v58 = *a5;
  v26 = *(v16 + 16);
  v26(&v53[-v22], a1, a7, v21);
  v63 = v16;
  if (!v24)
  {

    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v39);
    if (v40 && v40[9])
    {
      v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v25);
      if (v41)
      {
        v27 = v41[9];
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_4;
    }

LABEL_17:
    value = v25;
    v37 = v61;
    goto LABEL_18;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v25, v64);

  if (!v64[0])
  {
    goto LABEL_17;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v25, v64);

  v27 = v64[0];
LABEL_4:
  v65 = v27;
  v28 = *(a8 + 72);
  v55 = a8;
  v54 = v28(v19, &v65, a7, a8);
  v29 = *(v16 + 8);
  v29(v23, a7);
  (v26)(v23, v19, a7);

  v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v30);
  if (!v31 || (value = v25, v31[9]))
  {
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(0, v32, v33, v34);
    *(swift_allocObject() + 72) = 0;
    _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    value = PropertyList.Element.init(keyType:before:after:)(v36, 0, v25).value;
  }

  v37 = v61;
  if (v24)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v25, value);
  }

  if (v54)
  {
    v38 = 256;
  }

  else
  {
    v38 = 0;
  }

  v29(v19, a7);
  *(v37 + 32) |= v38;
  v16 = v63;
  a8 = v55;
LABEL_18:
  v64[0] = value;
  v64[1] = v24;
  v65 = v58;

  static ResolvableTextSegmentAttribute.buildStaticTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(v23, v60, v64, v59 & 1, &v65, v37, a7, a8);
  v43 = v42;

  v44 = v62;
  if (v43)
  {
    v45 = *(a8 + 16);
    v46 = static ResolvableStringAttributeRepresentation.attribute.getter(a7, v45);
    v47 = v43;
    ResolvableTextSegmentAttribute.Value.init(resolvableAttributeKey:resolvedString:range:)(v47, v46, 0, 0, 1, v44);
    v48 = static ResolvableStringAttributeRepresentation.attribute.getter(a7, v45);
    [v47 addAttribute:v48 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{0, objc_msgSend(v47, sel_length)}];

    swift_unknownObjectRelease();
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      swift_once();
    }

    v49 = static NSAttributedStringKey.resolvableTextSegment;
    _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v44, v56, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    v50 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v51 = [v47 length];

    [v47 addAttribute:v49 value:v50 range:{0, v51}];
    swift_unknownObjectRelease();
    outlined destroy of ResolvableTextSegmentAttribute.Value(v44, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    v16 = v63;
  }

  (*(v16 + 8))(v23, a7);

  return v43;
}

void static ResolvableTextSegmentAttribute.buildStaticTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v82 = a8;
  v75 = a4;
  v73 = a2;
  v12 = type metadata accessor for Text.Style(0);
  v71 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = v13;
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - v15;
  v17 = type metadata accessor for AttributedString();
  v80 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = *a3;
  v26 = *(a3 + 8);
  v77 = *a5;
  v81 = v28;
  v29 = *(v28 + 16);
  v83 = &v68 - v30;
  v29(v25);
  v78 = v17;
  v79 = a6;
  if (!v26)
  {

    v45 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v44);
    if (v45 && v45[9])
    {
      v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v27);
      if (v46)
      {
        v31 = v46[9];
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_4;
    }

LABEL_17:
    value = v27;
    v43 = v83;
    v41 = v77;
    goto LABEL_18;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v27, &aBlock);

  if (!aBlock)
  {
    goto LABEL_17;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(v27, &aBlock);

  v31 = aBlock;
LABEL_4:
  v90[0] = v31;
  v32 = v83;
  LODWORD(v69) = (*(v82 + 72))(v23, v90, a7);
  v33 = *(v81 + 8);
  v33(v32, a7);
  (v29)(v32, v23, a7);

  v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(v34);
  if (!v35 || (value = v27, v35[9]))
  {
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(0, v36, v37, v38);
    *(swift_allocObject() + 72) = 0;
    _sSnySiGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, type metadata accessor for EnvironmentPropertyKey);
    value = PropertyList.Element.init(keyType:before:after:)(v40, 0, v27).value;
  }

  v41 = v77;
  if (v26)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE015TextSizeVariantK033_22A2F77020526CCA53FF38DE37184183LLVG_Ttg5(v27, value);
  }

  if (v69)
  {
    v42 = 256;
  }

  else
  {
    v42 = 0;
  }

  v33(v23, a7);
  v17 = v78;
  a6 = v79;
  *(v79 + 32) |= v42;
  v43 = v83;
LABEL_18:
  aBlock = value;
  v85 = v26;
  v90[0] = v41;

  ResolvableStringAttribute.initialResolution(in:options:properties:)(&aBlock, v90, a6, a7, v82, v16);

  v47 = v80;
  if ((*(v80 + 48))(v16, 1, v17) == 1)
  {
    (*(v81 + 8))(v43, a7);

    outlined destroy of ResolvableStringAttribute?(v16, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], type metadata accessor for AttributedString.AdaptiveImageGlyph?);
    return;
  }

  v69 = a7;
  v48 = v76;
  (*(v47 + 32))(v76, v16, v17);
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x1E696AD40);
  (*(v47 + 16))(v70, v48, v17);
  v70 = NSAttributedString.init(_:)();
  v77 = [v70 length];
  v82 = value;
  v49 = v74;
  _s7SwiftUI33ResolvableStringResolutionContextVWOcTm_0(v73, v74, type metadata accessor for Text.Style);
  v50 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v51 = v41;
  v52 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v49;
  v56 = v82;
  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v55, v54 + v50, type metadata accessor for Text.Style);
  v57 = v70;
  *(v54 + v52) = v70;
  v58 = v54 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v58 = v56;
  *(v58 + 8) = v26;
  *(v58 + 16) = v75 & 1;
  *(v54 + v53) = v51;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for closure #1 in NSMutableAttributedString.convertToPlatformStyled(style:environment:includeDefaultAttributes:options:properties:);
  *(v59 + 24) = v54;
  v88 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  v89 = v59;
  aBlock = MEMORY[0x1E69E9820];
  v85 = 1107296256;
  v86 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v87 = &block_descriptor_38;
  v60 = _Block_copy(&aBlock);
  v61 = v57;

  [v61 enumerateAttributesInRange:0 options:v77 usingBlock:{0, v60}];
  _Block_release(v60);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    return;
  }

  if (v26)
  {

    v62 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016SensitiveContentI033_7799685610985DBA9248562F2E4D5E6ELLVG_Tt1g5(v56);

    (*(v80 + 8))(v76, v78);
    (*(v81 + 8))(v83, v69);
    if ((v62 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_26:
    v67 = *(v79 + 32);
    if ((v67 & 4) == 0)
    {
      *(v79 + 32) = v67 | 4;
    }

    goto LABEL_29;
  }

  v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016SensitiveContentS0024_7799685610985DBA9248562L7E4D5E6ELLVG_Tt0g5(v56);
  v64 = v69;
  v65 = v83;
  if (v63)
  {
    v66 = *(v63 + 72);
    (*(v80 + 8))(v76, v78);
    (*(v81 + 8))(v65, v64);
    if (v66)
    {
      goto LABEL_26;
    }
  }

  else
  {
    (*(v80 + 8))(v76, v78);
    (*(v81 + 8))(v65, v64);
  }

LABEL_29:
}

uint64_t ResolvableStringAttribute.initialResolution(in:options:properties:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v33 - v13;
  v14 = type metadata accessor for ResolvableStringResolutionContext(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributeContainer();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = *a1;
  v19 = a1[1];
  v21 = *a2;
  v22 = *(a5 + 56);
  v36 = a4;
  v37 = v6;
  v22(&v40, a4, a5, v18);
  *(a3 + 32) |= v40;
  if ((v21 & 4) != 0)
  {
    v39 = 12369903;
    static String._uncheckedFromUTF8(_:)();
    AttributeContainer.init()();
    v25 = v38;
    AttributedString.init(_:attributes:)();
    v26 = type metadata accessor for AttributedString();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    if (v19)
    {

      swift_retain_n();
      v24 = v35;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v20, v35);
    }

    else
    {

      v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v28);
      v24 = v35;
      if (v29)
      {
        v30 = v29 + *(*v29 + 248);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v34, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      }

      outlined init with copy of Date?(v30, v24);
    }

    v31 = &v16[*(v14 + 24)];
    outlined assign with take of Date?(v24, v16);
    v32 = &v16[*(v14 + 20)];
    *v32 = v20;
    *(v32 + 1) = v19;
    *v31 = 0;
    v31[8] = 1;
    (*(a5 + 40))(v16, v36, a5);
    return outlined destroy of ResolvableTextSegmentAttribute.Value(v16, type metadata accessor for ResolvableStringResolutionContext);
  }
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo21NSAttributedStringKeyaypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So21iJ10Keya_ypTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAIypIsgnndzo_Tf1nc_n02_ssij22KeyaypSbIggnd_ABypSbs5W13_pIegnndzo_TRAIypSbIggnd_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  specialized LazyMapSequence.Iterator.next()(&v41);
  v12 = v41;
  if (!v41)
  {
    goto LABEL_25;
  }

  outlined init with take of Any(v42, v40);
  v13 = *a5;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for NSAttributedStringKey(0);
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = v14;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_1(v24);
    outlined init with take of Any(v40, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + 8 * v14) = v12;
  outlined init with take of Any(v40, (v22[7] + 32 * v14));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v41);
    v12 = v41;
    if (v41)
    {
      v20 = 1;
      do
      {
        outlined init with take of Any(v42, v40);
        v30 = *a5;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v33 = v30[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v30[3] < v35)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          v28 = v31;

          v29 = (v37[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_1(v29);
          outlined init with take of Any(v40, v29);
        }

        else
        {
          v37[(v31 >> 6) + 8] |= 1 << v31;
          *(v37[6] + 8 * v31) = v12;
          outlined init with take of Any(v40, (v37[7] + 32 * v31));
          v38 = v37[2];
          v18 = __OFADD__(v38, 1);
          v39 = v38 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v39;
        }

        specialized LazyMapSequence.Iterator.next()(&v41);
        v12 = v41;
      }

      while (v41);
    }

LABEL_25:
    outlined consume of Set<EventID>.Iterator._Variant(v43);

    return;
  }

LABEL_27:
  __break(1u);
}

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v23 = a4;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    outlined init with copy of Any(*(a3 + 56) + 32 * v14, v22);
    v16 = v15;
    v17 = (v23)(v16);
    __swift_destroy_boxed_opaque_existential_1(v22);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySo21NSAttributedStringKeyaypG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab11VKXEfU_So21iJ10Keya_ypTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAIypIsgnndzo_Tf1nc_n02_ssij22KeyaypSbIggnd_ABypSbs5W13_pIegnndzo_TRAIypSbIggnd_Tf1nnc_n(v9, v6, v4, a2);
      MEMORY[0x193AC4820](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v39 = MEMORY[0x1E69E7CC0];
  v10 = (v7 + 63) >> 6;
  v34 = a1 + 64;
  v37 = v10;
LABEL_6:
  v11 = v5;
  if (!v9)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = v11;
LABEL_11:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(v3 + 16);
    v14 = *(*(v4 + 48) + ((v5 << 9) | (8 * v12)));
    v15 = v14;
    if (v13)
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if (v17)
      {
        outlined init with copy of Any(*(v3 + 56) + 32 * v16, v41);
        _sypSgWOhTm_8(v41, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);

        goto LABEL_6;
      }
    }

    memset(v41, 0, 32);
    _sypSgWOhTm_8(v41, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
    v18 = *a3;
    v40 = v15;
    if (!*(*a3 + 16))
    {
      goto LABEL_28;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();

    String.hash(into:)();
    v19 = Hasher._finalize()();

    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_27:

      v3 = a2;
      v4 = a1;
      v6 = v34;
LABEL_28:
      v29 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 16) + 1, 1);
        v29 = v42;
      }

      v10 = v37;
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      v33 = v29;
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v33 = v42;
      }

      *(v33 + 16) = v32 + 1;
      v39 = v33;
      *(v33 + 8 * v32 + 32) = v40;
      goto LABEL_6;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {

        goto LABEL_25;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_25:

    v11 = v5;
    v3 = a2;
    v4 = a1;
    v6 = v34;
    v10 = v37;
  }

  while (v9);
LABEL_8:
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v5);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.CodingKeys, &unk_1F0081C68, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.CodingKeys);
  }
}

void type metadata accessor for CodableRawRepresentable<NSAttributedStringKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSAttributedStringKey>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    v3 = v2;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6190];
    v7[3] = MEMORY[0x1E69E6160];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<NSAttributedStringKey>);
    }
  }
}

void lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run()
{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run, &type metadata for ResolvableTextSegmentAttribute.Value.Run, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run, &type metadata for ResolvableTextSegmentAttribute.Value.Run, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run and conformance ResolvableTextSegmentAttribute.Value.Run);
  }
}

void lazy protocol witness table accessor for type [ResolvableTextSegmentAttribute.Value.Run] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    _sypSgMaTm_6(255, &lazy cache variable for type metadata for [ResolvableTextSegmentAttribute.Value.Run], &type metadata for ResolvableTextSegmentAttribute.Value.Run, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type ResolvableTextSegmentAttribute and conformance ResolvableTextSegmentAttribute()
{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute and conformance ResolvableTextSegmentAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute, &type metadata for ResolvableTextSegmentAttribute, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute and conformance ResolvableTextSegmentAttribute);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvableTextSegmentAttribute.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = *(a2 + v8);
    *(a1 + v8) = v10;
    *(a1 + v9) = *(a2 + v9);
    v11 = v10;
  }

  return a1;
}

double destroy for ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);

  return result;
}

uint64_t initializeWithCopy for ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  *(a1 + v8) = *(a2 + v8);
  v10 = v9;

  return a1;
}

uint64_t assignWithCopy for ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t initializeWithTake for ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatformAttributeResolver(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    v15 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    v6 = a3[5];
    v86 = a1;
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = *(a2 + v6);

    if (v9 >= 2)
    {
    }

    v10 = *(v8 + 1);
    v11 = *(v8 + 2);
    *v7 = v9;
    *(v7 + 1) = v10;

    outlined copy of Text.Style.TextStyleColor(v11);
    v12 = *(v8 + 4);
    *(v7 + 3) = *(v8 + 3);
    *(v7 + 4) = v12;
    v7[40] = v8[40];
    *(v7 + 6) = *(v8 + 6);
    v7[56] = v8[56];
    *(v7 + 8) = *(v8 + 8);
    v7[72] = v8[72];
    v13 = *(v8 + 11);
    *(v7 + 2) = v11;

    if ((v13 - 1) >= 2)
    {
      *(v7 + 10) = *(v8 + 10);
      *(v7 + 11) = v13;
    }

    else
    {
      *(v7 + 5) = *(v8 + 5);
    }

    v16 = *(v8 + 13);
    if ((v16 - 1) >= 2)
    {
      *(v7 + 12) = *(v8 + 12);
      *(v7 + 13) = v16;
    }

    else
    {
      *(v7 + 6) = *(v8 + 6);
    }

    v17 = *(v8 + 22);
    if (v17 == 1)
    {
      v18 = *(v8 + 12);
      *(v7 + 11) = *(v8 + 11);
      *(v7 + 12) = v18;
      v7[208] = v8[208];
      v19 = *(v8 + 8);
      *(v7 + 7) = *(v8 + 7);
      *(v7 + 8) = v19;
      v20 = *(v8 + 10);
      *(v7 + 9) = *(v8 + 9);
      *(v7 + 10) = v20;
    }

    else
    {
      *(v7 + 14) = *(v8 + 14);
      v7[120] = v8[120];
      *(v7 + 16) = *(v8 + 16);
      v7[136] = v8[136];
      *(v7 + 18) = *(v8 + 18);
      v7[152] = v8[152];
      v7[168] = v8[168];
      *(v7 + 20) = *(v8 + 20);
      v7[192] = v8[192];
      v21 = *(v8 + 23);
      *(v7 + 22) = v17;
      *(v7 + 23) = v21;
      v7[208] = v8[208];
      *(v7 + 25) = *(v8 + 25);
    }

    v22 = *(v8 + 31);
    if (v22 == 1)
    {
      *(v7 + 216) = *(v8 + 216);
      *(v7 + 232) = *(v8 + 232);
      *(v7 + 31) = *(v8 + 31);
    }

    else
    {
      *(v7 + 108) = *(v8 + 108);
      *(v7 + 28) = *(v8 + 28);
      *(v7 + 116) = *(v8 + 116);
      *(v7 + 30) = *(v8 + 30);
      *(v7 + 31) = v22;
    }

    v23 = *(v8 + 36);
    if (v23 == 1)
    {
      v24 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v24;
      *(v7 + 36) = *(v8 + 36);
    }

    else
    {
      v7[256] = v8[256];
      *(v7 + 257) = *(v8 + 257);
      if (v23)
      {
        v25 = *(v8 + 33);
        v26 = *(v8 + 34);
        v27 = v8[280];
        outlined copy of Text.Storage(v25, v26, v27);
        *(v7 + 33) = v25;
        *(v7 + 34) = v26;
        v7[280] = v27;
        *(v7 + 36) = *(v8 + 36);
      }

      else
      {
        v28 = *(v8 + 280);
        *(v7 + 264) = *(v8 + 264);
        *(v7 + 280) = v28;
      }
    }

    v29 = *(v8 + 37);
    v30 = *(v8 + 38);
    *(v7 + 37) = v29;
    *(v7 + 38) = v30;
    *(v7 + 39) = *(v8 + 39);
    *(v7 + 160) = *(v8 + 160);
    v31 = type metadata accessor for Text.Style(0);
    v32 = *(v31 + 84);
    __dst = &v7[v32];
    v80 = v31;
    v33 = &v8[v32];
    _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
    v35 = v34;
    v36 = *(v34 - 8);
    v37 = *(v36 + 48);
    v38 = v29;

    if (v37(v33, 2, v35))
    {
      v39 = type metadata accessor for TypesettingLanguage.Storage(0);
      v40 = __dst;
      memcpy(__dst, v33, *(*(v39 - 8) + 64));
    }

    else
    {
      v41 = type metadata accessor for Locale.Language();
      v40 = __dst;
      (*(*(v41 - 8) + 16))(__dst, v33, v41);
      __dst[*(v35 + 48)] = v33[*(v35 + 48)];
      (*(v36 + 56))(__dst, 0, 2, v35);
    }

    v42 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
    v43 = &v40[v42];
    v44 = &v33[v42];
    *v43 = *v44;
    v43[8] = v44[8];
    *&v7[v80[22]] = *&v8[v80[22]];
    v45 = v80[23];
    v46 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);

    if (v48(&v8[v45], 1, v46))
    {
      type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
      memcpy(&v7[v45], &v8[v45], *(*(v49 - 8) + 64));
    }

    else
    {
      (*(v47 + 16))(&v7[v45], &v8[v45], v46);
      (*(v47 + 56))(&v7[v45], 0, 1, v46);
    }

    v50 = v80[24];
    v51 = type metadata accessor for AttributedString.TextAlignment();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(&v8[v50], 1, v51))
    {
      type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], MEMORY[0x1E69E6720]);
      memcpy(&v7[v50], &v8[v50], *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v52 + 16))(&v7[v50], &v8[v50], v51);
      (*(v52 + 56))(&v7[v50], 0, 1, v51);
    }

    v7[v80[25]] = v8[v80[25]];
    v54 = v80[26];
    v55 = type metadata accessor for AttributedString.LineHeight();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(&v8[v54], 1, v55))
    {
      type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
      memcpy(&v7[v54], &v8[v54], *(*(v57 - 8) + 64));
    }

    else
    {
      (*(v56 + 16))(&v7[v54], &v8[v54], v55);
      (*(v56 + 56))(&v7[v54], 0, 1, v55);
    }

    *&v7[v80[27]] = *&v8[v80[27]];
    v58 = a3[6];
    v59 = a3[7];
    v15 = v86;
    v60 = (v86 + v58);
    v61 = (a2 + v58);
    v81 = v61[1];
    *v60 = *v61;
    v60[1] = v81;
    *(v86 + v59) = *(a2 + v59);
    v62 = a3[9];
    *(v86 + a3[8]) = *(a2 + a3[8]);
    v63 = v86 + v62;
    v64 = a2 + v62;
    v65 = *(a2 + v62 + 16);
    *v63 = *(a2 + v62);
    *(v63 + 1) = v65;
    *(v63 + 16) = *(a2 + v62 + 32);
    v66 = *(a2 + v62 + 48);
    *(v63 + 5) = *(a2 + v62 + 40);
    *(v63 + 6) = v66;
    v67 = *(a2 + v62 + 72);
    v68 = *(a2 + v62 + 80);
    v69 = *(a2 + v62 + 88);
    v77 = *(a2 + v62 + 96);
    __dsta = *(a2 + v62 + 64);
    v83 = *(a2 + v62 + 56);
    v85 = *(a2 + v62 + 104);

    outlined copy of ResolvedTextSuffix(v83, __dsta, v67, v68, v69, v77, v85);
    *(v63 + 7) = v83;
    *(v63 + 8) = __dsta;
    *(v63 + 9) = v67;
    *(v63 + 10) = v68;
    *(v63 + 11) = v69;
    *(v63 + 12) = v77;
    v70 = *(v64 + 14);
    v71 = *(v64 + 15);
    *(v63 + 13) = v85;
    *(v63 + 14) = v70;
    v72 = *(v64 + 16);
    v73 = *(v64 + 17);
    *(v63 + 15) = v71;
    *(v63 + 16) = v72;
    v74 = *(v64 + 18);
    *(v63 + 17) = v73;
    *(v63 + 18) = v74;
    v63[152] = v64[152];

    v75 = v73;
  }

  return v15;
}

void destroy for PlatformAttributeResolver(uint64_t a1, int *a2)
{

  v4 = a1 + a2[5];
  if (*v4 >= 2uLL)
  {
  }

  outlined consume of Gradient.ProviderTag(*(v4 + 16));

  if ((*(v4 + 88) - 1) >= 2)
  {
  }

  if ((*(v4 + 104) - 1) >= 2)
  {
  }

  if (*(v4 + 176) != 1)
  {
  }

  if (*(v4 + 248) != 1)
  {
  }

  if (*(v4 + 288) >= 2uLL)
  {
    outlined consume of Text.Storage(*(v4 + 264), *(v4 + 272), *(v4 + 280));
  }

  v5 = type metadata accessor for Text.Style(0);
  v6 = v5[21];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  if (!(*(*(v7 - 8) + 48))(v4 + v6, 2, v7))
  {
    v8 = type metadata accessor for Locale.Language();
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  v9 = v5[23];
  v10 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v5[24];
  v13 = type metadata accessor for AttributedString.TextAlignment();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v15 = v5[26];
  v16 = type metadata accessor for AttributedString.LineHeight();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v4 + v15, 1, v16))
  {
    (*(v17 + 8))(v4 + v15, v16);
  }

  v18 = a1 + a2[9];

  outlined consume of ResolvedTextSuffix(*(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80), *(v18 + 88), *(v18 + 96), *(v18 + 104));

  v19 = *(v18 + 136);
}

void *initializeWithCopy for PlatformAttributeResolver(void *a1, void *a2, int *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a3[5];
  v83 = a1;
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = *(a2 + v5);

  if (v8 >= 2)
  {
  }

  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  *v6 = v8;
  *(v6 + 1) = v9;

  outlined copy of Text.Style.TextStyleColor(v10);
  v11 = *(v7 + 4);
  *(v6 + 3) = *(v7 + 3);
  *(v6 + 4) = v11;
  v6[40] = v7[40];
  *(v6 + 6) = *(v7 + 6);
  v6[56] = v7[56];
  *(v6 + 8) = *(v7 + 8);
  v6[72] = v7[72];
  v12 = *(v7 + 11);
  *(v6 + 2) = v10;

  if ((v12 - 1) >= 2)
  {
    *(v6 + 10) = *(v7 + 10);
    *(v6 + 11) = v12;
  }

  else
  {
    *(v6 + 5) = *(v7 + 5);
  }

  v13 = *(v7 + 13);
  if ((v13 - 1) >= 2)
  {
    *(v6 + 12) = *(v7 + 12);
    *(v6 + 13) = v13;
  }

  else
  {
    *(v6 + 6) = *(v7 + 6);
  }

  v14 = *(v7 + 22);
  if (v14 == 1)
  {
    v15 = *(v7 + 12);
    *(v6 + 11) = *(v7 + 11);
    *(v6 + 12) = v15;
    v6[208] = v7[208];
    v16 = *(v7 + 8);
    *(v6 + 7) = *(v7 + 7);
    *(v6 + 8) = v16;
    v17 = *(v7 + 10);
    *(v6 + 9) = *(v7 + 9);
    *(v6 + 10) = v17;
  }

  else
  {
    *(v6 + 14) = *(v7 + 14);
    v6[120] = v7[120];
    *(v6 + 16) = *(v7 + 16);
    v6[136] = v7[136];
    *(v6 + 18) = *(v7 + 18);
    v6[152] = v7[152];
    v6[168] = v7[168];
    *(v6 + 20) = *(v7 + 20);
    v6[192] = v7[192];
    v18 = *(v7 + 23);
    *(v6 + 22) = v14;
    *(v6 + 23) = v18;
    v6[208] = v7[208];
    *(v6 + 25) = *(v7 + 25);
  }

  v19 = *(v7 + 31);
  if (v19 == 1)
  {
    *(v6 + 216) = *(v7 + 216);
    *(v6 + 232) = *(v7 + 232);
    *(v6 + 31) = *(v7 + 31);
  }

  else
  {
    *(v6 + 108) = *(v7 + 108);
    *(v6 + 28) = *(v7 + 28);
    *(v6 + 116) = *(v7 + 116);
    *(v6 + 30) = *(v7 + 30);
    *(v6 + 31) = v19;
  }

  v20 = *(v7 + 36);
  if (v20 == 1)
  {
    v21 = *(v7 + 17);
    *(v6 + 16) = *(v7 + 16);
    *(v6 + 17) = v21;
    *(v6 + 36) = *(v7 + 36);
  }

  else
  {
    v6[256] = v7[256];
    *(v6 + 257) = *(v7 + 257);
    if (v20)
    {
      v22 = *(v7 + 33);
      v23 = *(v7 + 34);
      v24 = v7[280];
      outlined copy of Text.Storage(v22, v23, v24);
      *(v6 + 33) = v22;
      *(v6 + 34) = v23;
      v6[280] = v24;
      *(v6 + 36) = *(v7 + 36);
    }

    else
    {
      v25 = *(v7 + 280);
      *(v6 + 264) = *(v7 + 264);
      *(v6 + 280) = v25;
    }
  }

  v26 = *(v7 + 37);
  v27 = *(v7 + 38);
  *(v6 + 37) = v26;
  *(v6 + 38) = v27;
  *(v6 + 39) = *(v7 + 39);
  *(v6 + 160) = *(v7 + 160);
  v28 = type metadata accessor for Text.Style(0);
  v29 = *(v28 + 84);
  __dst = &v6[v29];
  v77 = v28;
  v30 = &v7[v29];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v26;

  if (v34(v30, 2, v32))
  {
    v36 = type metadata accessor for TypesettingLanguage.Storage(0);
    v37 = __dst;
    memcpy(__dst, v30, *(*(v36 - 8) + 64));
  }

  else
  {
    v38 = type metadata accessor for Locale.Language();
    v37 = __dst;
    (*(*(v38 - 8) + 16))(__dst, v30, v38);
    __dst[*(v32 + 48)] = v30[*(v32 + 48)];
    (*(v33 + 56))(__dst, 0, 2, v32);
  }

  v39 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v40 = &v37[v39];
  v41 = &v30[v39];
  *v40 = *v41;
  v40[8] = v41[8];
  *&v6[v77[22]] = *&v7[v77[22]];
  v42 = v77[23];
  v43 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);

  if (v45(&v7[v42], 1, v43))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
    memcpy(&v6[v42], &v7[v42], *(*(v46 - 8) + 64));
  }

  else
  {
    (*(v44 + 16))(&v6[v42], &v7[v42], v43);
    (*(v44 + 56))(&v6[v42], 0, 1, v43);
  }

  v47 = v77[24];
  v48 = type metadata accessor for AttributedString.TextAlignment();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(&v7[v47], 1, v48))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], MEMORY[0x1E69E6720]);
    memcpy(&v6[v47], &v7[v47], *(*(v50 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(&v6[v47], &v7[v47], v48);
    (*(v49 + 56))(&v6[v47], 0, 1, v48);
  }

  v6[v77[25]] = v7[v77[25]];
  v51 = v77[26];
  v52 = type metadata accessor for AttributedString.LineHeight();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(&v7[v51], 1, v52))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v6[v51], &v7[v51], *(*(v54 - 8) + 64));
  }

  else
  {
    (*(v53 + 16))(&v6[v51], &v7[v51], v52);
    (*(v53 + 56))(&v6[v51], 0, 1, v52);
  }

  *&v6[v77[27]] = *&v7[v77[27]];
  v55 = a3[6];
  v56 = a3[7];
  v57 = (v83 + v55);
  v58 = (a2 + v55);
  v78 = v58[1];
  *v57 = *v58;
  v57[1] = v78;
  *(v83 + v56) = *(a2 + v56);
  v59 = a3[9];
  *(v83 + a3[8]) = *(a2 + a3[8]);
  v60 = v83 + v59;
  v61 = a2 + v59;
  v62 = *(a2 + v59 + 16);
  *v60 = *(a2 + v59);
  *(v60 + 1) = v62;
  *(v60 + 16) = *(a2 + v59 + 32);
  v63 = *(a2 + v59 + 48);
  *(v60 + 5) = *(a2 + v59 + 40);
  *(v60 + 6) = v63;
  v64 = *(a2 + v59 + 72);
  v65 = *(a2 + v59 + 80);
  v66 = *(a2 + v59 + 88);
  v74 = *(a2 + v59 + 96);
  __dsta = *(a2 + v59 + 64);
  v80 = *(a2 + v59 + 56);
  v82 = *(a2 + v59 + 104);

  outlined copy of ResolvedTextSuffix(v80, __dsta, v64, v65, v66, v74, v82);
  *(v60 + 7) = v80;
  *(v60 + 8) = __dsta;
  *(v60 + 9) = v64;
  *(v60 + 10) = v65;
  *(v60 + 11) = v66;
  *(v60 + 12) = v74;
  v67 = *(v61 + 14);
  v68 = *(v61 + 15);
  *(v60 + 13) = v82;
  *(v60 + 14) = v67;
  v69 = *(v61 + 16);
  v70 = *(v61 + 17);
  *(v60 + 15) = v68;
  *(v60 + 16) = v69;
  v71 = *(v61 + 18);
  *(v60 + 17) = v70;
  *(v60 + 18) = v71;
  v60[152] = v61[152];

  v72 = v70;
  return v83;
}

void *assignWithCopy for PlatformAttributeResolver(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v133 = a3;
  v134 = a2;
  v6 = a3[5];
  v135 = a1;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6);
  if (*(a1 + v6) >= 2uLL)
  {
    if (v9 >= 2)
    {
      *v7 = v9;
    }

    else
    {
      outlined destroy of Font(a1 + v6);
      *v7 = *v8;
    }
  }

  else
  {
    *v7 = v9;
    if (v9 >= 2)
    {
    }
  }

  *(v7 + 1) = *(v8 + 1);

  v10 = *(v8 + 2);
  outlined copy of Text.Style.TextStyleColor(v10);
  v11 = *(v7 + 2);
  *(v7 + 2) = v10;
  outlined consume of Gradient.ProviderTag(v11);
  *(v7 + 3) = *(v8 + 3);

  v12 = *(v8 + 4);
  v7[40] = v8[40];
  *(v7 + 4) = v12;
  v13 = *(v8 + 6);
  v7[56] = v8[56];
  *(v7 + 6) = v13;
  v14 = *(v8 + 8);
  v7[72] = v8[72];
  *(v7 + 8) = v14;
  v15 = *(v8 + 11) - 1;
  if ((*(v7 + 11) - 1) < 2)
  {
    if (v15 >= 2)
    {
      *(v7 + 10) = *(v8 + 10);
      *(v7 + 11) = *(v8 + 11);

      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v15 < 2)
  {
    outlined destroy of Text.LineStyle((v7 + 80));
LABEL_13:
    *(v7 + 5) = *(v8 + 5);
    goto LABEL_15;
  }

  *(v7 + 10) = *(v8 + 10);
  *(v7 + 11) = *(v8 + 11);

LABEL_15:
  v16 = *(v8 + 13) - 1;
  if ((*(v7 + 13) - 1) < 2)
  {
    if (v16 >= 2)
    {
      *(v7 + 12) = *(v8 + 12);
      *(v7 + 13) = *(v8 + 13);

      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (v16 < 2)
  {
    outlined destroy of Text.LineStyle((v7 + 96));
LABEL_20:
    *(v7 + 6) = *(v8 + 6);
    goto LABEL_22;
  }

  *(v7 + 12) = *(v8 + 12);
  *(v7 + 13) = *(v8 + 13);

LABEL_22:
  v17 = *(v8 + 22);
  if (*(v7 + 22) == 1)
  {
    if (v17 == 1)
    {
      v18 = *(v8 + 7);
      v19 = *(v8 + 9);
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 9) = v19;
      *(v7 + 7) = v18;
      v20 = *(v8 + 10);
      v21 = *(v8 + 11);
      v22 = *(v8 + 12);
      v7[208] = v8[208];
      *(v7 + 11) = v21;
      *(v7 + 12) = v22;
      *(v7 + 10) = v20;
    }

    else
    {
      v28 = *(v8 + 14);
      v7[120] = v8[120];
      *(v7 + 14) = v28;
      v29 = *(v8 + 16);
      v7[136] = v8[136];
      *(v7 + 16) = v29;
      v30 = *(v8 + 18);
      v7[152] = v8[152];
      *(v7 + 18) = v30;
      v31 = *(v8 + 20);
      v7[168] = v8[168];
      *(v7 + 20) = v31;
      *(v7 + 22) = *(v8 + 22);
      v32 = *(v8 + 23);
      v7[192] = v8[192];
      *(v7 + 23) = v32;
      v33 = *(v8 + 25);
      v7[208] = v8[208];
      *(v7 + 25) = v33;
    }
  }

  else if (v17 == 1)
  {
    outlined destroy of Text.Encapsulation((v7 + 112));
    v24 = *(v8 + 8);
    v23 = *(v8 + 9);
    *(v7 + 7) = *(v8 + 7);
    *(v7 + 8) = v24;
    *(v7 + 9) = v23;
    v26 = *(v8 + 11);
    v25 = *(v8 + 12);
    v27 = *(v8 + 10);
    v7[208] = v8[208];
    *(v7 + 11) = v26;
    *(v7 + 12) = v25;
    *(v7 + 10) = v27;
  }

  else
  {
    v34 = *(v8 + 14);
    v7[120] = v8[120];
    *(v7 + 14) = v34;
    v35 = *(v8 + 16);
    v7[136] = v8[136];
    *(v7 + 16) = v35;
    v36 = *(v8 + 18);
    v7[152] = v8[152];
    *(v7 + 18) = v36;
    v37 = *(v8 + 20);
    v7[168] = v8[168];
    *(v7 + 20) = v37;
    *(v7 + 22) = *(v8 + 22);

    v38 = *(v8 + 23);
    v7[192] = v8[192];
    *(v7 + 23) = v38;
    v39 = *(v8 + 25);
    v7[208] = v8[208];
    *(v7 + 25) = v39;
  }

  v40 = *(v8 + 31);
  if (*(v7 + 31) == 1)
  {
    if (v40 == 1)
    {
      v41 = *(v8 + 216);
      v42 = *(v8 + 232);
      *(v7 + 31) = *(v8 + 31);
      *(v7 + 232) = v42;
      *(v7 + 216) = v41;
    }

    else
    {
      v7[216] = v8[216];
      v7[217] = v8[217];
      v45 = *(v8 + 28);
      v7[232] = v8[232];
      *(v7 + 28) = v45;
      v7[233] = v8[233];
      *(v7 + 30) = *(v8 + 30);
      *(v7 + 31) = *(v8 + 31);
    }
  }

  else if (v40 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes((v7 + 216));
    v43 = *(v8 + 31);
    v44 = *(v8 + 232);
    *(v7 + 216) = *(v8 + 216);
    *(v7 + 232) = v44;
    *(v7 + 31) = v43;
  }

  else
  {
    v7[216] = v8[216];
    v7[217] = v8[217];
    v46 = *(v8 + 28);
    v7[232] = v8[232];
    *(v7 + 28) = v46;
    v7[233] = v8[233];
    *(v7 + 30) = *(v8 + 30);
    *(v7 + 31) = *(v8 + 31);
  }

  v47 = *(v7 + 36);
  v48 = *(v8 + 36);
  if (v47 == 1)
  {
    if (v48 == 1)
    {
      v49 = *(v8 + 16);
      v50 = *(v8 + 17);
      *(v7 + 36) = *(v8 + 36);
      *(v7 + 16) = v49;
      *(v7 + 17) = v50;
      goto LABEL_50;
    }

    v7[256] = v8[256];
    v7[257] = v8[257];
    v7[258] = v8[258];
    if (!*(v8 + 36))
    {
      v53 = *(v8 + 280);
      *(v7 + 264) = *(v8 + 264);
      *(v7 + 280) = v53;
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v48 == 1)
  {
    outlined destroy of AccessibilityTextAttributes((v7 + 256));
    v51 = *(v8 + 36);
    v52 = *(v8 + 17);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 17) = v52;
    *(v7 + 36) = v51;
    goto LABEL_50;
  }

  v7[256] = v8[256];
  v7[257] = v8[257];
  v7[258] = v8[258];
  v54 = v7 + 264;
  v55 = v8 + 264;
  v56 = *(v8 + 36);
  if (v47)
  {
    if (v56)
    {
      v57 = *(v8 + 33);
      v58 = *(v8 + 34);
      v59 = v8[280];
      outlined copy of Text.Storage(v57, v58, v59);
      v60 = *(v7 + 33);
      v61 = *(v7 + 34);
      v62 = v7[280];
      *(v7 + 33) = v57;
      *(v7 + 34) = v58;
      v7[280] = v59;
      outlined consume of Text.Storage(v60, v61, v62);
      *(v7 + 36) = *(v8 + 36);
    }

    else
    {
      outlined destroy of Text((v7 + 264));
      v66 = *(v8 + 280);
      *v54 = *v55;
      *(v7 + 280) = v66;
    }
  }

  else
  {
    if (v56)
    {
LABEL_47:
      v63 = *(v8 + 33);
      v64 = *(v8 + 34);
      v65 = v8[280];
      outlined copy of Text.Storage(v63, v64, v65);
      *(v7 + 33) = v63;
      *(v7 + 34) = v64;
      v7[280] = v65;
      *(v7 + 36) = *(v8 + 36);

      goto LABEL_50;
    }

    v67 = *(v8 + 280);
    *v54 = *v55;
    *(v7 + 280) = v67;
  }

LABEL_50:
  v68 = *(v7 + 37);
  v69 = *(v8 + 37);
  *(v7 + 37) = v69;
  v70 = v69;

  *(v7 + 38) = *(v8 + 38);

  *(v7 + 39) = *(v8 + 39);

  v7[320] = v8[320];
  v7[321] = v8[321];
  v71 = type metadata accessor for Text.Style(0);
  v72 = v71[21];
  v73 = &v7[v72];
  v74 = &v8[v72];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v76 = v75;
  v77 = *(v75 - 8);
  v78 = *(v77 + 48);
  v79 = v78(v73, 2, v75);
  v80 = v78(v74, 2, v76);
  if (v79)
  {
    if (!v80)
    {
      v81 = type metadata accessor for Locale.Language();
      (*(*(v81 - 8) + 16))(v73, v74, v81);
      v73[*(v76 + 48)] = v74[*(v76 + 48)];
      (*(v77 + 56))(v73, 0, 2, v76);
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v80)
  {
    _sypSgWOhTm_8(v73, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
LABEL_55:
    v82 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v73, v74, *(*(v82 - 8) + 64));
    goto LABEL_56;
  }

  v132 = type metadata accessor for Locale.Language();
  (*(*(v132 - 8) + 24))(v73, v74, v132);
  v73[*(v76 + 48)] = v74[*(v76 + 48)];
LABEL_56:
  v83 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v84 = &v73[v83];
  v85 = &v74[v83];
  v86 = v85[8];
  *v84 = *v85;
  v84[8] = v86;
  *&v7[v71[22]] = *&v8[v71[22]];

  v87 = v71[23];
  v88 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(&v7[v87], 1, v88);
  v92 = v90(&v8[v87], 1, v88);
  if (v91)
  {
    if (!v92)
    {
      (*(v89 + 16))(&v7[v87], &v8[v87], v88);
      (*(v89 + 56))(&v7[v87], 0, 1, v88);
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (v92)
  {
    (*(v89 + 8))(&v7[v87], v88);
LABEL_61:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
    memcpy(&v7[v87], &v8[v87], *(*(v93 - 8) + 64));
    goto LABEL_62;
  }

  (*(v89 + 24))(&v7[v87], &v8[v87], v88);
LABEL_62:
  v94 = v71[24];
  v95 = type metadata accessor for AttributedString.TextAlignment();
  v96 = *(v95 - 8);
  v97 = *(v96 + 48);
  v98 = v97(&v7[v94], 1, v95);
  v99 = v97(&v8[v94], 1, v95);
  if (v98)
  {
    if (!v99)
    {
      (*(v96 + 16))(&v7[v94], &v8[v94], v95);
      (*(v96 + 56))(&v7[v94], 0, 1, v95);
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (v99)
  {
    (*(v96 + 8))(&v7[v94], v95);
LABEL_67:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], MEMORY[0x1E69E6720]);
    memcpy(&v7[v94], &v8[v94], *(*(v100 - 8) + 64));
    goto LABEL_68;
  }

  (*(v96 + 24))(&v7[v94], &v8[v94], v95);
LABEL_68:
  v7[v71[25]] = v8[v71[25]];
  v101 = v71[26];
  v102 = type metadata accessor for AttributedString.LineHeight();
  v103 = *(v102 - 8);
  v104 = *(v103 + 48);
  v105 = v104(&v7[v101], 1, v102);
  v106 = v104(&v8[v101], 1, v102);
  if (!v105)
  {
    if (!v106)
    {
      (*(v103 + 24))(&v7[v101], &v8[v101], v102);
      goto LABEL_74;
    }

    (*(v103 + 8))(&v7[v101], v102);
    goto LABEL_73;
  }

  if (v106)
  {
LABEL_73:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v101], &v8[v101], *(*(v107 - 8) + 64));
    goto LABEL_74;
  }

  (*(v103 + 16))(&v7[v101], &v8[v101], v102);
  (*(v103 + 56))(&v7[v101], 0, 1, v102);
LABEL_74:
  *&v7[v71[27]] = *&v8[v71[27]];

  v108 = v133[6];
  v109 = v135 + v108;
  v110 = v134 + v108;
  *(v135 + v108) = *(v134 + v108);

  *(v109 + 1) = *(v110 + 1);

  *(v135 + v133[7]) = *(v134 + v133[7]);
  *(v135 + v133[8]) = *(v134 + v133[8]);

  v111 = v133[9];
  v112 = v135 + v111;
  v113 = v134 + v111;
  *v112 = *(v134 + v111);
  *(v112 + 1) = *(v134 + v111 + 8);
  *(v112 + 2) = *(v134 + v111 + 16);
  *(v112 + 3) = *(v134 + v111 + 24);
  *(v112 + 16) = *(v134 + v111 + 32);
  *(v112 + 5) = *(v134 + v111 + 40);

  *(v112 + 6) = *(v113 + 6);

  v114 = *(v113 + 7);
  v115 = *(v113 + 8);
  v116 = *(v113 + 9);
  v117 = *(v113 + 10);
  v118 = *(v113 + 11);
  v119 = *(v113 + 12);
  v120 = *(v113 + 13);
  outlined copy of ResolvedTextSuffix(v114, v115, v116, v117, v118, v119, v120);
  v121 = *(v112 + 7);
  v122 = *(v112 + 8);
  v123 = *(v112 + 9);
  v124 = *(v112 + 10);
  v125 = *(v112 + 11);
  v126 = *(v112 + 12);
  v127 = *(v112 + 13);
  *(v112 + 7) = v114;
  *(v112 + 8) = v115;
  *(v112 + 9) = v116;
  *(v112 + 10) = v117;
  *(v112 + 11) = v118;
  *(v112 + 12) = v119;
  *(v112 + 13) = v120;
  outlined consume of ResolvedTextSuffix(v121, v122, v123, v124, v125, v126, v127);
  *(v112 + 14) = *(v113 + 14);

  *(v112 + 15) = *(v113 + 15);
  *(v112 + 16) = *(v113 + 16);

  v128 = *(v112 + 17);
  v129 = *(v113 + 17);
  *(v112 + 17) = v129;
  v130 = v129;

  *(v112 + 18) = *(v113 + 18);
  v112[152] = v113[152];
  return v135;
}

_OWORD *initializeWithTake for PlatformAttributeResolver(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 16);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v7[40] = *(a2 + v6 + 40);
  *(v7 + 4) = *(a2 + v6 + 32);
  v7[56] = *(a2 + v6 + 56);
  *(v7 + 6) = *(a2 + v6 + 48);
  v7[72] = *(a2 + v6 + 72);
  *(v7 + 8) = *(a2 + v6 + 64);
  v10 = *(a2 + v6 + 96);
  *(v7 + 5) = *(a2 + v6 + 80);
  *(v7 + 6) = v10;
  v11 = *(a2 + v6 + 192);
  *(v7 + 11) = *(a2 + v6 + 176);
  *(v7 + 12) = v11;
  v7[208] = *(a2 + v6 + 208);
  v12 = *(a2 + v6 + 128);
  *(v7 + 7) = *(a2 + v6 + 112);
  *(v7 + 8) = v12;
  v13 = *(a2 + v6 + 160);
  *(v7 + 9) = *(a2 + v6 + 144);
  *(v7 + 10) = v13;
  v14 = *(a2 + v6 + 216);
  v15 = *(a2 + v6 + 232);
  *(v7 + 31) = *(a2 + v6 + 248);
  *(v7 + 232) = v15;
  *(v7 + 216) = v14;
  v16 = *(a2 + v6 + 272);
  *(v7 + 16) = *(a2 + v6 + 256);
  *(v7 + 17) = v16;
  v17 = *(a2 + v6 + 296);
  *(v7 + 36) = *(a2 + v6 + 288);
  *(v7 + 37) = v17;
  *(v7 + 19) = *(a2 + v6 + 304);
  *(v7 + 160) = *(a2 + v6 + 320);
  v18 = type metadata accessor for Text.Style(0);
  v19 = v18[21];
  v20 = &v7[v19];
  v21 = &v8[v19];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 2, v22))
  {
    v25 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = type metadata accessor for Locale.Language();
    (*(*(v26 - 8) + 32))(v20, v21, v26);
    v20[*(v23 + 48)] = v21[*(v23 + 48)];
    (*(v24 + 56))(v20, 0, 2, v23);
  }

  v27 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v28 = &v20[v27];
  v29 = &v21[v27];
  *v28 = *v29;
  v28[8] = v29[8];
  *&v7[v18[22]] = *&v8[v18[22]];
  v30 = v18[23];
  v31 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(&v8[v30], 1, v31))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
    memcpy(&v7[v30], &v8[v30], *(*(v33 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))(&v7[v30], &v8[v30], v31);
    (*(v32 + 56))(&v7[v30], 0, 1, v31);
  }

  v34 = v18[24];
  v35 = type metadata accessor for AttributedString.TextAlignment();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(&v8[v34], 1, v35))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], MEMORY[0x1E69E6720]);
    memcpy(&v7[v34], &v8[v34], *(*(v37 - 8) + 64));
  }

  else
  {
    (*(v36 + 32))(&v7[v34], &v8[v34], v35);
    (*(v36 + 56))(&v7[v34], 0, 1, v35);
  }

  v7[v18[25]] = v8[v18[25]];
  v38 = v18[26];
  v39 = type metadata accessor for AttributedString.LineHeight();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&v8[v38], 1, v39))
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v7[v38], &v8[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&v7[v38], &v8[v38], v39);
    (*(v40 + 56))(&v7[v38], 0, 1, v39);
  }

  *&v7[v18[27]] = *&v8[v18[27]];
  v42 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v42) = *(a2 + v42);
  v43 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[7];
  v44[6] = v45[6];
  v44[7] = v46;
  v44[8] = v45[8];
  *(v44 + 137) = *(v45 + 137);
  v47 = v45[3];
  v44[2] = v45[2];
  v44[3] = v47;
  v48 = v45[5];
  v44[4] = v45[4];
  v44[5] = v48;
  v49 = v45[1];
  *v44 = *v45;
  v44[1] = v49;
  return a1;
}

void *assignWithTake for PlatformAttributeResolver(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v87 = a3;
  v88 = a2;
  v7 = a3[5];
  v89 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a1 + v7);
  v11 = *(a2 + v7);
  if (v10 < 2)
  {
    goto LABEL_4;
  }

  if (v11 < 2)
  {
    outlined destroy of Font(v8);
    v11 = *v9;
LABEL_4:
    *v8 = v11;
    goto LABEL_6;
  }

  *v8 = v11;

LABEL_6:
  *(v8 + 1) = *(v9 + 1);

  v12 = *(v8 + 2);
  *(v8 + 2) = *(v9 + 2);
  outlined consume of Gradient.ProviderTag(v12);
  *(v8 + 3) = *(v9 + 3);

  *(v8 + 4) = *(v9 + 4);
  v8[40] = v9[40];
  *(v8 + 6) = *(v9 + 6);
  v8[56] = v9[56];
  *(v8 + 8) = *(v9 + 8);
  v8[72] = v9[72];
  if ((*(v8 + 11) - 1) < 2)
  {
LABEL_9:
    *(v8 + 5) = *(v9 + 5);
    goto LABEL_11;
  }

  v13 = *(v9 + 11);
  if ((v13 - 1) < 2)
  {
    outlined destroy of Text.LineStyle((v8 + 80));
    goto LABEL_9;
  }

  *(v8 + 10) = *(v9 + 10);
  *(v8 + 11) = v13;

LABEL_11:
  if ((*(v8 + 13) - 1) < 2)
  {
LABEL_14:
    *(v8 + 6) = *(v9 + 6);
    goto LABEL_16;
  }

  v14 = *(v9 + 13);
  if ((v14 - 1) < 2)
  {
    outlined destroy of Text.LineStyle((v8 + 96));
    goto LABEL_14;
  }

  *(v8 + 12) = *(v9 + 12);
  *(v8 + 13) = v14;

LABEL_16:
  if (*(v8 + 22) == 1)
  {
LABEL_19:
    v16 = *(v9 + 12);
    *(v8 + 11) = *(v9 + 11);
    *(v8 + 12) = v16;
    v8[208] = v9[208];
    v17 = *(v9 + 8);
    *(v8 + 7) = *(v9 + 7);
    *(v8 + 8) = v17;
    v18 = *(v9 + 10);
    *(v8 + 9) = *(v9 + 9);
    *(v8 + 10) = v18;
    goto LABEL_21;
  }

  v15 = *(v9 + 22);
  if (v15 == 1)
  {
    outlined destroy of Text.Encapsulation((v8 + 112));
    goto LABEL_19;
  }

  *(v8 + 14) = *(v9 + 14);
  v8[120] = v9[120];
  *(v8 + 16) = *(v9 + 16);
  v8[136] = v9[136];
  *(v8 + 18) = *(v9 + 18);
  v8[152] = v9[152];
  v8[168] = v9[168];
  *(v8 + 20) = *(v9 + 20);
  *(v8 + 22) = v15;

  *(v8 + 23) = *(v9 + 23);
  v8[192] = v9[192];
  *(v8 + 25) = *(v9 + 25);
  v8[208] = v9[208];
LABEL_21:
  if (*(v8 + 31) == 1)
  {
LABEL_24:
    *(v8 + 216) = *(v9 + 216);
    *(v8 + 232) = *(v9 + 232);
    *(v8 + 31) = *(v9 + 31);
    goto LABEL_26;
  }

  v19 = *(v9 + 31);
  if (v19 == 1)
  {
    outlined destroy of AccessibilitySpeechAttributes((v8 + 216));
    goto LABEL_24;
  }

  *(v8 + 108) = *(v9 + 108);
  *(v8 + 28) = *(v9 + 28);
  *(v8 + 116) = *(v9 + 116);
  *(v8 + 30) = *(v9 + 30);
  *(v8 + 31) = v19;

LABEL_26:
  v20 = *(v8 + 36);
  if (v20 == 1)
  {
LABEL_29:
    v22 = *(v9 + 17);
    *(v8 + 16) = *(v9 + 16);
    *(v8 + 17) = v22;
    *(v8 + 36) = *(v9 + 36);
    goto LABEL_30;
  }

  v21 = *(v9 + 36);
  if (v21 == 1)
  {
    outlined destroy of AccessibilityTextAttributes((v8 + 256));
    goto LABEL_29;
  }

  v8[256] = v9[256];
  *(v8 + 257) = *(v9 + 257);
  v79 = v8 + 264;
  v80 = v9 + 264;
  if (v20)
  {
    if (v21)
    {
      v81 = v9[280];
      v82 = *(v8 + 33);
      v83 = *(v8 + 34);
      v84 = v8[280];
      *v79 = *v80;
      v8[280] = v81;
      outlined consume of Text.Storage(v82, v83, v84);
      *(v8 + 36) = *(v9 + 36);

      goto LABEL_30;
    }

    outlined destroy of Text((v8 + 264));
  }

  v86 = *(v9 + 280);
  *v79 = *v80;
  *(v8 + 280) = v86;
LABEL_30:
  v23 = *(v8 + 37);
  *(v8 + 37) = *(v9 + 37);

  *(v8 + 38) = *(v9 + 38);

  *(v8 + 39) = *(v9 + 39);

  *(v8 + 160) = *(v9 + 160);
  v24 = type metadata accessor for Text.Style(0);
  v25 = v24[21];
  v26 = &v8[v25];
  v27 = &v9[v25];
  _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0(0, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 48);
  v32 = v31(v26, 2, v28);
  v33 = v31(v27, 2, v29);
  if (v32)
  {
    if (!v33)
    {
      v34 = type metadata accessor for Locale.Language();
      (*(*(v34 - 8) + 32))(v26, v27, v34);
      v26[*(v29 + 48)] = v27[*(v29 + 48)];
      (*(v30 + 56))(v26, 0, 2, v29);
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v33)
  {
    _sypSgWOhTm_8(v26, &lazy cache variable for type metadata for (Locale.Language, TypesettingLanguage.Flags), MEMORY[0x1E6969720], &type metadata for TypesettingLanguage.Flags, _s10Foundation6LocaleV8LanguageV_7SwiftUI011TypesettingC0V5FlagsVtMaTm_0);
LABEL_35:
    v35 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(v26, v27, *(*(v35 - 8) + 64));
    goto LABEL_36;
  }

  v85 = type metadata accessor for Locale.Language();
  (*(*(v85 - 8) + 40))(v26, v27, v85);
  v26[*(v29 + 48)] = v27[*(v29 + 48)];
LABEL_36:
  v36 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v37 = &v26[v36];
  v38 = &v27[v36];
  *v37 = *v38;
  v37[8] = v38[8];
  *&v8[v24[22]] = *&v9[v24[22]];

  v39 = v24[23];
  v40 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(&v8[v39], 1, v40);
  v44 = v42(&v9[v39], 1, v40);
  if (v43)
  {
    if (!v44)
    {
      (*(v41 + 32))(&v8[v39], &v9[v39], v40);
      (*(v41 + 56))(&v8[v39], 0, 1, v40);
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v44)
  {
    (*(v41 + 8))(&v8[v39], v40);
LABEL_41:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0], MEMORY[0x1E69E6720]);
    memcpy(&v8[v39], &v9[v39], *(*(v45 - 8) + 64));
    goto LABEL_42;
  }

  (*(v41 + 40))(&v8[v39], &v9[v39], v40);
LABEL_42:
  v46 = v24[24];
  v47 = type metadata accessor for AttributedString.TextAlignment();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v50 = v49(&v8[v46], 1, v47);
  v51 = v49(&v9[v46], 1, v47);
  if (v50)
  {
    if (!v51)
    {
      (*(v48 + 32))(&v8[v46], &v9[v46], v47);
      (*(v48 + 56))(&v8[v46], 0, 1, v47);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v51)
  {
    (*(v48 + 8))(&v8[v46], v47);
LABEL_47:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], MEMORY[0x1E69E6720]);
    memcpy(&v8[v46], &v9[v46], *(*(v52 - 8) + 64));
    goto LABEL_48;
  }

  (*(v48 + 40))(&v8[v46], &v9[v46], v47);
LABEL_48:
  v8[v24[25]] = v9[v24[25]];
  v53 = v24[26];
  v54 = type metadata accessor for AttributedString.LineHeight();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  v57 = v56(&v8[v53], 1, v54);
  v58 = v56(&v9[v53], 1, v54);
  if (!v57)
  {
    if (!v58)
    {
      (*(v55 + 40))(&v8[v53], &v9[v53], v54);
      goto LABEL_54;
    }

    (*(v55 + 8))(&v8[v53], v54);
    goto LABEL_53;
  }

  if (v58)
  {
LABEL_53:
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], MEMORY[0x1E69E6720]);
    memcpy(&v8[v53], &v9[v53], *(*(v59 - 8) + 64));
    goto LABEL_54;
  }

  (*(v55 + 32))(&v8[v53], &v9[v53], v54);
  (*(v55 + 56))(&v8[v53], 0, 1, v54);
LABEL_54:
  *&v8[v24[27]] = *&v9[v24[27]];

  v60 = v87[6];
  v61 = v89 + v60;
  v62 = v88 + v60;
  *(v89 + v60) = *(v88 + v60);

  *(v61 + 1) = *(v62 + 1);

  v63 = v87[8];
  *(v89 + v87[7]) = *(v88 + v87[7]);
  *(v89 + v63) = *(v88 + v63);

  v64 = v87[9];
  v65 = v89 + v64;
  v66 = v88 + v64;
  v67 = *(v88 + v64 + 16);
  *v65 = *(v88 + v64);
  *(v65 + 1) = v67;
  *(v65 + 16) = *(v88 + v64 + 32);
  *(v65 + 5) = *(v88 + v64 + 40);

  *(v65 + 6) = *(v66 + 6);

  v68 = *(v66 + 13);
  v69 = *(v65 + 7);
  v70 = *(v65 + 8);
  v71 = *(v65 + 9);
  v72 = *(v65 + 10);
  v73 = *(v65 + 11);
  v74 = *(v65 + 12);
  v75 = *(v65 + 13);
  *(v65 + 56) = *(v66 + 56);
  *(v65 + 72) = *(v66 + 72);
  *(v65 + 88) = *(v66 + 88);
  *(v65 + 13) = v68;
  outlined consume of ResolvedTextSuffix(v69, v70, v71, v72, v73, v74, v75);
  *(v65 + 14) = *(v66 + 14);

  v76 = *(v66 + 16);
  *(v65 + 15) = *(v66 + 15);
  *(v65 + 16) = v76;

  v77 = *(v65 + 17);
  *(v65 + 17) = *(v66 + 17);

  *(v65 + 18) = *(v66 + 18);
  v65[152] = v66[152];
  return v89;
}

uint64_t type metadata completion function for PlatformAttributeResolver(uint64_t a1)
{
  result = type metadata accessor for Text.Style(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for ResolvableTextSegmentAttribute.Value.Run(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for ResolvableTextSegmentAttribute.Value.Run(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for ResolvableTextSegmentAttribute.Value.Run(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t specialized ResolvableTextSegmentAttribute.Value.Run.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7C8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018DD7C8C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ResolvableTextSegmentAttribute.Value.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018DD7C850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936618866 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void lazy protocol witness table accessor for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for ResolvableTextSegmentAttribute.Value.Run.CodingKeys, &unk_1F0082118, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ResolvableTextSegmentAttribute.Value.Run.CodingKeys and conformance ResolvableTextSegmentAttribute.Value.Run.CodingKeys);
  }
}

void type metadata accessor for ProxyCodable<[NSAttributedStringKey]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ProxyCodable<[NSAttributedStringKey]>)
  {
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(255, &lazy cache variable for type metadata for [NSAttributedStringKey], type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type [NSAttributedStringKey] and conformance <A> [A]();
    v6 = type metadata accessor for ProxyCodable(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ProxyCodable<[NSAttributedStringKey]>);
    }
  }
}

void lazy protocol witness table accessor for type [NSAttributedStringKey] and conformance <A> [A]()
{
  if (!lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance <A> [A])
  {
    v6[3] = v0;
    v6[4] = v1;
    type metadata accessor for AttributedString.AdaptiveImageGlyph?(255, &lazy cache variable for type metadata for [NSAttributedStringKey], type metadata accessor for NSAttributedStringKey, MEMORY[0x1E69E62F8]);
    v3 = v2;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v6[0] = v4;
    swift_getWitnessTable(protocol conformance descriptor for <A> [A], v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type [NSAttributedStringKey] and conformance <A> [A]);
  }
}

void type metadata accessor for KeyedEncodingContainer<ResolvableTextSegmentAttribute.Value.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2, const char *a3)
{
  if (!*a1)
  {
    _sSnySiGMaTm_2(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v8 = a2;
    swift_getWitnessTable(a3, v6, &v8);
    atomic_store(v7, a1);
  }
}

uint64_t TypesettingConfiguration.languageAwareLineHeightRatio.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TypesettingConfiguration(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TypesettingConfiguration.languageAwareLineHeightRatio.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for TypesettingConfiguration(0);
  v5 = v1 + *(result + 20);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t static TypesettingConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = a2 + v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v6 == 1)
  {
    if (v5 == 0.0)
    {
      if (v8 != 0.0)
      {
        v9 = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v5 == 1)
    {
      if (*&v8 != 1)
      {
        v9 = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v8 <= 1uLL)
      {
        v9 = 0;
      }

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v5 != v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypesettingConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized static TypesettingLanguage.Storage.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = a2 + v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v8 == 1)
  {
    if (v7 == 0.0)
    {
      if (v10 != 0.0)
      {
        LOBYTE(v11) = 0;
      }

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v7 == 1)
    {
      if (*&v10 != 1)
      {
        LOBYTE(v11) = 0;
      }

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*&v10 <= 1uLL)
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v7 != v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static TypesettingConfigurationKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypesettingConfiguration(0);
  v3 = __swift_project_value_buffer(v2, static TypesettingConfigurationKey.defaultValue);
  return outlined init with copy of TypesettingConfiguration(v3, a1, type metadata accessor for TypesettingConfiguration);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance TypesettingConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypesettingConfiguration(0);
  v3 = __swift_project_value_buffer(v2, static TypesettingConfigurationKey.defaultValue);
  return outlined init with copy of TypesettingConfiguration(v3, a1, type metadata accessor for TypesettingConfiguration);
}

void (*EnvironmentValues.typesettingConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = *(*(type metadata accessor for TypesettingConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v6);
    v5[4] = malloc(v6);
    v5[5] = malloc(v6);
    v5[6] = malloc(v6);
    v5[7] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[8] = v7;
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA024TypesettingConfigurationG0V_Tt0B5(*v1, *(v1 + 8), v7);
  return EnvironmentValues.typesettingConfiguration.modify;
}

void EnvironmentValues.typesettingConfiguration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v2 + 16);
    outlined init with copy of TypesettingConfiguration(v3, v4, type metadata accessor for TypesettingConfiguration);
    outlined init with copy of TypesettingConfiguration(v4, v5, type metadata accessor for TypesettingConfiguration);
    v7 = *v6;
    v8 = v6[1];
    if (EnvironmentValues.bridgedEnvironmentResolver.getter())
    {
      (*(v9 + 16))(&type metadata for TypesettingConfigurationKey, *(v2 + 16), *(v2 + 32), &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
    }

    else
    {
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      outlined init with copy of TypesettingConfiguration(*(v2 + 32), v14, type metadata accessor for TypesettingConfiguration);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(v15, v14);

      outlined destroy of TypesettingConfiguration(v14, type metadata accessor for TypesettingConfiguration);
      if (v8)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024TypesettingConfigurationK0VG_Ttg5(v7, **(v2 + 16));
      }
    }

    v17 = *(v2 + 56);
    v16 = *(v2 + 64);
    v19 = *(v2 + 40);
    v18 = *(v2 + 48);
    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    outlined destroy of TypesettingConfiguration(v20, type metadata accessor for TypesettingConfiguration);
    v22 = v19;
  }

  else
  {
    v10 = *(v2 + 16);
    outlined init with copy of TypesettingConfiguration(v3, *(v2 + 56), type metadata accessor for TypesettingConfiguration);
    v11 = *v10;
    v12 = v10[1];
    if (EnvironmentValues.bridgedEnvironmentResolver.getter())
    {
      (*(v13 + 16))(&type metadata for TypesettingConfigurationKey, *(v2 + 16), *(v2 + 56), &type metadata for TypesettingConfigurationKey, &protocol witness table for TypesettingConfigurationKey);
    }

    else
    {
      v23 = *(v2 + 48);
      v24 = *(v2 + 16);
      outlined init with copy of TypesettingConfiguration(*(v2 + 56), v23, type metadata accessor for TypesettingConfiguration);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA024TypesettingConfigurationF0VG_Tt2g5(v24, v23);

      outlined destroy of TypesettingConfiguration(v23, type metadata accessor for TypesettingConfiguration);
      if (v12)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA024TypesettingConfigurationK0VG_Ttg5(v11, **(v2 + 16));
      }
    }

    v22 = *(v2 + 56);
    v16 = *(v2 + 64);
    v19 = *(v2 + 40);
    v18 = *(v2 + 48);
    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    v17 = v22;
  }

  outlined destroy of TypesettingConfiguration(v22, type metadata accessor for TypesettingConfiguration);
  outlined destroy of TypesettingConfiguration(v16, type metadata accessor for TypesettingConfiguration);
  free(v16);
  free(v17);
  free(v18);
  free(v19);
  free(v20);
  free(v21);

  free(v2);
}

uint64_t *initializeBufferWithCopyOfBuffer for TypesettingConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
    v8 = v7;
    v9 = *(v7 - 8);
    if ((*(v9 + 48))(a2, 2, v7))
    {
      v10 = type metadata accessor for TypesettingLanguage.Storage(0);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = type metadata accessor for Locale.Language();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
      (*(v9 + 56))(a1, 0, 2, v8);
    }

    v13 = *(a3 + 20);
    v14 = a1 + v13;
    v15 = a2 + v13;
    *v14 = *v15;
    v14[8] = v15[8];
  }

  return a1;
}

char *initializeWithTake for TypesettingConfiguration(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = type metadata accessor for TypesettingLanguage.Storage(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Locale.Language();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
  }

  v11 = *(a3 + 20);
  v12 = &a1[v11];
  v13 = &a2[v11];
  *v12 = *v13;
  v12[8] = v13[8];
  return a1;
}

void EnvironmentValues.backgroundProminence.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA20BackgroundProminenceVAAE0I0VG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }
}

Swift::Int BackgroundProminence.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double key path setter for EnvironmentValues.backgroundProminence : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA20BackgroundProminenceVAAE0K0VG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.backgroundProminence.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA20BackgroundProminenceVAAE0I0VG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.backgroundProminence.modify;
}

void EnvironmentValues.backgroundProminence.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA20BackgroundProminenceVAAE0K0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void lazy protocol witness table accessor for type BackgroundProminence and conformance BackgroundProminence()
{
  if (!lazy protocol witness table cache variable for type BackgroundProminence and conformance BackgroundProminence)
  {
    swift_getWitnessTable(protocol conformance descriptor for BackgroundProminence, &type metadata for BackgroundProminence, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BackgroundProminence and conformance BackgroundProminence);
  }
}

void lazy protocol witness table accessor for type BackgroundProminence.Guts and conformance BackgroundProminence.Guts()
{
  if (!lazy protocol witness table cache variable for type BackgroundProminence.Guts and conformance BackgroundProminence.Guts)
  {
    swift_getWitnessTable(protocol conformance descriptor for BackgroundProminence.Guts, &type metadata for BackgroundProminence.Guts, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BackgroundProminence.Guts and conformance BackgroundProminence.Guts);
  }
}

uint64_t TypesettingLanguageAwareLineHeightRatio.fontModifier.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0);
      if (v1 == 1)
      {
        v1 = swift_allocObject();
        *(v1 + 16) = 0;
      }

      else
      {
        v1 = swift_allocObject();
        *(v1 + 16) = 0x3FD51EB851EB851FLL;
      }
    }
  }

  else
  {
    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    return v2;
  }

  return v1;
}

void type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>)
  {
    lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier();
    v4 = type metadata accessor for AnyDynamicFontModifier(a1, &type metadata for LanguageAwareLineHeightRatioFontModifier, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>);
    }
  }
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TypesettingLanguageAwareLineHeightRatio.Storage(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == *a2;
  }

  return 0;
}

void static TypesettingLanguageAwareLineHeightRatio.custom(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if (a2 > 1.0)
  {
    a2 = 1.0;
  }

  *a1 = a2;
  *(a1 + 8) = 0;
}

uint64_t static TypesettingLanguageAwareLineHeightRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 != 0.0)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 != 1)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 <= 1uLL)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }
  }

  else
  {
    if (v2 != v3)
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TypesettingLanguageAwareLineHeightRatio(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if (v2 != v3)
    {
      LOBYTE(v4) = 1;
    }

    return (v4 & 1) == 0;
  }

  if (v2 != 0.0)
  {
    if (*&v2 == 1)
    {
      v5 = *&v3 == 1;
      goto LABEL_10;
    }

    if (*&v3 <= 1uLL)
    {
      v4 = 0;
    }

    return v4 == 1;
  }

  v5 = *&v3 == 0;
LABEL_10:
  if (!v5)
  {
    LOBYTE(v4) = 0;
  }

  return (v4 & 1) != 0;
}

void *Image.Location.bundle.getter()
{
  v1 = *v0;
  if (*v0 < 2)
  {
    return 0;
  }

  v2 = v1;
  return v1;
}

uint64_t NamedImage.Cache.decode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NamedImage.Key(a1, v14, type metadata accessor for NamedImage.Key);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of NamedImage.BitmapKey(v14, v11, type metadata accessor for NamedImage.BitmapKey);
    v26 = *(v11 + 4);
    v39 = v26;
    outlined copy of Image.Location(v26);
    NamedImage.Cache.subscript.getter(v11, &v39, &v40);
    outlined consume of Image.Location(v26);
    if (v46 == 3)
    {
      lazy protocol witness table accessor for type NamedImage.Errors and conformance NamedImage.Errors();
      swift_allocError();
      *v27 = 0;
      swift_willThrow();
      return outlined destroy of NamedImage.BitmapKey(v11, type metadata accessor for NamedImage.BitmapKey);
    }

    v22 = v44;
    v23 = v45;
    v24 = v43;
    v21 = v42;
    LOBYTE(v20) = v41;
    v19 = v40;
    result = outlined destroy of NamedImage.BitmapKey(v11, type metadata accessor for NamedImage.BitmapKey);
    goto LABEL_16;
  }

  (*(v6 + 32))(v8, v14, v5);
  os_unfair_lock_lock((v2 + 24));
  v15 = *(v2 + 48);
  if (!*(v15 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v17 & 1) == 0))
  {
    os_unfair_lock_unlock((v2 + 24));
LABEL_9:
    v28 = *(v2 + 16);
    if (v28)
    {
      v29 = *(*v28 + 88);

      v30 = v38;
      v29(&v40, v8);
      if (!v30)
      {
        v38 = 0;
        v19 = v40;
        v21 = v41;
        v24 = v42;
        os_unfair_lock_lock((v2 + 24));
        Width = CGImageGetWidth(v19);
        Height = CGImageGetHeight(v19);
        *&v47 = v19;
        BYTE8(v47) = 0;
        v48 = v21;
        v49 = Width;
        v50 = Height;
        v51 = v24;
        v37 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(v2 + 48);
        *(v2 + 48) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v47, v8, isUniquelyReferenced_nonNull_native);
        *(v2 + 48) = v40;
        os_unfair_lock_unlock((v2 + 24));
        v35 = v37;
        v22 = CGImageGetWidth(v37);
        v36 = CGImageGetHeight(v35);

        result = (*(v6 + 8))(v8, v5);
        LOBYTE(v20) = 0;
        v23 = v36;
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type NamedImage.Errors and conformance NamedImage.Errors();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }

    return (*(v6 + 8))(v8, v5);
  }

  v18 = *(v15 + 56) + 48 * v16;
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v18 + 32);
  v24 = *(v18 + 40);
  outlined copy of GraphicsImage.Contents(*v18, *(v18 + 8));
  os_unfair_lock_unlock((v2 + 24));
  if (v20 == 255)
  {
    goto LABEL_9;
  }

  result = (*(v6 + 8))(v8, v5);
LABEL_16:
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  return result;
}

uint64_t NamedImage.VectorKey.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NamedImage.VectorKey(0) + 32);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NamedImage.VectorKey.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NamedImage.VectorKey(0) + 32);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NamedImage.VectorKey.weight.setter(double a1)
{
  result = type metadata accessor for NamedImage.VectorKey(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NamedImage.VectorKey.imageScale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NamedImage.VectorKey(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NamedImage.VectorKey.imageScale.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NamedImage.VectorKey(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t NamedImage.VectorKey.pointSize.setter(double a1)
{
  result = type metadata accessor for NamedImage.VectorKey(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

id NamedImage.VectorKey.location.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for NamedImage.VectorKey(0) + 48));
  *a1 = v3;

  return outlined copy of Image.Location(v3);
}

void NamedImage.VectorKey.location.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for NamedImage.VectorKey(0) + 48);
  outlined consume of Image.Location(*(v1 + v3));
  *(v1 + v3) = v2;
}

uint64_t NamedImage.VectorKey.idiom.setter(uint64_t a1)
{
  result = type metadata accessor for NamedImage.VectorKey(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

void NamedImage.BitmapKey.catalogKey.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *NamedImage.BitmapKey.catalogKey.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

uint64_t NamedImage.BitmapKey.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void NamedImage.BitmapKey.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

id NamedImage.BitmapKey.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

void NamedImage.BitmapKey.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location(*(v1 + 32));
  *(v1 + 32) = v2;
}

uint64_t NamedImage.BitmapKey.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NamedImage.BitmapKey(0) + 36);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NamedImage.BitmapKey.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NamedImage.BitmapKey(0) + 36);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NamedImage.BitmapKey.gamut.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NamedImage.BitmapKey.gamut.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t NamedImage.BitmapKey.idiom.setter(uint64_t a1)
{
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NamedImage.BitmapKey.subtype.setter(uint64_t a1)
{
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t NamedImage.BitmapKey.horizontalSizeClass.setter(char a1)
{
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t NamedImage.BitmapKey.verticalSizeClass.setter(char a1)
{
  result = type metadata accessor for NamedImage.BitmapKey(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t NamedImage.BitmapKey.init(catalogKey:name:scale:location:layoutDirection:locale:gamut:idiom:subtype:horizontalSizeClass:verticalSizeClass:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, char a12, char a13)
{
  v16 = a1[1];
  v17 = *a4;
  v18 = *a5;
  v19 = *a7;
  *a9 = *a1;
  *(a9 + 1) = v16;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a10;
  *(a9 + 32) = v17;
  *(a9 + 40) = v18;
  v20 = type metadata accessor for NamedImage.BitmapKey(0);
  v21 = v20[9];
  v22 = type metadata accessor for Locale();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a6, v22);
  *(a9 + v20[10]) = v19;
  *(a9 + v20[11]) = a8;
  *(a9 + v20[12]) = a11;
  *(a9 + v20[13]) = a12;
  *(a9 + v20[14]) = a13;
  return result;
}

Swift::Int NamedImage.VectorKey.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NamedImage.VectorKey(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NamedImage.VectorKey(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NamedImage._BitmapInfo.unrotatedPixelSize.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 36));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

__n128 NamedImage._BitmapInfo.resizingInfo.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 NamedImage._BitmapInfo.resizingInfo.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v2 + *(a2 + 44);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

__n128 NamedImage._BitmapInfo.init(contents:scale:orientation:unrotatedPixelSize:renderingMode:resizingInfo:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v17 = *a3;
  v18 = *(a4 + 32);
  v19 = type metadata accessor for NamedImage._BitmapInfo(0, a5, a3, a4);
  v20 = v19[10];
  *(a6 + v20) = 2;
  v21 = a6 + v19[11];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 2;
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  *(a6 + v19[7]) = a7;
  *(a6 + v19[8]) = a2;
  v22 = (a6 + v19[9]);
  *v22 = a8;
  v22[1] = a9;
  *(a6 + v20) = v17;
  result = *a4;
  v24 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v24;
  *(v21 + 32) = v18;
  return result;
}

__n128 NamedImage._BitmapInfo.init<A>(_:contents:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = type metadata accessor for NamedImage._BitmapInfo(0, a3, a3, a4);
  v11 = v10[10];
  *(a5 + v11) = 2;
  v12 = a5 + v10[11];
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 2;
  (*(*(a3 - 8) + 32))(a5, a2, a3);
  v15 = type metadata accessor for NamedImage._BitmapInfo(0, v5, v13, v14);
  *(a5 + v10[7]) = *(a1 + v15[7]);
  *(a5 + v10[8]) = *(a1 + v15[8]);
  *(a5 + v10[9]) = *(a1 + v15[9]);
  *(a5 + v11) = *(a1 + v15[10]);
  v16 = a1 + v15[11];
  LOBYTE(v5) = *(v16 + 32);
  v18 = *(v16 + 16);
  v19 = *v16;
  (*(*(v15 - 1) + 8))(a1, v15);
  result = v19;
  *v12 = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = v5;
  return result;
}

void NamedImage.DecodedInfo.contents.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  outlined copy of GraphicsImage.Contents(v2, v3);
}

void NamedImage.DecodedInfo.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of GraphicsImage.Contents(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

Swift::Int NamedImage.Errors.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t NamedImage.Cache.__allocating_init(archiveDelegate:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized NamedImage.Cache.init(archiveDelegate:)(a1);

  return v2;
}

uint64_t _s7SwiftUI10NamedImageO5CacheCySo10CUICatalogC_Sb6retaintSgSo8NSBundleCcigAGSgAE4Data33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLVzYuYTXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) != 0))
  {
    outlined init with copy of NamedImage.Key(*(v4 + 56) + 8 * v5, &v9, type metadata accessor for WeakBox<CUICatalog>);
    v10 = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    result = outlined destroy of Text.Style?(&v9, &lazy cache variable for type metadata for WeakBox<CUICatalog>?, type metadata accessor for WeakBox<CUICatalog>);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    result = outlined destroy of Text.Style?(&v9, &lazy cache variable for type metadata for WeakBox<CUICatalog>?, type metadata accessor for WeakBox<CUICatalog>);
    Strong = 0;
  }

  *a3 = Strong;
  return result;
}

uint64_t NamedImage.Cache.deinit()
{

  outlined destroy of NamedImage.Cache.Data((v0 + 32));
  return v0;
}

double static NamedImage.sharedCache.getter()
{
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  return result;
}

id Image.Location.catalog.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    if (one-time initialization token for systemAssetManager != -1)
    {
      swift_once();
    }

    v2 = static Image.Location.systemAssetManager;
    goto LABEL_9;
  }

  if (v1 == 1)
  {
    if (one-time initialization token for privateSystemAssetManager != -1)
    {
      swift_once();
    }

    v2 = static Image.Location.privateSystemAssetManager;
LABEL_9:
    v3 = v2;
    return v2;
  }

  if (one-time initialization token for sharedCache != -1)
  {
    v5 = *v0;
    swift_once();
    v1 = v5;
  }

  return NamedImage.Cache.subscript.getter(v1);
}

void Image.Location.findShapeAndFillVariantName<A>(_:base:body:)(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v65 = a5;
  v66 = a4;
  v13 = type metadata accessor for Optional();
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v63 = a6;
  v64 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = *a1;
  v24 = a1[1];
  v25 = *v7;
  LOBYTE(v69) = *a1;
  BYTE1(v69) = v24;
  v61 = a2;
  v62 = a3;
  v26._countAndFlagsBits = a2;
  v26._object = a3;
  v27 = SymbolVariants.shapeVariantName(name:)(v26);
  if (v27.value._object)
  {
    v57 = a7;
    v69 = v25;
    v28 = specialized Image.Location.aliasedName(_:)(v27.value._countAndFlagsBits, v27.value._object);
    v30 = v29;

    v69 = v25;
    LOBYTE(v67) = v23;
    BYTE1(v67) = v24;
    v31 = Image.Location.fillVariant(_:name:)(&v67, v28, v30);
    if (v32)
    {
      v33 = v31;
      v34 = v32;

      v28 = v33;
      v30 = v34;
    }

    v35 = v63;
    v66(v28, v30);

    v36 = v64;
    if ((*(v64 + 48))(v17, 1, v35) != 1)
    {
      v52 = *(v36 + 32);
      v52(v22, v17, v35);
      v53 = v57;
      v52(v57, v22, v35);
      (*(v36 + 56))(v53, 0, 1, v35);
      return;
    }

    (*(v59 + 8))(v17, v60);
    a7 = v57;
  }

  v69 = v25;
  LOBYTE(v68) = v23;
  HIBYTE(v68) = v24;
  v67 = v25;
  v38 = v61;
  v37 = v62;
  v39 = specialized Image.Location.aliasedName(_:)(v61, v62);
  v41 = v40;

  v42 = Image.Location.fillVariant(_:name:)(&v68, v39, v41);
  v44 = v43;

  v45 = a7;
  if (!v44)
  {
LABEL_9:
    v69 = v25;
    v49 = specialized Image.Location.aliasedName(_:)(v38, v37);
    v51 = v50;

    v66(v49, v51);

    return;
  }

  v46 = v58;
  v66(v42, v44);

  v47 = v63;
  v48 = v64;
  if ((*(v64 + 48))(v46, 1, v63) == 1)
  {
    (*(v59 + 8))(v46, v60);
    goto LABEL_9;
  }

  v54 = *(v48 + 32);
  v55 = v56;
  v54(v56, v46, v47);
  v54(v45, v55, v47);
  (*(v48 + 56))(v45, 0, 1, v47);
}

void Image.Location.findName<A>(_:base:body:)(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v33 = a5;
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = *v7;
  if ((v19 & 4) != 0)
  {
    v22 = ((v19 & 1) == 0) | v19 & 0xFB;
  }

  else
  {
    v22 = v19;
  }

  if ((v19 & 4) != 0)
  {
    v23 = 3;
  }

  else
  {
    v23 = v20;
  }

  if ((v22 & 2) == 0)
  {
    goto LABEL_10;
  }

  v28 = v16;
  v29 = v15;
  v31 = a3;
  v32 = a7;
  v36 = 0x6873616C732ELL;
  v37 = 0xE600000000000000;
  v30 = a2;
  v34 = a2;
  v35 = a3;

  v34 = String.init<A>(_:)();
  v35 = v24;
  String.append<A>(contentsOf:)();
  v25 = v34;
  v36 = v21;
  LOBYTE(v34) = v22;
  BYTE1(v34) = v23;
  Image.Location.findShapeAndFillVariantName<A>(_:base:body:)(&v34, v25, v35, a4, v33, a6, v18);

  v26 = *(a6 - 8);
  if ((*(v26 + 48))(v18, 1, a6) == 1)
  {
    (*(v28 + 8))(v18, v29);
    a3 = v31;
    a7 = v32;
    a2 = v30;
LABEL_10:
    v36 = v21;
    LOBYTE(v34) = v22;
    BYTE1(v34) = v23;
    Image.Location.findShapeAndFillVariantName<A>(_:base:body:)(&v34, a2, a3, a4, v33, a6, a7);
    return;
  }

  v27 = v32;
  (*(v26 + 32))(v32, v18, a6);
  (*(v26 + 56))(v27, 0, 1, a6);
}

double static Image.Location.systemAssetManager.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for systemAssetManager != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static Image.Location.systemAssetManager;
  v2 = off_1ED530E10;
  v3 = off_1ED530E18;
  v4 = unk_1ED530E20;
  *a1 = static Image.Location.systemAssetManager;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;

  return result;
}

double static Image.Location.privateSystemAssetManager.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for privateSystemAssetManager != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static Image.Location.privateSystemAssetManager;
  v2 = off_1ED52C9C8;
  v3 = off_1ED52C9D0;
  v4 = unk_1ED52C9D8;
  *a1 = static Image.Location.privateSystemAssetManager;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  v5 = v1;

  return result;
}

uint64_t Image.Location.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*v1)
  {
    v9 = 1;
    return MEMORY[0x193AC11A0](v9, v5);
  }

  if (v8 == 1)
  {
    v9 = 2;
    return MEMORY[0x193AC11A0](v9, v5);
  }

  v11 = v4;
  MEMORY[0x193AC11A0](0, v5.n128_f64[0]);
  v12 = [v8 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.hash(into:)();
  return (*(v3 + 8))(v7, v11);
}

Swift::Int Image.Location.hashValue.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  Hasher.init(_seed:)();
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v7 = [v5 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v2 + 8))(v4, v1);
      return Hasher._finalize()();
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x193AC11A0](v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Image.Location(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (!*v1)
  {
    v9 = 1;
    return MEMORY[0x193AC11A0](v9, v5);
  }

  if (v8 == 1)
  {
    v9 = 2;
    return MEMORY[0x193AC11A0](v9, v5);
  }

  v11 = v4;
  MEMORY[0x193AC11A0](0, v5.n128_f64[0]);
  v12 = [v8 bundleURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.hash(into:)();
  return (*(v3 + 8))(v7, v11);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Image.Location(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = *v1;
  if (*v1)
  {
    if (v6 != 1)
    {
      MEMORY[0x193AC11A0](0);
      v8 = [v6 bundleURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.hash(into:)();
      (*(v3 + 8))(v5, v2);
      return Hasher._finalize()();
    }

    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  MEMORY[0x193AC11A0](v7);
  return Hasher._finalize()();
}

__n128 Image.NamedImageProvider.init(name:value:location:label:decorative:backupLocation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a4;
  v15 = *a5;
  v11 = a5[1].n128_u64[0];
  v12 = a5[1].n128_u64[1];
  v13 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 20) = BYTE4(a3) & 1;
  *(a8 + 24) = v10;
  outlined consume of Image.Location?(2);
  *(a8 + 32) = v13;
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  result = v15;
  *(a8 + 40) = v15;
  *(a8 + 56) = v11;
  *(a8 + 64) = v12;
  *(a8 + 72) = a6;
  return result;
}

double Image.init(decorative:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 36) = 1;
  *(v6 + 40) = v3;
  *(v6 + 48) = 2;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *&result = 0x1FFFFFFFELL;
  *(v6 + 72) = xmmword_18DD85530;
  *(v6 + 88) = 1;
  return result;
}

uint64_t Image.NamedImageProvider.name.getter()
{
  v1 = *v0;

  return v1;
}

void Image.NamedImageProvider.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Image.NamedImageProvider.value.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

id Image.NamedImageProvider.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

void Image.NamedImageProvider.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location(*(v1 + 24));
  *(v1 + 24) = v2;
}

id Image.NamedImageProvider.backupLocation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return outlined copy of Image.Location?(v2);
}

void Image.NamedImageProvider.backupLocation.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location?(*(v1 + 32));
  *(v1 + 32) = v2;
}

double Image.NamedImageProvider.label.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of AccessibilityImageLabel?(v2, v3, v4, v5);
}

__n128 Image.NamedImageProvider.label.setter(uint64_t a1)
{
  outlined consume of AccessibilityImageLabel?(v1[5], v1[6], v1[7], v1[8]);
  result = *a1;
  *(v1 + 7) = *(a1 + 16);
  *(v1 + 5) = result;
  return result;
}

double Image.init(systemName:variableValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __n128 a5)
{
  if (a4)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = *&a3;
    v8 = v7;
  }

  v12 = a4 & 1;

  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  *(v9 + 36) = v12;
  *(v9 + 40) = a5;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  result = -0.0;
  *(v9 + 72) = xmmword_18DD85510;
  *(v9 + 88) = 0;
  return result;
}

double Image.init(_:variableValue:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  type metadata accessor for LocalizedTextStorage();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 40) = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = a5;
  if (a5)
  {

    v12 = a5;
  }

  else
  {
    v13 = objc_opt_self();

    v12 = [v13 mainBundle];
  }

  v15 = a4 & 1;
  if (a4)
  {
    v16 = 0.0;
  }

  else
  {
    v14 = *&a3;
    v16 = v14;
  }

  v20 = v15;
  v17 = a5;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v16;
  *(v18 + 36) = v20;
  *(v18 + 40) = v12;
  *(v18 + 48) = 2;
  *(v18 + 56) = v10;
  result = 0.0;
  *(v18 + 64) = xmmword_18DD85550;
  *(v18 + 80) = v11;
  *(v18 + 88) = 0;
  return result;
}

uint64_t Image.init(_:variableValue:bundle:label:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v12 = a5;
  if (!a5)
  {
    v12 = [objc_opt_self() mainBundle];
  }

  v18 = a4 & 1;
  if (a4)
  {
    v19 = 0.0;
  }

  else
  {
    v17 = *&a3;
    v19 = v17;
  }

  v21 = v18;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v19;
  *(result + 36) = v21;
  *(result + 40) = v12;
  *(result + 48) = 2;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = a8 & 1;
  *(result + 80) = a9;
  *(result + 88) = 0;
  return result;
}

double Image.init(decorative:variableValue:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5 = a5;
  if (!a5)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v11 = a4 & 1;
  if (a4)
  {
    v12 = 0.0;
  }

  else
  {
    v10 = *&a3;
    v12 = v10;
  }

  v15 = v11;
  outlined consume of Image.Location?(2);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.NamedImageProvider>, lazy protocol witness table accessor for type Image.NamedImageProvider and conformance Image.NamedImageProvider, &type metadata for Image.NamedImageProvider);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = v12;
  *(v13 + 36) = v15;
  *(v13 + 40) = v5;
  *(v13 + 48) = 2;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *&result = 0x1FFFFFFFELL;
  *(v13 + 72) = xmmword_18DD85530;
  *(v13 + 88) = 1;
  return result;
}

uint64_t Image.Location.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = *v4;
  if (*v4)
  {
    if (v6 != 1)
    {
      v18 = [v6 bundlePath];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v19;

      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v3 = *(a1 + 8);
      v12 = *(a1 + 24);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[8 * v10 + 32] = v7;
    *(a1 + 24) = v8;
    v11 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v16;
  *&v13[8 * v15 + 32] = v12;
  *(a1 + 24) = v13;
  v11 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
LABEL_15:
    *(a1 + 8) = v11;
    return ProtobufEncoder.endLengthDelimited()();
  }

  __break(1u);
LABEL_25:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
  v12 = result;
LABEL_18:
  v21 = *(v12 + 16);
  v20 = *(v12 + 24);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v21 + 1;
  *(v12 + 8 * v21 + 32) = v3;
  *(a1 + 24) = v12;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v3 + 1;

    specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v16, v13, a1, v16, v13);
    if (!v2)
    {
      swift_bridgeObjectRelease_n();
      return ProtobufEncoder.endLengthDelimited()();
    }

    return swift_bridgeObjectRelease_n();
  }

  return result;
}

void Image.Location.init(from:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v7 = 2;
    while (1)
    {
      v8 = v3[3];
      if (v8)
      {
        v9 = v3[4];
        if (v5 < v9)
        {
          goto LABEL_11;
        }

        if (v9 < v5)
        {
          goto LABEL_74;
        }

        v3[3] = 0;
      }

      a1 = ProtobufDecoder.decodeVarint()(a1);
      if (v2)
      {
        goto LABEL_76;
      }

      v8 = a1;
      if (a1 < 8)
      {
LABEL_74:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
LABEL_75:
        swift_willThrow();
        outlined consume of Image.Location?(v7);
        return;
      }

LABEL_11:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        outlined consume of Image.Location?(v7);
        v29 = v8 & 7;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            a1 = ProtobufDecoder.decodeVarint()(a1);
            if (v2)
            {
              return;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v30 = v3[1] + a1;
          }

          else
          {
            if (v29 != 5)
            {
              goto LABEL_73;
            }

            v30 = v3[1] + 4;
          }

          goto LABEL_62;
        }

        if ((v8 & 7) != 0)
        {
          if (v29 != 1)
          {
            goto LABEL_73;
          }

          v30 = v3[1] + 8;
LABEL_62:
          if (v6 < v30)
          {
            goto LABEL_73;
          }

          v3[1] = v30;
          v7 = 1;
          goto LABEL_4;
        }

        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          return;
        }

        v7 = 1;
      }

      else if (v10 == 2)
      {
        outlined consume of Image.Location?(v7);
        v27 = v8 & 7;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            a1 = ProtobufDecoder.decodeVarint()(a1);
            if (v2)
            {
              return;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            v28 = v3[1] + a1;
          }

          else
          {
            if (v27 != 5)
            {
              goto LABEL_73;
            }

            v28 = v3[1] + 4;
          }

          goto LABEL_55;
        }

        if ((v8 & 7) != 0)
        {
          if (v27 != 1)
          {
            goto LABEL_73;
          }

          v28 = v3[1] + 8;
LABEL_55:
          if (v6 < v28)
          {
            goto LABEL_73;
          }

          v7 = 0;
          v3[1] = v28;
          goto LABEL_4;
        }

        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          return;
        }

        v7 = 0;
      }

      else
      {
        if (v10 == 1)
        {
          if ((v8 & 7) != 2)
          {
            goto LABEL_74;
          }

          v11 = v3[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
            v11 = isUniquelyReferenced_nonNull_native;
          }

          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          if (v14 >= v13 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
            v11 = isUniquelyReferenced_nonNull_native;
          }

          *(v11 + 16) = v14 + 1;
          *(v11 + 8 * v14 + 32) = v6;
          v3[5] = v11;
          v15 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
LABEL_76:
            outlined consume of Image.Location?(v7);
            return;
          }

          if (v15 < 0)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            __break(1u);
            v36 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v37 = *(v36 + 2);
            if (v37)
            {
              v33 = v37 - 1;
              v34 = *&v36[8 * v33 + 32];
              *(v36 + 2) = v33;
              outlined consume of Image.Location?(v7);
              v3[5] = v36;
              v3[2] = v34;
            }

            else
            {
              __break(1u);
            }

            return;
          }

          v16 = v3[1] + v15;
          if (v6 < v16)
          {
            goto LABEL_74;
          }

          v3[2] = v16;
          _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(v3);
          v19 = v3[5];
          if (!*(v19 + 2))
          {
            goto LABEL_83;
          }

          v20 = v17;
          v21 = v18;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v22 = *(v19 + 2);
            if (!v22)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
            v22 = *(v19 + 2);
            if (!v22)
            {
LABEL_71:
              __break(1u);
              break;
            }
          }

          v23 = v22 - 1;
          v6 = *&v19[8 * v23 + 32];
          *(v19 + 2) = v23;
          v3[5] = v19;
          v3[2] = v6;
          v24 = objc_allocWithZone(MEMORY[0x1E696AAE8]);

          v25 = MEMORY[0x193ABEC20](v20, v21);

          v26 = [v24 initWithPath_];

          if (!v26)
          {
            lazy protocol witness table accessor for type Image.Location.Error and conformance Image.Location.Error();
            swift_allocError();
            *v35 = v20;
            v35[1] = v21;
            goto LABEL_75;
          }

          outlined consume of Image.Location?(v7);

          v7 = v26;
          goto LABEL_4;
        }

        v31 = v8 & 7;
        if (v31 > 1)
        {
          if (v31 == 2)
          {
            a1 = ProtobufDecoder.decodeVarint()(a1);
            if (v2)
            {
              goto LABEL_76;
            }

            if ((a1 & 0x8000000000000000) != 0)
            {
              goto LABEL_86;
            }

            v32 = v3[1] + a1;
            if (v6 < v32)
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v31 != 5)
            {
              goto LABEL_74;
            }

            v32 = v3[1] + 4;
            if (v6 < v32)
            {
              goto LABEL_74;
            }
          }
        }

        else
        {
          if ((v8 & 7) == 0)
          {
            a1 = ProtobufDecoder.decodeVarint()(a1);
            if (v2)
            {
              goto LABEL_76;
            }

            goto LABEL_4;
          }

          if (v31 != 1)
          {
            goto LABEL_74;
          }

          v32 = v3[1] + 8;
          if (v6 < v32)
          {
            goto LABEL_74;
          }
        }

        v3[1] = v32;
      }

LABEL_4:
      v5 = v3[1];
      if (v5 >= v6)
      {
        v3[3] = 0;
        if (v7 == 2)
        {
          goto LABEL_73;
        }

        *a2 = v7;
        return;
      }
    }
  }

  v3[3] = 0;
LABEL_73:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

double protocol witness for ProtobufEncodableMessage.encode(to:) in conformance Image.Location.BundlePath(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];

  specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(v4, v3, a1, v4, v3);

  return result;
}

void protocol witness for ProtobufDecodableMessage.init(from:) in conformance Image.Location.BundlePath(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

double Font.Weight.glyphContinuousWeight.getter(double a1)
{
  v1 = Font.Weight.glyphWeight.getter(a1);
  if (v1 > 9)
  {
    v2 = MEMORY[0x1E6999448];
  }

  else
  {
    v2 = qword_1E7243F08[v1];
  }

  return *v2;
}

double Image.HashableScale.circleDotFillSize(pointSize:weight:)(double a1, double a2)
{
  v3 = 1 << *v2;
  if ((v3 & 0x52) != 0)
  {
    if (a2 == 0.0)
    {
      v4 = 99.61;
      return v4 * 0.01 * a1;
    }

    v5 = 99.61;
    if (a2 < 0.0)
    {
      v6 = 94.63;
LABEL_15:
      v4 = v6 + (a2 + 0.8) / 0.8 * (v5 - v6);
      return v4 * 0.01 * a1;
    }

    v7 = 106.64;
LABEL_19:
    v4 = v5 + a2 / 0.62 * (v7 - v5);
    return v4 * 0.01 * a1;
  }

  if ((v3 & 9) == 0)
  {
    if (a2 == 0.0)
    {
      v4 = 127.2;
      return v4 * 0.01 * a1;
    }

    v5 = 127.2;
    if (a2 < 0.0)
    {
      v6 = 121.66;
      goto LABEL_15;
    }

    v7 = 135.89;
    goto LABEL_19;
  }

  if (a2 != 0.0)
  {
    v5 = 78.86;
    if (a2 < 0.0)
    {
      v6 = 74.46;
      goto LABEL_15;
    }

    v7 = 83.98;
    goto LABEL_19;
  }

  v4 = 78.86;
  return v4 * 0.01 * a1;
}

double Image.HashableScale.maxRadius(diameter:)(double a1)
{
  v2 = *v1;
  v3 = a1 * 0.5;
  v4 = v2 >= 3;
  v5 = v2 - 3;
  if (v4)
  {
    if (v5 >= 3)
    {
      v9 = 1.1;
      return v3 * v9;
    }

    v6 = [objc_opt_self() standardUserDefaults];
    v7 = MEMORY[0x193ABEC20](0xD000000000000018, 0x800000018DD7CAC0);
    v8 = [v6 valueForKey_];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        v9 = v11;
        return v3 * v9;
      }
    }

    else
    {
      _sypSgWOhTm_9(v14, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    }

    v9 = 1.2;
    return v3 * v9;
  }

  return v3;
}

Swift::Int Image.HashableScale.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t closure #1 in closure #1 in RadiusAccumulator.addPath(_:)(float32x2_t *a1, unsigned __int8 a2, float64x2_t *a3)
{
  if (a2 <= 1u)
  {
    v3 = vsub_f32(vmul_n_f32(vcvt_f32_f64(*a3), a1[1].f32[0]), *a1);
    v4 = vaddv_f32(vmul_f32(v3, v3));
    if (a1[1].f32[1] < v4)
    {
      a1[1].f32[1] = v4;
    }
  }

  return 1;
}

uint64_t Image.NamedImageProvider.placeholderVectorInfo(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for NamedImage.VectorKey(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for systemAssetManager != -1)
  {
    swift_once();
  }

  v10 = static Image.Location.systemAssetManager;
  v11 = *a1;
  v12 = a1[1];
  v23[0] = *a1;
  v23[1] = v12;
  v24 = 0;
  v13 = type metadata accessor for ImageResolutionContext(0);
  outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(a1 + *(v13 + 24), v6, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
  if (v12)
  {

    swift_retain_n();
    v14 = v10;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt1g5(v11, &v22);

    v15 = v22;
  }

  else
  {
    v16 = v10;

    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S16__interfaceIdiom33_39057DDA72E946BD17E1F42CCA55F7F6LLVG_Tt0g5(v17);
    if (v18)
    {
      v15 = *(v18 + 72);
    }

    else
    {
      v15 = 6;
    }
  }

  v22 = v15;
  v19 = ViewGraphHost.Idiom.cuiDeviceClass.getter();
  NamedImage.VectorKey.init(name:location:in:textStyle:idiom:)(0x662E656C63726963, 0xEB000000006C6C69, &v24, v23, v6, v19, v9);
  if (one-time initialization token for sharedCache != -1)
  {
    swift_once();
  }

  NamedImage.Cache.subscript.getter(v9, v10, a2);

  return outlined destroy of NamedImage.BitmapKey(v9, type metadata accessor for NamedImage.VectorKey);
}

uint64_t Image.init(uuid:size:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = type metadata accessor for UUIDImageProvider(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 32))(v17, a1, v18);
  v19 = &v17[*(v15 + 28)];
  *v19 = a6;
  v19[1] = a7;
  v20 = &v17[*(v15 + 32)];
  *v20 = a2;
  *(v20 + 1) = a3;
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  type metadata accessor for ImageProviderBox<UUIDImageProvider>(0);
  v21 = swift_allocObject();
  outlined init with take of NamedImage.BitmapKey(v17, v21 + *(*v21 + 128), type metadata accessor for UUIDImageProvider);
  return v21;
}

uint64_t Image.ResolvedUUID.init(cgImage:scale:orientation:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t UUIDImageProvider.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *a1;
  v7 = a1[1];
  *&v84 = *a1;
  *(&v84 + 1) = v7;
  LOBYTE(v60) = 2;

  v8 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v60);

  if ((*(a1 + *(type metadata accessor for ImageResolutionContext(0) + 40)) & 2) != 0)
  {
    type metadata accessor for NamedImage.Key(0);
    v9 = swift_allocBox();
    v12 = v11;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 16))(v12, v3, v13);
    swift_storeEnumTagMultiPayload();
    v10 = 5;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDE3FC0;
    *(v9 + 32) = 2143289344;
    v10 = 4;
  }

  v14 = type metadata accessor for UUIDImageProvider(0);
  v52 = v3;
  v15 = (v3 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  v55 = v10;
  outlined copy of GraphicsImage.Contents?(v9, v10);
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  if (v8)
  {
    v18 = 0x3F8000003F800000;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = 2143289344;
  }

  else
  {
    v19 = 0;
  }

  v56 = (v8 & 1) == 0;
  v88 = v56;
  if (!v7)
  {
    v84 = v6;

    v28 = specialized static ShouldRedactContentKey.value(in:)(&v84);

    if (v28)
    {
      goto LABEL_12;
    }

LABEL_16:
    v23 = v9;
    v27 = v55;
    goto LABEL_17;
  }

  ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v6);

  if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v21 = *a1;
  v22 = a1[1];
  v23 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  *&v84 = v21;
  *(&v84 + 1) = v22;
  (*(*static Color.foreground + 120))(&v93, &v84);
  v24 = v96;
  v25 = v94;
  v26 = v95 * 0.16;
  *(v23 + 16) = v93;
  *(v23 + 24) = v25;
  *(v23 + 28) = v26;
  *(v23 + 32) = v24;
  outlined consume of GraphicsImage.Contents?(v9, v55);
  v27 = 4;
LABEL_17:
  *&v84 = v23;
  BYTE8(v84) = v27;
  *&v85 = 0x3FF0000000000000;
  *(&v85 + 1) = v16;
  *v86 = v17;
  v86[8] = 0;
  *&v86[12] = v18;
  *&v86[20] = v18;
  *&v86[28] = v19;
  v87[0] = v56;
  memset(&v87[8], 0, 32);
  *&v87[40] = 65794;
  v29 = (v52 + *(v14 + 24));
  v30 = v29[3];
  v54 = v19;
  v51 = v27;
  v50 = v18;
  if (v30)
  {
    v31 = v29[1];
    v32 = *v29;
    v33 = v29[2] & 1;
    outlined copy of Text.Storage(*v29, v31, v29[2] & 1);
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v33 = 0x1FFFFFFFELL;
  }

  v82 = *v87;
  v83[0] = *&v87[16];
  *(v83 + 12) = *&v87[28];
  v78 = v84;
  v79 = v85;
  v80 = *v86;
  v81 = *&v86[16];
  outlined init with copy of GraphicsImage(&v84, &v60);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL, 0);
  if (BYTE8(v84) == 2)
  {
    v37 = *(v84 + 32);
    v53 = v9;
    v38 = v33;
    v39 = v32;
    v40 = v31;
    v41 = *(v84 + 48);
    v42 = *(v84 + 16);
    outlined copy of Image.Location(v37);
    v43 = v41;
    v31 = v40;
    v32 = v39;
    v33 = v38;
    v44 = v43;
    outlined copy of Image.Location(v37);
    v45 = [v42 styleMask];
    v60 = v37;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)(v45, &v60, &v57);
    outlined consume of GraphicsImage.Contents?(v53, v55);

    outlined consume of Image.Location(v37);
    v36 = v57;
    v35 = v58;
    v34 = v59 & 0xFD;
  }

  else if (BYTE8(v84) == 255)
  {
    outlined consume of GraphicsImage.Contents?(v9, v55);
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    outlined consume of GraphicsImage.Contents?(v9, v55);
    v34 = 0;
    v36 = 0;
    v35 = (v87[0] & 1) == 0;
  }

  v77 = 1;
  v46 = v83[0];
  *(a2 + 64) = v82;
  *(a2 + 80) = v46;
  *(a2 + 96) = v83[1];
  v47 = v79;
  *a2 = v78;
  *(a2 + 16) = v47;
  v48 = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = v48;
  *(a2 + 112) = v32;
  *(a2 + 120) = v31;
  *(a2 + 128) = v33;
  *(a2 + 136) = v30;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = v30 == 0;
  *(a2 + 161) = 3;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v36;
  *(a2 + 184) = v35;
  *(a2 + 186) = v34;
  v60 = v23;
  v61 = v51;
  *v62 = *v92;
  *&v62[3] = *&v92[3];
  v63 = 0x3FF0000000000000;
  v64 = v16;
  v65 = v17;
  v66 = 0;
  v68 = v91;
  v67 = v90;
  v69 = v50;
  v70 = v50;
  v71 = v54;
  v72 = v56;
  *&v73[3] = *&v89[3];
  *v73 = *v89;
  v74 = 0u;
  v75 = 0u;
  v76 = 65794;
  return outlined destroy of GraphicsImage(&v60);
}

uint64_t Image.init(_systemName:colorPalette:)(uint64_t a1, uint64_t a2, __n128 a3)
{

  specialized Image.init(systemName:)(a1, a2, a3);
  v6 = v5;
  type metadata accessor for ImageProviderBox<Image.NamedImageProvider>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>, lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider, &type metadata for Image.RenderingModeProvider);
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = 1;
  return result;
}

uint64_t NamedImage.Key.encode(to:)(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NamedImage.BitmapKey(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NamedImage.Key(v1, v13, type metadata accessor for NamedImage.Key);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v13, v4);
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v10 = (v17 + 1);
    if (v17 >= v16 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v10;
    *&v15[8 * v17 + 32] = v14;
    *(a1 + 24) = v15;
    if (!__OFADD__(v14, 1))
    {
      *(a1 + 8) = v14 + 1;
      UUID.encode(to:)();
      v18 = (v5 + 8);
      if (!v2)
      {
        ProtobufEncoder.endLengthDelimited()();
      }

      return (*v18)(v7, v4);
    }

    __break(1u);
    goto LABEL_18;
  }

  outlined init with take of NamedImage.BitmapKey(v13, v10, type metadata accessor for NamedImage.BitmapKey);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v7 = *(a1 + 8);
  v15 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    v15 = result;
  }

  v21 = *(v15 + 2);
  v20 = *(v15 + 3);
  if (v21 >= v20 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 2) = v21 + 1;
  *&v15[8 * v21 + 32] = v7;
  *(a1 + 24) = v15;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v7 + 1;
    NamedImage.BitmapKey.encode(to:)(a1);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }

    return outlined destroy of NamedImage.BitmapKey(v10, type metadata accessor for NamedImage.BitmapKey);
  }

  return result;
}

uint64_t NamedImage.Key.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  _s7SwiftUI4TextV5StyleVSgMaTm_0(0, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for NamedImage.Key(0);
  v48 = *(v15 - 8);
  v16 = *(v48 + 56);
  v51 = v48 + 56;
  v52 = v16;
  v16(v14, 1, 1, v15);
  v17 = a1[1];
  v18 = a1[2];
  if (v17 >= v18)
  {
LABEL_49:
    a1[3] = 0;
    v40 = v49;
    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(v14, v49, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, MEMORY[0x1E69E6720], _s7SwiftUI4TextV5StyleVSgMaTm_0);
    if ((*(v48 + 48))(v40, 1, v15) == 1)
    {
      outlined destroy of Text.Style?(v40, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v41 = v14;
      return outlined destroy of Text.Style?(v41, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    }

    else
    {
      outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      return outlined init with take of NamedImage.BitmapKey(v40, v47, type metadata accessor for NamedImage.Key);
    }
  }

  v50 = v14;
  while (1)
  {
    v25 = a1[3];
    if (v25)
    {
      v26 = a1[4];
      if (v17 < v26)
      {
        goto LABEL_13;
      }

      if (v26 < v17)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v25 = ProtobufDecoder.decodeVarint()(v25);
    if (v2)
    {
      goto LABEL_53;
    }

    if (v25 < 8)
    {
LABEL_52:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
LABEL_53:
      v41 = v50;
      return outlined destroy of Text.Style?(v41, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    }

LABEL_13:
    v27 = v25 & 7;
    if (v25 >> 3 == 2)
    {
      break;
    }

    if (v25 >> 3 == 1)
    {
      if (v27 != 2)
      {
        goto LABEL_55;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
        v41 = v14;
        return outlined destroy of Text.Style?(v41, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      }

      NamedImage.BitmapKey.init(from:)(a1, v9);
      v19 = a1[5];
      if (!*(v19 + 2))
      {
        goto LABEL_62;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v20 = *(v19 + 2);
        if (!v20)
        {
          goto LABEL_63;
        }
      }

      v21 = v20 - 1;
      v18 = *&v19[8 * v21 + 32];
      *(v19 + 2) = v21;
      a1[5] = v19;
      v3 = type metadata accessor for NamedImage.Key;
      outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
      a1[2] = v18;
      swift_storeEnumTagMultiPayload();
      v52(v9, 0, 1, v15);
      v22 = MEMORY[0x1E69E6720];
      v23 = v9;
      v24 = v14;
LABEL_5:
      outlined init with take of NamedImage.VectorInfo?(v23, v24, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key, v22, _s7SwiftUI4TextV5StyleVSgMaTm_0);
      v2 = 0;
      goto LABEL_6;
    }

    if ((v25 & 7) > 1)
    {
      if (v27 == 2)
      {
        v39 = ProtobufDecoder.decodeVarint()(v25);
        if (v2)
        {
          goto LABEL_53;
        }

        if (v39 < 0)
        {
          goto LABEL_66;
        }

        v38 = a1[1] + v39;
        if (v18 < v38)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v27 != 5)
        {
          goto LABEL_52;
        }

        v38 = a1[1] + 4;
        if (v18 < v38)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_48;
    }

    if ((v25 & 7) != 0)
    {
      if (v27 != 1)
      {
        goto LABEL_52;
      }

      v38 = a1[1] + 8;
      if (v18 < v38)
      {
        goto LABEL_52;
      }

LABEL_48:
      a1[1] = v38;
      goto LABEL_6;
    }

    ProtobufDecoder.decodeVarint()(v25);
    if (v2)
    {
      goto LABEL_53;
    }

LABEL_6:
    v17 = a1[1];
    if (v17 >= v18)
    {
      goto LABEL_49;
    }
  }

  if (v27 != 2)
  {
LABEL_55:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    v41 = v14;
    return outlined destroy of Text.Style?(v41, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
  }

  v28 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1, v28);
    v28 = isUniquelyReferenced_nonNull_native;
  }

  v31 = *(v28 + 16);
  v30 = *(v28 + 24);
  v3 = (v31 + 1);
  if (v31 >= v30 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
    v28 = isUniquelyReferenced_nonNull_native;
  }

  *(v28 + 16) = v3;
  *(v28 + 8 * v31 + 32) = v18;
  a1[5] = v28;
  v32 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_53;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = a1[1] + v32;
    if (v18 < v33)
    {
      goto LABEL_52;
    }

    a1[2] = v33;
    UUID.init(from:)(a1);
    v34 = a1[5];
    if (!*(v34 + 2))
    {
      goto LABEL_64;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
    }

    v14 = v50;
    v35 = *(v34 + 2);
    if (!v35)
    {
      goto LABEL_65;
    }

    v36 = v35 - 1;
    v18 = *&v34[8 * v36 + 32];
    *(v34 + 2) = v36;
    a1[5] = v34;
    v3 = type metadata accessor for NamedImage.Key;
    outlined destroy of Text.Style?(v14, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    a1[2] = v18;
    v37 = v53;
    swift_storeEnumTagMultiPayload();
    v52(v37, 0, 1, v15);
    v22 = MEMORY[0x1E69E6720];
    v23 = v37;
    v24 = v14;
    goto LABEL_5;
  }

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
  __break(1u);
  __break(1u);
  v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v44 = *(v43 + 2);
  if (v44)
  {
LABEL_60:
    v45 = v44 - 1;
    v46 = *&v43[8 * v45 + 32];
    *(v43 + 2) = v45;
    a1[5] = v43;
    result = outlined destroy of Text.Style?(v50, &lazy cache variable for type metadata for NamedImage.Key?, type metadata accessor for NamedImage.Key);
    a1[2] = v46;
    return result;
  }

  __break(1u);
  v43 = a1[5];
  if (!*(v43 + 2))
  {
    __break(1u);
LABEL_69:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
    v43 = result;
    v44 = *(result + 16);
    if (!v44)
    {
      goto LABEL_70;
    }

    goto LABEL_60;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_69;
  }

  v44 = *(v43 + 2);
  if (v44)
  {
    goto LABEL_60;
  }

LABEL_70:
  __break(1u);
  return result;
}

void NamedImage.BitmapKey.encode(to:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = v1[1];
  v11 = a1;
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  specialized ProtobufEncoder.encodeMessage<A>(_:)(v12 | v9);
  if (!v2)
  {
    v13 = *(v3 + 1);
    if ((v13 || *(v3 + 2) != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      static String.Encoding.utf8.getter();
      v11 = String.data(using:allowLossyConversion:)();
      v13 = v14;
      (*(v6 + 8))(v8, v5);
      if (v13 >> 60 == 15)
      {
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

      specialized Data._Representation.withUnsafeBytes<A>(_:)(v11, v13, a1);
      outlined consume of Data?(v11, v13);
    }

    v15 = *(v3 + 3);
    v16 = 1.0;
    if (v15 != 1.0)
    {
      v17 = 0;
      v18 = fabs(v15);
      if (v18 >= 65536.0)
      {
        v19 = 25;
      }

      else
      {
        v19 = 29;
      }

      v11 = a1;
      ProtobufEncoder.encodeVarint(_:)(v19);
      if (v18 >= 65536.0)
      {
        v22 = *(a1 + 1);
        isUniquelyReferenced_nonNull_native = v22 + 8;
        if (__OFADD__(v22, 8))
        {
          goto LABEL_50;
        }

        if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
        {
          v11 = a1;
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v15;
        }

        else
        {
          *(a1 + 1) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v22) = v15;
        }
      }

      else
      {
        v20 = *(a1 + 1);
        isUniquelyReferenced_nonNull_native = v20 + 4;
        if (__OFADD__(v20, 4))
        {
          goto LABEL_49;
        }

        *&v15 = v15;
        if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_51;
        }

        *(a1 + 1) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v20) = LODWORD(v15);
      }
    }

    while (1)
    {
      v23 = *(v3 + 4);
      if (v23)
      {
        v11 = a1;
        specialized ProtobufEncoder.messageField<A>(_:_:)(4, v23, v16);
        if (v2)
        {
          return;
        }
      }

      if (v3[40])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x28uLL);
        ProtobufEncoder.encodeVarint(_:)(1uLL);
      }

      v24 = type metadata accessor for NamedImage.BitmapKey(0);
      if (v3[v24[10]])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x30uLL);
        ProtobufEncoder.encodeVarint(_:)(1uLL);
      }

      v25 = *&v3[v24[11]];
      if (v25)
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x38uLL);
        ProtobufEncoder.encodeVarint(_:)((2 * v25) ^ (v25 >> 63));
      }

      v26 = *&v3[v24[12]];
      if (v26)
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x40uLL);
        ProtobufEncoder.encodeVarint(_:)((2 * v26) ^ (v26 >> 63));
      }

      v27 = v3[v24[13]];
      if ((v27 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v3[v24[13]])
      {
        v11 = a1;
        ProtobufEncoder.encodeVarint(_:)(0x48uLL);
        ProtobufEncoder.encodeVarint(_:)(v27);
      }

      v28 = v3[v24[14]];
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v3[v24[14]])
      {
        ProtobufEncoder.encodeVarint(_:)(0x50uLL);
        ProtobufEncoder.encodeVarint(_:)(v28);
      }

      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v13 = *(a1 + 1);
      v11 = *(a1 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_40:
      v30 = *(v11 + 2);
      v29 = *(v11 + 3);
      v17 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v11);
        v11 = isUniquelyReferenced_nonNull_native;
      }

      *(v11 + 2) = v17;
      *&v11[8 * v30 + 32] = v13;
      *(a1 + 3) = v11;
      if (!__OFADD__(v13, 1))
      {
        *(a1 + 1) = v13 + 1;
        Locale.encode(to:)(a1);
        if (!v2)
        {
          ProtobufEncoder.endLengthDelimited()();
        }

        return;
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v11 = a1;
      v2 = v17;
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v15);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
    goto LABEL_40;
  }
}