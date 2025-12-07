uint64_t getter of styledText #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = v6;
  if (!v6)
  {
    swift_beginAccess();
    v7 = *(*(a2 + 16) + 216);
    v8 = v7;
  }

  swift_beginAccess();
  v9 = *(a2 + 16);
  swift_beginAccess();
  v10 = *(v9 + 128);
  *&v83[16] = *(v9 + 112);
  v84 = v10;
  v85 = *(v9 + 144);
  v86 = *(v9 + 160);
  v11 = *(v9 + 64);
  v80 = *(v9 + 48);
  v81 = v11;
  v12 = *(v9 + 96);
  v82 = *(v9 + 80);
  *v83 = v12;
  v13 = *(v9 + 32);
  v78 = *(v9 + 16);
  v79 = v13;
  swift_beginAccess();
  v15 = *(v9 + 168);
  v14 = *(v9 + 176);
  v17 = *(v9 + 184);
  v16 = *(v9 + 192);
  v18 = *(v9 + 224);
  v19 = *(v9 + 232);
  v21 = *(v9 + 240);
  v20 = *(v9 + 248);
  v22 = *(v9 + 256);
  v73 = *(v9 + 257);
  v74 = *(v9 + 258);
  swift_beginAccess();
  v23 = *(a3 + 16);
  v25 = *(v9 + 264);
  v24 = *(v9 + 272);
  swift_beginAccess();
  if ((v83[1] & 1) == 0 && (v23 & 0xD8) == 0 && BYTE8(v84) == 2)
  {
    v71 = v16;
    v26 = *(v9 + 200);
    v72 = *(v9 + 208);
    type metadata accessor for ResolvedStyledText.StringDrawing();
    v27 = swift_allocObject();
    v69 = v14;
    v70 = v17;
    v68 = v22;
    if ((v86 & 1) == 0)
    {
      if (v7)
      {
        v28 = v6;
        outlined init with copy of TextLayoutProperties(&v78, v77);

        if (NSAttributedString.isDynamic.getter())
        {
          v67 = v22 & 1;
LABEL_22:
          v49 = v78;
          v50 = BYTE8(v78);
          v51 = v79;
          v52 = BYTE8(v79);
          v66 = *&v83[8];
          v53 = *&v80;
          v54 = *(&v82 + 1);
          if (v7)
          {
            if (v72)
            {
              v26 = 1.0;
            }

            if (v26 == 1.0)
            {
              v55 = v7;
            }

            else
            {
              v55 = [v7 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
            }
          }

          else
          {
            if (one-time initialization token for emptyString != -1)
            {
              swift_once();
            }

            v55 = static NSAttributedString.emptyString;
          }

          v77[0] = v50;
          LOBYTE(v75[0]) = v52;
          v56 = 1.0;
          if (v72)
          {
            v56 = v53;
          }

          *(v27 + 352) = 0;
          *(v27 + 360) = v55;
          *(v27 + 368) = v49;
          *(v27 + 376) = v50;
          *(v27 + 384) = v51;
          *(v27 + 392) = v52;
          *(v27 + 400) = v56;
          *(v27 + 408) = v66;
          *(v27 + 424) = v67;
          *(v27 + 425) = v54 != 0.0;
          v57 = MEMORY[0x1E69E7CC0];
          *(v27 + 426) = v74;
          *(v27 + 432) = v57;
          *(v27 + 200) = 0;
          *(v27 + 208) = 1;
          *(v27 + 216) = v7;
          *(v27 + 224) = v18;
          *(v27 + 232) = v19;
          *(v27 + 240) = v21;
          *(v27 + 248) = v20;
          *(v27 + 256) = v68;
          *(v27 + 257) = v73;
          *(v27 + 258) = v74;
          *(v27 + 260) = v23;
          *(v27 + 264) = v25;
          *(v27 + 272) = v24;
          v58 = v84;
          *(v27 + 112) = *&v83[16];
          *(v27 + 128) = v58;
          *(v27 + 144) = v85;
          *(v27 + 160) = v86;
          v59 = v81;
          *(v27 + 48) = v80;
          *(v27 + 64) = v59;
          v60 = *v83;
          *(v27 + 80) = v82;
          *(v27 + 96) = v60;
          v61 = v79;
          *(v27 + 16) = v78;
          *(v27 + 32) = v61;
          *(v27 + 312) = 0u;
          *(v27 + 328) = 0u;
          *(v27 + 280) = 0u;
          *(v27 + 296) = 0u;
          *(v27 + 344) = 1;
          *(v27 + 168) = v15;
          *(v27 + 176) = v69;
          *(v27 + 184) = v70;
          *(v27 + 192) = v71;
          goto LABEL_34;
        }
      }

      else
      {
        v48 = v6;
        outlined init with copy of TextLayoutProperties(&v78, v77);
      }

      v67 = 0;
      goto LABEL_22;
    }

    v47 = v6;
    outlined init with copy of TextLayoutProperties(&v78, v77);

    v67 = 1;
    goto LABEL_22;
  }

  type metadata accessor for ResolvedStyledText.TextLayoutManager();
  v27 = swift_allocObject();
  *(v27 + 416) = MEMORY[0x1E69E7CC0];
  *(v27 + 424) = 0u;
  *(v27 + 440) = 0u;
  *(v27 + 456) = 0u;
  *(v27 + 472) = 0u;
  *(v27 + 488) = 512;
  if ((BYTE8(v78) & 1) != 0 || v78 != 1)
  {
    v32 = v6;
    outlined init with copy of TextLayoutProperties(&v78, v77);

    if (v7)
    {
      NSAttributedString.replacingLineBreakModes(_:)(0);
      v31 = v33;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v29 = v6;
    outlined init with copy of TextLayoutProperties(&v78, v77);
    v30 = v7;

    v31 = v7;
  }

  v34 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
  v35 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
  [v34 setDelegate_];
  [v34 setUsesFontLeading_];
  v36 = v31;
  v37 = v34;
  ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v37, v31, v75);
  v38 = v75[3];
  *(v27 + 528) = v75[2];
  *(v27 + 544) = v38;
  *(v27 + 560) = v75[4];
  v39 = v75[1];
  *(v27 + 496) = v75[0];
  *(v27 + 512) = v39;
  *(v27 + 576) = v35;
  *(v27 + 352) = 0u;
  *(v27 + 368) = 0u;
  *(v27 + 384) = 0;
  *(v27 + 392) = 0x8000000000000000;
  *(v27 + 400) = 0;
  *(v27 + 408) = MEMORY[0x1E69E7CC0];
  *(v27 + 200) = 0;
  *(v27 + 208) = 1;
  v76 = 1;
  *(v27 + 216) = v31;
  *(v27 + 224) = v18;
  *(v27 + 232) = v19;
  *(v27 + 240) = v21;
  *(v27 + 248) = v20;
  *(v27 + 256) = v22;
  *(v27 + 257) = v73;
  *(v27 + 258) = v74;
  *(v27 + 260) = v23;
  *(v27 + 264) = v25;
  *(v27 + 272) = v24;
  v40 = v84;
  *(v27 + 112) = *&v83[16];
  *(v27 + 128) = v40;
  *(v27 + 144) = v85;
  *(v27 + 160) = v86;
  v41 = v81;
  *(v27 + 48) = v80;
  *(v27 + 64) = v41;
  v42 = *v83;
  *(v27 + 80) = v82;
  *(v27 + 96) = v42;
  v43 = v79;
  *(v27 + 16) = v78;
  *(v27 + 32) = v43;
  *(v27 + 312) = 0u;
  *(v27 + 328) = 0u;
  *(v27 + 280) = 0u;
  *(v27 + 296) = 0u;
  *(v27 + 344) = 1;
  *(v27 + 168) = v15;
  *(v27 + 176) = v14;
  *(v27 + 184) = v17;
  *(v27 + 192) = v16;
  swift_beginAccess();
  v44 = *(v27 + 97);
  outlined init with copy of TextLayoutProperties(&v78, v77);
  v45 = v35;

  v46 = _TextContainer(v44);
  [v46 setLineFragmentPadding_];
  [v37 setTextContainer_];
  if ((v23 & 0xC0) != 0)
  {
    _NSTextLayoutManagerRequiresCTLine(v37);
  }

  outlined destroy of TextLayoutProperties(&v78);

LABEL_34:
  swift_beginAccess();

  v63 = ResolvedStyledText.smallerSizeVariant.getter(v62);

  ResolvedStyledText.smallerSizeVariant.setter(v63, v64);
  return v27;
}

uint64_t closure #1 in DynamicTextView.DynamicTextHelper.narrowerVariant.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, 255, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CA0];
  outlined init with copy of Any?(a1, v32, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  if (!v33)
  {
    _sypSgWOhTm_6(v32, &lazy cache variable for type metadata for Any?, v18 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    (*(v15 + 56))(v13, 1, 1, v14);
    return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v13, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  v19 = swift_dynamicCast();
  (*(v15 + 56))(v13, v19 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v13, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  _s7SwiftUI33ResolvableStringResolutionContextVWObTm_0(v13, v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  v20 = *&v17[*(v14 + 20)];
  if ([a5 attribute:v20 atIndex:a2 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute);
    if (swift_dynamicCast())
    {
      if (*(&v30 + 1))
      {
        outlined init with take of _ViewList_Elements(&v29, v32);
        v25 = a3;
        v23 = v33;
        v22 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        *&v28[0] = 1;
        v24 = *(v22 + 72);
        *(&v30 + 1) = v23;
        v31 = v22;
        __swift_allocate_boxed_opaque_existential_1(&v29);
        *a6 = (v24() | *a6) & 1;
        [a5 addAttribute:v20 value:_bridgeAnythingToObjectiveC<A>(_:)() range:{a2, v25}];
        swift_unknownObjectRelease();
        outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        return __swift_destroy_boxed_opaque_existential_1(v32);
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
    }

    outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
  }

  else
  {
    outlined destroy of Date?(v17, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    _sypSgWOhTm_6(v28, &lazy cache variable for type metadata for Any?, v18 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
  }

  return _sypSgWOhTm_6(&v29, &lazy cache variable for type metadata for ResolvableStringAttribute?, &lazy cache variable for type metadata for ResolvableStringAttribute, &protocol descriptor for ResolvableStringAttribute, type metadata accessor for ScrollStateRequest?);
}

uint64_t protocol witness for SizeFittingTextResolver.value(for:) in conformance DynamicTextView.DynamicTextHelper@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DynamicTextView.DynamicTextHelper.value(for:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

double DynamicTextView.DynamicTextEnvironment.updateValue()(double a1)
{
  v2 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for DynamicTextView.DynamicTextEnvironment(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v45 - v12;
  Value = AGGraphGetValue();
  v15 = Value[1];
  *&v54 = *Value;
  v16 = v54;
  *(&v54 + 1) = v15;
  v17 = *(v2 + 8);

  v49 = v16;

  v50 = v17;
  v18 = AGGraphGetValue();
  v19 = *(v8 + 16);
  v19(v13, v18, v7);
  v47 = *(v4 + 36);
  v19(v10, v2 + v47, v7);
  lazy protocol witness table accessor for type ResolvedTextFilter and conformance ResolvedTextFilter(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = v8;
  v20 = *(v8 + 8);
  v20(v10, v7);
  v20(v13, v7);
  if (v4)
  {
    goto LABEL_22;
  }

  AGGraphClearUpdate();
  outlined init with copy of ResolvableStringResolutionContext(v2, v6, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  v21 = *AGGraphGetValue();

  outlined destroy of Date?(v6, type metadata accessor for DynamicTextView.DynamicTextEnvironment);
  AGGraphSetUpdate();
  if (!v15)
  {
    v22 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v49);
    if (v22)
    {
      v23 = *(v22 + 84);
      v24 = *(v22 + 20);
      v25 = v24 | (v23 << 32);
      v26 = *(v22 + 86);
      v27 = *(v22 + 87);
      v28 = v22[11];
      v29 = *(v22 + 24);
      *&v51 = v22[9];
      BYTE12(v51) = v23;
      DWORD2(v51) = v24;
      v30 = *(v22 + 85);
      BYTE13(v51) = v30;
      BYTE14(v51) = v26;
      HIBYTE(v51) = v27;
      v52 = v28;
      v53 = v29;
      v31 = v51;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v31 = static ContentTransition.State.defaultValue;
      v25 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
      v28 = off_1ED536620;
      v51 = static ContentTransition.State.defaultValue;
      v30 = BYTE13(static ContentTransition.State.defaultValue);
      v52 = off_1ED536620;
      v53 = dword_1ED536628;
    }

    outlined copy of ContentTransition.Storage(v31, v25, v30);

    v46 = v2;
    if (v28)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v49, &v51);

  v46 = v2;
  if (!v52)
  {
LABEL_11:
    v32 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v21);
    if ((!v32 || *(v32 + 72) != 1) && HIBYTE(v51) - 1 <= 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v52 = static Animation.default;
    }
  }

LABEL_17:
  v45[1] = v21;
  v33 = v51;
  v34 = DWORD2(v51) | (BYTE12(v51) << 32);
  v35 = BYTE13(v51);
  v36 = BYTE14(v51);
  v37 = v52;
  v38 = v53;
  v39 = HIBYTE(v51);
  v40 = v49;
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v33, v34, v35);
  v41 = 0x1000000000000;
  if (!v36)
  {
    v41 = 0;
  }

  v42 = v34 | (v35 << 40) | v41 | (v39 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(&v54, v33, v42, v37, v38);

  outlined consume of ContentTransition.Storage(v33, v34, v35);

  if (v15)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v40, v54);
  }

  outlined consume of ContentTransition.Storage(v33, v34, v35);

  v2 = v46;
LABEL_22:
  v43 = AGGraphGetValue();
  (*(v48 + 24))(v2 + v47, v43, v7);
  v51 = v54;
  AGGraphSetOutputValue();

  return result;
}

__n128 DynamicTextView.DynamicTextFrame.value.getter@<Q0>(__n128 *a2@<X8>)
{
  AGGraphGetValue();

  Value = AGGraphGetValue();
  ResolvedStyledText.frame(in:renderer:)(0, *(Value + 8), *(Value + 16));
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGPoint(0);
  v8 = AGGraphGetValue();
  v9 = *v8 - v5;
  v10 = v8[1] - v7;
  v11 = AGGraphGetValue();
  a2->n128_f64[0] = v9;
  a2->n128_f64[1] = v10;
  result = *(v11 + 8);
  a2[1] = result;
  a2[2] = result;
  return result;
}

uint64_t static ResolvedStyledText.styledText(storage:stylePadding:layoutProperties:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:links:)(void *a1, __int128 *a2, char *a3, char a4, __int16 *a5, void **a6, uint64_t *a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v13 = a8;
  v19 = a13;
  v20 = a2[7];
  *&v130[16] = a2[6];
  v131 = v20;
  v132 = a2[8];
  v133 = *(a2 + 144);
  v21 = a2[3];
  v127 = a2[2];
  v128 = v21;
  v22 = a2[5];
  v129 = a2[4];
  *v130 = v22;
  v23 = a2[1];
  v125 = *a2;
  v126 = v23;
  v90 = *a3;
  v88 = a3[1];
  v98 = *a5;
  v24 = *a6;
  v25 = a6[1];
  v95 = a6[2];
  v96 = a6[3];
  v26 = a6[4];
  v27 = a6[5];
  v28 = a6[6];
  v29 = *a7;
  v93 = *a6;
  v94 = v25;
  if ((v130[1] & 1) != 0 || (v98 & 0xD8) != 0 || *(v29 + 16))
  {
LABEL_11:
    v92 = v28;
    type metadata accessor for ResolvedStyledText.TextLayoutManager();
    v31 = swift_allocObject();
    *(v31 + 416) = MEMORY[0x1E69E7CC0];
    *(v31 + 424) = 0u;
    *(v31 + 440) = 0u;
    *(v31 + 456) = 0u;
    *(v31 + 472) = 0u;
    *(v31 + 488) = 512;
    if ((BYTE8(v125) & 1) != 0 || v125 != 1)
    {
      v33 = v19;
      v34 = v13;
      if (a1)
      {
        NSAttributedString.replacingLineBreakModes(_:)(0);
        a1 = v36;
      }
    }

    else
    {
      v33 = v19;
      v34 = v13;
      v35 = a1;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E69DB828]) init];
    v38 = [objc_allocWithZone(type metadata accessor for ResolvedStyledText.TextLayoutManager.Delegate()) init];
    [v37 setDelegate_];
    [v37 setUsesFontLeading_];
    v87 = a1;
    v39 = v37;
    ResolvedStyledText.TextLayoutManager.LayoutManager.init(layoutManager:original:)(v39, a1, v123);
    v40 = v123[3];
    *(v31 + 528) = v123[2];
    *(v31 + 544) = v40;
    *(v31 + 560) = v123[4];
    v41 = v123[1];
    *(v31 + 496) = v123[0];
    *(v31 + 512) = v41;
    v91 = v38;
    *(v31 + 576) = v38;
    *(v31 + 352) = v93;
    *(v31 + 360) = v94;
    *(v31 + 368) = v95;
    *(v31 + 376) = v96;
    *(v31 + 384) = v26;
    *(v31 + 392) = v27;
    *(v31 + 400) = v92;
    *(v31 + 408) = v29;
    *(v31 + 200) = 0;
    *(v31 + 208) = 1;
    v124 = 1;
    *(v31 + 280) = 0u;
    *(v31 + 296) = 0u;
    *(v31 + 312) = 0u;
    *(v31 + 328) = 0u;
    *(v31 + 344) = 1;
    *(v31 + 216) = a1;
    *(v31 + 224) = a9;
    *(v31 + 232) = a10;
    *(v31 + 240) = a11;
    *(v31 + 248) = a12;
    *(v31 + 256) = v90;
    *(v31 + 257) = v88;
    *(v31 + 258) = a4 & 1;
    *(v31 + 260) = v98;
    *(v31 + 264) = v34;
    *(v31 + 272) = v33;
    v42 = v126;
    *(v31 + 16) = v125;
    *(v31 + 32) = v42;
    v43 = *v130;
    *(v31 + 80) = v129;
    *(v31 + 96) = v43;
    v44 = v128;
    *(v31 + 48) = v127;
    *(v31 + 64) = v44;
    *(v31 + 160) = v133;
    v45 = v132;
    *(v31 + 128) = v131;
    *(v31 + 144) = v45;
    *(v31 + 112) = *&v130[16];
    if (a1)
    {
      v110 = 0uLL;
      v111 = 0uLL;
      v108 = 0uLL;
      v109 = 0uLL;
      v112 = 1;
      v106 = v130[24];
      v107 = v131;
      v119 = *&v130[16];
      v120 = v131;
      v121 = v132;
      v122 = v133;
      v115 = v127;
      v116 = v128;
      v117 = v129;
      v118 = *v130;
      v113 = v125;
      v114 = v126;
      outlined init with copy of TextLayoutProperties(&v125, v105);
      outlined copy of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v92);
      outlined init with copy of TextLayoutProperties(&v125, v105);

      v46 = v87;
      v47 = v91;
      v48 = v91;

      Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v46, &v108, &v113);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = v111;
      *(v31 + 312) = v110;
      *(v31 + 328) = v57;
      *(v31 + 344) = v112;
      v58 = v109;
      *(v31 + 280) = v108;
      *(v31 + 296) = v58;
      *(v31 + 168) = v50;
      *(v31 + 176) = v52;
      *(v31 + 184) = v54;
      *(v31 + 192) = v56;
    }

    else
    {
      *(v31 + 344) = 1;
      *(v31 + 168) = 0uLL;
      *(v31 + 184) = 0uLL;
      outlined copy of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v92);
      outlined init with copy of TextLayoutProperties(&v125, &v113);

      v59 = v38;

      v47 = v38;
    }

    swift_beginAccess();
    v60 = _TextContainer(*(v31 + 97));
    [v60 setLineFragmentPadding_];
    [v39 setTextContainer_];
    if ((v98 & 0x40) == 0)
    {
      if (v27 < 0)
      {
        outlined consume of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v92);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
        if ((v98 & 0x80) == 0 && !*(v29 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        outlined copy of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v92);
        v47 = v91;
        outlined consume of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v92);
        outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
      }
    }

    _NSTextLayoutManagerRequiresCTLine(v39);
LABEL_25:

    return v31;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    outlined copy of ResolvedTextSuffix(v24, v25, v95, v96, v26, v27, v28);
    v13 = a8;
    v19 = a13;
    outlined consume of ResolvedTextSuffix(v93, v94, v95, v96, v26, v27, v28);
    outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
    goto LABEL_11;
  }

  outlined consume of ResolvedTextSuffix(v24, v25, v95, v96, v26, v27, v28);
  outlined consume of ResolvedTextSuffix(0, 0, 0, 0, 0, 0x8000000000000000, 0);
  if (BYTE8(v131) != 2)
  {
    goto LABEL_11;
  }

  type metadata accessor for ResolvedStyledText.StringDrawing();
  v31 = swift_allocObject();
  if (v133)
  {
    outlined init with copy of TextLayoutProperties(&v125, &v113);
    v32 = 1;
    goto LABEL_30;
  }

  if (!a1)
  {
    outlined init with copy of TextLayoutProperties(&v125, &v113);
    goto LABEL_29;
  }

  outlined init with copy of TextLayoutProperties(&v125, &v113);
  if (!NSAttributedString.isDynamic.getter())
  {
LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  v32 = v90 & 1;
LABEL_30:
  v62 = v125;
  v63 = BYTE8(v125);
  v64 = v126;
  v65 = BYTE8(v126);
  v66 = *&v130[8];
  v67 = v127;
  v68 = *(&v129 + 1);
  if (a1)
  {
    v69 = a1;
  }

  else
  {
    v97 = *&v130[8];
    if (one-time initialization token for emptyString != -1)
    {
      swift_once();
    }

    v69 = static NSAttributedString.emptyString;
    v66 = v97;
  }

  v106 = v63;
  v124 = v65;
  *(v31 + 352) = 0;
  *(v31 + 360) = v69;
  *(v31 + 368) = v62;
  *(v31 + 376) = v63;
  *(v31 + 384) = v64;
  *(v31 + 392) = v65;
  *(v31 + 400) = v67;
  *(v31 + 408) = v66;
  *(v31 + 424) = v32;
  *(v31 + 425) = v68 != 0.0;
  *(v31 + 426) = a4 & 1;
  *(v31 + 432) = MEMORY[0x1E69E7CC0];
  *(v31 + 200) = 0;
  *(v31 + 208) = 1;
  v70 = (v31 + 280);
  v104 = 1;
  *(v31 + 216) = a1;
  *(v31 + 224) = a9;
  *(v31 + 232) = a10;
  *(v31 + 240) = a11;
  *(v31 + 248) = a12;
  *(v31 + 256) = v90;
  *(v31 + 257) = v88;
  *(v31 + 258) = a4 & 1;
  *(v31 + 260) = v98;
  *(v31 + 264) = v13;
  *(v31 + 272) = a13;
  v71 = *v130;
  *(v31 + 80) = v129;
  *(v31 + 96) = v71;
  v72 = v128;
  *(v31 + 48) = v127;
  *(v31 + 64) = v72;
  *(v31 + 160) = v133;
  v73 = v132;
  *(v31 + 128) = v131;
  *(v31 + 144) = v73;
  *(v31 + 112) = *&v130[16];
  v74 = v126;
  *(v31 + 16) = v125;
  *(v31 + 32) = v74;
  if (a1)
  {
    v101 = 0uLL;
    v102 = 0uLL;
    v99 = 0uLL;
    v100 = 0uLL;
    v103 = 1;
    LOBYTE(v123[0]) = v130[24];
    *(&v123[0] + 1) = v131;
    v119 = *&v130[16];
    v120 = v131;
    v121 = v132;
    v122 = v133;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v118 = *v130;
    v113 = v125;
    v114 = v126;
    outlined init with copy of TextLayoutProperties(&v125, v105);
    v75 = a1;
    outlined init with copy of TextLayoutProperties(&v125, v105);
    v76 = v75;

    Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(v76, &v99, &v113);
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    outlined destroy of TextLayoutProperties(&v125);
    v85 = v102;
    *(v31 + 312) = v101;
    *(v31 + 328) = v85;
    *(v31 + 344) = v103;
    v86 = v100;
    *v70 = v99;
    *(v31 + 296) = v86;
    *(v31 + 168) = v78;
    *(v31 + 176) = v80;
    *(v31 + 184) = v82;
    *(v31 + 192) = v84;
  }

  else
  {
    *(v31 + 312) = 0uLL;
    *(v31 + 328) = 0uLL;
    *v70 = 0uLL;
    *(v31 + 296) = 0uLL;
    *(v31 + 344) = 1;
    *(v31 + 168) = 0uLL;
    *(v31 + 184) = 0uLL;
  }

  return v31;
}

void lazy protocol witness table accessor for type Text.WriteTextTrait and conformance Text.WriteTextTrait()
{
  if (!lazy protocol witness table cache variable for type Text.WriteTextTrait and conformance Text.WriteTextTrait)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.WriteTextTrait, &type metadata for Text.WriteTextTrait, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.WriteTextTrait and conformance Text.WriteTextTrait);
  }
}

double destroy for AccessibilityStyledTextContentView(uint64_t a1)
{

  outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));

  return result;
}

uint64_t initializeWithCopy for AccessibilityStyledTextContentView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  v5 = a2[2];
  v6 = *(a2 + 24);

  outlined copy of Text.Storage(v4, v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t *assignWithCopy for AccessibilityStyledTextContentView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(a1 + 24);
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 24) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  a1[4] = a2[4];

  a1[5] = a2[5];

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t *assignWithTake for AccessibilityStyledTextContentView(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = *(a2 + 24);
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 24) = v4;
  outlined consume of Text.Storage(v5, v6, v7);

  *(a1 + 2) = *(a2 + 2);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStyledTextContentView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AccessibilityStyledTextContentView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for StyledTextContentView(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for TextLayoutProperties(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = a2[14];

  v6 = *(a2 + 15);
  *(a1 + 136) = a2[17];
  *(a1 + 120) = v6;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TextLayoutProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextLayoutProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextLayoutProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ResolvedStyledText.__allocating_init(storage:layoutProperties:layoutMargins:stylePadding:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:scaleFactorOverride:links:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v3 + 192);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v4;
  return v5(a1, a2, v8);
}

uint64_t *assignWithCopy for DynamicTextViewFactory(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t *assignWithTake for DynamicTextViewFactory(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicTextViewFactory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for DynamicTextViewFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v8 = v7;
    v9 = *(v7 + 48);
    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
    a1[*(v8 + 64)] = a2[*(v8 + 64)];
    *&a1[*(v8 + 80)] = *&a2[*(v8 + 80)];

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText))
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Date();
    type metadata accessor for ResolvedStyledText();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText));
    }
  }
}

char *assignWithCopy for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Date?(a1, type metadata accessor for ResolvedTextHelper.NextUpdate);
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

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *initializeWithTake for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
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

char *assignWithTake for ResolvedTextHelper.NextUpdate(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of Date?(a1, type metadata accessor for ResolvedTextHelper.NextUpdate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = v6;
    v8 = *(v6 + 48);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    a1[*(v7 + 64)] = a2[*(v7 + 64)];
    *&a1[*(v7 + 80)] = *&a2[*(v7 + 80)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedTextHelper(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *v4 = *a2;
    v4 = v12 + ((v5 + 16) & ~v5);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    v7 = *(a2 + 4);
    *(a1 + 12) = *(a2 + 3);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
    v8 = a2[9];

    if (v8)
    {
      v9 = a2[6];
      v10 = a2[7];
      v11 = *(a2 + 64);
      outlined copy of Text.Storage(v9, v10, v11);
      *(v4 + 48) = v9;
      *(v4 + 56) = v10;
      *(v4 + 64) = v11;
      *(v4 + 72) = v8;
    }

    else
    {
      v13 = *(a2 + 4);
      *(v4 + 48) = *(a2 + 3);
      *(v4 + 64) = v13;
    }

    v14 = *(a3 + 60);
    v15 = (v4 + v14);
    v16 = a2 + v14;
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v15 = *v16;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v19 = v18;
      v20 = *(v18 + 48);
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 16))(&v15[v20], &v16[v20], v21);
      v15[*(v19 + 64)] = v16[*(v19 + 64)];
      *&v15[*(v19 + 80)] = *&v16[*(v19 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v15, v16, *(*(Update - 8) + 64));
    }

    *(v4 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  }

  return v4;
}

double destroy for ResolvedTextHelper(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 72))
  {
    outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v4 = a1 + *(a2 + 60);
  type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v7 = *(v6 + 48);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  return result;
}

uint64_t initializeWithCopy for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 72);

  if (v7)
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    v10 = *(a2 + 64);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v10;
    *(a1 + 72) = v7;
  }

  else
  {
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
  }

  v12 = *(a3 + 60);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v14;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 16))(&v13[v18], &v14[v18], v19);
    v13[*(v17 + 64)] = v14[*(v17 + 64)];
    *&v13[*(v17 + 80)] = *&v14[*(v17 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(Update - 8) + 64));
  }

  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t assignWithCopy for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  v6 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v6)
    {
      v7 = *(a2 + 48);
      v8 = *(a2 + 56);
      v9 = *(a2 + 64);
      outlined copy of Text.Storage(v7, v8, v9);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      *(a1 + 64) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 72) = *(a2 + 72);

      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v16 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v16;
      if (a1 == a2)
      {
        goto LABEL_14;
      }
    }
  }

  else if (v6)
  {
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    outlined copy of Text.Storage(v13, v14, v15);
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = v15;
    *(a1 + 72) = *(a2 + 72);

    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v17;
    if (a1 == a2)
    {
      goto LABEL_14;
    }
  }

  v18 = *(a3 + 60);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  outlined destroy of Date?(a1 + v18, type metadata accessor for ResolvedTextHelper.NextUpdate);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v19 = *v20;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v23 = v22;
    v24 = *(v22 + 48);
    v25 = type metadata accessor for Date();
    (*(*(v25 - 8) + 16))(&v19[v24], &v20[v24], v25);
    v19[*(v23 + 64)] = v20[*(v23 + 64)];
    *&v19[*(v23 + 80)] = *&v20[*(v23 + 80)];

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v19, v20, *(*(Update - 8) + 64));
  }

LABEL_14:
  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t initializeWithTake for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v6 = *(a2 + 16);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  v8 = *(a3 + 60);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v9 = *v10;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v13 = v12;
    v14 = *(v12 + 48);
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 32))(&v9[v14], &v10[v14], v15);
    v9[*(v13 + 64)] = v10[*(v13 + 64)];
    *&v9[*(v13 + 80)] = *&v10[*(v13 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(Update - 8) + 64));
  }

  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

uint64_t assignWithTake for ResolvedTextHelper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  if (!*(a1 + 72))
  {
LABEL_6:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    if (a1 == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v6 = *(a2 + 72);
  if (!v6)
  {
    outlined destroy of Text(a1 + 48);
    goto LABEL_6;
  }

  v7 = *(a2 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(a1 + 72) = v6;

  if (a1 == a2)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = *(a3 + 60);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  outlined destroy of Date?(a1 + v12, type metadata accessor for ResolvedTextHelper.NextUpdate);
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v14;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v17 = v16;
    v18 = *(v16 + 48);
    v19 = type metadata accessor for Date();
    (*(*(v19 - 8) + 32))(&v13[v18], &v14[v18], v19);
    v13[*(v17 + 64)] = v14[*(v17 + 64)];
    *&v13[*(v17 + 80)] = *&v14[*(v17 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v13, v14, *(*(Update - 8) + 64));
  }

LABEL_10:
  *(a1 + *(a3 + 64)) = *(a2 + *(a3 + 64));
  return a1;
}

void lazy protocol witness table accessor for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags()
{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties.Flags, &unk_1F006BBA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties.Flags, &unk_1F006BBA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties.Flags, &unk_1F006BBA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties.Flags, &unk_1F006BBA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties.Flags and conformance TextLayoutProperties.Flags);
  }
}

void lazy protocol witness table accessor for type TextLayoutQuery and conformance TextLayoutQuery()
{
  if (!lazy protocol witness table cache variable for type TextLayoutQuery and conformance TextLayoutQuery)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutQuery, &unk_1F006C070, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutQuery and conformance TextLayoutQuery);
  }
}

void lazy protocol witness table accessor for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment()
{
  if (!lazy protocol witness table cache variable for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for StyledTextContentView.ArchivedTransitionEnvironment, &unk_1F006BFC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type StyledTextContentView.ArchivedTransitionEnvironment and conformance StyledTextContentView.ArchivedTransitionEnvironment);
  }
}

void *partial apply for closure #1 in static Text.makeCommonAttributes(view:inputs:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v9 = v3;
  return static Text.makeTextAttributes(view:inputs:)(&v9, v7, a2);
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedTextFilter(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    *v6 = *(a2 + v5);
    *(v6 + 4) = *(a2 + v5 + 4);
    v8 = *(a2 + v5 + 16);
    *(v6 + 3) = *(a2 + v5 + 12);
    *(v6 + 4) = v8;
    *(v6 + 24) = *(a2 + v5 + 24);
    *(v6 + 5) = *(a2 + v5 + 40);
    v9 = *(a2 + v5 + 72);

    if (v9)
    {
      v10 = *(v7 + 6);
      v11 = *(v7 + 7);
      v12 = v7[64];
      outlined copy of Text.Storage(v10, v11, v12);
      *(v6 + 6) = v10;
      *(v6 + 7) = v11;
      v6[64] = v12;
      *(v6 + 9) = v9;
    }

    else
    {
      v14 = *(v7 + 4);
      *(v6 + 3) = *(v7 + 3);
      *(v6 + 4) = v14;
    }

    v15 = type metadata accessor for ResolvedTextHelper(0);
    v16 = *(v15 + 60);
    v17 = &v6[v16];
    v18 = &v7[v16];
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v17 = *v18;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = v20;
      v22 = *(v20 + 48);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 16))(&v17[v22], &v18[v22], v23);
      v17[*(v21 + 64)] = v18[*(v21 + 64)];
      *&v17[*(v21 + 80)] = *&v18[*(v21 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v17, v18, *(*(Update - 8) + 64));
    }

    *&v6[*(v15 + 64)] = *&v7[*(v15 + 64)];
  }

  return v3;
}

_DWORD *assignWithCopy for ResolvedTextFilter(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  *(v6 + 1) = *(a2 + v5 + 4);
  *(v6 + 2) = *(a2 + v5 + 8);
  v6[12] = *(a2 + v5 + 12);
  v6[13] = *(a2 + v5 + 13);
  v6[14] = *(a2 + v5 + 14);
  v6[15] = *(a2 + v5 + 15);
  *(v6 + 8) = *(a2 + v5 + 16);
  v6[18] = *(a2 + v5 + 18);
  v6[19] = *(a2 + v5 + 19);
  *(v6 + 24) = *(a2 + v5 + 24);
  *(v6 + 5) = *(a2 + v5 + 40);

  v8 = *(v7 + 9);
  if (*(v6 + 9))
  {
    if (v8)
    {
      v9 = *(v7 + 6);
      v10 = *(v7 + 7);
      v11 = v7[64];
      outlined copy of Text.Storage(v9, v10, v11);
      v12 = *(v6 + 6);
      v13 = *(v6 + 7);
      v14 = v6[64];
      *(v6 + 6) = v9;
      *(v6 + 7) = v10;
      v6[64] = v11;
      outlined consume of Text.Storage(v12, v13, v14);
      *(v6 + 9) = *(v7 + 9);
    }

    else
    {
      outlined destroy of Text((v6 + 48));
      v18 = *(v7 + 4);
      *(v6 + 3) = *(v7 + 3);
      *(v6 + 4) = v18;
    }
  }

  else if (v8)
  {
    v15 = *(v7 + 6);
    v16 = *(v7 + 7);
    v17 = v7[64];
    outlined copy of Text.Storage(v15, v16, v17);
    *(v6 + 6) = v15;
    *(v6 + 7) = v16;
    v6[64] = v17;
    *(v6 + 9) = *(v7 + 9);
  }

  else
  {
    v19 = *(v7 + 4);
    *(v6 + 3) = *(v7 + 3);
    *(v6 + 4) = v19;
  }

  v20 = type metadata accessor for ResolvedTextHelper(0);
  v21 = v20;
  if (a1 != a2)
  {
    v22 = *(v20 + 60);
    v23 = &v6[v22];
    v24 = &v7[v22];
    outlined destroy of Date?(&v6[v22], type metadata accessor for ResolvedTextHelper.NextUpdate);
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v23 = *v24;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v27 = v26;
      v28 = *(v26 + 48);
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 16))(&v23[v28], &v24[v28], v29);
      v23[*(v27 + 64)] = v24[*(v27 + 64)];
      *&v23[*(v27 + 80)] = *&v24[*(v27 + 80)];

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v23, v24, *(*(Update - 8) + 64));
    }
  }

  *&v6[*(v21 + 64)] = *&v7[*(v21 + 64)];
  return a1;
}

void *initializeWithTake for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *v5 = *(a2 + v4);
  *(v5 + 4) = *(a2 + v4 + 4);
  v7 = *(a2 + v4 + 16);
  *(v5 + 3) = *(a2 + v4 + 12);
  *(v5 + 4) = v7;
  *(v5 + 24) = *(a2 + v4 + 24);
  *(v5 + 5) = *(a2 + v4 + 40);
  v8 = *(a2 + v4 + 64);
  *(v5 + 3) = *(a2 + v4 + 48);
  *(v5 + 4) = v8;
  v9 = type metadata accessor for ResolvedTextHelper(0);
  v10 = *(v9 + 60);
  v11 = &v5[v10];
  v12 = &v6[v10];
  Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v11 = *v12;
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v15 = v14;
    v16 = *(v14 + 48);
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 32))(&v11[v16], &v12[v16], v17);
    v11[*(v15 + 64)] = v12[*(v15 + 64)];
    *&v11[*(v15 + 80)] = *&v12[*(v15 + 80)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v11, v12, *(*(Update - 8) + 64));
  }

  *&v5[*(v9 + 64)] = *&v6[*(v9 + 64)];
  return a1;
}

void *assignWithTake for ResolvedTextFilter(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v6 = *(a2 + v5);
  *(v6 + 2) = *(a2 + v5 + 8);
  v6[12] = *(a2 + v5 + 12);
  v6[13] = *(a2 + v5 + 13);
  *(v6 + 14) = *(a2 + v5 + 14);
  v6[18] = *(a2 + v5 + 18);
  v6[19] = *(a2 + v5 + 19);
  *(v6 + 24) = *(a2 + v5 + 24);
  *(v6 + 5) = *(a2 + v5 + 40);

  if (*(v6 + 9))
  {
    v8 = *(v7 + 9);
    if (v8)
    {
      v9 = v7[64];
      v10 = *(v6 + 6);
      v11 = *(v6 + 7);
      v12 = v6[64];
      *(v6 + 3) = *(v7 + 3);
      v6[64] = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(v6 + 9) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text((v6 + 48));
  }

  v13 = *(v7 + 4);
  *(v6 + 3) = *(v7 + 3);
  *(v6 + 4) = v13;
LABEL_6:
  v14 = type metadata accessor for ResolvedTextHelper(0);
  v15 = v14;
  if (a1 != a2)
  {
    v16 = *(v14 + 60);
    v17 = &v6[v16];
    v18 = &v7[v16];
    outlined destroy of Date?(&v6[v16], type metadata accessor for ResolvedTextHelper.NextUpdate);
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v17 = *v18;
      type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
      v21 = v20;
      v22 = *(v20 + 48);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 32))(&v17[v22], &v18[v22], v23);
      v17[*(v21 + 64)] = v18[*(v21 + 64)];
      *&v17[*(v21 + 80)] = *&v18[*(v21 + 80)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v17, v18, *(*(Update - 8) + 64));
    }
  }

  *&v6[*(v15 + 64)] = *&v7[*(v15 + 64)];
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_58Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for ResolvedTextHelper(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_59Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for ResolvedTextHelper(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void lazy protocol witness table accessor for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame()
{
  if (!lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTextView.DynamicTextFrame, &unk_1F006C438, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTextView.DynamicTextFrame and conformance DynamicTextView.DynamicTextFrame);
  }
}

uint64_t partial apply for implicit closure #1 in static DynamicTextView._makeView(view:inputs:)()
{
  type metadata accessor for DynamicTextView.DynamicTextFilter.Value(0);

  return AGGraphCreateOffsetAttribute2();
}

void type metadata accessor for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>)
  {
    type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(255, &lazy cache variable for type metadata for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry, type metadata accessor for SizeFittingTextCache.CacheEntry);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>.CacheEntry>);
    }
  }
}

void type metadata accessor for SizeFittingTextCache<DynamicTextView.DynamicTextHelper, StickyTextSizeFittingLogic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for DynamicTextView.DynamicTextHelper;
    v8[1] = &type metadata for StickyTextSizeFittingLogic;
    v8[2] = &protocol witness table for DynamicTextView.DynamicTextHelper;
    v8[3] = &protocol witness table for StickyTextSizeFittingLogic;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v5 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 20);
    v9 = type metadata accessor for Date();
    v10 = *(*(v9 - 8) + 16);

    v10(v5 + v6, a2 + v6, v9);
    v11 = *(a3 + 24);
    v12 = v5 + v11;
    v13 = a2 + v11;
    v14 = *(a2 + v11 + 24);
    if (v14)
    {
      v15 = *(v13 + 4);
      *(v12 + 24) = v14;
      *(v12 + 32) = v15;
      (**(v14 - 8))();
    }

    else
    {
      v16 = *(v13 + 1);
      *v12 = *v13;
      *(v12 + 16) = v16;
      *(v12 + 32) = *(v13 + 4);
    }
  }

  return v5;
}

char *destroy for DynamicTextView.DynamicTextFilter.Value(char *a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  result = &a1[*(a2 + 24)];
  if (*(result + 3))
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = *(a3 + 24);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10 + 24);
  if (v13)
  {
    v14 = *(v12 + 4);
    *(v11 + 24) = v13;
    *(v11 + 32) = v14;
    (**(v13 - 8))();
  }

  else
  {
    v15 = *(v12 + 1);
    *v11 = *v12;
    *(v11 + 16) = v15;
    *(v11 + 32) = *(v12 + 4);
  }

  return a1;
}

uint64_t *assignWithCopy for DynamicTextView.DynamicTextFilter.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  v9 = *(a3 + 24);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = *(a2 + v9 + 24);
  if (*(a1 + v9 + 24))
  {
    if (v12)
    {
      __swift_assign_boxed_opaque_existential_1(v10, v11, v8);
    }

    else
    {
      v13 = a1 + v9;
      __swift_destroy_boxed_opaque_existential_1(v10);
      v14 = *v11;
      v15 = *(v11 + 1);
      *(v13 + 4) = v11[4];
      *v13 = v14;
      *(v13 + 1) = v15;
    }
  }

  else if (v12)
  {
    v10[3] = v12;
    v10[4] = v11[4];
    (**(v12 - 8))();
  }

  else
  {
    v16 = *v11;
    v17 = *(v11 + 1);
    v10[4] = v11[4];
    *v10 = v16;
    *(v10 + 1) = v17;
  }

  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextFilter.Value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(v10 + 16);
  *v9 = *v10;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(v10 + 32);
  return a1;
}

uint64_t *assignWithTake for DynamicTextView.DynamicTextFilter.Value(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + v8));
  }

  v10 = *(a2 + v8 + 16);
  *v9 = *(a2 + v8);
  *(v9 + 1) = v10;
  *(v9 + 4) = *(a2 + v8 + 32);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextFilter.Value(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 20) = *(a2 + 5);
    v5 = a2[4];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = v5;
    *(a1 + 40) = a2[5];
    v6 = *(a3 + 48);
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t destroy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 48);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t assignWithCopy for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 48);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for DynamicTextView.DynamicTextFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 48);
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextFilter(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    v5 = *(a3 + 28);
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(&v3[v5], a2 + v5, v7);
  }

  return v3;
}

uint64_t destroy for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

uint64_t initializeWithCopy for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  return a1;
}

char *assignWithCopy for DynamicTextView.DynamicTextEnvironment(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t initializeWithTake for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t assignWithTake for DynamicTextView.DynamicTextEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 40))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t type metadata completion function for DynamicTextView.DynamicTextEnvironment(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t AnimatableValues.value.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t AnimatableValues.value.setter(uint64_t *TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t static AnimatableValues.zero.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v5 = 8 * a1;
  v33 = a4;
  if (a1 == 1)
  {
    TupleTypeMetadata = *(a2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a1)
    {
      v9 = 0;
      v10 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (a1 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a1 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a1 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a1)
      {
LABEL_9:
        v15 = a1 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v32;
  MEMORY[0x1EEE9AC00](v22);
  if (a1)
  {
    v24 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v25 = v35 & 0xFFFFFFFFFFFFFFFELL;
    v26 = (v23 + 32);
    v27 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = a1;
    do
    {
      if (a1 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v26;
      }

      v24 += 8;
      v25 += 8;
      v30 = &v21[v29];
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      *v27++ = v30;
      v26 += 4;
      --v28;
    }

    while (v28);
  }

  return AnimatableValues.init(_:)((&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, v34, v33);
}

uint64_t static AnimatableValues.+= infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t, void))
{
  v75 = a6;
  v8 = a3;
  v10 = TupleTypeMetadata;
  v11 = 8 * a3;
  if (a3 == 1)
  {
    v12 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v13 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v14 = 0;
      v15 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v13[-v15] < 0x20)
      {
        goto LABEL_9;
      }

      v14 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v16 = (v15 + 16);
      v17 = v13 + 16;
      v18 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v19 = *v16;
        *(v17 - 1) = *(v16 - 1);
        *v17 = v19;
        v16 += 2;
        v17 += 2;
        v18 -= 4;
      }

      while (v18);
      if (v14 != v8)
      {
LABEL_9:
        v20 = v8 - v14;
        v21 = 8 * v14;
        v22 = &v13[8 * v14];
        v23 = (v15 + v21);
        do
        {
          v24 = *v23++;
          *v22 = v24;
          v22 += 8;
          --v20;
        }

        while (v20);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v12 = TupleTypeMetadata;
  }

  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v27 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v61;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v61 - v29;
  v66 = v61;
  MEMORY[0x1EEE9AC00](v31);
  v73 = a5;
  v74 = v61 - v32;
  v72 = a4;
  v64 = type metadata accessor for AnimatableValues(0, v8, a4, a5);
  v65 = v61;
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v61 - v33;
  v61[1] = v61;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v69 = v10;
  v70 = (v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v25 + 32);
  v76 = v30;
  v36(v30, v10, v12, v35);
  v68 = v25;
  v37 = *(v25 + 16);
  v77 = v27;
  v71 = v12;
  v38 = v37(v27, a2, v12);
  if (v8)
  {
    v39 = (v72 & 0xFFFFFFFFFFFFFFFELL);
    v40 = (v73 & 0xFFFFFFFFFFFFFFFELL);
    v41 = v70;
    v42 = (v71 + 32);
    v43 = v8;
    v84 = v8;
    do
    {
      if (v8 == 1)
      {
        v48 = v74;
      }

      else
      {
        v48 = &v74[*v42];
      }

      v81 = v48;
      v82 = v40;
      v80 = v61;
      v83 = v39;
      v49 = *v39;
      v79 = *v40;
      v50 = *(v49 - 8);
      v51 = v50[8];
      v52 = MEMORY[0x1EEE9AC00](v38);
      v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
      v54 = v50[2];
      v56 = v54(v61 - v53, &v76[v55], v49, v52);
      v78 = v61;
      v44 = MEMORY[0x1EEE9AC00](v56);
      v54(v61 - v53, &v77[v45], v49, v44);
      v46 = v81;
      v75(v61 - v53, v61 - v53, v49, *(v79 + 8));
      v47 = v50[1];
      v47(v61 - v53, v49);
      v38 = (v47)(v61 - v53, v49);
      *v41++ = v46;
      v42 += 4;
      v40 = v82 + 1;
      v39 = v83 + 1;
      --v43;
      v8 = v84;
    }

    while (v43);
  }

  v57 = v62;
  AnimatableValues.init(_:)(v70, v8, v72, v62);
  v58 = *(v68 + 8);
  v59 = v71;
  v58(v77, v71);
  v58(v76, v59);
  return (*(v63 + 32))(v69, v57, v64);
}

uint64_t static AnimatableValues.+ infix(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t, void)@<X5>, uint64_t a7@<X8>)
{
  v64 = a6;
  v61 = a4;
  v62 = a5;
  v7 = a3;
  v9 = 8 * a3;
  v58 = a7;
  if (a3 == 1)
  {
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v12 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v13 = 0;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v12[-v14] < 0x20)
      {
        goto LABEL_9;
      }

      v13 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v15 = (v14 + 16);
      v16 = v12 + 16;
      v17 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = *v15;
        *(v16 - 1) = *(v15 - 1);
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v13 != v7)
      {
LABEL_9:
        v19 = v7 - v13;
        v20 = 8 * v13;
        v21 = &v12[8 * v13];
        v22 = (v14 + v20);
        do
        {
          v23 = *v22++;
          *v21 = v23;
          v21 += 8;
          --v19;
        }

        while (v19);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = v56;
  MEMORY[0x1EEE9AC00](v26);
  v56[2] = v56;
  MEMORY[0x1EEE9AC00](v56 - v27);
  v63 = v56 - v28;
  v56[1] = v56;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v59 = (v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v31;
  v32 = *(v31 + 16);
  v65 = v33;
  v32(v30);
  v66 = v25;
  v60 = v10;
  v34 = (v32)(v25, a2, v10);
  if (v7)
  {
    v35 = (v61 & 0xFFFFFFFFFFFFFFFELL);
    v36 = (v62 & 0xFFFFFFFFFFFFFFFELL);
    v37 = v59;
    v38 = (v60 + 32);
    v39 = v7;
    v73 = v7;
    do
    {
      if (v7 == 1)
      {
        v44 = v63;
      }

      else
      {
        v44 = &v63[*v38];
      }

      v70 = v44;
      v71 = v36;
      v69 = v56;
      v72 = v35;
      v45 = *v35;
      v68 = *v36;
      v46 = *(v45 - 8);
      v47 = v46[8];
      v48 = MEMORY[0x1EEE9AC00](v34);
      v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
      v50 = v46[2];
      v52 = v50(v56 - v49, v65 + v51, v45, v48);
      v67 = v56;
      v40 = MEMORY[0x1EEE9AC00](v52);
      v50(v56 - v49, &v66[v41], v45, v40);
      v42 = v70;
      v64(v56 - v49, v56 - v49, v45, *(v68 + 8));
      v43 = v46[1];
      v43(v56 - v49, v45);
      v34 = (v43)(v56 - v49, v45);
      *v37++ = v42;
      v38 += 4;
      v36 = v71 + 1;
      v35 = v72 + 1;
      --v39;
      v7 = v73;
    }

    while (v39);
  }

  AnimatableValues.init(_:)(v59, v7, v61, v58);
  v53 = *(v57 + 8);
  v54 = v60;
  v53(v66, v60);
  return (v53)(v65, v54);
}

Swift::Void __swiftcall AnimatableValues.scale(by:)(Swift::Double by)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 != 1)
  {
    (MEMORY[0x1EEE9AC00])();
    v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v9 = 0;
      v10 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_8;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_8;
      }

      v9 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v6 != v9)
      {
LABEL_8:
        v15 = v6 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v43[1] = v43;
  v21 = MEMORY[0x1EEE9AC00](v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v43 - v23;
  v49 = v22;
  v44 = v24;
  v45 = v3;
  v25 = *(v24 + 16);
  v46 = v26;
  v27 = v25(v21);
  if (v6)
  {
    v28 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v29 = (*(v4 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v46 + 32);
    v31 = v6;
    v47 = v6;
    do
    {
      if (v6 == 1)
      {
        v32 = v48;
      }

      else
      {
        v32 = &v48[*v30];
      }

      v34 = *v28++;
      v33 = v34;
      v35 = *v29++;
      v36 = *(v33 - 8);
      v37 = MEMORY[0x1EEE9AC00](v27);
      v39 = v43 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v39, v49 + v40, v33, v37);
      VectorArithmetic.scaled(by:)(v33, v35, v32, by);
      v27 = (*(v36 + 8))(v39, v33);
      v30 += 4;
      --v31;
      v6 = v47;
    }

    while (v31);
  }

  v41 = v44;
  v42 = v46;
  (*(v44 + 40))(v45, v48, v46);
  (*(v41 + 8))(v49, v42);
}

double AnimatableValues.magnitudeSquared.getter(uint64_t TupleTypeMetadata)
{
  v1 = TupleTypeMetadata;
  v2 = *(TupleTypeMetadata + 16);
  if (v2 == 1)
  {
    v3 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v6 = 0;
      v7 = *(v1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v2 != v6)
      {
LABEL_9:
        v12 = v2 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = TupleTypeMetadata;
  }

  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v19;
  v20 = *(v19 + 16);
  v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20(v17);
  v37 = v3;
  if (v2)
  {
    v22 = (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v23 = (*(v1 + 32) & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v3 + 32);
    v25 = 0.0;
    v26 = v2;
    do
    {
      v29 = *v22;
      v30 = *v23;
      v31 = *(*v22 - 8);
      MEMORY[0x1EEE9AC00](v21);
      v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v26 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v24;
      }

      (*(v31 + 16))(v33, &v38[v27], v29);
      v28 = (*(v30 + 24))(v29, v30);
      v21 = (*(v31 + 8))(v33, v29);
      v25 = v25 + v28;
      v24 += 4;
      ++v23;
      ++v22;
      --v2;
    }

    while (v2);
  }

  else
  {
    v25 = 0.0;
  }

  (*(v36 + 8))(v38, v37);
  return v25;
}

uint64_t protocol witness for static AdditiveArithmetic.zero.getter in conformance AnimatableValues<Pack{repeat A}>@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = 8 * v3;
  v33 = a2;
  if (v3 == 1)
  {
    TupleTypeMetadata = *(a1[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = a1[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v32;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a1[3];
  v34 = a1[4];
  v35 = v23;
  if (v3)
  {
    v24 = v35 & 0xFFFFFFFFFFFFFFFELL;
    v25 = v34 & 0xFFFFFFFFFFFFFFFELL;
    v26 = (v21 + 32);
    v27 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v3;
    do
    {
      if (v3 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v26;
      }

      v24 += 8;
      v25 += 8;
      v30 = &v19[v29];
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      *v27++ = v30;
      v26 += 4;
      --v28;
    }

    while (v28);
  }

  return AnimatableValues.init(_:)(v22, v3, v35, v33);
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance AnimatableValues<Pack{repeat A}>(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t, void))
{
  v76 = a5;
  v7 = TupleTypeMetadata;
  v8 = *(a3 + 16);
  v9 = 8 * v8;
  if (v8 == 1)
  {
    v10 = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v11 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8)
    {
      v12 = 0;
      v13 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v8 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v8 != v12)
      {
LABEL_9:
        v18 = v8 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v25 = v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v62;
  MEMORY[0x1EEE9AC00](v26);
  v66 = v62;
  MEMORY[0x1EEE9AC00](v62 - v27);
  v75 = v62 - v28;
  v65 = v62;
  v70 = a3;
  v30 = *(a3 - 8);
  v29 = a3 - 8;
  v64 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v63 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[1] = v62;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v73 = (v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v23 + 32);
  v77 = v36;
  v69 = v7;
  v35(v34);
  v68 = v23;
  v37 = *(v23 + 16);
  v78 = v25;
  v74 = v10;
  v38 = v37(v25, a2, v10);
  v39 = *(v29 + 32);
  v71 = *(v29 + 40);
  v72 = v39;
  if (v8)
  {
    v40 = (v72 & 0xFFFFFFFFFFFFFFFELL);
    v41 = (v71 & 0xFFFFFFFFFFFFFFFELL);
    v42 = v73;
    v43 = (v74 + 32);
    v44 = v8;
    v85 = v8;
    do
    {
      if (v8 == 1)
      {
        v49 = v75;
      }

      else
      {
        v49 = &v75[*v43];
      }

      v82 = v49;
      v83 = v41;
      v81 = v62;
      v84 = v40;
      v50 = *v40;
      v80 = *v41;
      v51 = *(v50 - 8);
      v52 = v51[8];
      v53 = MEMORY[0x1EEE9AC00](v38);
      v54 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
      v55 = v51[2];
      v57 = v55(v62 - v54, &v77[v56], v50, v53);
      v79 = v62;
      v45 = MEMORY[0x1EEE9AC00](v57);
      v55(v62 - v54, &v78[v46], v50, v45);
      v47 = v82;
      v76(v62 - v54, v62 - v54, v50, *(v80 + 8));
      v48 = v51[1];
      v48(v62 - v54, v50);
      v38 = (v48)(v62 - v54, v50);
      *v42++ = v47;
      v43 += 4;
      v41 = v83 + 1;
      v40 = v84 + 1;
      --v44;
      v8 = v85;
    }

    while (v44);
  }

  v58 = v63;
  AnimatableValues.init(_:)(v73, v8, v72, v63);
  v59 = *(v68 + 8);
  v60 = v74;
  v59(v78, v74);
  v59(v77, v60);
  return (*(v64 + 32))(v69, v58, v70);
}

uint64_t initializeBufferWithCopyOfBuffer for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for AnimatableValues(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v3;
  }

  return (*(*(TupleTypeMetadata - 8) + 8))(a1);
}

uint64_t initializeWithCopy for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for AnimatableValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

void AttributeCountTestInfo.merge(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);

  *v1 = v8;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v8 = v1[1];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v2, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v6, &v8);

  v1[1] = v8;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = v1[2];
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v7, &v8);

  v1[2] = v8;
}

void specialized static AttributeCountTestInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(*a1, *a2);
  if (v8)
  {
    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v2, v5);
    if (v9)
    {
      _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v4, v7);
      if (v10)
      {

        _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_s6UInt32VTt1g5(v3, v6);
      }
    }
  }
}

double destroy for AttributeCountTestInfo(void *a1)
{

  return result;
}

uint64_t *initializeWithCopy for AttributeCountTestInfo(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for AttributeCountTestInfo(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for AttributeCountTestInfo(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  *(a1 + 1) = a2[1];

  return a1;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
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
  v35 = v6;
  while (v9)
  {
    v38 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    LODWORD(v18) = *(*(a1 + 56) + 4 * v18);
    v42[0] = *v19;
    v42[1] = v20;
    v43 = v18;

    (a2)(&v39, v42);

    v21 = v39;
    v22 = v40;
    v23 = v41;
    v24 = *v44;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v38 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v38 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v30)
    {
      v34 = *(v33[7] + 4 * v26);

      if (__CFADD__(v34, v23))
      {
        goto LABEL_27;
      }

      *(v33[7] + 4 * v26) = v34 + v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v12 = (v33[6] + 16 * v26);
      *v12 = v21;
      v12[1] = v22;
      *(v33[7] + 4 * v26) = v23;
      v13 = v33[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v33[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v35;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v38 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v44 = a5;
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
  v35 = v6;
  while (v9)
  {
    v38 = a4;
    v16 = v11;
LABEL_15:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    LODWORD(v18) = *(*(a1 + 56) + 4 * v18);
    v42[0] = *v19;
    v42[1] = v20;
    v43 = v18;

    (a2)(&v39, v42);

    v21 = v39;
    v22 = v40;
    v23 = v41;
    v24 = *v44;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_26;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v38 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v38 & 1);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_29;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v30)
    {
      v34 = *(v33[7] + 4 * v26);

      if (__CFADD__(v23, v34))
      {
        goto LABEL_27;
      }

      *(v33[7] + 4 * v26) = v23 + v34;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v12 = (v33[6] + 16 * v26);
      *v12 = v21;
      v12[1] = v22;
      *(v33[7] + 4 * v26) = v23;
      v13 = v33[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v33[2] = v15;
    }

    a4 = 1;
    v11 = v16;
    v6 = v35;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of Set<EventID>.Iterator._Variant(a1);

      return;
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v38 = a4;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double static GestureStateProtocol.gesture<A, B>(content:_:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v18[0] = a2;
  v18[1] = a3;
  v17[0] = a4;
  v17[1] = swift_getAssociatedTypeWitness();
  v17[2] = a6;
  v17[3] = a7;
  v14 = type metadata accessor for StateContainerGesture(0, v17);
  swift_getWitnessTable(protocol conformance descriptor for StateContainerGesture<A, B, C>, v14);
  Gesture.modifier<A>(_:)(v18, a5, v14, a8, v15, x8_0);

  return result;
}

uint64_t StateContainerGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t StateContainerGesture.body.getter()
{
  v1 = *v0;

  return v1;
}

void StateContainerGesture.body.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

double static StateContainerGesture._makeGesture(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a7;
  v44 = a6;
  v10 = a5;
  v45 = a4;
  *&v48 = a3;
  v47 = a9;
  v64 = *MEMORY[0x1E69E9840];
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = v16;
  *(&v55 + 1) = v17;
  *&v56 = v18;
  *(&v56 + 1) = v19;
  v20 = type metadata accessor for StateContainerPhase(0, &v55);
  v46 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = *a1;
  v24 = a2[5];
  v59 = a2[4];
  v60 = v24;
  v61 = a2[6];
  v25 = a2[1];
  v55 = *a2;
  v56 = v25;
  v26 = a2[3];
  v57 = a2[2];
  v58 = v26;
  v28 = *(a2 + 116);
  v62 = *(a2 + 28);
  v27 = v62;
  v63 = v28;
  (v48)(v49, &v55);
  v29 = v49[1];
  LODWORD(v45) = v50;
  *&v30 = v49[0];
  v48 = v30;
  (*(a8 + 8))(v10, a8);
  *v22 = v23;
  *(v22 + 1) = v48;
  *(v22 + 2) = v27;
  v31 = v43;
  *&v55 = v10;
  *(&v55 + 1) = v43;
  v32 = v44;
  *&v56 = v44;
  *(&v56 + 1) = a8;
  v33 = type metadata accessor for StateContainerPhase(0, &v55);
  (*(v13 + 32))(&v22[*(v33 + 60)], v15, v10);
  *&v22[*(v33 + 64)] = 0;
  v52 = type metadata accessor for GesturePhase(0, v31, v34, v35);
  v53 = v20;
  swift_getWitnessTable(protocol conformance descriptor for StateContainerPhase<A, B, C>, v20);
  v54 = v36;
  v37 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v51, v20, MEMORY[0x1E69E73E0], v37, MEMORY[0x1E69E7410], v38);
  (*(v46 + 8))(v22, v20);
  LODWORD(v10) = v55;
  *&v55 = v48;
  *(&v55 + 1) = v29;
  LODWORD(v56) = v45;
  type metadata accessor for _GestureOutputs(0, v32, v39, v40);
  _GestureOutputs.withPhase<A>(_:)(v10, v47);

  return result;
}

double StateContainerPhase.modifier.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v8 = *(a1 + 16);
  v9 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  v10 = v3;
  type metadata accessor for StateContainerGesture(0, &v8);
  Value = AGGraphGetValue();
  v6 = *Value;
  v5 = Value[1];
  *a2 = v6;
  a2[1] = v5;

  return result;
}

uint64_t StateContainerPhase.childPhase.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 32), a3, a4);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a2, Value, v5);
}

uint64_t StateContainerPhase.resetPhase()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v9 + 40) + 8))(v4, v6);
  return (*(v5 + 40))(v2 + *(a1 + 60), v8, v4);
}

uint64_t StateContainerPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for GesturePhase(0, *(a1 + 32), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-1] - v8;
  v12 = type metadata accessor for GesturePhase(0, *(a1 + 24), v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v26[-1] - v15;
  swift_getWitnessTable(protocol conformance descriptor for StateContainerPhase<A, B, C>, a1, v14);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    StateContainerPhase.modifier.getter(a1, v26);
    v18 = v26[0];
    StateContainerPhase.childPhase.getter(a1, v9, v19, v20);
    v18(v4 + *(a1 + 60), v9);

    v21 = (*(v7 + 8))(v9, v6);
    v22 = MEMORY[0x1EEE9AC00](v21);
    *(&v25 - 2) = a1;
    swift_getWitnessTable(protocol conformance descriptor for StateContainerPhase<A, B, C>, a1, v22);
    *(&v25 - 1) = v23;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in StatefulRule.value.setter, (&v25 - 4), v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v24);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance StateContainerPhase<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 24), a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t type metadata completion function for StateContainerPhase(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StateContainerPhase(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 3;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 12) & ~v5)) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = (v12 + v5 + 4) & ~v5;
    v15 = (v13 + v5 + 4) & ~v5;
    (*(v4 + 16))(v14, v15);
    *((v6 + v14) & 0xFFFFFFFFFFFFFFFCLL) = *((v6 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

_DWORD *initializeWithCopy for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 16))(v11, v12);
  *((*(v9 + 48) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 48) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithCopy for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 24))(v11, v12);
  *((*(v9 + 40) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 40) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *initializeWithTake for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 32))(v11, v12);
  *((*(v9 + 32) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 32) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithTake for StateContainerPhase(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 4) & ~v10;
  v12 = (v7 + v10 + 4) & ~v10;
  (*(v8 + 40))(v11, v12);
  *((*(v9 + 24) + 3 + v11) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v9 + 24) + 3 + v12) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for StateContainerPhase(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 12) & ~v6) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFFC;
  if ((v7 & 0xFFFFFFFC) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for StateContainerPhase(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v10 = v9 + 1;
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

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 12) & ~v7) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

unint64_t specialized StateContainerPhase.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  return 0x86E2206574617453;
}

uint64_t AccessibilityDataSeriesConfiguration.ValueDescription.description.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

void AccessibilityDataSeriesConfiguration.ValueDescription.description.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
}

uint64_t AccessibilityDataSeriesConfiguration.ValueDescription.init(description:effectiveValueRange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.title.getter()
{
  v1 = *v0;
  outlined copy of Text?(*v0, v0[1], v0[2], v0[3]);
  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.title.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Text?(*v4, v4[1], v4[2], v4[3]);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.unitLabel.getter()
{
  v1 = v0[4];
  outlined copy of Text?(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.unitLabel.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = outlined consume of Text?(v4[4], v4[5], v4[6], v4[7]);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.minimumValue.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.AxisConfiguration.maximumValue.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

__n128 AccessibilityDataSeriesConfiguration.AxisConfiguration.init(title:unitLabel:categoryLabels:minimumValue:maximumValue:gridlinePositions:values:valueDescriptions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __n128 a15, uint64_t a16)
{
  result = a15;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14 & 1;
  *(a9 + 104) = a15;
  *(a9 + 120) = a16;
  return result;
}

SwiftUI::AccessibilityDataSeriesConfiguration::DataSeriesType_optional __swiftcall AccessibilityDataSeriesConfiguration.DataSeriesType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AccessibilityDataSeriesConfiguration.name.getter()
{
  v1 = *v0;
  outlined copy of Text.Storage(*v0, *(v0 + 8), *(v0 + 16));

  return v1;
}

void AccessibilityDataSeriesConfiguration.name.setter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
}

uint64_t AccessibilityDataSeriesConfiguration.sonificationDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.xAxisConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 136);
  v14 = *(v1 + 120);
  v2 = v14;
  v15 = v3;
  v5 = *(v1 + 168);
  v16 = *(v1 + 152);
  v4 = v16;
  v17 = v5;
  v6 = *(v1 + 72);
  v11[0] = *(v1 + 56);
  v11[1] = v6;
  v8 = *(v1 + 104);
  v12 = *(v1 + 88);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v11, &v10, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
}

__n128 AccessibilityDataSeriesConfiguration.xAxisConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 136);
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v4 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v12[7] = v4;
  v5 = *(v1 + 72);
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v12, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v7 = *(a1 + 80);
  *(v1 + 120) = *(a1 + 64);
  *(v1 + 136) = v7;
  v8 = *(a1 + 112);
  *(v1 + 152) = *(a1 + 96);
  *(v1 + 168) = v8;
  v9 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v1 + 88) = result;
  *(v1 + 104) = v11;
  return result;
}

uint64_t AccessibilityDataSeriesConfiguration.yAxisConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 200);
  v11[0] = *(v1 + 184);
  v11[1] = v3;
  v5 = *(v1 + 232);
  v12 = *(v1 + 216);
  v4 = v12;
  v13 = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v14 = v2;
  v15 = v6;
  v8 = *(v1 + 296);
  v16 = v7;
  v17 = v8;
  *a1 = v11[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v2;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  return outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v11, &v10, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
}

__n128 AccessibilityDataSeriesConfiguration.yAxisConfiguration.setter(uint64_t a1)
{
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v15[0] = *(v1 + 184);
  v15[1] = v4;
  v5 = *(v1 + 232);
  v15[2] = *(v1 + 216);
  v15[3] = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v15[4] = v3;
  v15[5] = v6;
  v8 = *(v1 + 296);
  v15[6] = v7;
  v15[7] = v8;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v15, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v9 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  *(v1 + 264) = v9;
  *(v1 + 280) = v10;
  *(v1 + 296) = v11;
  v12 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(v1 + 216) = result;
  *(v1 + 232) = v14;
  return result;
}

__n128 AccessibilityDataSeriesConfiguration.init(name:type:supportsSonification:sonificationDuration:includesTrendlineInSonification:supportsSummarization:xAxisConfiguration:yAxisConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, _OWORD *a12, uint64_t a13)
{
  v18 = *a5;
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v48);
  v19 = v53;
  *(a9 + 248) = v52;
  v20 = v52;
  v21 = v53;
  v23 = v54;
  v22 = v55;
  *(a9 + 264) = v19;
  *(a9 + 280) = v23;
  v24 = v54;
  *(a9 + 296) = v55;
  v25 = v49;
  *(a9 + 184) = v48;
  v26 = v48;
  v27 = v49;
  *(a9 + 200) = v25;
  v28 = v51;
  *(a9 + 216) = v50;
  v29 = v50;
  *(a9 + 232) = v51;
  v56[4] = v20;
  v56[5] = v21;
  v56[6] = v24;
  v56[7] = v22;
  v56[0] = v26;
  v56[1] = v27;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = v18;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 49) = a10;
  *(a9 + 50) = a11;
  v56[2] = v29;
  v56[3] = v28;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v56, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v30 = a12[5];
  *(a9 + 120) = a12[4];
  *(a9 + 136) = v30;
  v31 = a12[7];
  *(a9 + 152) = a12[6];
  *(a9 + 168) = v31;
  v32 = a12[1];
  *(a9 + 56) = *a12;
  *(a9 + 72) = v32;
  v33 = a12[3];
  *(a9 + 88) = a12[2];
  *(a9 + 104) = v33;
  v34 = *(a9 + 264);
  v35 = *(a9 + 280);
  v57[4] = *(a9 + 248);
  v57[5] = v34;
  v36 = *(a9 + 296);
  v57[6] = v35;
  v57[7] = v36;
  v37 = *(a9 + 200);
  v57[0] = *(a9 + 184);
  v57[1] = v37;
  v38 = *(a9 + 232);
  v57[2] = *(a9 + 216);
  v57[3] = v38;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v57, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v39 = *(a13 + 80);
  *(a9 + 248) = *(a13 + 64);
  v40 = *(a13 + 96);
  v41 = *(a13 + 112);
  *(a9 + 264) = v39;
  *(a9 + 280) = v40;
  *(a9 + 296) = v41;
  v42 = *(a13 + 16);
  *(a9 + 184) = *a13;
  *(a9 + 200) = v42;
  result = *(a13 + 32);
  v44 = *(a13 + 48);
  *(a9 + 216) = result;
  *(a9 + 232) = v44;
  return result;
}

void lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType()
{
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityDataSeriesConfiguration.DataSeriesType, &type metadata for AccessibilityDataSeriesConfiguration.DataSeriesType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityDataSeriesConfiguration.DataSeriesType, &type metadata for AccessibilityDataSeriesConfiguration.DataSeriesType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityDataSeriesConfiguration.DataSeriesType, &type metadata for AccessibilityDataSeriesConfiguration.DataSeriesType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityDataSeriesConfiguration.DataSeriesType, &type metadata for AccessibilityDataSeriesConfiguration.DataSeriesType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType);
  }
}

double destroy for AccessibilityDataSeriesConfiguration(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 120))
  {
    if (*(a1 + 80))
    {
      outlined consume of Text.Storage(*(a1 + 56), *(a1 + 64), *(a1 + 72));
    }

    if (*(a1 + 112))
    {
      outlined consume of Text.Storage(*(a1 + 88), *(a1 + 96), *(a1 + 104));
    }
  }

  if (*(a1 + 248))
  {
    if (*(a1 + 208))
    {
      outlined consume of Text.Storage(*(a1 + 184), *(a1 + 192), *(a1 + 200));
    }

    if (*(a1 + 240))
    {
      outlined consume of Text.Storage(*(a1 + 216), *(a1 + 224), *(a1 + 232));
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  v7 = *(a2 + 120);

  if (!v7)
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_9;
  }

  v8 = *(a2 + 80);
  if (!v8)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    v12 = *(a2 + 112);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_7:
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_8;
  }

  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of Text.Storage(v9, v10, v11);
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v8;

  v12 = *(a2 + 112);
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  outlined copy of Text.Storage(v13, v14, v15);
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v12;

LABEL_8:
  v16 = *(a2 + 128);
  *(a1 + 120) = v7;
  *(a1 + 128) = v16;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;
  *(a1 + 176) = *(a2 + 176);

LABEL_9:
  v18 = (a1 + 184);
  v19 = (a2 + 184);
  v20 = *(a2 + 248);
  if (v20)
  {
    v21 = *(a2 + 208);
    if (v21)
    {
      v22 = *(a2 + 184);
      v23 = *(a2 + 192);
      v24 = *(a2 + 200);
      outlined copy of Text.Storage(v22, v23, v24);
      *(a1 + 184) = v22;
      *(a1 + 192) = v23;
      *(a1 + 200) = v24;
      *(a1 + 208) = v21;

      v25 = *(a2 + 240);
      if (v25)
      {
LABEL_12:
        v26 = *(a2 + 216);
        v27 = *(a2 + 224);
        v28 = *(a2 + 232);
        outlined copy of Text.Storage(v26, v27, v28);
        *(a1 + 216) = v26;
        *(a1 + 224) = v27;
        *(a1 + 232) = v28;
        *(a1 + 240) = v25;

LABEL_16:
        v34 = *(a2 + 256);
        *(a1 + 248) = v20;
        *(a1 + 256) = v34;
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = *(a2 + 280);
        v35 = *(a2 + 296);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = v35;
        *(a1 + 304) = *(a2 + 304);

        return a1;
      }
    }

    else
    {
      v33 = *(a2 + 200);
      *v18 = *v19;
      *(a1 + 200) = v33;
      v25 = *(a2 + 240);
      if (v25)
      {
        goto LABEL_12;
      }
    }

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_16;
  }

  v29 = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = v29;
  v30 = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v30;
  v31 = *(a2 + 200);
  *v18 = *v19;
  *(a1 + 200) = v31;
  v32 = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = v32;
  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v10 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v10;
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  v11 = *(a2 + 120);
  if (!*(a1 + 120))
  {
    if (!v11)
    {
      v34 = *(a2 + 56);
      v35 = *(a2 + 72);
      v36 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v36;
      *(a1 + 72) = v35;
      *(a1 + 56) = v34;
      v37 = *(a2 + 120);
      v38 = *(a2 + 136);
      v39 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v39;
      *(a1 + 136) = v38;
      *(a1 + 120) = v37;
      goto LABEL_27;
    }

    if (*(a2 + 80))
    {
      v19 = *(a2 + 56);
      v20 = *(a2 + 64);
      v21 = *(a2 + 72);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 56) = v19;
      *(a1 + 64) = v20;
      *(a1 + 72) = v21;
      *(a1 + 80) = *(a2 + 80);

      if (*(a2 + 112))
      {
LABEL_9:
        v22 = *(a2 + 88);
        v23 = *(a2 + 96);
        v24 = *(a2 + 104);
        outlined copy of Text.Storage(v22, v23, v24);
        *(a1 + 88) = v22;
        *(a1 + 96) = v23;
        *(a1 + 104) = v24;
        *(a1 + 112) = *(a2 + 112);

LABEL_17:
        *(a1 + 120) = *(a2 + 120);
        v43 = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 128) = v43;
        v44 = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 144) = v44;
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);

        goto LABEL_27;
      }
    }

    else
    {
      v41 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v41;
      if (*(a2 + 112))
      {
        goto LABEL_9;
      }
    }

    v42 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v42;
    goto LABEL_17;
  }

  if (v11)
  {
    v12 = *(a2 + 80);
    if (*(a1 + 80))
    {
      if (v12)
      {
        v13 = *(a2 + 56);
        v14 = *(a2 + 64);
        v15 = *(a2 + 72);
        outlined copy of Text.Storage(v13, v14, v15);
        v16 = *(a1 + 56);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        *(a1 + 56) = v13;
        *(a1 + 64) = v14;
        *(a1 + 72) = v15;
        outlined consume of Text.Storage(v16, v17, v18);
        *(a1 + 80) = *(a2 + 80);
      }

      else
      {
        outlined destroy of Text(a1 + 56);
        v40 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v40;
      }
    }

    else if (v12)
    {
      v31 = *(a2 + 56);
      v32 = *(a2 + 64);
      v33 = *(a2 + 72);
      outlined copy of Text.Storage(v31, v32, v33);
      *(a1 + 56) = v31;
      *(a1 + 64) = v32;
      *(a1 + 72) = v33;
      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      v45 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v45;
    }

    v46 = *(a2 + 112);
    if (*(a1 + 112))
    {
      if (v46)
      {
        v47 = *(a2 + 88);
        v48 = *(a2 + 96);
        v49 = *(a2 + 104);
        outlined copy of Text.Storage(v47, v48, v49);
        v50 = *(a1 + 88);
        v51 = *(a1 + 96);
        v52 = *(a1 + 104);
        *(a1 + 88) = v47;
        *(a1 + 96) = v48;
        *(a1 + 104) = v49;
        outlined consume of Text.Storage(v50, v51, v52);
        *(a1 + 112) = *(a2 + 112);
      }

      else
      {
        outlined destroy of Text(a1 + 88);
        v56 = *(a2 + 104);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = v56;
      }
    }

    else if (v46)
    {
      v53 = *(a2 + 88);
      v54 = *(a2 + 96);
      v55 = *(a2 + 104);
      outlined copy of Text.Storage(v53, v54, v55);
      *(a1 + 88) = v53;
      *(a1 + 96) = v54;
      *(a1 + 104) = v55;
      *(a1 + 112) = *(a2 + 112);
    }

    else
    {
      v57 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v57;
    }

    *(a1 + 120) = *(a2 + 120);

    v58 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v58;
    LOBYTE(v58) = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v58;
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);

    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 56);
    v25 = *(a2 + 72);
    v26 = *(a2 + 88);
    v27 = *(a2 + 104);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 104) = v27;
    *(a1 + 88) = v26;
    *(a1 + 72) = v25;
    v28 = *(a2 + 136);
    v29 = *(a2 + 152);
    v30 = *(a2 + 168);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 168) = v30;
    *(a1 + 152) = v29;
    *(a1 + 136) = v28;
  }

LABEL_27:
  v59 = (a1 + 184);
  v60 = (a2 + 184);
  v61 = *(a2 + 248);
  if (!*(a1 + 248))
  {
    if (!v61)
    {
      v84 = *v60;
      v85 = *(a2 + 200);
      v86 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v86;
      *v59 = v84;
      *(a1 + 200) = v85;
      v87 = *(a2 + 248);
      v88 = *(a2 + 264);
      v89 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 296) = v89;
      *(a1 + 248) = v87;
      *(a1 + 264) = v88;
      return a1;
    }

    if (*(a2 + 208))
    {
      v69 = *(a2 + 184);
      v70 = *(a2 + 192);
      v71 = *(a2 + 200);
      outlined copy of Text.Storage(v69, v70, v71);
      *(a1 + 184) = v69;
      *(a1 + 192) = v70;
      *(a1 + 200) = v71;
      *(a1 + 208) = *(a2 + 208);

      if (*(a2 + 240))
      {
LABEL_35:
        v72 = *(a2 + 216);
        v73 = *(a2 + 224);
        v74 = *(a2 + 232);
        outlined copy of Text.Storage(v72, v73, v74);
        *(a1 + 216) = v72;
        *(a1 + 224) = v73;
        *(a1 + 232) = v74;
        *(a1 + 240) = *(a2 + 240);

LABEL_43:
        *(a1 + 248) = *(a2 + 248);
        v93 = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        *(a1 + 256) = v93;
        v94 = *(a2 + 272);
        *(a1 + 280) = *(a2 + 280);
        *(a1 + 272) = v94;
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);
        *(a1 + 304) = *(a2 + 304);

        return a1;
      }
    }

    else
    {
      v91 = *(a2 + 200);
      *v59 = *v60;
      *(a1 + 200) = v91;
      if (*(a2 + 240))
      {
        goto LABEL_35;
      }
    }

    v92 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v92;
    goto LABEL_43;
  }

  if (v61)
  {
    v62 = *(a2 + 208);
    if (*(a1 + 208))
    {
      if (v62)
      {
        v63 = *(a2 + 184);
        v64 = *(a2 + 192);
        v65 = *(a2 + 200);
        outlined copy of Text.Storage(v63, v64, v65);
        v66 = *(a1 + 184);
        v67 = *(a1 + 192);
        v68 = *(a1 + 200);
        *(a1 + 184) = v63;
        *(a1 + 192) = v64;
        *(a1 + 200) = v65;
        outlined consume of Text.Storage(v66, v67, v68);
        *(a1 + 208) = *(a2 + 208);
      }

      else
      {
        outlined destroy of Text(a1 + 184);
        v90 = *(a2 + 200);
        *v59 = *v60;
        *(a1 + 200) = v90;
      }
    }

    else if (v62)
    {
      v81 = *(a2 + 184);
      v82 = *(a2 + 192);
      v83 = *(a2 + 200);
      outlined copy of Text.Storage(v81, v82, v83);
      *(a1 + 184) = v81;
      *(a1 + 192) = v82;
      *(a1 + 200) = v83;
      *(a1 + 208) = *(a2 + 208);
    }

    else
    {
      v95 = *(a2 + 200);
      *v59 = *v60;
      *(a1 + 200) = v95;
    }

    v96 = *(a2 + 240);
    if (*(a1 + 240))
    {
      if (v96)
      {
        v97 = *(a2 + 216);
        v98 = *(a2 + 224);
        v99 = *(a2 + 232);
        outlined copy of Text.Storage(v97, v98, v99);
        v100 = *(a1 + 216);
        v101 = *(a1 + 224);
        v102 = *(a1 + 232);
        *(a1 + 216) = v97;
        *(a1 + 224) = v98;
        *(a1 + 232) = v99;
        outlined consume of Text.Storage(v100, v101, v102);
        *(a1 + 240) = *(a2 + 240);
      }

      else
      {
        outlined destroy of Text(a1 + 216);
        v106 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v106;
      }
    }

    else if (v96)
    {
      v103 = *(a2 + 216);
      v104 = *(a2 + 224);
      v105 = *(a2 + 232);
      outlined copy of Text.Storage(v103, v104, v105);
      *(a1 + 216) = v103;
      *(a1 + 224) = v104;
      *(a1 + 232) = v105;
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      v107 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v107;
    }

    *(a1 + 248) = *(a2 + 248);

    v108 = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 256) = v108;
    LOBYTE(v108) = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v108;
    *(a1 + 288) = *(a2 + 288);

    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
  }

  else
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 184);
    v75 = *(a2 + 232);
    v77 = *v60;
    v76 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v75;
    *v59 = v77;
    *(a1 + 200) = v76;
    v78 = *(a2 + 296);
    v80 = *(a2 + 248);
    v79 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v78;
    *(a1 + 248) = v80;
    *(a1 + 264) = v79;
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  if (!*(a1 + 120))
  {
    goto LABEL_8;
  }

  if (!*(a2 + 120))
  {
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 56);
LABEL_8:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_16;
  }

  if (*(a1 + 80))
  {
    if (*(a2 + 80))
    {
      v8 = *(a2 + 72);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 80) = *(a2 + 80);

      if (!*(a1 + 112))
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    outlined destroy of Text(a1 + 56);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 112))
  {
LABEL_14:
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_15;
  }

LABEL_11:
  if (!*(a2 + 112))
  {
    outlined destroy of Text(a1 + 88);
    goto LABEL_14;
  }

  v12 = *(a2 + 104);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v12;
  outlined consume of Text.Storage(v13, v14, v15);
  *(a1 + 112) = *(a2 + 112);

LABEL_15:
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

LABEL_16:
  v16 = (a1 + 184);
  v17 = (a2 + 184);
  if (*(a1 + 248))
  {
    if (*(a2 + 248))
    {
      if (*(a1 + 208))
      {
        if (*(a2 + 208))
        {
          v18 = *(a2 + 200);
          v19 = *(a1 + 184);
          v20 = *(a1 + 192);
          v21 = *(a1 + 200);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 200) = v18;
          outlined consume of Text.Storage(v19, v20, v21);
          *(a1 + 208) = *(a2 + 208);

          if (!*(a1 + 240))
          {
            goto LABEL_29;
          }

LABEL_26:
          if (*(a2 + 240))
          {
            v27 = *(a2 + 232);
            v28 = *(a1 + 216);
            v29 = *(a1 + 224);
            v30 = *(a1 + 232);
            *(a1 + 216) = *(a2 + 216);
            *(a1 + 232) = v27;
            outlined consume of Text.Storage(v28, v29, v30);
            *(a1 + 240) = *(a2 + 240);

LABEL_30:
            *(a1 + 248) = *(a2 + 248);

            *(a1 + 256) = *(a2 + 256);
            *(a1 + 264) = *(a2 + 264);
            *(a1 + 272) = *(a2 + 272);
            *(a1 + 280) = *(a2 + 280);
            *(a1 + 288) = *(a2 + 288);

            *(a1 + 296) = *(a2 + 296);

            *(a1 + 304) = *(a2 + 304);

            return a1;
          }

          outlined destroy of Text(a1 + 216);
LABEL_29:
          *(a1 + 216) = *(a2 + 216);
          *(a1 + 232) = *(a2 + 232);
          goto LABEL_30;
        }

        outlined destroy of Text(a1 + 184);
      }

      v26 = *(a2 + 200);
      *v16 = *v17;
      *(a1 + 200) = v26;
      if (!*(a1 + 240))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 184);
  }

  v22 = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = v22;
  v23 = *(a2 + 296);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = v23;
  v24 = *(a2 + 200);
  *v16 = *v17;
  *(a1 + 200) = v24;
  v25 = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = v25;
  return a1;
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.ValueDescription(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double destroy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  if (!v4)
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v12;
    v8 = a2[7];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v13;
    goto LABEL_6;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v4;

  v8 = a2[7];
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = a2[4];
  v10 = a2[5];
  v11 = *(a2 + 48);
  outlined copy of Text.Storage(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v8;

LABEL_6:
  v14 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v14;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = a2[11];
  *(a1 + 96) = *(a2 + 96);
  v15 = a2[14];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = v15;
  *(a1 + 120) = a2[15];

  return a1;
}

uint64_t assignWithCopy for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  v16 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v16)
    {
      v17 = *(a2 + 32);
      v18 = *(a2 + 40);
      v19 = *(a2 + 48);
      outlined copy of Text.Storage(v17, v18, v19);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *(a1 + 32) = v17;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      outlined consume of Text.Storage(v20, v21, v22);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v26 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v26;
    }
  }

  else if (v16)
  {
    v23 = *(a2 + 32);
    v24 = *(a2 + 40);
    v25 = *(a2 + 48);
    outlined copy of Text.Storage(v23, v24, v25);
    *(a1 + 32) = v23;
    *(a1 + 40) = v24;
    *(a1 + 48) = v25;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v27 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v27;
  }

  *(a1 + 64) = *(a2 + 64);

  v28 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v28;
  LOBYTE(v28) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v28;
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = *a1;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      outlined consume of Text.Storage(v6, v7, v8);
      *(a1 + 24) = v4;

      if (!*(a1 + 56))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1);
  }

  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  if (!*(a1 + 56))
  {
LABEL_10:
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    goto LABEL_11;
  }

LABEL_7:
  v10 = *(a2 + 56);
  if (!v10)
  {
    outlined destroy of Text(a1 + 32);
    goto LABEL_10;
  }

  v11 = *(a2 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  outlined consume of Text.Storage(v12, v13, v14);
  *(a1 + 56) = v10;

LABEL_11:
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for AccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

double destroy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1)
{
  if (*(a1 + 18) != 255)
  {
    v2 = *(a1 + 16) | (*(a1 + 18) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a1, *(a1 + 8), v2, BYTE2(v2) & 1);
  }

  if (*(a1 + 42) != 255)
  {
    v3 = *(a1 + 40) | (*(a1 + 42) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 24), *(a1 + 32), v3, BYTE2(v3) & 1);
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v4 = *(a2 + 8) | (*(a2 + 18) << 16);
    v5 = *a2;
    v6 = a2[1];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v6, *(a2 + 8), BYTE2(v4) & 1);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
  }

  if (*(a2 + 42) == 255)
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 39) = *(a2 + 39);
  }

  else
  {
    v7 = *(a2 + 20) | (*(a2 + 42) << 16);
    v8 = a2[3];
    v9 = a2[4];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v8, v9, *(a2 + 20), BYTE2(v7) & 1);
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v7;
    *(a1 + 42) = BYTE2(v7) & 1;
  }

  v10 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v10;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  v11 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v11;
  *(a1 + 104) = a2[13];

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8) | (*(a2 + 18) << 16);
  if (*(a1 + 18) == 255)
  {
    if (BYTE2(v4) == 255)
    {
      v5 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v5;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v8, v4, BYTE2(v4) & 1);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v4;
      *(a1 + 18) = BYTE2(v4) & 1;
    }
  }

  else if (BYTE2(v4) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
    v6 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v6;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v10, v4, BYTE2(v4) & 1);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 18);
    *a1 = v9;
    *(a1 + 8) = v10;
    v14 = *(a1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v12, v14, v13);
  }

  v15 = *(a2 + 20) | (*(a2 + 42) << 16);
  if (*(a1 + 42) == 255)
  {
    if (BYTE2(v15) == 255)
    {
      v16 = *(a2 + 24);
      *(a1 + 39) = *(a2 + 39);
      *(a1 + 24) = v16;
    }

    else
    {
      v18 = *(a2 + 3);
      v19 = *(a2 + 4);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 20), BYTE2(v15) & 1);
      *(a1 + 24) = v18;
      *(a1 + 32) = v19;
      *(a1 + 40) = v15;
      *(a1 + 42) = BYTE2(v15) & 1;
    }
  }

  else if (BYTE2(v15) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 24);
    v17 = *(a2 + 39);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 39) = v17;
  }

  else
  {
    v20 = *(a2 + 3);
    v21 = *(a2 + 4);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 20), BYTE2(v15) & 1);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
    v24 = *(a1 + 42);
    *(a1 + 24) = v20;
    *(a1 + 32) = v21;
    v25 = *(a1 + 40);
    *(a1 + 40) = v15;
    *(a1 + 42) = BYTE2(v15) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, v25, v24);
  }

  *(a1 + 48) = *(a2 + 6);

  v26 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v26;
  LOBYTE(v26) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = v26;
  *(a1 + 88) = *(a2 + 11);

  *(a1 + 96) = *(a2 + 12);

  *(a1 + 104) = *(a2 + 13);

  return a1;
}

uint64_t outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithTake for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 255)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 16) | (*(a2 + 18) << 16);
  if (HIWORD(v4) > 0xFEu)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
    goto LABEL_6;
  }

  v5 = *(a1 + 16) | (*(a1 + 18) << 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 18) = BYTE2(v4) & 1;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v7, v5, BYTE2(v5) & 1);
LABEL_6:
  if (*(a1 + 42) != 255)
  {
    v8 = *(a2 + 40) | (*(a2 + 42) << 16);
    if (HIWORD(v8) <= 0xFEu)
    {
      v9 = *(a1 + 40) | (*(a1 + 42) << 16);
      v10 = *(a1 + 24);
      v11 = *(a1 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v8;
      *(a1 + 42) = BYTE2(v8) & 1;
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
      goto LABEL_11;
    }

    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 39) = *(a2 + 39);
LABEL_11:
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1)
{
  if (*(a1 + 18) != 255)
  {
    v2 = *(a1 + 16) | (*(a1 + 18) << 16);
    result = outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a1, *(a1 + 8), v2, BYTE2(v2) & 1);
  }

  if (*(a1 + 88))
  {
    if (*(a1 + 58) != 255)
    {
      v4 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v4, BYTE2(v4) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v5 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v5, BYTE2(v5) & 1);
    }
  }

  if (*(a1 + 200))
  {
    if (*(a1 + 170) != 255)
    {
      v6 = *(a1 + 168) | (*(a1 + 170) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 152), *(a1 + 160), v6, BYTE2(v6) & 1);
    }

    if (*(a1 + 194) != 255)
    {
      v7 = *(a1 + 192) | (*(a1 + 194) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 176), *(a1 + 184), v7, BYTE2(v7) & 1);
    }
  }

  return result;
}

uint64_t initializeWithCopy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 18) == 255)
  {
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
  }

  else
  {
    v4 = *(a2 + 8) | (*(a2 + 18) << 16);
    v5 = *a2;
    v6 = a2[1];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v6, *(a2 + 8), BYTE2(v4) & 1);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
  }

  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = a2[11];
  if (v7)
  {
    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v9 = *(a2 + 28) | (*(a2 + 58) << 16);
      v10 = a2[5];
      v11 = a2[6];
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, *(a2 + 28), BYTE2(v9) & 1);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v9;
      *(a1 + 58) = BYTE2(v9) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v12 = *(a2 + 40) | (*(a2 + 82) << 16);
      v13 = a2[8];
      v14 = a2[9];
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 40), BYTE2(v12) & 1);
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v12;
      *(a1 + 82) = BYTE2(v12) & 1;
    }

    v15 = a2[12];
    *(a1 + 88) = v7;
    *(a1 + 96) = v15;
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = a2[14];
    *(a1 + 120) = *(a2 + 120);
    v16 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v16;
    *(a1 + 144) = a2[18];

    v8 = a2[25];
    if (v8)
    {
      goto LABEL_14;
    }

LABEL_8:
    *(a1 + 200) = *(a2 + 25);
    *(a1 + 216) = *(a2 + 27);
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 168) = *(a2 + 21);
    *(a1 + 184) = *(a2 + 23);
    return a1;
  }

  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  v8 = a2[25];
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_14:
  if (*(a2 + 170) == 255)
  {
    *(a1 + 152) = *(a2 + 19);
    *(a1 + 167) = *(a2 + 167);
  }

  else
  {
    v17 = *(a2 + 84) | (*(a2 + 170) << 16);
    v18 = a2[19];
    v19 = a2[20];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 84), BYTE2(v17) & 1);
    *(a1 + 152) = v18;
    *(a1 + 160) = v19;
    *(a1 + 168) = v17;
    *(a1 + 170) = BYTE2(v17) & 1;
  }

  if (*(a2 + 194) == 255)
  {
    *(a1 + 176) = *(a2 + 11);
    *(a1 + 191) = *(a2 + 191);
  }

  else
  {
    v20 = *(a2 + 96) | (*(a2 + 194) << 16);
    v21 = a2[22];
    v22 = a2[23];
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v21, v22, *(a2 + 96), BYTE2(v20) & 1);
    *(a1 + 176) = v21;
    *(a1 + 184) = v22;
    *(a1 + 192) = v20;
    *(a1 + 194) = BYTE2(v20) & 1;
  }

  v23 = a2[26];
  *(a1 + 200) = v8;
  *(a1 + 208) = v23;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = a2[28];
  *(a1 + 232) = *(a2 + 232);
  v24 = a2[31];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = v24;
  *(a1 + 256) = a2[32];

  return a1;
}

uint64_t assignWithCopy for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8) | (*(a2 + 18) << 16);
  if (*(a1 + 18) == 255)
  {
    if (*(a2 + 18) == 255)
    {
      v5 = *a2;
      *(a1 + 15) = *(a2 + 15);
      *a1 = v5;
    }

    else
    {
      v7 = *a2;
      v8 = *(a2 + 1);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v8, v4, BYTE2(v4) & 1);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v4;
      *(a1 + 18) = BYTE2(v4) & 1;
    }
  }

  else if (*(a2 + 18) == 255)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
    v6 = *(a2 + 15);
    *a1 = *a2;
    *(a1 + 15) = v6;
  }

  else
  {
    v9 = *a2;
    v10 = *(a2 + 1);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*a2, v10, v4, BYTE2(v4) & 1);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 18);
    *a1 = v9;
    *(a1 + 8) = v10;
    v14 = *(a1 + 16);
    *(a1 + 16) = v4;
    *(a1 + 18) = BYTE2(v4) & 1;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v12, v14, v13);
  }

  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  v15 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v15;
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  v16 = *(a2 + 11);
  if (*(a1 + 88))
  {
    if (v16)
    {
      v17 = *(a2 + 28) | (*(a2 + 58) << 16);
      if (*(a1 + 58) == 255)
      {
        if (*(a2 + 58) == 255)
        {
          v18 = *(a2 + 40);
          *(a1 + 55) = *(a2 + 55);
          *(a1 + 40) = v18;
        }

        else
        {
          v40 = *(a2 + 5);
          v41 = *(a2 + 6);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v40, v41, *(a2 + 28), BYTE2(v17) & 1);
          *(a1 + 40) = v40;
          *(a1 + 48) = v41;
          *(a1 + 56) = v17;
          *(a1 + 58) = BYTE2(v17) & 1;
        }
      }

      else if (*(a2 + 58) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 40);
        v25 = *(a2 + 55);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 55) = v25;
      }

      else
      {
        v42 = *(a2 + 5);
        v43 = *(a2 + 6);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v43, *(a2 + 28), BYTE2(v17) & 1);
        v44 = *(a1 + 40);
        v45 = *(a1 + 48);
        v46 = *(a1 + 58);
        *(a1 + 40) = v42;
        *(a1 + 48) = v43;
        v47 = *(a1 + 56);
        *(a1 + 56) = v17;
        *(a1 + 58) = BYTE2(v17) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, v47, v46);
      }

      v48 = *(a2 + 40) | (*(a2 + 82) << 16);
      if (*(a1 + 82) == 255)
      {
        if (*(a2 + 82) == 255)
        {
          v49 = a2[4];
          *(a1 + 79) = *(a2 + 79);
          *(a1 + 64) = v49;
        }

        else
        {
          v51 = *(a2 + 8);
          v52 = *(a2 + 9);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v51, v52, *(a2 + 40), BYTE2(v48) & 1);
          *(a1 + 64) = v51;
          *(a1 + 72) = v52;
          *(a1 + 80) = v48;
          *(a1 + 82) = BYTE2(v48) & 1;
        }
      }

      else if (*(a2 + 82) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 64);
        v50 = *(a2 + 79);
        *(a1 + 64) = a2[4];
        *(a1 + 79) = v50;
      }

      else
      {
        v53 = *(a2 + 8);
        v54 = *(a2 + 9);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v53, v54, *(a2 + 40), BYTE2(v48) & 1);
        v55 = *(a1 + 64);
        v56 = *(a1 + 72);
        v57 = *(a1 + 82);
        *(a1 + 64) = v53;
        *(a1 + 72) = v54;
        v58 = *(a1 + 80);
        *(a1 + 80) = v48;
        *(a1 + 82) = BYTE2(v48) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v55, v56, v58, v57);
      }

      *(a1 + 88) = *(a2 + 11);

      v59 = *(a2 + 12);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 96) = v59;
      LOBYTE(v59) = *(a2 + 120);
      *(a1 + 112) = *(a2 + 14);
      *(a1 + 120) = v59;
      *(a1 + 128) = *(a2 + 16);

      *(a1 + 136) = *(a2 + 17);

      *(a1 + 144) = *(a2 + 18);
    }

    else
    {
      outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 40);
      v20 = *(a2 + 72);
      v21 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v21;
      *(a1 + 72) = v20;
      v22 = *(a2 + 104);
      v23 = *(a2 + 120);
      v24 = *(a2 + 136);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 136) = v24;
      *(a1 + 120) = v23;
      *(a1 + 104) = v22;
    }
  }

  else if (v16)
  {
    if (*(a2 + 58) == 255)
    {
      v19 = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
      *(a1 + 40) = v19;
    }

    else
    {
      v31 = *(a2 + 28) | (*(a2 + 58) << 16);
      v32 = *(a2 + 5);
      v33 = *(a2 + 6);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v32, v33, *(a2 + 28), BYTE2(v31) & 1);
      *(a1 + 40) = v32;
      *(a1 + 48) = v33;
      *(a1 + 56) = v31;
      *(a1 + 58) = BYTE2(v31) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      v34 = a2[4];
      *(a1 + 79) = *(a2 + 79);
      *(a1 + 64) = v34;
    }

    else
    {
      v35 = *(a2 + 40) | (*(a2 + 82) << 16);
      v36 = *(a2 + 8);
      v37 = *(a2 + 9);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v36, v37, *(a2 + 40), BYTE2(v35) & 1);
      *(a1 + 64) = v36;
      *(a1 + 72) = v37;
      *(a1 + 80) = v35;
      *(a1 + 82) = BYTE2(v35) & 1;
    }

    *(a1 + 88) = *(a2 + 11);
    v38 = *(a2 + 12);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 96) = v38;
    v39 = *(a2 + 14);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = v39;
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 144) = *(a2 + 18);
  }

  else
  {
    v26 = *(a2 + 40);
    v27 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v27;
    *(a1 + 40) = v26;
    v28 = *(a2 + 88);
    v29 = *(a2 + 104);
    v30 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v30;
    *(a1 + 104) = v29;
    *(a1 + 88) = v28;
  }

  v60 = *(a2 + 25);
  if (*(a1 + 200))
  {
    if (v60)
    {
      v61 = *(a2 + 84) | (*(a2 + 170) << 16);
      if (*(a1 + 170) == 255)
      {
        if (BYTE2(v61) == 255)
        {
          v62 = *(a2 + 152);
          *(a1 + 167) = *(a2 + 167);
          *(a1 + 152) = v62;
        }

        else
        {
          v84 = *(a2 + 19);
          v85 = *(a2 + 20);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v84, v85, *(a2 + 84), BYTE2(v61) & 1);
          *(a1 + 152) = v84;
          *(a1 + 160) = v85;
          *(a1 + 168) = v61;
          *(a1 + 170) = BYTE2(v61) & 1;
        }
      }

      else if (BYTE2(v61) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 152);
        v69 = *(a2 + 167);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 167) = v69;
      }

      else
      {
        v86 = *(a2 + 19);
        v87 = *(a2 + 20);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v86, v87, *(a2 + 84), BYTE2(v61) & 1);
        v88 = *(a1 + 152);
        v89 = *(a1 + 160);
        v90 = *(a1 + 170);
        *(a1 + 152) = v86;
        *(a1 + 160) = v87;
        v91 = *(a1 + 168);
        *(a1 + 168) = v61;
        *(a1 + 170) = BYTE2(v61) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v88, v89, v91, v90);
      }

      v92 = *(a2 + 96) | (*(a2 + 194) << 16);
      if (*(a1 + 194) == 255)
      {
        if (BYTE2(v92) == 255)
        {
          v93 = a2[11];
          *(a1 + 191) = *(a2 + 191);
          *(a1 + 176) = v93;
        }

        else
        {
          v95 = *(a2 + 22);
          v96 = *(a2 + 23);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v95, v96, *(a2 + 96), BYTE2(v92) & 1);
          *(a1 + 176) = v95;
          *(a1 + 184) = v96;
          *(a1 + 192) = v92;
          *(a1 + 194) = BYTE2(v92) & 1;
        }
      }

      else if (BYTE2(v92) == 255)
      {
        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 176);
        v94 = *(a2 + 191);
        *(a1 + 176) = a2[11];
        *(a1 + 191) = v94;
      }

      else
      {
        v97 = *(a2 + 22);
        v98 = *(a2 + 23);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v97, v98, *(a2 + 96), BYTE2(v92) & 1);
        v99 = *(a1 + 176);
        v100 = *(a1 + 184);
        v101 = *(a1 + 194);
        *(a1 + 176) = v97;
        *(a1 + 184) = v98;
        v102 = *(a1 + 192);
        *(a1 + 192) = v92;
        *(a1 + 194) = BYTE2(v92) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v99, v100, v102, v101);
      }

      *(a1 + 200) = *(a2 + 25);

      v103 = *(a2 + 26);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 208) = v103;
      LOBYTE(v103) = *(a2 + 232);
      *(a1 + 224) = *(a2 + 28);
      *(a1 + 232) = v103;
      *(a1 + 240) = *(a2 + 30);

      *(a1 + 248) = *(a2 + 31);

      *(a1 + 256) = *(a2 + 32);
    }

    else
    {
      outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 152);
      v64 = *(a2 + 184);
      v65 = *(a2 + 168);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = v65;
      *(a1 + 184) = v64;
      v66 = *(a2 + 216);
      v67 = *(a2 + 232);
      v68 = *(a2 + 248);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 248) = v68;
      *(a1 + 232) = v67;
      *(a1 + 216) = v66;
    }
  }

  else if (v60)
  {
    if (*(a2 + 170) == 255)
    {
      v63 = *(a2 + 152);
      *(a1 + 167) = *(a2 + 167);
      *(a1 + 152) = v63;
    }

    else
    {
      v75 = *(a2 + 84) | (*(a2 + 170) << 16);
      v76 = *(a2 + 19);
      v77 = *(a2 + 20);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v76, v77, *(a2 + 84), BYTE2(v75) & 1);
      *(a1 + 152) = v76;
      *(a1 + 160) = v77;
      *(a1 + 168) = v75;
      *(a1 + 170) = BYTE2(v75) & 1;
    }

    if (*(a2 + 194) == 255)
    {
      v78 = a2[11];
      *(a1 + 191) = *(a2 + 191);
      *(a1 + 176) = v78;
    }

    else
    {
      v79 = *(a2 + 96) | (*(a2 + 194) << 16);
      v80 = *(a2 + 22);
      v81 = *(a2 + 23);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v80, v81, *(a2 + 96), BYTE2(v79) & 1);
      *(a1 + 176) = v80;
      *(a1 + 184) = v81;
      *(a1 + 192) = v79;
      *(a1 + 194) = BYTE2(v79) & 1;
    }

    *(a1 + 200) = *(a2 + 25);
    v82 = *(a2 + 26);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 208) = v82;
    v83 = *(a2 + 28);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v83;
    *(a1 + 240) = *(a2 + 30);
    *(a1 + 248) = *(a2 + 31);
    *(a1 + 256) = *(a2 + 32);
  }

  else
  {
    v70 = *(a2 + 152);
    v71 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v71;
    *(a1 + 152) = v70;
    v72 = *(a2 + 200);
    v73 = *(a2 + 216);
    v74 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 232) = v74;
    *(a1 + 216) = v73;
    *(a1 + 200) = v72;
  }

  return a1;
}

uint64_t assignWithTake for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 18) == 255)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 16) | (*(a2 + 18) << 16);
  if (HIWORD(v4) > 0xFEu)
  {
    outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1);
LABEL_4:
    *a1 = *a2;
    *(a1 + 15) = *(a2 + 15);
    goto LABEL_6;
  }

  v5 = *(a1 + 16) | (*(a1 + 18) << 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 18) = BYTE2(v4) & 1;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v7, v5, BYTE2(v5) & 1);
LABEL_6:
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  if (*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      if (*(a1 + 58) != 255)
      {
        v8 = *(a2 + 56) | (*(a2 + 58) << 16);
        if (HIWORD(v8) <= 0xFEu)
        {
          v9 = *(a1 + 56) | (*(a1 + 58) << 16);
          v10 = *(a1 + 40);
          v11 = *(a1 + 48);
          *(a1 + 40) = *(a2 + 40);
          *(a1 + 56) = v8;
          *(a1 + 58) = BYTE2(v8) & 1;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
LABEL_16:
          if (*(a1 + 82) != 255)
          {
            v12 = *(a2 + 80) | (*(a2 + 82) << 16);
            if (HIWORD(v12) <= 0xFEu)
            {
              v13 = *(a1 + 80) | (*(a1 + 82) << 16);
              v14 = *(a1 + 64);
              v15 = *(a1 + 72);
              *(a1 + 64) = *(a2 + 64);
              *(a1 + 80) = v12;
              *(a1 + 82) = BYTE2(v12) & 1;
              outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v14, v15, v13, BYTE2(v13) & 1);
LABEL_21:
              *(a1 + 88) = *(a2 + 88);

              *(a1 + 96) = *(a2 + 96);
              *(a1 + 104) = *(a2 + 104);
              *(a1 + 112) = *(a2 + 112);
              *(a1 + 120) = *(a2 + 120);
              *(a1 + 128) = *(a2 + 128);

              *(a1 + 136) = *(a2 + 136);

              *(a1 + 144) = *(a2 + 144);

              if (!*(a1 + 200))
              {
                goto LABEL_28;
              }

              goto LABEL_22;
            }

            outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 64);
          }

          *(a1 + 64) = *(a2 + 64);
          *(a1 + 79) = *(a2 + 79);
          goto LABEL_21;
        }

        outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 40);
      }

      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
      goto LABEL_16;
    }

    outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 40);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 200))
  {
    goto LABEL_28;
  }

LABEL_22:
  if (*(a2 + 200))
  {
    if (*(a1 + 170) != 255)
    {
      v16 = *(a2 + 168) | (*(a2 + 170) << 16);
      if (HIWORD(v16) <= 0xFEu)
      {
        v17 = *(a1 + 168) | (*(a1 + 170) << 16);
        v18 = *(a1 + 152);
        v19 = *(a1 + 160);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 168) = v16;
        *(a1 + 170) = BYTE2(v16) & 1;
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, v17, BYTE2(v17) & 1);
LABEL_30:
        if (*(a1 + 194) != 255)
        {
          v20 = *(a2 + 192) | (*(a2 + 194) << 16);
          if (HIWORD(v20) <= 0xFEu)
          {
            v21 = *(a1 + 192) | (*(a1 + 194) << 16);
            v22 = *(a1 + 176);
            v23 = *(a1 + 184);
            *(a1 + 176) = *(a2 + 176);
            *(a1 + 192) = v20;
            *(a1 + 194) = BYTE2(v20) & 1;
            outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, v21, BYTE2(v21) & 1);
            goto LABEL_35;
          }

          outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 176);
        }

        *(a1 + 176) = *(a2 + 176);
        *(a1 + 191) = *(a2 + 191);
LABEL_35:
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

      outlined destroy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1 + 152);
    }

    *(a1 + 152) = *(a2 + 152);
    *(a1 + 167) = *(a2 + 167);
    goto LABEL_30;
  }

  outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(a1 + 152);
LABEL_28:
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 264))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for CodableAccessibilityDataSeriesConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.ValueDescription.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys, &unk_1F006CBE8, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v20 = v3;
  v21 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 18);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = a1[3];
  v12 = a1;
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v5, v6, v8 | (v7 << 16));
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v5;
  v24 = v6;
  v26 = v7;
  v25 = v8;
  v15 = v20;
  v27 = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
  v16 = v22;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v16)
  {
    v17 = outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v23, v24, v25 | (v26 << 16));
    return (*(v21 + 8))(v14, v15, v17);
  }

  else
  {
    v19 = v21;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v23, v24, v25 | (v26 << 16));
    v23 = v9;
    v24 = v10;
    v27 = 1;
    type metadata accessor for Range<Double>();
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x1E69E63C0], MEMORY[0x1E69E66B0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v19 + 8))(v14, v15);
  }
}

void CodableAccessibilityDataSeriesConfiguration.ValueDescription.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys, &unk_1F006CBE8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 16711680;
  }

  else
  {
    v14 = v6;
    v9 = v15;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    v19 = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = *(&v16 + 1);
    v11 = v16;
    v12 = v17 | (v18 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    type metadata accessor for Range<Double>();
    v19 = 1;
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x1E69E63E8], MEMORY[0x1E69E66E0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v8, v5);
    v13 = v16;
    *v9 = v11;
    *(v9 + 8) = v10;
    *(v9 + 18) = BYTE2(v12);
    *(v9 + 16) = v12;
    *(v9 + 24) = v13;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v11, v10, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v11, v10, v12);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7470697263736564;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018DD7A890 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  v91 = a1[4];
  v92 = v3;
  v4 = a1[7];
  v93 = a1[6];
  v94 = v4;
  v5 = a1[1];
  v87 = *a1;
  v88 = v5;
  v6 = a1[3];
  v89 = a1[2];
  v90 = v6;
  v8 = *a2;
  v7 = a2[1];
  v9 = *(&v5 + 1);
  if (*(&v5 + 1) && (v11 = *(&v87 + 1), v10 = v88, v12 = v87, type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]), inited = swift_initStackObject(), *(inited + 16) = xmmword_18DDA6EB0, *(inited + 32) = v12, *(inited + 40) = v11, *(inited + 48) = v10 & 1, *(inited + 56) = v9, v80 = v8, v81 = v7, v78 = 0, v79 = 0, , , outlined copy of Text?(v12, v11, v10, v9), CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(inited, &v80, 0, &v78, &v82), v84 != 255))
  {
    v71 = v83 | (v84 << 16);
    v70 = v82;
  }

  else
  {
    v70 = 0uLL;
    v71 = 16711680;
  }

  v14 = 16711680;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v15 = *(&v90 + 1);
  v76 = v8;
  if (*(&v90 + 1) && (v17 = *(&v89 + 1), v16 = v90, v18 = v89, type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]), v19 = swift_initStackObject(), *(v19 + 16) = xmmword_18DDA6EB0, *(v19 + 32) = v18, *(v19 + 40) = v17, *(v19 + 48) = v16 & 1, *(v19 + 56) = v15, v80 = v8, v81 = v7, v78 = 0, v79 = 0, , , outlined copy of Text?(v18, v17, v16, v15), CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v19, &v80, 0, &v78, &v82), v84 != 255))
  {
    v14 = v83 | (v84 << 16);
    v68 = v82;
  }

  else
  {
    v68 = 0uLL;
  }

  v69 = v14;
  v75 = v7;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v20 = v91;
  v21 = *(v91 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v91 + 56;
    v74 = *(v91 + 16);
    v64 = v21 - 1;
    v73 = MEMORY[0x1E69E7CC0];
    v66 = v91 + 56;
    do
    {
      v24 = (v23 + 32 * v22);
      v25 = v22;
      while (1)
      {
        if (v25 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v22 = v25 + 1;
        v26 = *v24;
        v27 = *(v24 - 8);
        v29 = *(v24 - 3);
        v28 = *(v24 - 2);
        type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
        v30 = swift_initStackObject();
        *(v30 + 16) = xmmword_18DDA6EB0;
        *(v30 + 32) = v29;
        *(v30 + 40) = v28;
        *(v30 + 48) = v27;
        *(v30 + 56) = v26;
        v80 = v76;
        v81 = v75;
        v78 = 0;
        v79 = 0;

        outlined copy of Text.Storage(v29, v28, v27);
        CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v30, &v80, 0, &v78, &v82);
        v31 = v84;
        if (v84 != 255)
        {
          break;
        }

        v24 += 4;
        ++v25;
        if (v74 == v22)
        {
          goto LABEL_23;
        }
      }

      v62 = v82;
      v32 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
      }

      v34 = v73[2];
      v33 = v73[3];
      if (v34 >= v33 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v73);
      }

      v35 = v32 & 0xFF00FFFF | (v31 << 16);
      v73[2] = v34 + 1;
      v36 = &v73[3 * v34];
      *(v36 + 2) = v62;
      *(v36 + 24) = v35;
      *(v36 + 50) = BYTE2(v35) & 1;
      v23 = v66;
    }

    while (v64 != v25);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v37 = *(&v91 + 1);
  v86 = v92;
  v38 = *(&v92 + 1);
  v85 = v93;
  v39 = *(&v93 + 1);
  v40 = *(&v94 + 1);
  v41 = v94;
  v42 = *(*(&v94 + 1) + 16);
  if (v42)
  {
    v65 = *(&v92 + 1);
    v67 = *(&v91 + 1);
    v77 = MEMORY[0x1E69E7CC0];
    v63 = *(&v93 + 1);

    v61 = v41;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v43 = v77;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v44 = (v40 + 72);
    do
    {
      v46 = *(v44 - 5);
      v45 = *(v44 - 4);
      v47 = *(v44 - 24);
      v48 = *(v44 - 2);
      v49 = *(v44 - 1);
      v50 = *v44;
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_18DDA6EB0;
      *(v51 + 32) = v46;
      *(v51 + 40) = v45;
      *(v51 + 48) = v47;
      *(v51 + 56) = v48;
      v80 = v76;
      v81 = v75;
      v78 = 0;
      v79 = 0;
      outlined copy of Text.Storage(v46, v45, v47);

      outlined copy of Text.Storage(v46, v45, v47);

      CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v51, &v80, 0, &v78, &v82);
      if (v84 == 255)
      {
        v52 = 0;
      }

      else
      {
        v52 = v82;
      }

      if (v84 == 255)
      {
        v53 = 0;
      }

      else
      {
        v53 = *(&v82 + 1);
      }

      if (v84 == 255)
      {
        v54 = 16711680;
      }

      else
      {
        v54 = v83 | (v84 << 16);
      }

      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
      outlined consume of Text.Storage(v46, v45, v47);

      v56 = *(v77 + 16);
      v55 = *(v77 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
      }

      *(v77 + 16) = v56 + 1;
      v57 = v77 + 40 * v56;
      *(v57 + 32) = v52;
      *(v57 + 40) = v53;
      *(v57 + 50) = BYTE2(v54);
      *(v57 + 48) = v54;
      *(v57 + 56) = v49;
      *(v57 + 64) = v50;
      v44 += 6;
      --v42;
    }

    while (v42);

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v87);
    v58 = a3;
    v38 = v65;
    v37 = v67;
    v41 = v61;
    v39 = v63;
  }

  else
  {

    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v87);
    v43 = MEMORY[0x1E69E7CC0];
    v58 = a3;
  }

  v59 = v86;
  v60 = v85;
  *v58 = v70;
  *(v58 + 16) = v71;
  *(v58 + 18) = BYTE2(v71);
  *(v58 + 24) = v68;
  *(v58 + 40) = v69;
  *(v58 + 42) = BYTE2(v69);
  *(v58 + 48) = v73;
  *(v58 + 56) = v37;
  *(v58 + 64) = v59;
  *(v58 + 72) = v38;
  *(v58 + 80) = v60;
  *(v58 + 88) = v39;
  *(v58 + 96) = v41;
  *(v58 + 104) = v43;
}

void CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40) | (*(v1 + 42) << 16);
  v5 = *(v1 + 48);
  v69 = *(v1 + 56);
  v68 = *(v1 + 64);
  v67 = *(v1 + 72);
  v66 = *(v1 + 80);
  v71 = *(v1 + 96);
  v72 = *(v1 + 88);
  v73 = *(v1 + 104);
  if (*(v1 + 18) == 255)
  {
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v6 = *v1;
    v7 = *(v1 + 16);
    if (((*(v1 + 18) << 16) & 0x10000) != 0)
    {
      v12 = *(v1 + 8);
      type metadata accessor for AccessibilityTextStorage();
      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v12;
      *(v13 + 32) = v7 & 1;
      *(v13 + 33) = HIBYTE(v7) & 1;
      v64 = 1;
      v65 = v13;
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v6, v12, v7, 1);
      v63 = 0;
      v62 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v8 = ResolvedStyledText.accessibilityText.getter();
      v62 = v10;
      v63 = v9;
      v64 = v11 & 1;
      v65 = v8;
    }
  }

  if (BYTE2(v4) == 255)
  {
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
  }

  else if ((v4 & 0x10000) != 0)
  {
    type metadata accessor for AccessibilityTextStorage();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v3;
    *(v18 + 32) = v4 & 1;
    *(v18 + 33) = BYTE1(v4) & 1;
    v60 = 1;
    v61 = v18;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v2, v3, v4, 1);
    v59 = 0;
    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v14 = ResolvedStyledText.accessibilityText.getter();
    v58 = v16;
    v59 = v15;
    v60 = v17 & 1;
    v61 = v14;
  }

  v19 = *(v5 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v84 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v21 = v84;
    v22 = (v5 + 50);
    while (1)
    {
      v76 = v21;
      v23 = *(v22 - 18);
      v24 = *(v22 - 10);
      v25 = *(v22 - 1);
      if (*v22)
      {
        type metadata accessor for AccessibilityTextStorage();
        v26 = swift_allocObject();
        *(v26 + 16) = v23;
        *(v26 + 24) = v24;
        *(v26 + 32) = v25 & 1;
        *(v26 + 33) = HIBYTE(v25) & 1;
        outlined copy of AccessibilityText.Storage(v23, v24, v25 & 1);
      }

      else
      {
        v27 = v23[27];
        if (v27)
        {
          v83 = type metadata accessor for NSAttributedString();
          *&v82 = v27;
          v81 = 0;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          v29 = [v27 isKindOfClass_];
          v30 = v29;
          if (v29)
          {
            outlined init with take of Any(&v82, v80);
            swift_dynamicCast();
            v31 = 0;
            v32 = v78;
            v33 = v81;
          }

          else
          {
            outlined init with copy of Any(&v82, v80);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_47:
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
              return;
            }

            v32 = v78;
            v31 = v79;
            __swift_destroy_boxed_opaque_existential_1(&v82);
            v33 = 0;
          }

          type metadata accessor for AccessibilityTextStorage();
          v26 = swift_allocObject();
          *(v26 + 16) = v32;
          *(v26 + 24) = v31;
          *(v26 + 32) = v30;
          *(v26 + 33) = v33;
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v23, v24, v25, 0);
          v20 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          type metadata accessor for LocalizedTextStorage();
          v26 = swift_allocObject();
          *(v26 + 16) = 0;
          *(v26 + 24) = 0xE000000000000000;
          *(v26 + 32) = 0;
          *(v26 + 40) = v20;
          *(v26 + 48) = 0;
          *(v26 + 56) = 0;
          *(v26 + 64) = 0;
        }
      }

      v21 = v76;
      v84 = v76;
      v35 = *(v76 + 16);
      v34 = *(v76 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v21 = v84;
      }

      *(v21 + 16) = v35 + 1;
      v36 = v21 + 32 * v35;
      *(v36 + 32) = v26;
      *(v36 + 40) = 0;
      *(v36 + 48) = 1;
      *(v36 + 56) = v20;
      v22 += 24;
      if (!--v19)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v37 = *(v73 + 16);
  if (v37)
  {
    v77 = v21;
    v84 = v20;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v84;
    v39 = (v73 + 56);
    do
    {
      v40 = *(v39 - 4) | (*(v39 - 6) << 16);
      v41 = *v39;
      if (*(v39 - 6) == 255)
      {
        v49 = 0;
        v43 = 0xE000000000000000;
      }

      else
      {
        v42 = *(v39 - 3);
        v74 = *v39;
        if (((*(v39 - 6) << 16) & 0x10000) != 0)
        {
          v50 = *(v39 - 2);
          type metadata accessor for AccessibilityTextStorage();
          v49 = swift_allocObject();
          *(v49 + 16) = v42;
          *(v49 + 24) = v50;
          *(v49 + 32) = v40 & 1;
          *(v49 + 33) = BYTE1(v40) & 1;
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v50, v40, 1);
          v41 = v74;
          v43 = 0;
        }

        else
        {
          v43 = v42[27];
          if (v43)
          {
            v83 = type metadata accessor for NSAttributedString();
            *&v82 = v43;
            v81 = 0;
            v44 = [v43 isKindOfClass_];
            v45 = v44;
            if (v44)
            {
              outlined init with take of Any(&v82, v80);
              swift_dynamicCast();
              v46 = 0;
              v47 = v78;
              v48 = v81;
            }

            else
            {
              outlined init with copy of Any(&v82, v80);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_47;
              }

              v47 = v78;
              v46 = v79;
              __swift_destroy_boxed_opaque_existential_1(&v82);
              v48 = 0;
            }

            type metadata accessor for AccessibilityTextStorage();
            v49 = swift_allocObject();
            v43 = 0;
            *(v49 + 16) = v47;
            *(v49 + 24) = v46;
            *(v49 + 32) = v45;
            *(v49 + 33) = v48;
            v20 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            type metadata accessor for LocalizedTextStorage();
            v49 = swift_allocObject();
            *(v49 + 16) = 0;
            *(v49 + 24) = 0xE000000000000000;
            *(v49 + 32) = 0;
            *(v49 + 40) = v20;
            *(v49 + 48) = 0;
            *(v49 + 56) = 0;
            *(v49 + 64) = 0;
          }

          v41 = v74;
        }
      }

      v84 = v38;
      v52 = *(v38 + 16);
      v51 = *(v38 + 24);
      if (v52 >= v51 >> 1)
      {
        v75 = v41;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v41 = v75;
        v38 = v84;
      }

      *(v38 + 16) = v52 + 1;
      v53 = v38 + 48 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v43;
      *(v53 + 48) = v40 < 0xFF0000;
      *(v53 + 56) = v20;
      *(v53 + 64) = v41;
      v39 = (v39 + 40);
      --v37;
    }

    while (v37);
    v55 = v69;
    v54 = a1;
    v56 = v71;
    v57 = v72;
    v21 = v77;
  }

  else
  {
    v57 = v72;

    v38 = MEMORY[0x1E69E7CC0];
    v55 = v69;
    v54 = a1;
  }

  *v54 = v65;
  *(v54 + 8) = v63;
  *(v54 + 16) = v64;
  *(v54 + 24) = v62;
  *(v54 + 32) = v61;
  *(v54 + 40) = v59;
  *(v54 + 48) = v60;
  *(v54 + 56) = v58;
  *(v54 + 64) = v21;
  *(v54 + 72) = v55;
  *(v54 + 80) = v68;
  *(v54 + 88) = v67;
  *(v54 + 96) = v66;
  *(v54 + 104) = v57;
  *(v54 + 112) = v56;
  *(v54 + 120) = v38;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys, &unk_1F006CA48, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 18);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v33 = *(v1 + 32);
  v34 = v11;
  v43 = *(v1 + 42);
  v32 = *(v1 + 40);
  v12 = *(v1 + 56);
  v31 = *(v1 + 48);
  v29 = v12;
  v30 = *(v1 + 64);
  v13 = *(v1 + 72);
  v28 = *(v1 + 80);
  v14 = *(v1 + 96);
  v26 = *(v1 + 88);
  v27 = v13;
  v24 = *(v1 + 104);
  v25 = v14;
  v15 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v8, v7, v10 | (v9 << 16));
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v39 = v8;
  v40 = v7;
  v16 = v36;
  v42 = v9;
  v41 = v10;
  v44 = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
  v17 = v38;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v17)
  {
    v18 = outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v39, v40, v41 | (v42 << 16));
    return (*(v37 + 8))(v6, v16, v18);
  }

  else
  {
    v20 = v31;
    v21 = v37;
    v22 = v32 | (v43 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v39, v40, v41 | (v42 << 16));
    v39 = v34;
    v40 = v33;
    v42 = BYTE2(v22);
    v41 = v22;
    v44 = 1;
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v34, v33, v22);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v39, v40, v41 | (v42 << 16));
    v39 = v20;
    v44 = 2;
    type metadata accessor for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>](0);
    lazy protocol witness table accessor for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A], &lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v39) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v39) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = v26;
    v44 = 5;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x1E69E63C0], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = v25;
    v44 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = v24;
    v44 = 7;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration.ValueDescription], &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v21 + 8))(v6, v16, v23);
  }
}

void CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys, &unk_1F006CA48, MEMORY[0x1E69E6F48]);
  v44 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();
  v45 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v86 = v2;
    LODWORD(v45) = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    if (v45)
    {
    }
  }

  else
  {
    v9 = v5;
    v10 = v43;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    LOBYTE(v47) = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v54;
    v39 = v55;
    v38 = v56 | (v57 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    LOBYTE(v47) = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v54;
    v13 = v55;
    v37 = v56 | (v57 << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    type metadata accessor for [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>](0);
    LOBYTE(v47) = 2;
    lazy protocol witness table accessor for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>] and conformance <A> [A], &lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v42 = v54;
    LOBYTE(v54) = 3;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v81 = v15 & 1;
    LOBYTE(v54) = 4;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v14;
    v79 = v16 & 1;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v18 = v17;
    LOBYTE(v47) = 5;
    lazy protocol witness table accessor for type [Double] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x1E69E63E8], MEMORY[0x1E69E6330]);
    v19 = v44;
    v86 = v18;
    v40 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v54;
    LOBYTE(v47) = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v54;
    type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for [CodableAccessibilityDataSeriesConfiguration.ValueDescription], &type metadata for CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E62F8]);
    v76 = 7;
    lazy protocol witness table accessor for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityDataSeriesConfiguration.ValueDescription] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.ValueDescription and conformance CodableAccessibilityDataSeriesConfiguration.ValueDescription, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v86 = 0;
    (*(v9 + 8))(v45, v19);
    v30 = v77;
    v33 = v13;
    v34 = v11;
    *&v47 = v11;
    *(&v47 + 1) = v39;
    LOWORD(v14) = v37;
    LOWORD(v9) = v38;
    LODWORD(v45) = HIWORD(v38);
    BYTE2(v48) = BYTE2(v38);
    LOWORD(v48) = v38;
    *(&v48 + 3) = v84;
    BYTE7(v48) = v85;
    v32 = v12;
    *(&v48 + 1) = v12;
    *&v49 = v13;
    LODWORD(v44) = HIWORD(v37);
    BYTE10(v49) = BYTE2(v37);
    WORD4(v49) = v37;
    *(&v49 + 11) = v82;
    HIBYTE(v49) = v83;
    v21 = v41;
    v22 = v35;
    *&v50 = v42;
    *(&v50 + 1) = v36;
    v31 = v81;
    LOBYTE(v51) = v81;
    *(&v51 + 1) = *v80;
    DWORD1(v51) = *&v80[3];
    *(&v51 + 1) = v35;
    LOBYTE(v11) = v79;
    LOBYTE(v52) = v79;
    *(&v52 + 1) = *v78;
    DWORD1(v52) = *&v78[3];
    v23 = v40;
    *(&v52 + 1) = v41;
    *&v53 = v40;
    *(&v53 + 1) = v77;
    v24 = v48;
    *v10 = v47;
    v10[1] = v24;
    v25 = v49;
    v26 = v50;
    v27 = v53;
    v28 = v51;
    v10[5] = v52;
    v10[6] = v27;
    v10[3] = v26;
    v10[4] = v28;
    v10[2] = v25;
    outlined init with copy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(&v47, &v54);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v54 = v34;
    v55 = v39;
    v57 = v45;
    v56 = v9;
    v58 = v84;
    v59 = v85;
    v60 = v32;
    v61 = v33;
    v63 = v44;
    v62 = v14;
    v64 = v82;
    v65 = v83;
    v66 = v42;
    v67 = v36;
    v68 = v31;
    *&v69[3] = *&v80[3];
    *v69 = *v80;
    v70 = v22;
    v71 = v11;
    *v72 = *v78;
    *&v72[3] = *&v78[3];
    v73 = v21;
    v74 = v23;
    v75 = v30;
    outlined destroy of CodableAccessibilityDataSeriesConfiguration.AxisConfiguration(&v54);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x7365756C6176;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x566D756D6978616DLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x79726F6765746163;
  if (v1 != 2)
  {
    v5 = 0x566D756D696E696DLL;
  }

  if (*v0)
  {
    v2 = 0x6562614C74696E75;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 CodableAccessibilityDataSeriesConfiguration.init(_:in:)@<Q0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x138uLL);
  v5 = *a2;
  v6 = a2[1];
  v7 = __dst[0];
  v8 = __dst[1];
  v9 = __dst[2];
  v10 = __dst[3];
  type metadata accessor for AccessibilityDataSeriesConfiguration.AxisConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
  *&v66[0] = v5;
  *(&v66[0] + 1) = v6;
  v58 = 0u;

  outlined copy of Text.Storage(v7, v8, v9);
  CodableAccessibilityVersionStorage<>.init(texts:in:optional:idiom:)(v11, v66, 0, &v58, v67);
  v42 = v67[1];
  v43 = v67[0];
  v12 = v69;
  v13 = v68;
  outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
  v40 = BYTE1(__dst[4]);
  v41 = __dst[4];
  v39 = __dst[5];
  v70 = __dst[6];
  v14 = BYTE1(__dst[6]);
  v15 = BYTE2(__dst[6]);
  v66[4] = *&__dst[15];
  v66[5] = *&__dst[17];
  v66[6] = *&__dst[19];
  v66[7] = *&__dst[21];
  v66[0] = *&__dst[7];
  v66[1] = *&__dst[9];
  v66[2] = *&__dst[11];
  v66[3] = *&__dst[13];
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(v66) == 1)
  {
    v16 = 0;
    v17 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
  }

  else
  {
    v62 = *&__dst[15];
    v63 = *&__dst[17];
    v64 = *&__dst[19];
    v65 = *&__dst[21];
    v58 = *&__dst[7];
    v59 = *&__dst[9];
    v60 = *&__dst[11];
    v61 = *&__dst[13];
    *&v48[0] = v5;
    *(&v48[0] + 1) = v6;

    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[7], &v49, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(&v58, v48, &v49);
    v37 = v50;
    v38 = v49;
    v35 = v52;
    v36 = v51;
    v33 = v54;
    v34 = v53;
    v17 = *(&v55 + 1);
    v16 = v55;
  }

  v18 = v13 | (v12 << 16);
  memset(v57, 0, sizeof(v57));
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v57, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  v62 = *&__dst[31];
  v63 = *&__dst[33];
  v64 = *&__dst[35];
  v65 = *&__dst[37];
  v58 = *&__dst[23];
  v59 = *&__dst[25];
  v60 = *&__dst[27];
  v61 = *&__dst[29];
  if (_s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOg(&v58) == 1)
  {

    outlined destroy of AccessibilityDataSeriesConfiguration(__dst);
    v19 = 0;
    v20 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    v48[4] = *&__dst[31];
    v48[5] = *&__dst[33];
    v48[6] = *&__dst[35];
    v48[7] = *&__dst[37];
    v48[0] = *&__dst[23];
    v48[1] = *&__dst[25];
    v48[2] = *&__dst[27];
    v48[3] = *&__dst[29];
    v51 = *&__dst[27];
    v52 = *&__dst[29];
    v47[0] = v5;
    v47[1] = v6;
    v49 = *&__dst[23];
    v50 = *&__dst[25];
    v55 = *&__dst[35];
    v56 = *&__dst[37];
    v53 = *&__dst[31];
    v54 = *&__dst[33];
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[23], v44, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration(&v49, v44);
    CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.init(_:in:)(v48, v47, v44);
    outlined destroy of AccessibilityDataSeriesConfiguration(__dst);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&__dst[23], &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
    v31 = v44[1];
    v32 = v44[0];
    v29 = v44[3];
    v30 = v44[2];
    v27 = v44[5];
    v28 = v44[4];
    v19 = v45;
    v20 = v46;
  }

  v54 = 0u;
  v55 = 0u;
  v21 = HIWORD(v18);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v49, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  v22 = v70;
  v23 = v42;
  v24 = v43;
  if (HIWORD(v18) > 0xFEu)
  {
    v23 = 0;
  }

  if (v21 > 0xFE)
  {
    v24 = 0;
  }

  *a3 = v24;
  *(a3 + 8) = v23;
  if (v21 <= 0xFE)
  {
    v25 = v18;
  }

  else
  {
    v25 = -65536;
  }

  *(a3 + 16) = v25;
  *(a3 + 18) = BYTE2(v25);
  *(a3 + 19) = v41;
  *(a3 + 20) = v40;
  *(a3 + 24) = v39;
  *(a3 + 32) = v22;
  *(a3 + 33) = v14;
  *(a3 + 34) = v15;
  *(a3 + 56) = v37;
  *(a3 + 40) = v38;
  *(a3 + 88) = v35;
  *(a3 + 72) = v36;
  *(a3 + 120) = v33;
  *(a3 + 104) = v34;
  *(a3 + 136) = v16;
  *(a3 + 144) = v17;
  *(a3 + 168) = v31;
  *(a3 + 152) = v32;
  *(a3 + 200) = v29;
  *(a3 + 184) = v30;
  result = v28;
  *(a3 + 232) = v27;
  *(a3 + 216) = v28;
  *(a3 + 248) = v19;
  *(a3 + 256) = v20;
  return result;
}

double CodableAccessibilityDataSeriesConfiguration.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 18);
  v53 = *(v1 + 20);
  v54 = *(v1 + 19);
  v52 = *(v1 + 24);
  v50 = *(v1 + 33);
  v51 = *(v1 + 32);
  v49 = *(v1 + 34);
  v5 = *(v1 + 88);
  v6 = *(v1 + 200);
  if (v4 == 255)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 0xE000000000000000;
    if (!v5)
    {
LABEL_9:
      _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v77);
      if (!v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v11 = *v1;
    v12 = *(v2 + 16);
    if (((v4 << 16) & 0x10000) != 0)
    {
      v22 = *(v2 + 8);
      type metadata accessor for AccessibilityTextStorage();
      v7 = swift_allocObject();
      *(v7 + 16) = v11;
      *(v7 + 24) = v22;
      *(v7 + 32) = v12 & 1;
      *(v7 + 33) = HIBYTE(v12) & 1;
      v8 = 1;
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v11, v22, v12, 1);
      v10 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = ResolvedStyledText.accessibilityText.getter();
      v10 = v13;
      v8 = v14;
      v9 = v15;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(v2 + 56);
  v77 = *(v2 + 40);
  v78 = v16;
  v79 = *(v2 + 72);
  v17 = *(v2 + 112);
  *&v80[8] = *(v2 + 96);
  *&v80[24] = v17;
  *&v80[40] = *(v2 + 128);
  v18 = *(v2 + 144);
  *v80 = v5;
  *&v80[56] = v18;
  CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter(&v72);
  _ViewInputs.base.modify();
  *&v80[16] = *&v75[16];
  *&v80[32] = *&v75[32];
  *&v80[48] = *&v75[48];
  v81 = v76;
  v77 = v72;
  v78 = v73;
  v79 = v74;
  *v80 = *v75;
  if (!v6)
  {
LABEL_10:
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v72);
    goto LABEL_11;
  }

LABEL_7:
  v19 = *(v2 + 168);
  v72 = *(v2 + 152);
  v73 = v19;
  v74 = *(v2 + 184);
  v20 = *(v2 + 224);
  *&v75[8] = *(v2 + 208);
  *&v75[24] = v20;
  *&v75[40] = *(v2 + 240);
  v21 = *(v2 + 256);
  *v75 = v6;
  *&v75[56] = v21;
  CodableAccessibilityDataSeriesConfiguration.AxisConfiguration.configuration.getter(&v64);
  _ViewInputs.base.modify();
  *&v75[16] = v68;
  *&v75[32] = v69;
  *&v75[48] = v70;
  v76 = v71;
  v72 = v64;
  v73 = v65;
  v74 = v66;
  *v75 = v67;
LABEL_11:
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v55);
  v23 = v60;
  v24 = v59;
  v25 = v60;
  *(a1 + 248) = v59;
  v27 = v61;
  v26 = v62;
  *(a1 + 264) = v23;
  *(a1 + 280) = v27;
  v28 = v61;
  v29 = v62;
  *(a1 + 296) = v26;
  v30 = v56;
  *(a1 + 184) = v55;
  v31 = v55;
  v32 = v56;
  *(a1 + 200) = v30;
  v33 = v58;
  *(a1 + 216) = v57;
  v34 = v57;
  *(a1 + 232) = v58;
  v63[6] = v28;
  v63[7] = v29;
  v63[4] = v24;
  v63[5] = v25;
  v63[2] = v34;
  v63[3] = v33;
  *a1 = v7;
  *(a1 + 8) = v10;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = v54;
  *(a1 + 33) = v53;
  *(a1 + 40) = v52;
  *(a1 + 48) = v51;
  *(a1 + 49) = v50;
  *(a1 + 50) = v49;
  v63[0] = v31;
  v63[1] = v32;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v63, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v35 = *&v80[32];
  *(a1 + 120) = *&v80[16];
  *(a1 + 136) = v35;
  v36 = v81;
  *(a1 + 152) = *&v80[48];
  *(a1 + 168) = v36;
  v37 = v78;
  *(a1 + 56) = v77;
  *(a1 + 72) = v37;
  v38 = *v80;
  *(a1 + 88) = v79;
  *(a1 + 104) = v38;
  v39 = *(a1 + 232);
  v66 = *(a1 + 216);
  v67 = v39;
  v40 = *(a1 + 200);
  v64 = *(a1 + 184);
  v65 = v40;
  v41 = *(a1 + 296);
  v42 = *(a1 + 264);
  v70 = *(a1 + 280);
  v71 = v41;
  v68 = *(a1 + 248);
  v69 = v42;
  outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v64, &lazy cache variable for type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for AccessibilityDataSeriesConfiguration.AxisConfiguration);
  v43 = *&v75[32];
  *(a1 + 248) = *&v75[16];
  v44 = *&v75[48];
  v45 = v76;
  *(a1 + 264) = v43;
  *(a1 + 280) = v44;
  *(a1 + 296) = v45;
  v46 = v73;
  *(a1 + 184) = v72;
  *(a1 + 200) = v46;
  result = *&v74;
  v48 = *v75;
  *(a1 + 216) = v74;
  *(a1 + 232) = v48;
  return result;
}

uint64_t CodableAccessibilityDataSeriesConfiguration.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, MEMORY[0x1E69E6F58]);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - v4;
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 18);
  v61 = *(v1 + 16);
  v27 = *(v1 + 19);
  v28 = v61 | (v8 << 16);
  v26 = *(v1 + 20);
  v25 = *(v1 + 24);
  v9 = *(v1 + 32);
  v24[4] = *(v1 + 33);
  v24[5] = v9;
  v24[3] = *(v1 + 34);
  v10 = *(v1 + 88);
  v11 = *(v1 + 120);
  v51 = *(v1 + 104);
  v52 = v11;
  v53 = *(v1 + 136);
  v12 = *(v1 + 56);
  v47 = *(v1 + 40);
  v48 = v12;
  v49 = *(v1 + 72);
  v50 = v10;
  v13 = *(v1 + 200);
  v14 = *(v1 + 232);
  v58 = *(v1 + 216);
  v59 = v14;
  v60 = *(v1 + 248);
  v15 = *(v1 + 168);
  v54 = *(v1 + 152);
  v55 = v15;
  v56 = *(v1 + 184);
  v57 = v13;
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v7, v6, v28);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v40 = v7;
  *(&v40 + 1) = v6;
  BYTE2(v41) = v8;
  LOWORD(v41) = v61;
  LOBYTE(v39[0]) = 0;
  type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
  lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
  v20 = v30;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v20)
  {
    v21 = outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v40, *(&v40 + 1), v41 | (BYTE2(v41) << 16));
    return (*(v29 + 8))(v5, v19, v21);
  }

  else
  {
    v23 = v29;
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(v40, *(&v40 + 1), v41 | (BYTE2(v41) << 16));
    LOBYTE(v40) = v27;
    LOBYTE(v39[0]) = 1;
    lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v40) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v40) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v40) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v63 = 6;
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v47, v39, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v39[4] = v44;
    v39[5] = v45;
    v39[6] = v46;
    v39[0] = v40;
    v39[1] = v41;
    v39[2] = v42;
    v39[3] = v43;
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v39, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v32 = v54;
    v33 = v55;
    v34 = v56;
    v35 = v57;
    v62 = 7;
    outlined init with copy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v54, v31, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31[4] = v36;
    v31[5] = v37;
    v31[6] = v38;
    v31[0] = v32;
    v31[1] = v33;
    v31[2] = v34;
    v31[3] = v35;
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v31, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    return (*(v23 + 8))(v5, v19);
  }
}

uint64_t CodableAccessibilityDataSeriesConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityDataSeriesConfiguration.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, MEMORY[0x1E69E6F48]);
  v46 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();
  v47 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v50 = v2;
    v51 = 0;
    v52 = 0;
    v48 = 0;
    v121 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    __swift_destroy_boxed_opaque_existential_1(v49);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    *v59 = v51;
    *&v59[8] = v52;
    *&v59[16] = v48;
    *&v59[24] = v121;
    *&v59[32] = v56;
    *&v59[40] = v57;
    *&v59[48] = v55;
    *&v59[56] = v54;
    *&v59[64] = v53;
    memset(&v59[72], 0, 40);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v59, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    return outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(&v60, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
  }

  else
  {
    v9 = v5;
    v10 = v45;
    type metadata accessor for CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>();
    v59[0] = 0;
    lazy protocol witness table accessor for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>(&lazy protocol witness table cache variable for type CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText> and conformance CodableAccessibilityVersionStorage<A, B>, protocol conformance descriptor for CodableAccessibilityVersionStorage<A, B>);
    v11 = v46;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v44 = v60;
    v43 = v61 | (BYTE2(v61) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(0, 0, 16711680);
    v59[0] = 1;
    lazy protocol witness table accessor for type AccessibilityDataSeriesConfiguration.DataSeriesType and conformance AccessibilityDataSeriesConfiguration.DataSeriesType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v9;
    LODWORD(v9) = v60;
    LOBYTE(v60) = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v60) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v118 = v16 & 1;
    LOBYTE(v60) = 4;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v60) = 5;
    LODWORD(v41) = KeyedDecodingContainer.decode(_:forKey:)();
    LODWORD(v42) = v17;
    v101[127] = 6;
    lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.AxisConfiguration and conformance CodableAccessibilityDataSeriesConfiguration.AxisConfiguration();
    v50 = v18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LODWORD(v33) = v14;
    v34 = v15;
    v35 = v9;
    v51 = v102;
    v52 = v103;
    v48 = v104;
    v121 = v105;
    v56 = v106;
    v57 = v107;
    v54 = v109;
    v55 = v108;
    v53 = v110;
    v39 = v112;
    v40 = v111;
    v37 = v114;
    v38 = v113;
    v36 = v115;
    memset(v101, 0, 112);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v101, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    v86 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v50 = 0;
    LOBYTE(v9) = v33 & 1;
    LOBYTE(v15) = v42 & 1;
    LOBYTE(v14) = v41 & 1;
    v22 = v33 & 1;
    v23 = v41 & 1;
    (*(v13 + 8))(v47, v11);
    v46 = v88;
    v47 = v87;
    v41 = v90;
    v42 = v89;
    v32 = v92;
    v33 = v91;
    v30 = v94;
    v31 = v93;
    v28 = v96;
    v29 = v95;
    v26 = v98;
    v27 = v97;
    v24 = v100;
    v25 = v99;
    memset(v58, 0, 112);
    outlined destroy of AccessibilityDataSeriesConfiguration.AxisConfiguration?(v58, &lazy cache variable for type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration?, &type metadata for CodableAccessibilityDataSeriesConfiguration.AxisConfiguration);
    *v59 = v44;
    *&v59[21] = v119;
    *&v59[35] = v116;
    v19 = v43;
    LODWORD(v11) = HIWORD(v43);
    v59[18] = BYTE2(v43);
    *&v59[16] = v43;
    LOBYTE(v17) = v35;
    v59[19] = v35;
    v59[20] = v9;
    v59[23] = v120;
    v20 = v34;
    *&v59[24] = v34;
    v59[39] = v117;
    LOBYTE(v13) = v118;
    v59[32] = v118;
    v59[33] = v15;
    v59[34] = v14;
    *&v59[40] = v51;
    *&v59[48] = v52;
    v21 = v48;
    *&v59[56] = v48;
    *&v59[64] = v121;
    *&v59[72] = v56;
    *&v59[80] = v57;
    *&v59[88] = v55;
    *&v59[96] = v54;
    *&v59[104] = v53;
    *&v59[112] = v40;
    *&v59[120] = v39;
    *&v59[128] = v38;
    *&v59[136] = v37;
    *&v59[144] = v36;
    *&v59[152] = v47;
    *&v59[160] = v46;
    *&v59[168] = v42;
    *&v59[176] = v41;
    *&v59[184] = v33;
    *&v59[192] = v32;
    *&v59[200] = v31;
    *&v59[208] = v30;
    *&v59[216] = v29;
    *&v59[224] = v28;
    *&v59[232] = v27;
    *&v59[240] = v26;
    *&v59[248] = v25;
    *&v59[256] = v24;
    memcpy(v10, v59, 0x108uLL);
    outlined init with copy of CodableAccessibilityDataSeriesConfiguration(v59, &v60);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v60 = v44;
    BYTE2(v61) = v11;
    LOWORD(v61) = v19;
    BYTE3(v61) = v17;
    BYTE4(v61) = v22;
    *(&v61 + 1) = v20;
    LOBYTE(v62) = v13;
    BYTE1(v62) = v15;
    *(&v61 + 5) = v119;
    BYTE7(v61) = v120;
    BYTE2(v62) = v23;
    *(&v62 + 3) = v116;
    BYTE7(v62) = v117;
    *(&v62 + 1) = v51;
    *&v63 = v52;
    *(&v63 + 1) = v21;
    *&v64 = v121;
    *(&v64 + 1) = v56;
    *&v65 = v57;
    *(&v65 + 1) = v55;
    *&v66 = v54;
    *(&v66 + 1) = v53;
    v67 = v40;
    v68 = v39;
    v69 = v38;
    v70 = v37;
    v71 = v36;
    v72 = v47;
    v73 = v46;
    v74 = v42;
    v75 = v41;
    v76 = v33;
    v77 = v32;
    v78 = v31;
    v79 = v30;
    v80 = v29;
    v81 = v28;
    v82 = v27;
    v83 = v26;
    v84 = v25;
    v85 = v24;
    return outlined destroy of CodableAccessibilityDataSeriesConfiguration(&v60);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys()
{
  if (*v0 > 3u)
  {
    v3 = 0xD000000000000015;
    if (*v0 == 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v1 = 1701667182;
    if (*v0)
    {
      v1 = 1701869940;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000014;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CodableAccessibilityDataSeriesConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void lazy protocol witness table accessor for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAccessibilityDataSeriesConfiguration.CodingKeys, &unk_1F006CAD8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAccessibilityDataSeriesConfiguration.CodingKeys and conformance CodableAccessibilityDataSeriesConfiguration.CodingKeys);
  }
}