uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a14UI21StyledTextni5V010_e63InnerF033_641995D812913A47B866B20B88782376LL4view6inputsAA01_F7j6VAA11_kl13VyACG_AA01_F6M21VtFZAiA01_Q0V_ANtcfU_AA0rsnI0VXMtAKyAUG09AttributeK09AttributeVyAA16_ShapeStyle_PackVGTf1nnnc_n@<X0>(unsigned int a1@<W0>, void *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 3);
  v53 = *(a2 + 2);
  v54 = v10;
  v11 = *(a2 + 17);
  v55 = *(a2 + 16);
  v12 = *(a2 + 1);
  v51 = *a2;
  v52 = v12;
  v42 = a2[9];
  v43 = *(a2 + 20);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v13)
  {
    v14 = *(a2 + 3);
    v15 = *(a2 + 4);
    v16 = *(a2 + 1);
    v58 = *(a2 + 2);
    v59 = v14;
    v60 = v15;
    v61 = *(a2 + 20);
    v56 = *a2;
    v57 = v16;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v45);
    v11 = CachedEnvironment.animatedPosition(for:)(&v56);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v56);
  }

  v58 = v53;
  v59 = v54;
  v56 = v51;
  v57 = v52;
  *&v60 = __PAIR64__(v11, v55);
  *(&v60 + 1) = v42;
  v61 = v43;
  outlined init with copy of _ViewInputs(&v56, &v45);
  _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA0d11TextContentF0V_Tt5B5(a3, &v56, a4, 0, v41);
  outlined destroy of _ViewInputs(&v56);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    v47 = v53;
    v48 = v54;
    v45 = v51;
    v46 = v52;
    *&v49 = __PAIR64__(v11, v55);
    *(&v49 + 1) = v42;
    v50 = v43;
    result = outlined destroy of _ViewInputs(&v45);
    *a5 = v41[0];
    a5[1] = v41[1];
    return result;
  }

  v40 = a1;
  v17 = ++lastIdentity;
  v18 = *a2;
  v19 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v21 = *(a2 + 3);
    v47 = *(a2 + 2);
    v48 = v21;
    v49 = *(a2 + 4);
    v50 = *(a2 + 20);
    v22 = *(a2 + 1);
    v45 = *a2;
    v46 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedPosition(for:)(&v45);
    v24 = *(a2 + 3);
    v47 = *(a2 + 2);
    v48 = v24;
    v49 = *(a2 + 4);
    v50 = *(a2 + 20);
    v25 = *(a2 + 1);
    v45 = *a2;
    v46 = v25;
    v26 = CachedEnvironment.animatedSize(for:)(&v45);
    swift_endAccess();
    v27 = *(v19 + 16);
    v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v41[0]);
    if ((v28 & 0x100000000) == 0)
    {
      v20 = v28;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v18, v45);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v18, v45);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a2 + 15);
    v34 = *(a2 + 17);
    v35 = *(a2 + 19);
    *&v45 = __PAIR64__(v40, v17);
    *(&v45 + 1) = __PAIR64__(v26, v23);
    *&v46 = __PAIR64__(v34, v33);
    *(&v46 + 1) = __PAIR64__(v35, v27);
    LODWORD(v47) = v20;
    BYTE4(v47) = v30;
    DWORD2(v47) = 0;
    HIDWORD(v47) = v32;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v45) = 0;
    PreferencesOutputs.subscript.setter(v36, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v45);
  result = AGWeakAttributeGetAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v44[0] = v17;
    v38 = Attribute<A>.subscript.modify(&v45, result);
    v39 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v44);
    (v38)(&v45, 0, v39);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a17UI24DynamicLayouti124AdaptorV14MakeTransition33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV012makeArchivedH06helperyAA0H6HelperAELLVyxG_tAA0H0RzlFAA01_E7j5VAA6_k9V_AA01_E6M18VtcfU0_AnP_ARtcfU_AnIIegnr_Tf1nnnc_n(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, __int128 *)@<X2>, void *a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 48);
  v58 = *(a2 + 32);
  v59 = v9;
  v10 = *(a2 + 68);
  v60 = *(a2 + 64);
  v11 = *(a2 + 16);
  v56 = *a2;
  v57 = v11;
  v41 = *(a2 + 72);
  v42 = *(a2 + 80);
  v12 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  if (v12)
  {
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    v15 = *(a2 + 16);
    v52 = *(a2 + 32);
    v53 = v13;
    v54 = v14;
    v55 = *(a2 + 80);
    v50 = *a2;
    v51 = v15;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v44);
    v10 = CachedEnvironment.animatedPosition(for:)(&v50);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v50);
  }

  v52 = v58;
  v53 = v59;
  v50 = v56;
  v51 = v57;
  *&v54 = __PAIR64__(v10, v60);
  *(&v54 + 1) = v41;
  v55 = v42;
  v46 = v58;
  v47 = v59;
  v48 = v54;
  v49 = v42;
  v44 = v56;
  v45 = v57;
  outlined init with copy of _ViewInputs(&v50, v43);
  a3(v40, &v44);
  outlined destroy of _ViewInputs(&v50);
  if ((v12 & 1) == 0)
  {
LABEL_16:
    v46 = v58;
    v47 = v59;
    v44 = v56;
    v45 = v57;
    *&v48 = __PAIR64__(v10, v60);
    *(&v48 + 1) = v41;
    v49 = v42;
    outlined destroy of _ViewInputs(&v44);

    *a5 = v40[0];
    a5[1] = v40[1];
    return;
  }

  v39 = a1;
  v16 = ++lastIdentity;
  v17 = *a2;
  v18 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
    v19 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v20 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v20;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v21 = *(a2 + 16);
    v44 = *a2;
    v45 = v21;
    swift_beginAccess();
    v22 = CachedEnvironment.animatedPosition(for:)(&v44);
    v23 = *(a2 + 48);
    v46 = *(a2 + 32);
    v47 = v23;
    v48 = *(a2 + 64);
    v49 = *(a2 + 80);
    v24 = *(a2 + 16);
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

    v32 = *(a2 + 60);
    v33 = *(a2 + 68);
    v34 = *(a2 + 76);
    *&v44 = __PAIR64__(v39, v16);
    *(&v44 + 1) = __PAIR64__(v25, v22);
    *&v45 = __PAIR64__(v33, v32);
    *(&v45 + 1) = __PAIR64__(v34, v26);
    LODWORD(v46) = v19;
    BYTE4(v46) = v29;
    DWORD2(v46) = 0;
    HIDWORD(v46) = v31;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<ContentTransitionEffect>, &type metadata for ContentTransitionEffect, &protocol witness table for ContentTransitionEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<ContentTransitionEffect> and conformance RendererEffectDisplayList<A>();
    v35 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v44) = 0;
    PreferencesOutputs.subscript.setter(v35, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v17, &v44);
  Attribute = AGWeakAttributeGetAttribute();
  v19 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    v43[0] = v16;
    v37 = Attribute<A>.subscript.modify(&v44, Attribute);
    v38 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v43);
    (v37)(&v44, 0, v38);
    goto LABEL_7;
  }

  __break(1u);

  __break(1u);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m116VtFZAjA01_K0V_APtcfU0_ACyAA01_ef1_D0VyAA020GlassTransitionStateF033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA14_Opacityd8VG_AA11_nD4VTG5AKyAA0qR0VyAUyAA01_ix1_R0VyAA020GlassTransitionStateX033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA08_OpacityD0VGARGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA05_BlurD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m113VtFZAjA01_K0V_APtcfU0_ACyACyACyACyAA01_ef1_D0VyAA010ScalePulseF033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA0nO6d21AVLLVGA_GA_GA_G_AA05_N6Y0VTG5AKyAA0qR0VyAUyAUyAUyAUyAA01_ix1_R0VyAA010ScalePulseX033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAA010ScalePulseD0AYLLVGA2_GA2_GA2_GARGGTf1nnnc_nTm@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, __int128 *, uint64_t)@<X3>, void *a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 3);
  v53 = *(a2 + 2);
  v54 = v10;
  v11 = *(a2 + 17);
  v55 = *(a2 + 16);
  v12 = *(a2 + 1);
  v51 = *a2;
  v52 = v12;
  v42 = a2[9];
  v43 = *(a2 + 20);
  v13 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(a2[6]);
  if (v13)
  {
    v14 = *(a2 + 3);
    v15 = *(a2 + 4);
    v16 = *(a2 + 1);
    v58 = *(a2 + 2);
    v59 = v14;
    v60 = v15;
    v61 = *(a2 + 20);
    v56 = *a2;
    v57 = v16;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v45);
    v11 = CachedEnvironment.animatedPosition(for:)(&v56);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v56);
  }

  v58 = v53;
  v59 = v54;
  v56 = v51;
  v57 = v52;
  *&v60 = __PAIR64__(v11, v55);
  *(&v60 + 1) = v42;
  v61 = v43;
  outlined init with copy of _ViewInputs(&v56, &v45);
  a4(v41, &v56, a3);
  outlined destroy of _ViewInputs(&v56);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    v47 = v53;
    v48 = v54;
    v45 = v51;
    v46 = v52;
    *&v49 = __PAIR64__(v11, v55);
    *(&v49 + 1) = v42;
    v50 = v43;
    result = outlined destroy of _ViewInputs(&v45);
    *a5 = v41[0];
    a5[1] = v41[1];
    return result;
  }

  v40 = a1;
  v17 = ++lastIdentity;
  v18 = *a2;
  v19 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
    v20 = *MEMORY[0x1E698D3F8];
LABEL_7:
    v21 = *(a2 + 3);
    v47 = *(a2 + 2);
    v48 = v21;
    v49 = *(a2 + 4);
    v50 = *(a2 + 20);
    v22 = *(a2 + 1);
    v45 = *a2;
    v46 = v22;
    swift_beginAccess();
    v23 = CachedEnvironment.animatedPosition(for:)(&v45);
    v24 = *(a2 + 3);
    v47 = *(a2 + 2);
    v48 = v24;
    v49 = *(a2 + 4);
    v50 = *(a2 + 20);
    v25 = *(a2 + 1);
    v45 = *a2;
    v46 = v25;
    v26 = CachedEnvironment.animatedSize(for:)(&v45);
    swift_endAccess();
    v27 = *(v19 + 16);
    v28 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v41[0]);
    if ((v28 & 0x100000000) == 0)
    {
      v20 = v28;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v29 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v18, v45);
    if (v29)
    {
      v30 = *(v29 + 72);
    }

    else
    {
      v30 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v18, v45);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 0;
    }

    v33 = *(a2 + 15);
    v34 = *(a2 + 17);
    v35 = *(a2 + 19);
    *&v45 = __PAIR64__(v40, v17);
    *(&v45 + 1) = __PAIR64__(v26, v23);
    *&v46 = __PAIR64__(v34, v33);
    *(&v46 + 1) = __PAIR64__(v35, v27);
    LODWORD(v47) = v20;
    BYTE4(v47) = v30;
    DWORD2(v47) = 0;
    HIDWORD(v47) = v32;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlurEffect>, &type metadata for _BlurEffect, &protocol witness table for _BlurEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_BlurEffect> and conformance RendererEffectDisplayList<A>();
    v36 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v45) = 0;
    PreferencesOutputs.subscript.setter(v36, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    goto LABEL_16;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v45);
  result = AGWeakAttributeGetAttribute();
  v20 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v44[0] = v17;
    v38 = Attribute<A>.subscript.modify(&v45, result);
    v39 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v44);
    (v38)(&v45, 0, v39);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m123VtFZAjA01_K0V_APtcfU0_ACyAA018PrimitiveGlassItemE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0o15TransitionStateF0ATLLVG_AA20_noD4VTG5AKyAA0rS0VyAUyAA018PrimitiveGlassItemI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA020GlassTransitionStateY0AWLLVGARGGTf1nnnc_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  return _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm(a1, a2, a3, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a4);
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_nTm@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(void *__return_ptr, void, void)@<X3>, void *a5@<X8>)
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 16);
  v63 = *a2;
  v64 = v8;
  v9 = *(a2 + 32);
  v61 = *(a2 + 36);
  v62 = *(a2 + 52);
  v11 = *(a2 + 64);
  v10 = *(a2 + 68);
  v12 = *(a2 + 72);
  v13 = *(a2 + 76);
  v14 = *(a2 + 60);
  v15 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v52 = v13;
  if (v15)
  {
    v47 = a4;
    v50 = v9;
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    v18 = *(a2 + 16);
    *v67 = *(a2 + 32);
    *&v67[16] = v16;
    *v68 = v17;
    *&v68[16] = *(a2 + 80);
    v65 = *a2;
    v66 = v18;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, &v57);
    v19 = CachedEnvironment.animatedPosition(for:)(&v65);
    swift_endAccess();
    *&v65 = __PAIR64__(*(a2 + 60), v19);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v11 = *(swift_dynamicCastClassUnconditional() + 248);

    v20 = *(a2 + 64);
    v21 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v65 = __PAIR64__(v21, v20);
    DWORD2(v65) = v23;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    v9 = v50 | 0x1C;
    v10 = v11;
    v13 = v52;
    a4 = v47;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v65);
  }

  v65 = v63;
  v66 = v64;
  *&v67[4] = v61;
  *&v67[20] = v62;
  *v67 = v9;
  *&v67[28] = v14;
  *v68 = v11;
  *&v68[4] = v10;
  *&v68[8] = v12;
  *&v68[12] = v13;
  outlined init with copy of _ViewInputs(&v65, &v57);
  a4(v55, &v65, a3);
  outlined destroy of _ViewInputs(&v65);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = v14;
  v54 = ++lastIdentity;
  v24 = *a2;
  v25 = *(a2 + 16);
  v51 = v9;
  if ((*(a2 + 37) & 1) == 0)
  {
    v26 = *MEMORY[0x1E698D3F8];
LABEL_9:
    v46 = a5;
    v27 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v27;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v28 = *(a2 + 16);
    v57 = *a2;
    v58 = v28;
    swift_beginAccess();
    v29 = CachedEnvironment.animatedPosition(for:)(&v57);
    v30 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v30;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v31 = *(a2 + 16);
    v57 = *a2;
    v58 = v31;
    v32 = CachedEnvironment.animatedSize(for:)(&v57);
    swift_endAccess();
    v33 = *(v25 + 16);
    v34 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v34 & 0x100000000) == 0)
    {
      v26 = v34;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v35 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v24, v57);
    if (v35)
    {
      v36 = *(v35 + 72);
    }

    else
    {
      v36 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v37 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v24, v57);
    if (v37)
    {
      v38 = *(v37 + 72);
    }

    else
    {
      v38 = 0;
    }

    v13 = v52;
    v39 = *(a2 + 60);
    v40 = *(a2 + 68);
    v41 = *(a2 + 76);
    *&v57 = __PAIR64__(a1, v54);
    *(&v57 + 1) = __PAIR64__(v32, v29);
    *&v58 = __PAIR64__(v40, v39);
    *(&v58 + 1) = __PAIR64__(v41, v33);
    *v59 = v26;
    v59[4] = v36;
    *&v59[8] = 0;
    *&v59[12] = v38;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v42, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v46;
    v9 = v51;
    v14 = v48;
LABEL_18:
    v57 = v63;
    v58 = v64;
    *v59 = v9;
    *&v59[4] = v61;
    *&v59[20] = v62;
    *&v59[28] = v14;
    *v60 = v11;
    *&v60[4] = v10;
    *&v60[8] = v12;
    *&v60[12] = v13;
    result = outlined destroy of _ViewInputs(&v57);
    *a5 = v55[0];
    a5[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v24, &v57);
  result = AGWeakAttributeGetAttribute();
  v26 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v54;
    v44 = Attribute<A>.subscript.modify(&v57, result);
    v45 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v44)(&v57, 0, v45);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

double static RendererEffectDisplayList.scrapeContent(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AGGraphGetAttributeInfo();
  v11 = v10;
  v13 = *(type metadata accessor for RendererEffectDisplayList(0, a2, a3, v12) + 16);
  Value = AGGraphGetValue();
  (*(*(v13 - 8) + 16))(v9, Value, v13);
  (*(a3 + 64))(&v19, a2, a3);
  (*(v7 + 8))(v9, a2);
  v15 = v19;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v18 = v19;
    outlined copy of ScrapeableContent.Content(v19);
    closure #1 in static RendererEffectDisplayList.scrapeContent(from:)(&v18, v11, a2, a3, a4);
    outlined consume of ScrapeableContent.Content?(v15);
    return outlined consume of ScrapeableContent.Content(v18);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
  }

  return result;
}

void closure #1 in static RendererEffectDisplayList.scrapeContent(from:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  type metadata accessor for RendererEffectDisplayList(0, a3, a4, a4);
  type metadata accessor for CGPoint(0);
  v8 = *(a2 + 40);
  outlined copy of ScrapeableContent.Content(v7);
  Value = AGGraphGetValue();
  v10 = *Value;
  v11 = Value[1];
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = AGGraphGetValue();
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = *(v15 + 32) - (v10 - *(v15 + 16));
  v19 = *(v15 + 40) - (v11 - *(v15 + 24));
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v17;
  *(a5 + 40) = v16;
  *(a5 + 48) = v10;
  *(a5 + 56) = v11;
  *(a5 + 64) = v18;
  *(a5 + 72) = v19;
}

double ResetPositionTransform.value.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetValue();
  result = v6 - (*v8 - v4);
  v10 = v7 - (v8[1] - v5);
  *(a1 + 32) = result;
  *(a1 + 40) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t GraphicsFilter.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v13[0] = v1[6];
  *(v13 + 12) = *(v1 + 108);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v6[7] = v1[6];
  *(v6 + 124) = *(v1 + 108);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of GraphicsFilter(v12, &v11);
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance GraphicsFilter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v13[0] = v1[6];
  *(v13 + 12) = *(v1 + 108);
  v4 = v1[1];
  v12[0] = *v1;
  v12[1] = v4;
  v5 = v1[3];
  v12[2] = v1[2];
  v12[3] = v5;
  v6 = swift_allocObject();
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v6[7] = v1[6];
  *(v6 + 124) = *(v1 + 108);
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v9 = v1[3];
  v6[3] = v1[2];
  v6[4] = v9;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return outlined init with copy of GraphicsFilter(v12, &v11);
}

uint64_t GraphicsBlendMode.effectValue(size:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 12) = 5;
  return outlined copy of GraphicsBlendMode(v2, v3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _AlphaThresholdEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA21_AlphaThresholdEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA015_AlphaThresholdD0V9_ResolvedV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance CoreInteractionRepresentableEffect<A>@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for CoreInteractionRepresentableEffect<A>, a5);

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance VariableBlurStyle(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17VariableBlurStyleV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA17VariableBlurStyleV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance Shader.ResolvedShader(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5);
}

double _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA018ScheduledAnimationZ033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGG_Ttg5Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = &static GraphReuseOptions.overrideValue;
  swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      swift_once();
    }

    v3 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v3 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(v2);
    v5 = *v1;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v5, v12);
    if (v6)
    {
      v7 = (v6 + 72);
      v8 = (v6 + 80);
    }

    else
    {
      v7 = &static ReusableInputs.defaultValue;
      v8 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v9 = *v7;
    v10 = *v8;

    if (!v10 || *(v10 + 16) != v2)
    {
      v11 = swift_allocObject();
      v11[2] = v2;
      v11[3] = &protocol witness table for BodyInput<A>;
      v11[4] = v10;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v1, v9 | v12, v11);
    }
  }

  return result;
}

double _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA04KickZ033_02B8A9C041E17C70E13F37D6E2D14302LLVGG_Ttg5Tm(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>(0, a1, a2, a3, a4);
  v6 = v5;
  v7 = &static GraphReuseOptions.overrideValue;
  swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      swift_once();
    }

    v7 = &static GraphReuseOptions.defaultsValue;
  }

  if ((*v7 & 8) != 0)
  {
    BloomFilter.init(hashValue:)(v6);
    v9 = *v4;
    BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
    v10 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v9, v16);
    if (v10)
    {
      v11 = (v10 + 72);
      v12 = (v10 + 80);
    }

    else
    {
      v11 = &static ReusableInputs.defaultValue;
      v12 = &qword_1ED566B30;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v13 = *v11;
    v14 = *v12;

    if (!v14 || *(v14 + 16) != v6)
    {
      v15 = swift_allocObject();
      v15[2] = v6;
      v15[3] = &protocol witness table for BodyInput<A>;
      v15[4] = v14;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA14ReusableInputsV_Tt2B5(v4, v13 | v16, v15);
    }
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance MayNotInsertCALayersEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(unint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, _OWORD *, uint64_t (*)(unint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t))
{
  v11 = *a1;
  v12 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v12;
  v26[4] = *(a2 + 64);
  v27 = *(a2 + 80);
  v13 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v13;
  v14 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v12);
  if (v14)
  {
    return a7(v11, v26, a3, a4);
  }

  v22 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v22;
  v24[4] = *(a2 + 64);
  v25 = *(a2 + 80);
  v23 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v23;
  return a3(v14, v24, v15, v16, v17, v18, v19, v20);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance AppearanceAnimationView<A, B>.AnimationEffect@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>.AnimationEffect, a5);

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _SaturationEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA17_SaturationEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ColorMultiplyEffect._Resolved(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA20_ColorMultiplyEffectV9_ResolvedV_Tt1B5, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_ColorMultiplyD0V9_ResolvedV_Tt3B5);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _HueRotationEffect(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
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
  return specialized static RendererEffect._makeView(modifier:inputs:body:)(v4, v8, a3, a4, _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA18_HueRotationEffectV_Tt1B5, specialized static _RendererEffect._makeRendererEffect(effect:inputs:body:));
}

void lazy protocol witness table accessor for type GraphicsFilter and conformance GraphicsFilter()
{
  if (!lazy protocol witness table cache variable for type GraphicsFilter and conformance GraphicsFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsFilter, &type metadata for GraphicsFilter, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsFilter and conformance GraphicsFilter);
  }
}

void lazy protocol witness table accessor for type GraphicsBlendMode and conformance GraphicsBlendMode()
{
  if (!lazy protocol witness table cache variable for type GraphicsBlendMode and conformance GraphicsBlendMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for GraphicsBlendMode, &type metadata for GraphicsBlendMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GraphicsBlendMode and conformance GraphicsBlendMode);
  }
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_OpacityEffect> and conformance RendererEffectDisplayList<A>);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScheduledAnimationModifier<Int>>, &lazy cache variable for type metadata for ScheduledAnimationModifier<Int>, type metadata accessor for ScheduledAnimationModifier, lazy protocol witness table accessor for type ScheduledAnimationModifier<Int> and conformance ScheduledAnimationModifier<A>);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScheduledAnimationModifier<Int>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<TranslationKickModifier<Int>>(255);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<TranslationKickModifier<Int>>>);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>)
  {
    type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ScalePulseModifier<Int>>, &lazy cache variable for type metadata for ScalePulseModifier<Int>, type metadata accessor for ScalePulseModifier, lazy protocol witness table accessor for type ScalePulseModifier<Int> and conformance ScalePulseModifier<A>);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<ScalePulseModifier<Int>>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ScheduledAnimationModifier<Int>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(255, a3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], a4);
    v9 = v8;
    v10 = a5();
    v12 = type metadata accessor for _ViewModifier_Content(a1, v9, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void type metadata accessor for RendererEffectDisplayList<_GeometryGroupEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t StatefulTabContainer.init(id:cacheSize:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  v13 = type metadata accessor for StatefulTabContainer(0, v17);
  v14 = *(a5 - 8);
  v15 = (*(v14 + 16))(a8 + *(v13 + 52), a1, a5);
  *(a8 + *(v13 + 56)) = a2;
  a3(v15);
  return (*(v14 + 8))(a1, a5);
}

uint64_t static StatefulTabContainer._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v34 = a7;
  v53 = *MEMORY[0x1E69E9840];
  v11 = a2[1];
  v41 = a2[2];
  v12 = a2[2];
  v42 = a2[3];
  v13 = a2[3];
  v43 = a2[4];
  v14 = a2[1];
  v39 = *a2;
  v15 = *a2;
  v40 = v14;
  v47 = v12;
  v48 = v13;
  v49 = a2[4];
  v45 = v15;
  v32 = *a1;
  v44 = *(a2 + 20);
  LODWORD(v50) = *(a2 + 20);
  v46 = v11;
  _ViewInputs.makeIndirectOutputs()(v35);
  v16 = *v35;
  v17 = *&v35[8];
  v18 = *&v35[12];
  v47 = v41;
  v48 = v42;
  v49 = v43;
  LODWORD(v50) = v44;
  v45 = v39;
  v46 = v40;
  outlined init with copy of _ViewInputs(&v39, v35);

  v33 = a3;
  *v35 = a3;
  *&v35[8] = a4;
  *&v35[16] = a5;
  *&v35[24] = a6;
  type metadata accessor for StatefulTabContainer.Container.Item(0, v35);
  v19 = static Array._allocateUninitialized(_:)();
  *&v38[36] = v47;
  *&v38[52] = v48;
  *&v38[68] = v49;
  *&v38[84] = v50;
  *&v38[4] = v45;
  *&v38[20] = v46;
  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
  }

  *&v35[36] = *&v38[32];
  *&v35[52] = *&v38[48];
  *&v35[68] = *&v38[64];
  *&v35[4] = *v38;
  *&v35[84] = *&v38[80];
  *&v35[20] = *&v38[16];
  *v35 = v32;
  *&v36 = v16;
  v31 = v18;
  v32 = v17;
  *(&v36 + 1) = __PAIR64__(v18, v17);
  *&v37 = v20;
  *(&v37 + 1) = v19;
  MEMORY[0x1EEE9AC00](v20);
  *&v45 = v33;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = a6;
  v30[2] = type metadata accessor for StatefulTabContainer.Container.Item(0, &v45);
  *&v45 = v33;
  *(&v45 + 1) = a4;
  *&v46 = a5;
  *(&v46 + 1) = a6;
  v21 = type metadata accessor for StatefulTabContainer.Container(0, &v45);
  v30[3] = v21;
  swift_getWitnessTable(protocol conformance descriptor for StatefulTabContainer<A, B>.Container, v21);
  v30[4] = v22;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v30, v21, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  v49 = *&v35[64];
  v50 = *&v35[80];
  v51 = v36;
  v52 = v37;
  v45 = *v35;
  v46 = *&v35[16];
  v47 = *&v35[32];
  v48 = *&v35[48];
  result = (*(*(v21 - 8) + 8))(&v45, v21);
  v26 = *(v16 + 16);
  if (v26)
  {
    v27 = v16 + 48;
    do
    {
      v27 += 24;
      result = AGGraphSetIndirectDependency();
      --v26;
    }

    while (v26);
  }

  v28 = v31;
  if (v31 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  v29 = v34;
  *v34 = v16;
  *(v29 + 2) = v32;
  *(v29 + 3) = v28;
  return result;
}

uint64_t StatefulTabContainer.Container.view.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for StatefulTabContainer(0, v7);
  Value = AGGraphGetValue();
  return (*(*(v4 - 8) + 16))(a2, Value, v4);
}

Swift::Void __swiftcall StatefulTabContainer.Container.updateValue()()
{
  v1 = v0;
  v170 = *MEMORY[0x1E69E9840];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  *&v162 = v0[2];
  v3 = v162;
  *(&v162 + 1) = v2;
  *&v163 = v5;
  *(&v163 + 1) = v4;
  v6 = type metadata accessor for StatefulTabContainer.Container.Item(0, &v162);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v128 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v128 - v12;
  v158 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v129 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v133 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v143 = &v128 - v16;
  v150 = v3;
  *&v162 = v3;
  *(&v162 + 1) = v2;
  v151 = v2;
  v152 = v5;
  *&v163 = v5;
  *(&v163 + 1) = v4;
  v153 = v4;
  v17 = v6;
  v18 = type metadata accessor for StatefulTabContainer(0, &v162);
  v149 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v128 - v19;
  v144 = v15;
  v147 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v157 = &v128 - v26;
  v159 = type metadata accessor for Optional();
  v154 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v128 - v33;
  OutputValue = AGGraphGetOutputValue();
  v138 = v28;
  v142 = v31;
  if (OutputValue)
  {
    (*(v7 + 16))(v34, OutputValue, v17);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v7 + 56))(v34, v36, 1, v17);
  v37 = v155[5];
  v166 = v155[4];
  v167 = v37;
  v38 = v155[1];
  v162 = *v155;
  v163 = v38;
  v39 = v155[3];
  v164 = v155[2];
  v165 = v39;
  v40 = v155[7];
  v168 = v155[6];
  v169 = v40;
  v130 = v40;
  v140 = v1;
  StatefulTabContainer.Container.view.getter(v1, v20);
  v41 = v158;
  v42 = *(v158 + 16);
  v43 = v157;
  v44 = v34;
  v45 = v7;
  v46 = v151;
  v42(v157, &v20[*(v18 + 52)], v151);
  (*(v149 + 1))(v20, v18);
  v47 = *(v41 + 56);
  v47(v43, 0, 1, v46);
  v48 = v154;
  v49 = *(v154 + 16);
  v50 = v142;
  v149 = v44;
  v51 = v44;
  v52 = v159;
  v137 = v154 + 16;
  v136 = v49;
  v49(v142, v51, v159);
  v53 = *(v45 + 48);
  v135 = v45 + 48;
  v134 = v53;
  v54 = v53(v50, 1, v17);
  v146 = v17;
  v145 = v45;
  if (v54 == 1)
  {
    v45 = v48;
    v55 = v52;
    v56 = 1;
  }

  else
  {
    v42(v156, v50, v46);
    v56 = 0;
    v55 = v17;
  }

  (*(v45 + 8))(v50, v55);
  v57 = v156;
  v47(v156, v56, 1, v46);
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = v147;
  v60 = *(v147 + 16);
  v61 = v143;
  v62 = v157;
  v63 = v144;
  v60(v143, v157, v144);
  v60(&v61[v58], v57, v63);
  v64 = *(v158 + 48);
  if (v64(v61, 1, v46) == 1)
  {
    v65 = *(v59 + 8);
    v65(v156, v63);
    v65(v62, v63);
    v66 = v46;
    v67 = v64(&v61[v58], 1, v46);
    v68 = v63;
    v69 = v153;
    if (v67 == 1)
    {
      v65(v61, v68);
      v70 = v152;
      v71 = v149;
      v72 = v159;
LABEL_29:
      $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(v155, v150, v66, v70, v69);
      v122 = v154;
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  v73 = v132;
  v60(v132, v61, v63);
  if (v64(&v61[v58], 1, v46) == 1)
  {
    v74 = *(v147 + 8);
    v74(v156, v63);
    v74(v157, v63);
    v66 = v46;
    (*(v158 + 8))(v73, v46);
    v69 = v153;
LABEL_12:
    (*(v133 + 8))(v61, TupleTypeMetadata2);
    v70 = v152;
    v71 = v149;
    v72 = v159;
    goto LABEL_13;
  }

  v123 = v158;
  v124 = v129;
  (*(v158 + 32))(v129, &v61[v58], v46);
  v125 = v63;
  v69 = v153;
  LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v126 = *(v123 + 8);
  v126(v124, v46);
  v127 = *(v147 + 8);
  v127(v156, v125);
  v127(v157, v125);
  v66 = v46;
  v126(v73, v46);
  v127(v61, v125);
  v70 = v152;
  v71 = v149;
  v72 = v159;
  if (TupleTypeMetadata2)
  {
    goto LABEL_29;
  }

LABEL_13:
  v75 = v138;
  v136(v138, v71, v72);
  v76 = v146;
  v77 = v134(v75, 1, v146);
  v78 = v155;
  if (v77 != 1)
  {
    v81 = v70;
    v82 = v131;
    (*(v145 + 32))(v131, v75, v76);
    AGSubgraphApply();
    v83 = *(v78 + 12);
    v84 = *(v78 + 27);
    v85 = *(v83 + 16);
    if (v85)
    {
      v86 = *MEMORY[0x1E698D3F8];
      v87 = v83 + 48;

      do
      {
        v87 += 24;
        AGGraphSetIndirectAttribute();
        --v85;
      }

      while (v85);
      v69 = v153;
      if (v84 == v86)
      {
        goto LABEL_20;
      }
    }

    else
    {

      if (v84 == *MEMORY[0x1E698D3F8])
      {
        goto LABEL_20;
      }
    }

    AGGraphSetIndirectAttribute();
LABEL_20:

    AGSubgraphRemoveChild();
    v88 = v145;
    v76 = v146;
    (*(v145 + 16))(v141, v82, v146);
    type metadata accessor for Array();
    Array.append(_:)();
    v80 = (*(v88 + 8))(v82, v76);
    v70 = v81;
    v79 = v151;
    goto LABEL_21;
  }

  v79 = v66;
  v80 = (*(v154 + 8))(v75, v72);
LABEL_21:
  v160 = *(v78 + 15);
  MEMORY[0x1EEE9AC00](v80);
  *(&v128 - 6) = v89;
  *(&v128 - 5) = v79;
  *(&v128 - 4) = v70;
  *(&v128 - 3) = v69;
  *(&v128 - 2) = v78;
  v90 = type metadata accessor for Array();

  swift_getWitnessTable(MEMORY[0x1E69E6340], v90);
  Collection.firstIndex(where:)();

  if (BYTE8(v162))
  {
    v91 = AGSubgraphGetGraph();
    v92 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v93 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v94 = v69;
    v95 = v70;
    v96 = v141;
    v97 = v150;
    closure #2 in StatefulTabContainer.Container.updateValue()(v78, v92, v150, v79, v95, v94, v141);
    AGSubgraphSetCurrent();

    v98 = AGGraphSetUpdate();
    v99 = MEMORY[0x1EEE9AC00](v98);
    *(&v128 - 2) = v140;
    swift_getWitnessTable(protocol conformance descriptor for StatefulTabContainer<A, B>.Container, v99);
    *(&v128 - 1) = v100;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v96, partial apply for closure #1 in StatefulRule.value.setter, (&v128 - 4), v76, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v101);

    (*(v145 + 8))(v96, v76);
    v102 = v78;
    v103 = v97;
    v104 = v79;
  }

  else
  {
    v105 = v139;
    Array.subscript.getter();
    AGSubgraphAddChild();
    v106 = *(v78 + 12);
    v107 = *(v78 + 26);
    v108 = *(v78 + 27);
    v109 = v105 + *(v76 + 52);
    v110 = *v109;
    v111 = *(v109 + 8);
    v112 = *(v109 + 12);
    *&v162 = v106;
    DWORD2(v162) = v107;
    v160 = v110;
    v161 = v111;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    PreferencesOutputs.attachIndirectOutputs(to:)(&v160);

    if (v108 != *MEMORY[0x1E698D3F8] && v112 != *MEMORY[0x1E698D3F8])
    {
      AGGraphSetIndirectAttribute();
    }

    AGSubgraphApply();
    v113 = v155;
    v114 = v141;
    Array.remove(at:)();
    v115 = *(v145 + 8);
    v116 = v146;
    v117 = v115(v114, v146);
    v118 = MEMORY[0x1EEE9AC00](v117);
    *(&v128 - 2) = v140;
    swift_getWitnessTable(protocol conformance descriptor for StatefulTabContainer<A, B>.Container, v118);
    *(&v128 - 1) = v119;
    v120 = v139;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v139, closure #1 in StatefulRule.value.setterpartial apply, (&v128 - 4), v116, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v121);
    v115(v120, v116);
    v102 = v113;
    v103 = v150;
    v104 = v151;
  }

  $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(v102, v103, v104, v152, v153);
  v72 = v159;
  v122 = v154;
  v71 = v149;
LABEL_30:
  (*(v122 + 8))(v71, v72);
}

void $defer #1 <A, B>() in StatefulTabContainer.Container.updateValue()(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v21 = a2;
  *(&v21 + 1) = a3;
  *&v22 = a4;
  *(&v22 + 1) = a5;
  v10 = type metadata accessor for StatefulTabContainer(0, &v21);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  v14 = a1[5];
  v25 = a1[4];
  v26 = v14;
  v15 = a1[7];
  v27 = a1[6];
  v28 = v15;
  v16 = a1[1];
  v21 = *a1;
  v22 = v16;
  v17 = a1[3];
  v23 = a1[2];
  v24 = v17;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v18 = type metadata accessor for StatefulTabContainer.Container(0, v20);
  StatefulTabContainer.Container.view.getter(v18, v13);
  v19 = *&v13[*(v10 + 56)];
  (*(v11 + 8))(v13, v10);
  StatefulTabContainer.Container.trimCache(to:)(v19);
}

uint64_t closure #1 in StatefulTabContainer.Container.updateValue()(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = a6;
  v27[1] = a1;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = v13;
  *(&v29 + 1) = v14;
  *&v30 = v15;
  *(&v30 + 1) = v16;
  v17 = type metadata accessor for StatefulTabContainer(0, &v29);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v27 - v19;
  v21 = a2[5];
  v33 = a2[4];
  v34 = v21;
  v22 = a2[7];
  v35 = a2[6];
  v36 = v22;
  v23 = a2[1];
  v29 = *a2;
  v30 = v23;
  v24 = a2[3];
  v31 = a2[2];
  v32 = v24;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = v27[0];
  v25 = type metadata accessor for StatefulTabContainer.Container(0, v28);
  StatefulTabContainer.Container.view.getter(v25, v20);
  (*(v10 + 16))(v12, v20 + *(v17 + 52), a4);
  (*(v18 + 8))(v20, v17);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v10 + 8))(v12, a4);
  return v20 & 1;
}

id closure #2 in StatefulTabContainer.Container.updateValue()@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v76 = a3;
  v73 = a7;
  v74 = a2;
  v120[4] = *MEMORY[0x1E69E9840];
  v70 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v87 = v12;
  *(&v87 + 1) = v13;
  *&v88 = v14;
  *(&v88 + 1) = v15;
  v16 = type metadata accessor for StatefulTabContainer(0, &v87);
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v62[-v17];
  v18 = *(a1 + 10);
  v112 = *(a1 + 6);
  v113 = v18;
  v19 = *(a1 + 18);
  v114 = *(a1 + 14);
  v115 = v19;
  v116 = a1[22];
  v20 = v112;
  v110 = *(a1 + 2);
  v111 = v110;
  v21 = *(a1 + 2);
  v22 = *(a1 + 3);
  v23 = *(a1 + 4);
  *(v109 + 12) = *(a1 + 19);
  v108 = v22;
  v109[0] = v23;
  v107 = v21;
  swift_beginAccess();
  v24 = v20[3];
  v117[1] = v20[2];
  v117[2] = v24;
  v25 = v20[5];
  v117[3] = v20[4];
  v117[4] = v25;
  v117[0] = v20[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, v26, v27, v28);
  v29 = swift_allocObject();
  memmove((v29 + 16), v20 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(&v111, &v87);
  outlined init with copy of CachedEnvironment(v117, &v87);
  v30 = v76;

  *&v87 = v30;
  *(&v87 + 1) = a4;
  v71 = a4;
  v72 = a6;
  v75 = a5;
  *&v88 = a5;
  *(&v88 + 1) = a6;
  v64 = type metadata accessor for StatefulTabContainer.Container(0, &v87);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)(OffsetAttribute2, &v77);
  v32 = v77;
  v118 = v110;
  v65 = v29;
  *v119 = v29;
  *&v119[8] = v107;
  *&v119[24] = v108;
  *&v119[40] = v109[0];
  *&v119[52] = *(v109 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v99 = *&v119[16];
  v100 = *&v119[32];
  v101 = *&v119[48];
  v102 = *&v119[64];
  v97 = v118;
  v98 = *v119;
  v63 = *&v119[16];
  LODWORD(v99) = 0;
  LODWORD(v81) = v32;
  v103[0] = v118;
  v103[1] = *v119;
  v104 = *&v119[64];
  v103[3] = *&v119[32];
  v103[4] = *&v119[48];
  v103[2] = v99;
  v89 = v99;
  v90 = *&v119[32];
  v91 = *&v119[48];
  LODWORD(v92) = *&v119[64];
  v87 = v118;
  v88 = *v119;
  v34 = v75;
  v35 = *(v75 + 24);
  outlined init with copy of _ViewInputs(&v118, v86);
  outlined init with copy of _ViewInputs(v103, v86);
  v35(&v78, &v81, &v87, v30, v34);
  v105[2] = v89;
  v105[3] = v90;
  v105[4] = v91;
  v106 = v92;
  v105[0] = v87;
  v105[1] = v88;
  outlined destroy of _ViewInputs(v105);
  LODWORD(v99) = v63;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v78, &v97);
    AGSubgraphEndTreeElement();
  }

  v95[2] = v99;
  v95[3] = v100;
  v95[4] = v101;
  v96 = v102;
  v95[0] = v97;
  v95[1] = v98;
  outlined destroy of _ViewInputs(v95);
  v36 = v78;
  v37 = v80;
  v38 = a1[26];
  v39 = a1[27];
  *&v87 = *(a1 + 12);
  DWORD2(v87) = v38;
  *&v86[0] = v78;
  v63 = v79;
  DWORD2(v86[0]) = v79;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(v86);

  if (v39 != *MEMORY[0x1E698D3F8] && v37 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v40 = *(a1 + 5);
  v41 = *(a1 + 3);
  v91 = *(a1 + 4);
  v92 = v40;
  v42 = *(a1 + 5);
  v43 = *(a1 + 7);
  v93 = *(a1 + 6);
  v94 = v43;
  v44 = *(a1 + 1);
  v87 = *a1;
  v88 = v44;
  v45 = *(a1 + 3);
  v47 = *a1;
  v46 = *(a1 + 1);
  v89 = *(a1 + 2);
  v90 = v45;
  v86[4] = v91;
  v86[5] = v42;
  v48 = *(a1 + 7);
  v86[6] = v93;
  v86[7] = v48;
  v86[0] = v47;
  v86[1] = v46;
  v49 = v64;
  v86[2] = v89;
  v86[3] = v41;
  v50 = *(v64 - 8);
  (*(v50 + 16))(&v81, &v87, v64);
  v51 = v66;
  StatefulTabContainer.Container.view.getter(v49, v66);
  v81 = v110;
  v82 = v65;
  v83 = v107;
  v84 = v108;
  v85[0] = v109[0];
  *(v85 + 12) = *(v109 + 12);
  outlined destroy of _ViewInputs(&v81);
  (*(v50 + 8))(&v87, v49);
  v52 = v68;
  v53 = v69;
  v55 = v70;
  v54 = v71;
  (*(v70 + 16))(v69, &v51[*(v68 + 52)], v71);
  (*(v67 + 8))(v51, v52);
  v56 = v73;
  (*(v55 + 32))(v73, v53, v54);
  v120[0] = v76;
  v120[1] = v54;
  v120[2] = v75;
  v120[3] = v72;
  v57 = type metadata accessor for StatefulTabContainer.Container.Item(0, v120);
  v58 = v56 + *(v57 + 52);
  *v58 = v36;
  *(v58 + 8) = v63;
  *(v58 + 12) = v37;
  v59 = *(v57 + 56);
  v60 = v74;
  *(v56 + v59) = v74;

  return v60;
}

Swift::Void __swiftcall StatefulTabContainer.Container.destroy()()
{
  v2 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v2;
  v3 = type metadata accessor for StatefulTabContainer.Container.Item(0, v14);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *(v1 + 120);

  if (!MEMORY[0x193ABF2C0](v9, v3))
  {
LABEL_11:

    return;
  }

  v10 = 0;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v3);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v13 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v5 != 8)
    {
      break;
    }

    *&v14[0] = v13;
    (*(v4 + 16))(v7, v14, v3);
    swift_unknownObjectRelease();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    AGSubgraphRef.willInvalidate(isInserted:)(0);
    AGSubgraphInvalidate();
    (*(v4 + 8))(v7, v3);
    ++v10;
    if (v12 == MEMORY[0x193ABF2C0](v8, v3))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall StatefulTabContainer.Container.trimCache(to:)(Swift::Int to)
{
  v4 = *(v1 + 32);
  v28 = *(v1 + 16);
  v29 = v4;
  v5 = type metadata accessor for StatefulTabContainer.Container.Item(0, &v28);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v12 = *(v2 + 120);
  v10 = v2 + 120;
  v11 = v12;
  if (MEMORY[0x193ABF270](v12, v5, v7) > to)
  {
    v13 = MEMORY[0x193ABF270](v11, v5);
    if (__OFSUB__(v13, to))
    {
LABEL_11:
      __break(1u);
      return;
    }

    v22 = v13 - to;
    v27 = v13 - to;
    v14 = type metadata accessor for Array();
    type metadata accessor for PartialRangeUpTo<Int>();
    swift_getWitnessTable(MEMORY[0x1E69E6318], v14);
    lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
    v21 = v14;
    v23 = v10;
    MutableCollection.subscript.getter();
    v15 = v28;
    v16 = v29;
    swift_unknownObjectRetain();
    v17 = ArraySlice.startIndex.getter();
    swift_unknownObjectRelease();
    v18 = ArraySlice.endIndex.getter();
    v26 = v17;
    if (v17 != v18)
    {
      v24 = v6 + 16;
      v25 = *(&v16 + 1) >> 1;
      v19 = v26;
      while (1)
      {
        ArraySlice._hoistableIsNativeTypeChecked()();
        if (v26 < v16 || v25 <= v19)
        {
          break;
        }

        (*(v6 + 16))(v9, *(&v15 + 1) + *(v6 + 72) * v19++, v5);
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
        (*(v6 + 8))(v9, v5);
        if (v19 == ArraySlice.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    swift_unknownObjectRelease();
    swift_getWitnessTable(MEMORY[0x1E69E6348], v21);
    RangeReplaceableCollection.removeFirst(_:)(v22);
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance StatefulTabContainer<A, B>.Container@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = type metadata accessor for StatefulTabContainer.Container.Item(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance StatefulTabContainer<A, B>.Container(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for StatefulTabContainer<A, B>.Container, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for StatefulTabContainer(uint64_t a1)
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

uint64_t *initializeBufferWithCopyOfBuffer for StatefulTabContainer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    *((v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  *((*(v9 + 48) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 48) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  *((*(v9 + 40) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 40) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  *((*(v9 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for StatefulTabContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  *((*(v9 + 24) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))(a1);
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for StatefulTabContainer(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

double destroy for StatefulTabContainer.Container(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v5 = *(a2 + 112);
  v4 = *(a2 + 120);
  *(a1 + 112) = v5;
  *(a1 + 120) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithTake for StatefulTabContainer.Container(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer.Container(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for StatefulTabContainer.Container(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata completion function for StatefulTabContainer.Container.Item(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for StatefulTabContainer.Container.Item(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *(v10 + 12) = *(v11 + 12);
    v12 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = *v12;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *v12;

    v14 = v13;
  }

  return v3;
}

void destroy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 23;

  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *v9;

  v11 = v10;
  return a1;
}

uint64_t assignWithCopy for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v9;
  *v9 = v10;
  v12 = v10;

  return a1;
}

uint64_t initializeWithTake for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for StatefulTabContainer.Container.Item(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  *v9 = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for StatefulTabContainer.Container.Item(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for StatefulTabContainer.Container.Item(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void type metadata accessor for PartialRangeUpTo<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeUpTo<Int>)
  {
    v0 = type metadata accessor for PartialRangeUpTo();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeUpTo<Int>);
    }
  }
}

void lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>()
{
  if (!lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>)
  {
    type metadata accessor for PartialRangeUpTo<Int>();
    swift_getWitnessTable(MEMORY[0x1E69E6D28], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>);
  }
}

void _GeometryGroupEffect.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

void lazy protocol witness table accessor for type _GeometryGroupEffect and conformance _GeometryGroupEffect()
{
  if (!lazy protocol witness table cache variable for type _GeometryGroupEffect and conformance _GeometryGroupEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _GeometryGroupEffect, &type metadata for _GeometryGroupEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _GeometryGroupEffect and conformance _GeometryGroupEffect);
  }
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _GeometryGroupEffect(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

uint64_t StaticIf<>.init<>(_:then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 8))(a1, a3);
  v8 = *(*(a4 - 8) + 32);

  return v8(a5, a2, a4);
}

uint64_t StaticIf.init(_trueBody:_falseBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v11 = type metadata accessor for StaticIf(0, a3, a4, a5);
  v12 = *(*(a5 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a5);
}

uint64_t StaticIf<>.init<A>(in:then:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a5 - 8) + 8))(a1, a5);
  v9 = type metadata accessor for StyleContextAcceptsPredicate(0, a5, v7, v8);
  return a2(v9);
}

uint64_t StaticIf<>.init<A>(isLinkedOnOrAfter:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter(0, a8, a11, a4);
  a2();
  type metadata accessor for StaticIf(0, IsLinkedOnOrAfter, a6, a7);
  a4();
  v18 = *(*(a8 - 8) + 8);

  return v18(a1, a8);
}

uint64_t StaticIf<>.init<A>(isLinkedOnOrAfter:then:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(*(a5 - 8) + 8))(a1, a5, a3, a4);
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter(0, a5, a7, v10);
  return a2(IsLinkedOnOrAfter);
}

uint64_t StaticIf<>.init(_:then:else:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v11 = type metadata accessor for StaticIf(0, a3, a4, a5);
  v12 = *(*(a5 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a5);
}

uint64_t StaticIf<>.init<A>(in:then:else:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 8))(a1, a6);
  v15 = type metadata accessor for StyleContextAcceptsPredicate(0, a6, v13, v14);
  (*(*(a4 - 8) + 32))(a7, a2, a4);
  v16 = type metadata accessor for StaticIf(0, v15, a4, a5);
  v17 = *(*(a5 - 8) + 32);
  v18 = a7 + *(v16 + 44);

  return v17(v18, a3, a5);
}

uint64_t StaticIf<>.init<A>(idiom:then:else:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t (*a9)(void, uint64_t, uint64_t))
{
  (*(*(a6 - 8) + 8))(a1, a6);
  v15 = a9(0, a6, a8);
  (*(*(a4 - 8) + 32))(a7, a2, a4);
  v16 = type metadata accessor for StaticIf(0, v15, a4, a5);
  v17 = *(*(a5 - 8) + 32);
  v18 = a7 + *(v16 + 44);

  return v17(v18, a3, a5);
}

uint64_t StaticIf<>.init<A>(idiom:then:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 8))(a1, a4);
  v13 = a6(0, a4, a5);
  (*(*(a3 - 8) + 32))(a7, a2, a3);
  v14 = type metadata accessor for StaticIf(0, v13, a3, &type metadata for EmptyModifier);
  v15 = *(qword_1F00A9C08 + 32);
  v16 = a7 + *(v14 + 44);

  return v15(v16);
}

double static StaticIf<>._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = a2[5];
  v45 = a2[4];
  v46 = v15;
  v47[0] = a2[6];
  *(v47 + 12) = *(a2 + 108);
  v16 = a2[1];
  v41 = *a2;
  v42 = v16;
  v17 = a2[3];
  v19 = *a2;
  v18 = a2[1];
  v43 = a2[2];
  v44 = v17;
  v31 = v19;
  v32 = v18;
  v20 = *a1;
  v33 = v43;
  v21 = *(a6 + 8);
  outlined init with copy of _GraphInputs(&v41, v48);
  v22 = v21(&v31, a3, a6);
  v48[0] = v31;
  v48[1] = v32;
  v48[2] = v33;
  outlined destroy of _GraphInputs(v48);
  v23 = type metadata accessor for StaticIf(255, a3, a4, a5);
  MEMORY[0x1EEE9AC00](v23);
  v38[1] = v20;
  type metadata accessor for _GraphValue(0, v24, v25, v26);
  if (v22)
  {
    _GraphValue.subscript.getter(partial apply for closure #1 in static StaticIf<>._makeGesture(gesture:inputs:), a4, v38);
    v35 = v45;
    v36 = v46;
    v37[0] = v47[0];
    *(v37 + 12) = *(v47 + 12);
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    (*(a7 + 32))(v39, v38, &v31, a4, a7);
  }

  else
  {
    _GraphValue.subscript.getter(partial apply for closure #2 in static StaticIf<>._makeView(view:inputs:), a5, v38);
    v35 = v45;
    v36 = v46;
    v37[0] = v47[0];
    *(v37 + 12) = *(v47 + 12);
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    (*(a8 + 32))(v39, v38, &v31, a5, a8);
  }

  result = *v39;
  v28 = v39[1];
  v29 = v40;
  *a9 = v39[0];
  *(a9 + 8) = v28;
  *(a9 + 16) = v29;
  return result;
}

uint64_t ViewModifier.requiring<A, B>(_:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v8 = v7;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AndOperationViewInputPredicate.init()();
  (*(v15 + 16))(v17, v8, a2);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v18 = type metadata accessor for AndOperationViewInputPredicate(0, v20);
  (*(*(v18 - 8) + 8))(v18, v18);
  return (*(v15 + 32))(a7, v17, a2);
}

uint64_t View.staticIf<A, B, C>(idiom:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for InterfaceIdiomPredicate(0, a7, a11, a4);

  return View.staticIf<A, B, C>(_:then:else:)(v18, a2, a3, a4, a5, a6, v18, a8, a9, a10, &protocol witness table for InterfaceIdiomPredicate<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(idiom:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for InterfaceIdiomPredicate(0, a5, a8, a4);

  return View.staticIf<A, B>(_:then:)(v14, a2, a3, a4, v14, a6, a7, &protocol witness table for InterfaceIdiomPredicate<A>, a9);
}

uint64_t View.staticIf<A, B, C>(context:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for StyleContextAcceptsPredicate(0, a7, a3, a4);

  return View.staticIf<A, B, C>(_:then:else:)(v18, a2, a3, a4, a5, a6, v18, a8, a9, a10, &protocol witness table for StyleContextAcceptsPredicate<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(context:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = type metadata accessor for StyleContextAcceptsPredicate(0, a5, a3, a4);

  return View.staticIf<A, B>(_:then:)(v14, a2, a3, a4, v14, a6, a7, &protocol witness table for StyleContextAcceptsPredicate<A>, a9);
}

uint64_t View.staticIf<A, B, C>(isLinkedOnOrAfter:trueModifier:falseModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter(0, a7, a11, a4);

  return View.staticIf<A, B, C>(_:then:else:)(IsLinkedOnOrAfter, a2, a3, a4, a5, a6, IsLinkedOnOrAfter, a8, a9, a10, &protocol witness table for SemanticsIsLinkedOnOrAfter<A>, a12, a13);
}

uint64_t View.staticIf<A, B>(isLinkedOnOrAfter:trueModifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  IsLinkedOnOrAfter = type metadata accessor for SemanticsIsLinkedOnOrAfter(0, a5, a8, a4);

  return View.staticIf<A, B>(_:then:)(IsLinkedOnOrAfter, a2, a3, a4, IsLinkedOnOrAfter, a6, a7, &protocol witness table for SemanticsIsLinkedOnOrAfter<A>, a9);
}

void instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1, a2, a3, protocol conformance descriptor for <> StaticIf<A, B, C>);
}

{
  instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1, a2, a3, protocol conformance descriptor for <> StaticIf<A, B, C>);
}

{
  instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(a1, a2, a3, protocol conformance descriptor for <> StaticIf<A, B, C>);
}

void instantiation function for generic protocol witness table for <> StaticIf<A, B, C>(uint64_t a1, uint64_t a2, __int128 *a3, const char *a4)
{
  v5 = *(a3 + 2);
  v7 = *a3;
  v8 = v5;
  swift_getWitnessTable(a4, a2, &v7);
  *(a1 + 8) = v6;
}

double get_witness_table_7SwiftUI4ViewRzAA22InterfaceIdiomProtocolRd__AaBRd_0_AaBRd_1_r_1_lAA8StaticIfVyAA0dE9PredicateVyqd__Gqd_0_qd_1_GAaBHPAhA0c5InputI0HPyHC_qd_0_AaBHD3_qd_1_AaBHD4_HCTm(uint64_t a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = a2(255, *(a1 + 8), *(a1 + 40));
  v8 = type metadata accessor for StaticIf(255, v7, v5, v6);
  v10 = a3;
  v11 = *(a1 + 48);
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v8, &v10);
}

double get_witness_table_7SwiftUI4ViewRzAA22InterfaceIdiomProtocolRd__AaBRd_0_r_0_lAA8StaticIfVyAA0dE9PredicateVyqd__Gqd_0_xGAaBHPAhA0c5InputI0HPyHC_qd_0_AaBHD3_xAaBHD1_HCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  v8 = a2(255, a1[1], a1[4]);
  v9 = type metadata accessor for StaticIf(255, v8, v5, v4);
  v11[0] = a3;
  v11[1] = v7;
  v11[2] = v6;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v9, v11);
}

uint64_t Solarium.EnablementIdiom.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<MacInterfaceIdiom>, &type metadata for MacInterfaceIdiom, &protocol witness table for MacInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
  v4 = *(v3 + 16);
  result = v4();
  if (result & 1) != 0 || (type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<TouchBarInterfaceIdiom>, &type metadata for TouchBarInterfaceIdiom, &protocol witness table for TouchBarInterfaceIdiom, type metadata accessor for InterfaceIdiomBox), result = v4(), (result))
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<TVInterfaceIdiom>, &type metadata for TVInterfaceIdiom, &protocol witness table for TVInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    result = v4();
    if (result)
    {
      v6 = 2;
    }

    else
    {
      type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      result = v4();
      if (result)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  *a2 = v6;
  return result;
}

uint64_t _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (!*(*a1 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(), (v8 & 1) == 0))
  {
    if (a2 == 2)
    {
      v28 = &type metadata for Solarium.FeatureFlagKey;
      lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey();
      v29 = v12;
      v13 = swift_allocObject();
      v27[0] = v13;
      *(v13 + 16) = "SwiftUI";
      *(v13 + 24) = 7;
      *(v13 + 32) = 2;
      *(v13 + 40) = "Solarium";
      *(v13 + 48) = 8;
      *(v13 + 56) = 2;
      v14 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v27);
      if (v14)
      {
        v28 = &unk_1F0064F08;
        lazy protocol witness table accessor for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey();
        v29 = v15;
        v16 = swift_allocObject();
        v27[0] = v16;
        *(v16 + 16) = "SwiftUI";
        *(v16 + 24) = 7;
        *(v16 + 32) = 2;
        *(v16 + 40) = "SolariumTV";
        *(v16 + 48) = 10;
        *(v16 + 56) = 2;
        v17 = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_1(v27);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v28 = &type metadata for Solarium.FeatureFlagKey;
      lazy protocol witness table accessor for type Solarium.FeatureFlagKey and conformance Solarium.FeatureFlagKey();
      v29 = v18;
      v19 = swift_allocObject();
      v27[0] = v19;
      *(v19 + 16) = "SwiftUI";
      *(v19 + 24) = 7;
      *(v19 + 32) = 2;
      *(v19 + 40) = "Solarium";
      *(v19 + 48) = 8;
      *(v19 + 56) = 2;
      v17 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v27);
      if (a2 == 3)
      {
        if (one-time initialization token for v5 != -1)
        {
          swift_once();
        }

        v20 = &static Semantics.v5;
LABEL_15:
        v21 = *v20;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if (static Semantics.forced < v21)
        {
LABEL_19:
          if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13LinkedOnCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5())
          {
            v22 = 2;
          }

          else
          {
            v22 = 0;
          }

LABEL_24:
          if (one-time initialization token for hardwareSupportsSolarium != -1)
          {
            swift_once();
          }

          if (static Solarium.SolariumHardwareSupport.hardwareSupportsSolarium)
          {
            v23 = v22 | 4;
          }

          else
          {
            v23 = v22;
          }

          v11 = v23 | v17 & 1;
          if (a2 == 3)
          {
            if ((v23 & 2) != 0)
            {
LABEL_40:
              if ((~v11 & 5) == 0)
              {
LABEL_41:
                v10 = 2;
LABEL_50:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v26 = *a1;
                result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11, a2, isUniquelyReferenced_nonNull_native);
                *a1 = v26;
                goto LABEL_51;
              }

LABEL_49:
              v10 = 0;
              goto LABEL_50;
            }

            goto LABEL_44;
          }

          if (one-time initialization token for v8 != -1)
          {
            swift_once();
          }

          if (byte_1ED53C51C == 1)
          {
            if (dyld_program_sdk_at_least())
            {
              goto LABEL_39;
            }
          }

          else if (static Semantics.forced >= static Semantics.v8)
          {
            goto LABEL_39;
          }

          if ((_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei6OptOutcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5() & 1) == 0)
          {
            if ((infoPlist(_:default:)(0xD00000000000001DLL, 0x800000018DD79980, 0) & 1) == 0)
            {
              v24 = infoPlist(_:default:)(0xD000000000000010, 0x800000018DD799A0, 1);
              if ((v23 & 2) != 0)
              {
                if ((~v11 & 5) != 0)
                {
                  goto LABEL_49;
                }

                if (v24)
                {
                  goto LABEL_41;
                }

                goto LABEL_45;
              }
            }

LABEL_44:
            if ((~v11 & 5) != 0)
            {
              goto LABEL_49;
            }

LABEL_45:
            v10 = 1;
            goto LABEL_50;
          }

LABEL_39:
          if ((v23 & 2) != 0)
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

        v22 = 2;
        goto LABEL_24;
      }
    }

    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v20 = &static Semantics.v7;
    goto LABEL_15;
  }

  v9 = *(v6 + 56) + 16 * result;
  v10 = *v9;
  v11 = *(v9 + 8);
LABEL_51:
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t infoPlist(_:default:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        a3 = v12;
      }
    }

    else
    {
    }
  }

  return a3 & 1;
}

void static Solarium.enablementCriteria(_:)(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v3, v4);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  *a2 = v5;
}

BOOL static Solarium.useMetrics(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v1, v3);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return (~v4 & 3) == 0;
}

double key path setter for _GraphInputs.allowsSolariumInCompatibilityApps : _GraphInputs(char *a1, Swift::UInt *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(a2, v3);

  return result;
}

double _GraphInputs.allowsSolariumInCompatibilityApps.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1, a1);

  return result;
}

void (*_GraphInputs.allowsSolariumInCompatibilityApps.modify(uint64_t *a1))(Swift::UInt ***a1)
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
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.allowsSolariumInCompatibilityApps.modify;
}

void _GraphInputs.allowsSolariumInCompatibilityApps.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1[2], v2);

  free(v1);
}

BOOL specialized static SolariumMetrics.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v1, v8);
  if (v2 && (v3 = v2, (v4 = *(v2 + 72)) != 0))
  {
    v5 = *(v3 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    v5 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  v8 = v4;
  v9 = v5;
  Solarium.EnablementIdiom.init(_:)(&v8, &v10);
  v6 = v10;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v6, &v8);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  return (~v9 & 3) == 0;
}

uint64_t specialized static Solarium.evaluate(inputs:)(uint64_t *a1)
{
  v1 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for InterfaceIdiomInput);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA19InterfaceIdiomInputV_Tt0B5(v1, v9[0]);
  if (v2 && (v3 = v2, (v4 = *(v2 + 72)) != 0))
  {
    v5 = *(v3 + 80);
  }

  else
  {
    type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
    v5 = &protocol witness table for InterfaceIdiomBox<A>;
  }

  v9[0] = v4;
  v9[1] = v5;
  Solarium.EnablementIdiom.init(_:)(v9, &v10);
  v6 = v10;
  if (one-time initialization token for cachedValues != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static Solarium.cachedValues);
  _s7SwiftUI8SolariumV13computeValues33_DB20D13822F3237D192A89B71B0DBAEALLyAC15EnablementLevelO_AC0N8CriteriaVtAC0N5IdiomOFZAG_AItSDyAkG_AItGzYuYTXEfU_(&qword_1ED539018, v6, v9);
  os_unfair_lock_unlock(&static Solarium.cachedValues);
  if (LOBYTE(v9[0]))
  {
    if (LOBYTE(v9[0]) == 1)
    {
      v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(v1);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void lazy protocol witness table accessor for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel()
{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementLevel, &type metadata for Solarium.EnablementLevel, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementLevel and conformance Solarium.EnablementLevel);
  }
}

void lazy protocol witness table accessor for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria()
{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementCriteria, &type metadata for Solarium.EnablementCriteria, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }
}

{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementCriteria, &type metadata for Solarium.EnablementCriteria, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }
}

{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementCriteria, &type metadata for Solarium.EnablementCriteria, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }
}

{
  if (!lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.EnablementCriteria, &type metadata for Solarium.EnablementCriteria, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.EnablementCriteria and conformance Solarium.EnablementCriteria);
  }
}

void lazy protocol witness table accessor for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey()
{
  if (!lazy protocol witness table cache variable for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey)
  {
    swift_getWitnessTable(protocol conformance descriptor for Solarium.TVFeatureFlagKey, &unk_1F0064F08, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Solarium.TVFeatureFlagKey and conformance Solarium.TVFeatureFlagKey);
  }
}

void AsymmetricTransition._makeContentTransition(transition:)(unsigned __int8 *a1, void *a2)
{
  v4 = *a1;
  if (v4 == 3)
  {
    v5 = 0;
    if (Transition.hasContentTransition.getter(a2[2], a2[4]))
    {
      v6 = 1;
    }

    else
    {
      v6 = Transition.hasContentTransition.getter(a2[3], a2[5]) & 1;
    }
  }

  else
  {
    v8 = *(a1 + 1);
    v7 = *(a1 + 2);
    v27[0] = *a1;
    v9 = Transition.contentTransitionEffects(style:size:)(v27, v8, v7, a2[2], a2[4]);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v10 - 1;
      v12 = (v9 + 64);
      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *v27 = *(v12 - 2);
        *&v27[12] = *(v12 - 5);
        v13 = *v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        }

        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 36 * v15;
        v17 = *v27;
        *(v16 + 44) = *&v27[12];
        *(v16 + 32) = v17;
        *(v16 + 60) = 1;
        *(v16 + 64) = v13;
        if (!v11)
        {
          break;
        }

        v12 += 9;
        --v11;
      }
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v27[0] = v4;
    v18 = Transition.contentTransitionEffects(style:size:)(v27, v8, v7, a2[3], a2[5]);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      for (i = (v18 + 64); ; i += 9)
      {
        *v27 = *(i - 2);
        *&v27[12] = *(i - 5);
        v22 = *i;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
        }

        v24 = *(v6 + 16);
        v23 = *(v6 + 24);
        if (v24 >= v23 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v6);
        }

        *(v6 + 16) = v24 + 1;
        v25 = v6 + 36 * v24;
        v26 = *v27;
        *(v25 + 44) = *&v27[12];
        *(v25 + 32) = v26;
        *(v25 + 60) = 2;
        *(v25 + 64) = v22;
        if (!v20)
        {
          break;
        }

        --v20;
      }
    }

    v5 = 1;
  }

  outlined consume of _Transition_ContentTransition.Result(*(a1 + 3), a1[32]);
  *(a1 + 3) = v6;
  a1[32] = v5;
}

uint64_t *assignWithCopy for AnyTransition.InsertionVisitor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyTransition.RemovalVisitor(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithTake for AnyTransition.RemovalVisitor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void UnitPoint.prepare(geometry:)(uint64_t a1, double a2)
{
  v4 = *a1;
  type metadata accessor for CGSize(0);
  v6 = *(a1 + 4);
  v5 = *AGGraphGetValue() * a2;
  v7 = v4;
  v8 = v6;
  CGPoint.prepare(geometry:)(&v7, v5);
}

void protocol witness for AnchorProtocol.prepare(geometry:) in conformance UnitPoint(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *a1;
  type metadata accessor for CGSize(0);
  v9 = *(a1 + 4);
  v7 = v5 * *AGGraphGetValue();
  v10 = v6;
  v11 = v9;
  *a2 = CGPoint.prepare(geometry:)(&v10, v7);
  *(a2 + 8) = v8;
}

uint64_t static Anchor.Source<A>.point(_:)(uint64_t (*a1)(void), double a2, double a3)
{
  a1(0);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t static Anchor.Source<A>.topLeading.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

double static Anchor.Source<A>.top.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 0.5;
  *(v4 + 16) = xmmword_18DDB0860;
  return result;
}

double static Anchor.Source<A>.topTrailing.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 1.0;
  *(v4 + 16) = xmmword_18DDAA020;
  return result;
}

double static Anchor.Source<A>.leading.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = xmmword_18DDB0850;
  return result;
}

__n128 static Anchor.Source<A>.center.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  __asm { FMOV            V0.2D, #0.5 }

  v4[1] = result;
  return result;
}

double static Anchor.Source<A>.trailing.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 1.0;
  *(v4 + 16) = xmmword_18DDC4180;
  return result;
}

double static Anchor.Source<A>.bottomLeading.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = xmmword_18DDAB500;
  return result;
}

double static Anchor.Source<A>.bottom.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  result = 0.5;
  *(v4 + 16) = xmmword_18DDAF530;
  return result;
}

__n128 static Anchor.Source<A>.bottomTrailing.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnchorBox<UnitPoint>(0, a2, a3, a4);
  v4 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  v4[1] = result;
  return result;
}

uint64_t static UnitPoint.hashValue(_:into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

void type metadata accessor for AnchorBox<CGPoint>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnchorBox<CGPoint>)
  {
    type metadata accessor for CGPoint(255);
    v4 = type metadata accessor for AnchorBox(a1, v2, &protocol witness table for CGPoint, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnchorBox<CGPoint>);
    }
  }
}

void type metadata accessor for AnchorBox<UnitPoint>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for AnchorBox<UnitPoint>)
  {
    v4 = type metadata accessor for AnchorBox(0, &type metadata for UnitPoint, &protocol witness table for UnitPoint, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for AnchorBox<UnitPoint>);
    }
  }
}

unsigned __int8 *AbsoluteEdge.Set.init(_:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 8;
  if (v2 >= 8)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

Swift::Bool __swiftcall AbsoluteEdge.Set.contains(_:)(SwiftUI::AbsoluteEdge a1)
{
  v2 = *a1;
  v3 = v2 > 8;
  if (v2 >= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v2;
  }

  if (v3)
  {
    v4 = 0;
  }

  return (v4 & ~*v1) == 0;
}

SwiftUI::AbsoluteEdge_optional __swiftcall AbsoluteEdge.init(rawValue:)(SwiftUI::AbsoluteEdge_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = SwiftUI_AbsoluteEdge_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::tuple_min_SwiftUI_AbsoluteEdge_max_SwiftUI_AbsoluteEdge __swiftcall Axis.perpendicularAbsoluteEdges(with:)(SwiftUI::LayoutDirection with)
{
  if (*v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  if (*v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (v3)
  {
    v4 = 0;
    v5 = 2;
  }

  *with = v4;
  *v1 = v5;
  result.max = v1;
  result.min = with;
  return result;
}

void lazy protocol witness table accessor for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set()
{
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for AbsoluteEdge.Set, &type metadata for AbsoluteEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for AbsoluteEdge.Set, &type metadata for AbsoluteEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for AbsoluteEdge.Set, &type metadata for AbsoluteEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }
}

{
  if (!lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set)
  {
    swift_getWitnessTable(protocol conformance descriptor for AbsoluteEdge.Set, &type metadata for AbsoluteEdge.Set, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AbsoluteEdge.Set and conformance AbsoluteEdge.Set);
  }
}

void lazy protocol witness table accessor for type [AbsoluteEdge] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [AbsoluteEdge] and conformance [A])
  {
    type metadata accessor for [AbsoluteEdge]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [AbsoluteEdge] and conformance [A]);
  }
}

void type metadata accessor for [AbsoluteEdge]()
{
  if (!lazy cache variable for type metadata for [AbsoluteEdge])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AbsoluteEdge]);
    }
  }
}

void lazy protocol witness table accessor for type AbsoluteEdge and conformance AbsoluteEdge()
{
  if (!lazy protocol witness table cache variable for type AbsoluteEdge and conformance AbsoluteEdge)
  {
    swift_getWitnessTable(protocol conformance descriptor for AbsoluteEdge, &type metadata for AbsoluteEdge, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AbsoluteEdge and conformance AbsoluteEdge);
  }
}

uint64_t one-time initialization function for sizeThatFits()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.sizeThatFits = result;
  return result;
}

uint64_t one-time initialization function for lengthThatFits()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.lengthThatFits = result;
  return result;
}

uint64_t one-time initialization function for childGeometries()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.childGeometries = result;
  return result;
}

uint64_t one-time initialization function for contentDescription()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.contentDescription = result;
  return result;
}

uint64_t one-time initialization function for explicitAlignment()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.explicitAlignment = result;
  return result;
}

uint64_t one-time initialization function for alignmentType()
{
  result = AGGraphRegisterNamedTraceEvent();
  static AGNamedTraceEventID.alignmentType = result;
  return result;
}

double static LayoutTrace.recorder.getter()
{
  swift_beginAccess();

  return result;
}

double static LayoutTrace.recorder.setter(void *a1)
{
  swift_beginAccess();
  static LayoutTrace.recorder = a1;

  return result;
}

double key path setter for static LayoutTrace.recorder : LayoutTrace.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static LayoutTrace.recorder = v1;

  return result;
}

id LayoutTrace.Recorder.graph.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void LayoutTrace.Recorder.graph.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

__n128 LayoutTrace.Recorder.cacheLookup.getter@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3].n128_u64[0];
  v4 = v1[3].n128_u16[4];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u16[4] = v4;
  return result;
}

__n128 LayoutTrace.Recorder.cacheLookup.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  swift_beginAccess();
  result = v5;
  v1[2] = v5;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u16[4] = v3;
  return result;
}

unint64_t LayoutTrace.Recorder.alignmentTypeID(for:)(uint64_t a1)
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 64);
  v9 = v8[2];
  if (v9)
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v11)
    {
      v9 = *(v8[7] + 4 * v10);
      goto LABEL_11;
    }

    swift_endAccess();
    if (HIDWORD(v9))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = one-time initialization token for alignmentType;
  v8 = *(v2 + 16);
  if (v12 != -1)
  {
LABEL_13:
    swift_once();
  }

  v20 = a1;
  AGTypeID.description.getter();
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  v22 = v9;
  if (v15 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  AGGraphAddNamedTraceEvent();

  outlined consume of Data?(v13, v15);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + 64);
  *(v2 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v20, isUniquelyReferenced_nonNull_native);
  *(v2 + 64) = v21;
LABEL_11:
  swift_endAccess();
  return v9;
}

uint64_t LayoutTrace.Recorder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void static LayoutTrace.traceSizeThatFits(_:proposal:_:)(unint64_t a1, uint64_t *a2, double (*a3)(uint64_t), uint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = a2[2];
  v9 = *(a2 + 24);
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;

    LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(a1 | ((HIDWORD(a1) & 1) << 32), &v10, a3);
  }

  else
  {
    __break(1u);
  }
}

double LayoutTrace.Recorder.traceSizeThatFits(_:proposal:_:)(uint64_t a1, uint64_t a2, double (*a3)(uint64_t))
{
  v13 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    swift_beginAccess();
    v5 = one-time initialization token for update;
    v6 = *(v3 + 16);
    if (v5 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v12[0] = 17;

    static Update.enqueueAction(reason:_:)(v12, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v3);
  }

  swift_beginAccess();
  v7 = one-time initialization token for sizeThatFits;
  v8 = *(v3 + 16);
  if (v7 != -1)
  {
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v9 = swift_beginAccess();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 512;
  v10 = a3(v9);
  AGGraphAddNamedTraceEvent();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 512;
  return v10;
}

void static LayoutTrace.traceLengthThatFits(_:proposal:in:_:)(unint64_t a1, uint64_t *a2, char a3, double (*a4)(uint64_t), uint64_t a5)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = a2[2];
  v11 = *(a2 + 24);
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;

    LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(a1 | ((HIDWORD(a1) & 1) << 32), &v12, a3 & 1, a4);
  }

  else
  {
    __break(1u);
  }
}

double LayoutTrace.Recorder.traceLengthThatFits(_:proposal:in:_:)(uint64_t a1, uint64_t a2, char a3, double (*a4)(uint64_t))
{
  v14 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if ((*(v4 + 24) & 1) == 0)
  {
    *(v4 + 24) = 1;
    swift_beginAccess();
    v6 = one-time initialization token for update;
    v7 = *(v4 + 16);
    if (v6 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v13[0] = 17;

    static Update.enqueueAction(reason:_:)(v13, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v4);
  }

  swift_beginAccess();
  v8 = one-time initialization token for lengthThatFits;
  v9 = *(v4 + 16);
  if (v8 != -1)
  {
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v10 = swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 512;
  v11 = a4(v10);
  AGGraphAddNamedTraceEvent();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 512;
  return v11;
}

void static LayoutTrace.traceCacheLookup(_:_:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  swift_beginAccess();
  v7 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if (a2)
    {
      v8 = 256;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 | v6;
    swift_beginAccess();
    v7[4] = v3;
    v7[5] = v4;
    v7[6] = v5;
    *(v7 + 28) = v9;
  }
}

void static LayoutTrace.traceCacheLookup(_:_:)(char a1, double a2, double a3)
{
  swift_beginAccess();
  v6 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if (a1)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    swift_beginAccess();
    v6[4] = a2;
    v6[5] = 0.0;
    v6[6] = a3;
    *(v6 + 28) = v7;
  }
}

uint64_t static LayoutTrace.traceChildGeometries(_:at:origin:_:)(uint64_t a1, __int128 *a2, uint64_t (*a3)(void), double a4, double a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = a2[1];
  v26 = *a2;
  swift_beginAccess();
  v8 = static LayoutTrace.recorder;
  if (!static LayoutTrace.recorder)
  {
    __break(1u);
  }

  swift_beginAccess();
  if (*(v8 + 24) == 1)
  {
  }

  else
  {
    *(v8 + 24) = 1;
    swift_beginAccess();
    v9 = *(v8 + 2);
    v10 = one-time initialization token for update;

    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    LOBYTE(v29[0]) = 17;

    static Update.enqueueAction(reason:_:)(v29, partial apply for closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded(), v8);
  }

  v29[0] = v26;
  v29[1] = v27;
  v30 = a4;
  v31 = a5;
  v12 = _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5();
  v14 = v13;
  swift_beginAccess();
  v15 = one-time initialization token for childGeometries;
  v16 = *(v8 + 2);
  if (v15 != -1)
  {
    swift_once();
  }

  outlined copy of Data._Representation(v12, v14);
  isa = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v12, v14);
  v18 = a3();

  v28 = specialized EndChildGeometries.init(_:)(v19);
  MEMORY[0x1EEE9AC00](v28);
  v20 = specialized static ProtobufEncoder.encoding(_:)(partial apply for specialized closure #1 in static ProtobufEncoder.encoding<A>(_:));
  v22 = v21;

  v23 = *(v8 + 2);
  outlined copy of Data._Representation(v20, v22);
  v24 = Data._bridgeToObjectiveC()().super.isa;
  AGGraphAddNamedTraceEvent();

  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v20, v22);
  outlined consume of Data._Representation(v12, v14);

  return v18;
}

void static LayoutTrace.traceContentDescription(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if ((a1 & 0x100000000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1;
    }

    swift_beginAccess();
    v10 = one-time initialization token for contentDescription;
    v11 = v8[2];

    if (v10 != -1)
    {
      swift_once();
    }

    static String.Encoding.utf8.getter();
    v12 = String.data(using:allowLossyConversion:)();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v16[1] = v9;
    if (v14 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    AGGraphAddNamedTraceEvent();

    outlined consume of Data?(v12, v14);
  }
}

void static LayoutTrace.traceExplicitAlignment(_:alignment:at:body:)(unint64_t a1, unint64_t a2, float64x2_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    v10[0] = v8;
    v10[1] = v9;

    LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(a1 | ((HIDWORD(a1) & 1) << 32), a2, v10, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t LayoutTrace.Recorder.traceExplicitAlignment(_:alignment:at:body:)(uint64_t a1, unint64_t a2, float64x2_t *a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = 1;
  swift_beginAccess();
  if ((*(v5 + 24) & 1) == 0)
  {
    *(v5 + 24) = 1;
    swift_beginAccess();
    v9 = one-time initialization token for update;
    v8 = *(v5 + 16);
    if (v9 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    v14[0] = 17;

    static Update.enqueueAction(reason:_:)(v14, closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()partial apply, v5);
  }

  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  if (a2 < 2)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >> 1 > *(off_1ED537F58 + 2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(off_1ED537F58 + 2 * (a2 >> 1) + 2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  LayoutTrace.Recorder.alignmentTypeID(for:)(v10);
  swift_beginAccess();
  v11 = one-time initialization token for explicitAlignment;
  v8 = *(v5 + 16);
  if (v11 != -1)
  {
LABEL_13:
    swift_once();
  }

  AGGraphAddNamedTraceEvent();

  v12 = a4();
  AGGraphAddNamedTraceEvent();
  return v12;
}

void BeginChildGeometries.encode(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  *&v10[8 * v12 + 32] = v9;
  *(a1 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v9 + 1;
    CGSize.encode(to:)(a1, v3, v4);
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }
  }

  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  v10 = isUniquelyReferenced_nonNull_native;
LABEL_7:
  v15 = *(v10 + 2);
  v14 = *(v10 + 3);
  if (v15 >= v14 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 2) = v15 + 1;
  *&v10[8 * v15 + 32] = v9;
  *(a1 + 24) = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  *(a1 + 8) = v9 + 1;
  CGPoint.encode(to:)(a1, v7, v8);
  ProtobufEncoder.endLengthDelimited()();
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  ViewSize.proposal.getter(&v26);
  if (v27)
  {
    goto LABEL_22;
  }

  v7 = v26;
  v16 = fabs(v26);
  if (v16 >= 65536.0)
  {
    v17 = 25;
  }

  else
  {
    v17 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v17);
  if (v16 >= 65536.0)
  {
    v19 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v19 + 8;
    if (!__OFADD__(v19, 8))
    {
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        v20 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        v20 = (*a1 + v19);
      }

      *v20 = v7;
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = v18 + 4;
  if (__OFADD__(v18, 4))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *&v7 = v7;
  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_42;
  }

  *(a1 + 8) = isUniquelyReferenced_nonNull_native;
  *(*a1 + v18) = LODWORD(v7);
LABEL_22:
  while (1)
  {
    v30 = v3;
    v31 = v4;
    v32 = v5;
    v33 = v6;
    ViewSize.proposal.getter(&v26);
    if (v29)
    {
      break;
    }

    v3 = v28;
    v4 = fabs(v28);
    LODWORD(v7) = 0;
    if (v4 >= 65536.0)
    {
      v21 = 33;
    }

    else
    {
      v21 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v21);
    if (v4 >= 65536.0)
    {
      v24 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v24 + 8;
      if (!__OFADD__(v24, 8))
      {
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          v25 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          v25 = (*a1 + v24);
        }

        *v25 = v3;
        return;
      }
    }

    else
    {
      v22 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v22 + 4;
      if (!__OFADD__(v22, 4))
      {
        v23 = v3;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v23;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v22) = v23;
        }

        return;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v7);
  }
}

uint64_t EndChildGeometries.CodableViewGeometry.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v12 = *(a1 + 8);
  v13 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  *&v13[8 * v15 + 32] = v12;
  *(a1 + 24) = v13;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v12 + 1;
    CGSize.encode(to:)(a1, v10, v11);
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_7;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  v13 = result;
LABEL_7:
  v18 = *(v13 + 2);
  v17 = *(v13 + 3);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v18 + 1;
  *&v13[8 * v18 + 32] = v12;
  *(a1 + 24) = v13;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_39;
  }

  *(a1 + 8) = v12 + 1;
  CGPoint.encode(to:)(a1, v4, v5);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v7)
  {
LABEL_23:
    if ((v9 & 1) == 0)
    {
      goto LABEL_24;
    }

    return result;
  }

  v4 = fabs(v6);
  if (v4 >= 65536.0)
  {
    v19 = 25;
  }

  else
  {
    v19 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v19);
  if (v4 >= 65536.0)
  {
    v21 = *(a1 + 8);
    result = v21 + 8;
    if (__OFADD__(v21, 8))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (*(a1 + 16) < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
    }

    else
    {
      *(a1 + 8) = result;
      result = *a1 + v21;
    }

    *result = v6;
    goto LABEL_23;
  }

  v20 = *(a1 + 8);
  result = v20 + 4;
  if (__OFADD__(v20, 4))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *&v4 = v6;
  if (*(a1 + 16) < result)
  {
    goto LABEL_43;
  }

  *(a1 + 8) = result;
  for (*(*a1 + v20) = LODWORD(v4); (v9 & 1) == 0; *result = LODWORD(v4))
  {
LABEL_24:
    v4 = fabs(v8);
    if (v4 >= 65536.0)
    {
      v22 = 33;
    }

    else
    {
      v22 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v22);
    if (v4 >= 65536.0)
    {
      v25 = *(a1 + 8);
      result = v25 + 8;
      if (!__OFADD__(v25, 8))
      {
        if (*(a1 + 16) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
        }

        else
        {
          *(a1 + 8) = result;
          result = *a1 + v25;
        }

        *result = v8;
        return result;
      }
    }

    else
    {
      v23 = *(a1 + 8);
      result = v23 + 4;
      if (!__OFADD__(v23, 4))
      {
        v24 = v8;
        if (*(a1 + 16) < result)
        {
          result = ProtobufEncoder.growBufferSlow(to:)(result);
          *result = v24;
        }

        else
        {
          *(a1 + 8) = result;
          *(*a1 + v23) = v24;
        }

        return result;
      }

LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
  }

  return result;
}

void *EndChildGeometries.encode(to:)(void *result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 32);
    while (1)
    {
      v6 = v5[1];
      v10[0] = *v5;
      v10[1] = v6;
      v7 = v5[3];
      v10[2] = v5[2];
      v10[3] = v7;
      v8 = v4[1];
      v9 = v4[2];
      if (v8 >= v9)
      {
        result = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          return result;
        }

        if (v9 < result)
        {
          *ProtobufEncoder.growBufferSlow(to:)(result) = 10;
        }

        else
        {
          v4[1] = result;
          *(*v4 + v8) = 10;
        }
      }

      else
      {
        *(*v4 + v8) = 10;
        v4[1] = v8 + 1;
      }

      result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v10);
      if (!v2)
      {
        v5 += 4;
        if (--v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t _s7SwiftUI15ProtobufEncoderV8encodingy10Foundation4DataVxKAA0C16EncodableMessageRzlFZAA20BeginChildGeometriesV_Tt0B5()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC8];
  BeginChildGeometries.encode(to:)(&v10);
  if (v0)
  {
    free(v10);
    v5 = v13;
  }

  else
  {
    if (v10)
    {
      v6 = v11;
      v7 = v10;
      (*(v2 + 104))(v4, *MEMORY[0x1E6969000], v1);
      v5 = specialized Data.init(bytesNoCopy:count:deallocator:)(v7, v6, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void closure #1 in LayoutTrace.Recorder.activateFrameIfNeeded()(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    swift_beginAccess();
    v2 = one-time initialization token for update;
    v3 = *(a1 + 16);
    if (v2 != -1)
    {
      swift_once();
    }

    AGGraphAddNamedTraceEvent();

    AGGraphSyncTracing();
  }
}

uint64_t specialized EndChildGeometries.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = a1;
    v3 = 0;
    v4 = v23;
    v5 = *(v23 + 16);
    v6 = v5 << 6;
    for (i = v1 - 1; ; --i)
    {
      v8 = *(v2 + v3 + 32);
      v9 = *(v2 + v3 + 64);
      v10 = (~*(v2 + v3 + 80) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 80) & 0xFFFFFFFFFFFFFLL) != 0 ? 0 : *(v2 + v3 + 80);
      v11 = (~*(v2 + v3 + 88) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 88) & 0xFFFFFFFFFFFFFLL) != 0 ? 0 : *(v2 + v3 + 88);
      v12 = (~*(v2 + v3 + 80) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 80) & 0xFFFFFFFFFFFFFLL) != 0;
      v13 = (~*(v2 + v3 + 88) & 0x7FF0000000000000) == 0 && (*(v2 + v3 + 88) & 0xFFFFFFFFFFFFFLL) != 0;
      v24 = v4;
      v14 = *(v4 + 24);
      if (v5 >= v14 >> 1)
      {
        v16 = v6;
        v18 = *(v2 + v3 + 32);
        v19 = *(v2 + v3 + 64);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v5 + 1, 1);
        v8 = v18;
        v9 = v19;
        v6 = v16;
        v2 = a1;
        v4 = v24;
      }

      *(v4 + 16) = v5 + 1;
      v15 = v4 + v6 + v3;
      *(v15 + 32) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = v12;
      *(v15 + 57) = *v22;
      *(v15 + 60) = *&v22[3];
      *(v15 + 64) = v11;
      *(v15 + 72) = v13;
      *(v15 + 76) = *&v21[3];
      *(v15 + 73) = *v21;
      *(v15 + 80) = v9;
      if (!i)
      {
        break;
      }

      v3 += 64;
      ++v5;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t Date.ComponentsFormatStyle.Field.magnitude.getter@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  (*(v5 + 16))(&v22 - v10, v2, v4, v9);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 31536000.0;
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    if (v16)
    {
      result = (v13)(v11, v4);
      v15 = 2592000.0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v7, v4);
      if (v17)
      {
        result = (v13)(v11, v4);
        v15 = 604800.0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v7, v4);
        if (v18)
        {
          result = (v13)(v11, v4);
          v15 = 86400.0;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.spellOut.getter();
          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v7, v4);
          if (v19)
          {
            result = (v13)(v11, v4);
            v15 = 3600.0;
          }

          else
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
            v20 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v7, v4);
            if (v20)
            {
              result = (v13)(v11, v4);
              v15 = 60.0;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.second.getter();
              v21 = dispatch thunk of static Equatable.== infix(_:_:)();
              v13(v7, v4);
              result = (v13)(v11, v4);
              v15 = INFINITY;
              if (v21)
              {
                v15 = 1.0;
              }
            }
          }
        }
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field.magnitude.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E6968490])
  {
    *a1 = 0x4122750000000000;
  }

  else if (result == *MEMORY[0x1E6968480])
  {
    *a1 = 0x40F5180000000000;
  }

  else if (result == *MEMORY[0x1E6968488])
  {
    *a1 = 0x40AC200000000000;
  }

  else if (result == *MEMORY[0x1E6968498])
  {
    *a1 = 0x404E000000000000;
  }

  else if (result == *MEMORY[0x1E69684A0])
  {
    *a1 = 0x3FF0000000000000;
  }

  else if (result == *MEMORY[0x1E6968470])
  {
    *a1 = 0x3EB0C6F7A0B5ED8DLL;
  }

  else if (result == *MEMORY[0x1E6968478])
  {
    *a1 = 0x3F50624DD2F1A9FCLL;
  }

  else if (result == *MEMORY[0x1E6968468])
  {
    *a1 = 0x3E112E0BE826D695;
  }

  else
  {
    *a1 = 0x7FF0000000000000;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.magnitude.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E6968558])
  {
    v10 = 0x422D5EC4B0000000;
LABEL_21:
    *a1 = v10;
    return result;
  }

  if (result == *MEMORY[0x1E6968570] || result == *MEMORY[0x1E6968548])
  {
    v10 = 0x417E133800000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968590])
  {
    v10 = 0x415DA9C000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968578])
  {
    v10 = 0x4143C68000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968528] || result == *MEMORY[0x1E6968530])
  {
    goto LABEL_18;
  }

  if (result == *MEMORY[0x1E6968598])
  {
LABEL_20:
    v10 = 0x40F5180000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968540])
  {
LABEL_18:
    v10 = 0x4122750000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968550] || result == *MEMORY[0x1E69685A8])
  {
    goto LABEL_20;
  }

  if (result == *MEMORY[0x1E6968560])
  {
    v10 = 0x40E5180000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968568])
  {
    v10 = 0x40AC200000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968580])
  {
    v10 = 0x404E000000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968588])
  {
    v10 = 0x3FF0000000000000;
    goto LABEL_21;
  }

  if (result == *MEMORY[0x1E6968538])
  {
    v10 = 0x3F50624DD2F1A9FCLL;
    goto LABEL_21;
  }

  v14 = *MEMORY[0x1E69685A0];
  *a1 = 0x7FF0000000000000;
  if (result != v14)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t URL.swiftUI_contentType.getter()
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSURLResourceKey>, type metadata accessor for NSURLResourceKey, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v4 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v5 = v4;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();

  v6 = type metadata accessor for URLResourceValues();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  URLResourceValues.contentType.getter();
  return (*(v7 + 8))(v2, v6);
}

uint64_t Set<>.init(_:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  result = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  if ((a2 & 1) == 0)
  {
    v12 = 0;
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *(&outlined read-only object #0 of Set<>.init(_:) + v12 + 32);
      if ((v14 & ~a1) == 0)
      {
        if (v14 > 127)
        {
          switch(v14)
          {
            case 0x80:
              static Duration.UnitsFormatStyle.Unit.seconds.getter();
              break;
            case 0x8000:
              static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
              break;
            case 0x200:
              static Duration.UnitsFormatStyle.Unit.weeks.getter();
              break;
            default:
              goto LABEL_5;
          }
        }

        else
        {
          switch(v14)
          {
            case 16:
              static Duration.UnitsFormatStyle.Unit.days.getter();
              break;
            case 32:
              static Duration.UnitsFormatStyle.Unit.hours.getter();
              break;
            case 64:
              static Duration.UnitsFormatStyle.Unit.minutes.getter();
              break;
            default:
              goto LABEL_5;
          }
        }

        specialized Set._Variant.insert(_:)(v10, v6);
        (*v13)(v10, v4);
      }

LABEL_5:
      v12 += 8;
      if (v12 == 40)
      {
        return v16;
      }
    }
  }

  return result;
}

{
  return specialized Set<>.init(_:)(a1, a2 & 1);
}

uint64_t closure #1 in NSCalendarUnit.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  (*(v7 + 16))(&v26 - v12, a1, v6, v11);
  static Date.ComponentsFormatStyle.Style.wide.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    result = (v15)(v13, v6);
    v17 = 0;
    v18 = 4;
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v9, v6);
    if (v19)
    {
      result = (v15)(v13, v6);
      v17 = 0;
      v18 = 8;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v15(v9, v6);
      if (v20)
      {
        v15(v13, v6);
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v21 = specialized Set.contains(_:)(v9, a2);
        result = (v15)(v9, v6);
        v17 = 0;
        v18 = 0x2000;
        if (v21)
        {
          v18 = 4096;
        }
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        v15(v9, v6);
        if (v22)
        {
          result = (v15)(v13, v6);
          v17 = 0;
          v18 = 16;
        }

        else
        {
          static Date.ComponentsFormatStyle.Style.spellOut.getter();
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v15(v9, v6);
          if (v23)
          {
            result = (v15)(v13, v6);
            v17 = 0;
            v18 = 32;
          }

          else
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
            v24 = dispatch thunk of static Equatable.== infix(_:_:)();
            v15(v9, v6);
            if (v24)
            {
              result = (v15)(v13, v6);
              v17 = 0;
              v18 = 64;
            }

            else
            {
              static Date.ComponentsFormatStyle.Field.second.getter();
              v25 = dispatch thunk of static Equatable.== infix(_:_:)();
              v15(v9, v6);
              result = (v15)(v13, v6);
              if (v25)
              {
                v18 = 128;
              }

              else
              {
                v18 = 0;
              }

              v17 = v25 ^ 1;
            }
          }
        }
      }
    }
  }

  *a3 = v18;
  *(a3 + 8) = v17 & 1;
  return result;
}

uint64_t closure #1 in NSCalendarUnit.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  (*(v5 + 16))(v24 - v10, a1, v4, v9);
  static Duration.UnitsFormatStyle.Unit.weeks.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 0;
    v16 = 0x2000;
  }

  else
  {
    static Duration.UnitsFormatStyle.Unit.days.getter();
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    if (v17)
    {
      result = (v13)(v11, v4);
      v15 = 0;
      v16 = 16;
    }

    else
    {
      static Duration.UnitsFormatStyle.Unit.hours.getter();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v7, v4);
      if (v18)
      {
        result = (v13)(v11, v4);
        v15 = 0;
        v16 = 32;
      }

      else
      {
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v7, v4);
        if (v19)
        {
          result = (v13)(v11, v4);
          v15 = 0;
          v16 = 64;
        }

        else
        {
          static Duration.UnitsFormatStyle.Unit.seconds.getter();
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v7, v4);
          if (v20)
          {
            result = (v13)(v11, v4);
            v15 = 0;
            v16 = 128;
          }

          else
          {
            static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
            v21 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v7, v4);
            if (v21 & 1) != 0 || (static Duration.UnitsFormatStyle.Unit.microseconds.getter(), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v22))
            {
              result = (v13)(v11, v4);
              v15 = 0;
              v16 = 0x8000;
            }

            else
            {
              static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
              v23 = dispatch thunk of static Equatable.== infix(_:_:)();
              v13(v7, v4);
              result = (v13)(v11, v4);
              if (v23)
              {
                v16 = 0x8000;
              }

              else
              {
                v16 = 0;
              }

              v15 = v23 ^ 1;
            }
          }
        }
      }
    }
  }

  *a2 = v16;
  *(a2 + 8) = v15 & 1;
  return result;
}

double Calendar.Component.Magnitude.init(_:)@<D0>(double *a1@<X8>)
{
  v2 = Duration.components.getter();
  result = v3 * 1.0e-18 + v2;
  *a1 = result;
  return result;
}

double Calendar.Component.Magnitude.ratio(to:)(double *a1)
{
  v2 = *a1;
  v3 = INFINITY;
  if (*v1 == 0.0)
  {
    v3 = NAN;
  }

  if (v2 == 0.0)
  {
    return v3;
  }

  else
  {
    return *v1 / v2;
  }
}

double static Calendar.Component.Magnitude.zero.getter@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for zero != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static Calendar.Component.Magnitude.zero;
  *a1 = static Calendar.Component.Magnitude.zero;
  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance Calendar.Component.Magnitude.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.Component.Magnitude.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.Component.Magnitude.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.Component.Magnitude.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Calendar.Component.Magnitude.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

Swift::Int Calendar.Component.Magnitude.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t Calendar.Component.Magnitude.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *v9 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar.Component.Magnitude(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Calendar.Component.Magnitude(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>, lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Locale.Key()
{
  Hasher.init(_seed:)();
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8], MEMORY[0x1E69695F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Locale.Key(uint64_t a1)
{
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8], MEMORY[0x1E69695F0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Locale.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Locale.Components();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Components and conformance Locale.Components, MEMORY[0x1E69695E8], MEMORY[0x1E69695F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *one-time initialization function for minusSignCache()
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>, type metadata accessor for ObjectCache);
  swift_allocObject();
  result = specialized ObjectCache.init(constructor:)(closure #1 in variable initialization expression of static Locale.minusSignCache, 0);
  static Locale.minusSignCache = result;
  return result;
}

void closure #1 in variable initialization expression of static Locale.minusSignCache(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  (*(v5 + 16))(v7, a1, v4);
  Locale.init(components:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  [v12 setLocale_];

  v14 = [v12 minusSign];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *a2 = v16;
    a2[1] = v18;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Duration.UnitsFormatStyle.Unit.magnitude.getter@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  (*(v5 + 16))(&v24 - v10, v2, v4, v9);
  static Duration.UnitsFormatStyle.Unit.weeks.getter();
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12 & 1) != 0 || (static Duration.UnitsFormatStyle.Unit.days.getter(), v14 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v14) || (static Duration.UnitsFormatStyle.Unit.hours.getter(), v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v15) || (static Duration.UnitsFormatStyle.Unit.minutes.getter(), v16 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v16) || (static Duration.UnitsFormatStyle.Unit.seconds.getter(), v17 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v17) || (static Duration.UnitsFormatStyle.Unit.milliseconds.getter(), v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v18) || (static Duration.UnitsFormatStyle.Unit.microseconds.getter(), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v19))
  {
    v13(v11, v4);
  }

  else
  {
    static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    result = (v13)(v11, v4);
    if ((v20 & 1) == 0)
    {
      v23 = INFINITY;
      goto LABEL_14;
    }
  }

  result = Duration.components.getter();
  v23 = v22 * 1.0e-18 + result;
LABEL_14:
  *a1 = v23;
  return result;
}

BOOL String.isBeginningOfSentence(pattern:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x193ABEC20](a4, a5);
  v8 = MEMORY[0x193ABEC20](a1, a2);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  isBeginningOfSentence = _isBeginningOfSentence(v7, v8, isa);

  return isBeginningOfSentence;
}

void one-time initialization function for uiKit()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = MEMORY[0x193ABEC20](0x6C7070612E6D6F63, 0xEF74694B49552E65);
  v2 = [v0 initWithSuiteName_];

  static NSUserDefaults.uiKit = v2;
}

id static NSUserDefaults.swiftUI.getter(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

Swift::Bool __swiftcall NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(NSAttributedString to, __C::_NSRange_optional in)
{
  if (in.is_nil)
  {

    v4 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
    v37 = [v2 length];
  }

  else
  {
    length = in.value.length;
    location = in.value.location;
    v41.length = [v2 length];
    v36 = location;
    v37 = length;
    v40.location = location;
    v40.length = length;
    v41.location = 0;
    NSIntersectionRange(v40, v41);
    v7 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Range<>.init(_:in:)();
    LOBYTE(v7) = v8;

    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = [v2 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = String.subscript.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  isa = to.super.isa;
  v18 = [(objc_class *)to.super.isa string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = String.subscript.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (v15 == v23 && v17 == v25 && v11 >> 16 == v19 >> 16 && v13 >> 16 == v21 >> 16)
  {
  }

  else
  {
    v29 = _stringCompareInternal(_:_:_:_:expecting:)();

    v30 = 0;
    if ((v29 & 1) == 0)
    {
      return v30;
    }
  }

  v39 = 1;
  v31 = swift_allocObject();
  v31[2] = v36;
  v31[3] = v37;
  v31[4] = isa;
  v31[5] = &v39;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in NSAttributedString.isCharacterAndRunwiseEqual(to:in:);
  *(v32 + 24) = v31;
  aBlock[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_6;
  v33 = _Block_copy(aBlock);
  v34 = isa;

  [v2 enumerateAttributesInRange:v36 options:v37 usingBlock:{0, v33}];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v30 = v39;

    return v30;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void closure #1 in NSAttributedString.isCharacterAndRunwiseEqual(to:in:)(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4, uint64_t a5, int a6, id a7, _BYTE *a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2 - a5;
  if (__OFSUB__(a2, a5))
  {
    __break(1u);
  }

  v20 = 0uLL;
  v13 = [a7 attributesAtIndex:v8 effectiveRange:&v20];
  type metadata accessor for NSAttributedStringKey(0);
  _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 == __PAIR128__(a3, v8))
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    v15 = objc_allocWithZone(MEMORY[0x1E695DF20]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v15 initWithDictionary_];

    specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
    v18 = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v17 isEqualToDictionary_];

    if ((v19 & 1) == 0)
    {
      *a8 = 0;
      *a4 = 1;
    }
  }

  else
  {

    *a8 = 0;
    *a4 = 1;
  }
}

void specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v34 + 8);
    *&v34[0] = v13;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v13;
    type metadata accessor for NSAttributedStringKey(0);
    v14 = v13;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    v15 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v23;
    *(v10 + 16) = v24;
    *(v10 + 32) = v25;
    outlined init with take of Any(v31, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(uint64_t a1, double a2)
{
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(a1, a2);

  return v2;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5(uint64_t a1)
{
  v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5Tf4g_n(a1);

  return v1;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>(0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1, double a2)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    type metadata accessor for _SetStorage<Calendar.Component>(0, v8);
    v11 = static _SetStorage.allocate(capacity:)();
    v12 = 0;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v3);
      _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v3);
          _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v17;
          (*v17)(v6, v3);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v3);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v3);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void specialized NSCalendarUnit.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v28 = v3 + 16;
  v10 = (v3 + 8);

  v11 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v2);
    closure #1 in NSCalendarUnit.init(_:)(v5, a1, &v29);
    v8 &= v8 - 1;
    (*v10)(v5, v2);
    if ((v30 & 1) == 0)
    {
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v14 = *(v27 + 2);
      v13 = *(v27 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v24 = *(v27 + 2);
        v25 = v14 + 1;
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v27);
        v14 = v24;
        v15 = v25;
        v27 = v18;
      }

      v16 = v26;
      v17 = v27;
      *(v27 + 2) = v15;
      *&v17[8 * v14 + 32] = v16;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);

      (*v10)(v5, v2);

      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = *(v27 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = v27 + 32;
    do
    {
      v23 = *v21;
      v21 += 8;
      v22 = v23;
      if ((v23 & ~v20) == 0)
      {
        v22 = 0;
      }

      v20 |= v22;
      --v19;
    }

    while (v19);
  }
}

{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v28 = v3 + 16;
  v10 = (v3 + 8);

  v11 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v2);
    closure #1 in NSCalendarUnit.init(_:)(v5, &v29);
    v8 &= v8 - 1;
    (*v10)(v5, v2);
    if ((v30 & 1) == 0)
    {
      v26 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v14 = *(v27 + 2);
      v13 = *(v27 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v24 = *(v27 + 2);
        v25 = v14 + 1;
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v27);
        v14 = v24;
        v15 = v25;
        v27 = v18;
      }

      v16 = v26;
      v17 = v27;
      *(v27 + 2) = v15;
      *&v17[8 * v14 + 32] = v16;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);

      (*v10)(v5, v2);

      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v19 = *(v27 + 2);
  if (v19)
  {
    v20 = 0;
    v21 = v27 + 32;
    do
    {
      v23 = *v21;
      v21 += 8;
      v22 = v23;
      if ((v23 & ~v20) == 0)
      {
        v22 = 0;
      }

      v20 |= v22;
      --v19;
    }

    while (v19);
  }
}

uint64_t specialized Set<>.init(_:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  result = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CD0];
  if ((a2 & 1) == 0)
  {
    v12 = 0;
    v13 = (v8 + 8);
    while (1)
    {
      v14 = *(&outlined read-only object #0 of Set<>.init(_:) + v12 + 32);
      if ((v14 & ~a1) == 0)
      {
        if (v14 > 63)
        {
          if (v14 > 4095)
          {
            if (v14 != 4096 && v14 != 0x2000)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Style.abbreviated.getter();
          }

          else if (v14 == 64)
          {
            static Date.ComponentsFormatStyle.Field.minute.getter();
          }

          else
          {
            if (v14 != 128)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Field.second.getter();
          }
        }

        else if (v14 > 15)
        {
          if (v14 == 16)
          {
            static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
          }

          else
          {
            if (v14 != 32)
            {
              goto LABEL_5;
            }

            static Date.ComponentsFormatStyle.Style.spellOut.getter();
          }
        }

        else if (v14 == 4)
        {
          static Date.ComponentsFormatStyle.Style.wide.getter();
        }

        else
        {
          if (v14 != 8)
          {
            goto LABEL_5;
          }

          static Date.ComponentsFormatStyle.Style.narrow.getter();
        }

        specialized Set._Variant.insert(_:)(v10, v6);
        (*v13)(v10, v4);
      }

LABEL_5:
      v12 += 8;
      if (v12 == 64)
      {
        return v16;
      }
    }
  }

  return result;
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<NSURLResourceKey>(0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of URLResourceValues?(uint64_t a1)
{
  type metadata accessor for URLResourceValues?(0, &lazy cache variable for type metadata for URLResourceValues?, MEMORY[0x1E69688C8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Calendar.Component.Magnitude.CodingKeys, &unk_1F00654C0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude.CodingKeys and conformance Calendar.Component.Magnitude.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude()
{
  if (!lazy protocol witness table cache variable for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude)
  {
    swift_getWitnessTable(protocol conformance descriptor for Calendar.Component.Magnitude, &type metadata for Calendar.Component.Magnitude, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Calendar.Component.Magnitude and conformance Calendar.Component.Magnitude);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for Locale.Key(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Components();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for Locale.Key(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata accessor for Locale.Key(uint64_t a1)
{
  result = type metadata singleton initialization cache for Locale.Key;
  if (!type metadata singleton initialization cache for Locale.Key)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Locale.Key(uint64_t a1)
{
  result = type metadata accessor for Locale.Components();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<Duration.UnitsFormatStyle.Unit>)
  {
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<Duration.UnitsFormatStyle.Unit>);
    }
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI27DefaultDescriptionAttributeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<DefaultDescriptionAttribute>, lazy protocol witness table accessor for type DefaultDescriptionAttribute and conformance DefaultDescriptionAttribute, &type metadata for DefaultDescriptionAttribute, MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v31 = a1 + 32;
    while (1)
    {
      v32 = *(v31 + v4);
      Hasher.init(_seed:)();
      DefaultDescriptionAttribute.rawValue.getter();
      String.hash(into:)();

      v6 = Hasher._finalize()();
      v7 = ~(-1 << *(v3 + 32));
      v8 = v6 & v7;
      v9 = (v6 & v7) >> 6;
      v10 = *(v5 + 8 * v9);
      v11 = 1 << (v6 & v7);
      if ((v11 & v10) != 0)
      {
        while (1)
        {
          v12 = 0xE400000000000000;
          v13 = 1952671090;
          switch(*(*(v3 + 48) + v8))
          {
            case 1:
              v12 = 0xE600000000000000;
              v13 = 0x6E696769726FLL;
              break;
            case 2:
              v12 = 0xEA0000000000746ELL;
              v13 = 0x696F507472617473;
              break;
            case 3:
              v12 = 0xE800000000000000;
              v13 = 0x746E696F50646E65;
              break;
            case 4:
              v12 = 0xE90000000000006DLL;
              v13 = 0x726F66736E617274;
              break;
            case 5:
              v12 = 0xE500000000000000;
              v13 = 0x7370696C63;
              break;
            case 6:
              v15 = 0x72656E726F63;
              goto LABEL_27;
            case 7:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD74080;
              break;
            case 8:
              v12 = 0xE700000000000000;
              v13 = 0x7974696361706FLL;
              break;
            case 9:
              v13 = 0x6957726564726F62;
              v12 = 0xEB00000000687464;
              break;
            case 0xA:
              v14 = 0x726564726F62;
              goto LABEL_30;
            case 0xB:
              v13 = 0x756F72676B636162;
              v12 = 0xEF726F6C6F43646ELL;
              break;
            case 0xC:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD740D0;
              break;
            case 0xD:
              v13 = 0x55656C6261736964;
              v12 = 0xEE00736574616470;
              break;
            case 0xE:
              v13 = 0x704F776F64616873;
              v12 = 0xED00007974696361;
              break;
            case 0xF:
              v15 = 0x776F64616873;
LABEL_27:
              v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
              v16 = 1937074532;
              goto LABEL_39;
            case 0x10:
              v14 = 0x776F64616873;
LABEL_30:
              v13 = v14 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
              v12 = 0xEB00000000726F6CLL;
              break;
            case 0x11:
              v13 = 0x664F776F64616873;
              v16 = 1952805734;
              goto LABEL_39;
            case 0x12:
              v13 = 0x6150776F64616873;
              v12 = 0xEA00000000006874;
              break;
            case 0x13:
              v13 = 0xD000000000000012;
              v12 = 0x800000018DD74130;
              break;
            case 0x14:
              v13 = 0x74756F68636E7570;
              v12 = 0xEE00776F64616853;
              break;
            case 0x15:
              v13 = 0x73746E65746E6F63;
              v12 = 0xEE007265746E6543;
              break;
            case 0x16:
              v13 = 0x73746E65746E6F63;
              v12 = 0xEF676E696C616353;
              break;
            case 0x17:
              v13 = 0xD000000000000015;
              v12 = 0x800000018DD74180;
              break;
            case 0x18:
              v13 = 0x686353726F6C6F63;
              v12 = 0xEB00000000656D65;
              break;
            case 0x19:
              v12 = 0xE700000000000000;
              v13 = 0x737265746C6966;
              break;
            case 0x1A:
              v13 = 0x746E656964617267;
              v16 = 1701869908;
LABEL_39:
              v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 0x1B:
              v13 = 0x746E656964617267;
              v12 = 0xEE0073726F6C6F43;
              break;
            case 0x1C:
              v13 = 0xD000000000000011;
              v12 = 0x800000018DD741D0;
              break;
            case 0x1D:
              v13 = 0xD000000000000016;
              v12 = 0x800000018DD741F0;
              break;
            case 0x1E:
              v13 = 0x7461506570616873;
              v12 = 0xE900000000000068;
              break;
            default:
              break;
          }

          v17 = 0xE400000000000000;
          v18 = 1952671090;
          switch(v32)
          {
            case 1:
              v17 = 0xE600000000000000;
              if (v13 == 0x6E696769726FLL)
              {
                goto LABEL_94;
              }

              goto LABEL_95;
            case 2:
              v17 = 0xEA0000000000746ELL;
              if (v13 != 0x696F507472617473)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 3:
              v17 = 0xE800000000000000;
              if (v13 != 0x746E696F50646E65)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 4:
              v17 = 0xE90000000000006DLL;
              if (v13 != 0x726F66736E617274)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 5:
              v17 = 0xE500000000000000;
              if (v13 != 0x7370696C63)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 6:
              v24 = 0x72656E726F63;
              goto LABEL_73;
            case 7:
              v17 = 0x800000018DD74080;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 8:
              v17 = 0xE700000000000000;
              if (v13 != 0x7974696361706FLL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 9:
              v22 = 0x6957726564726F62;
              v23 = 6845540;
              goto LABEL_78;
            case 10:
              v21 = 0x726564726F62;
              goto LABEL_77;
            case 11:
              v17 = 0xEF726F6C6F43646ELL;
              if (v13 != 0x756F72676B636162)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 12:
              v17 = 0x800000018DD740D0;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 13:
              v19 = 0x55656C6261736964;
              v20 = 0x736574616470;
              goto LABEL_70;
            case 14:
              v17 = 0xED00007974696361;
              if (v13 != 0x704F776F64616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 15:
              v24 = 0x776F64616873;
LABEL_73:
              v25 = v24 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
              v26 = 1937074532;
              goto LABEL_99;
            case 16:
              v21 = 0x776F64616873;
LABEL_77:
              v22 = v21 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
              v23 = 7499628;
              goto LABEL_78;
            case 17:
              v25 = 0x664F776F64616873;
              v26 = 1952805734;
              goto LABEL_99;
            case 18:
              v17 = 0xEA00000000006874;
              if (v13 != 0x6150776F64616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 19:
              v17 = 0x800000018DD74130;
              if (v13 != 0xD000000000000012)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 20:
              v19 = 0x74756F68636E7570;
              v20 = 0x776F64616853;
              goto LABEL_70;
            case 21:
              v19 = 0x73746E65746E6F63;
              v20 = 0x7265746E6543;
              goto LABEL_70;
            case 22:
              v17 = 0xEF676E696C616353;
              if (v13 != 0x73746E65746E6F63)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 23:
              v17 = 0x800000018DD74180;
              if (v13 != 0xD000000000000015)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 24:
              v22 = 0x686353726F6C6F63;
              v23 = 6647141;
LABEL_78:
              v17 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v13 != v22)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 25:
              v17 = 0xE700000000000000;
              if (v13 != 0x737265746C6966)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 26:
              v25 = 0x746E656964617267;
              v26 = 1701869908;
LABEL_99:
              v17 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v13 != v25)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 27:
              v19 = 0x746E656964617267;
              v20 = 0x73726F6C6F43;
LABEL_70:
              v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v13 != v19)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 28:
              v17 = 0x800000018DD741D0;
              if (v13 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 29:
              v18 = 0xD000000000000016;
              v17 = 0x800000018DD741F0;
              goto LABEL_93;
            case 30:
              v17 = 0xE900000000000068;
              if (v13 != 0x7461506570616873)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            default:
LABEL_93:
              if (v13 != v18)
              {
                goto LABEL_95;
              }

LABEL_94:
              if (v12 == v17)
              {

                goto LABEL_4;
              }

LABEL_95:
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v27)
              {
                goto LABEL_4;
              }

              v8 = (v8 + 1) & v7;
              v9 = v8 >> 6;
              v10 = *(v5 + 8 * (v8 >> 6));
              v11 = 1 << v8;
              if ((v10 & (1 << v8)) == 0)
              {
                goto LABEL_101;
              }

              break;
          }
        }
      }

LABEL_101:
      *(v5 + 8 * v9) = v10 | v11;
      *(*(v3 + 48) + v8) = v32;
      v28 = *(v3 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(v3 + 16) = v30;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9TouchTypeO_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<TouchType>, lazy protocol witness table accessor for type TouchType and conformance TouchType, &type metadata for TouchType, MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      MEMORY[0x193AC11A0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void lazy protocol witness table accessor for type TouchType and conformance TouchType()
{
  if (!lazy protocol witness table cache variable for type TouchType and conformance TouchType)
  {
    swift_getWitnessTable(protocol conformance descriptor for TouchType, &type metadata for TouchType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TouchType and conformance TouchType);
  }
}

{
  if (!lazy protocol witness table cache variable for type TouchType and conformance TouchType)
  {
    swift_getWitnessTable(protocol conformance descriptor for TouchType, &type metadata for TouchType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TouchType and conformance TouchType);
  }
}

void type metadata accessor for KeyedEncodingContainer<Calendar.Component.Magnitude.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _SetStorage<Calendar.Component>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v2 = type metadata accessor for _SetStorage();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

void type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<Date.ComponentsFormatStyle.Field>)
  {
    type metadata accessor for Date.ComponentsFormatStyle.Field();
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<Date.ComponentsFormatStyle.Field>);
    }
  }
}

void type metadata accessor for ObjectCache<Locale.Key, String>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Locale.Key(255);
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Locale.Key and conformance Locale.Key, type metadata accessor for Locale.Key, protocol conformance descriptor for Locale.Key);
    v8 = a3(a1, v6, MEMORY[0x1E69E6158], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ObjectCache<Locale.Key, String>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Locale.Key, String>(0, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Item, type metadata accessor for ObjectCache.Item);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>)
  {
    type metadata accessor for ObjectCache<Locale.Key, String>(255, &lazy cache variable for type metadata for ObjectCache<Locale.Key, String>.Data, type metadata accessor for ObjectCache.Data);
    v5 = type metadata accessor for AtomicBuffer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AtomicBuffer<ObjectCache<Locale.Key, String>.Data>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AnyHashable, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, Any>);
    }
  }
}

void type metadata accessor for _SetStorage<NSURLResourceKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>)
  {
    type metadata accessor for NSURLResourceKey(255);
    _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<NSURLResourceKey>);
    }
  }
}

void _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for URLResourceValues?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static ViewBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for _ConditionalContent.Storage(0, a2, a3, a4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(*(a2 - 8) + 16))(&v15 - v12, a1, a2, v11);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)(v13, a2, a3, a4, a5);
}

uint64_t EnvironmentObject.Wrapper.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_unknownObjectRetain();

  return Binding.init<A>(_:keyPath:isolation:)(a2, a1, 0, 0, a3);
}

double EnvironmentObject.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized EnvironmentObject.wrappedValue.getter(a1, a2, a3);

  swift_unknownObjectRetain();
  return result;
}

uint64_t EnvironmentObject._store.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

double EnvironmentObject.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    specialized EnvironmentObject.error()(a3);
  }

  swift_unknownObjectRetain();
  return result;
}

uint64_t StoreBox.reset()()
{
  result = swift_unknownObjectRelease();
  *(v0 + 40) = 0;
  return result;
}

void specialized EnvironmentObject.error()(uint64_t a1)
{
  _StringGuts.grow(_:)(117);
  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD79B10);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0xD000000000000029, 0x800000018DD77670);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD776A0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized EnvironmentObject.wrappedValue.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    specialized EnvironmentObject.error()(a3);
  }

  return result;
}

uint64_t *assignWithTake for EnvironmentObject(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t assignWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for StoreBox(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for StoreBox(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t View.mask<A>(alignment:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23[2] = a6;
  v23[0] = a7;
  v23[1] = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _MaskAlignmentEffect(0, v15, v16, v14);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v23 - v20;
  a3(v19);
  (*(v11 + 32))(&v21[*(v17 + 36)], v13, a5);
  *v21 = a1;
  *(v21 + 1) = a2;
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v21, v17);
}

uint64_t _MaskAlignmentEffect.init(alignment:mask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = type metadata accessor for _MaskAlignmentEffect(0, a4, a5, a4);
  result = (*(*(a4 - 8) + 32))(&a6[*(v11 + 36)], a3, a4);
  *a6 = a1;
  *(a6 + 1) = a2;
  return result;
}

uint64_t _MaskAlignmentEffect.alignment.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t MaskDefaultForeground.value.getter@<X0>(uint64_t *a2@<X8>)
{
  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  *a2 = *Value;
  a2[1] = v4;
  v6 = one-time initialization token for black;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static Color.black;
  v8 = one-time initialization token for foreground;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  if (v7 == static Color.foreground || (v9 = v7, ((*(*v7 + 88))() & 1) != 0))
  {

    v9 = 0;
  }

  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a2, v9);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v5, *a2);
  }

  v10 = *a2;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022DefaultForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a2, v7);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022DefaultForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v10, *a2);
  }
}

double get_witness_table_7SwiftUI4ViewRzAaBRd__r__lAA15ModifiedContentVyxAA20_MaskAlignmentEffectVyqd__GGAaBHPxAaBHD1__AgA0C8ModifierHPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

Swift::Int ContainerBackgroundKind.Builtin.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

BOOL static ContainerBackgroundKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t ContainerBackgroundKind.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  return MEMORY[0x193AC11A0](v1);
}

Swift::Int ContainerBackgroundKind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContainerBackgroundKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContainerBackgroundKind()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContainerBackgroundKind(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (v2 == 5)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x193AC11A0](0);
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

void EnvironmentValues.containerBackgroundKind.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 6;
    }

    *a1 = v5;
  }
}

void key path getter for EnvironmentValues.containerBackgroundKind : EnvironmentValues(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 6;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.containerBackgroundKind : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues.containerBackgroundKind.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.containerBackgroundKind.modify(char **a1))(uint64_t *a1)
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
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 6;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.containerBackgroundKind.modify;
}

void EnvironmentValues.containerBackgroundKind.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA23ContainerBackgroundKindO0F0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA23ContainerBackgroundKindO0K0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void lazy protocol witness table accessor for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin()
{
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundKind.Builtin, &type metadata for ContainerBackgroundKind.Builtin, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerBackgroundKind.Builtin and conformance ContainerBackgroundKind.Builtin);
  }
}

void lazy protocol witness table accessor for type [ContainerBackgroundKind.Builtin] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ContainerBackgroundKind.Builtin] and conformance [A])
  {
    type metadata accessor for [ContainerBackgroundKind.Builtin]();
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ContainerBackgroundKind.Builtin] and conformance [A]);
  }
}

void type metadata accessor for [ContainerBackgroundKind.Builtin]()
{
  if (!lazy cache variable for type metadata for [ContainerBackgroundKind.Builtin])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ContainerBackgroundKind.Builtin]);
    }
  }
}

void lazy protocol witness table accessor for type ContainerBackgroundKind and conformance ContainerBackgroundKind()
{
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKind and conformance ContainerBackgroundKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundKind, &type metadata for ContainerBackgroundKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContainerBackgroundKind and conformance ContainerBackgroundKind);
  }
}

uint64_t getEnumTagSinglePayload for ContainerBackgroundKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for ContainerBackgroundKind(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for ContainerBackgroundKind(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance RadialGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance EllipticalGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance AngularGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t closure #1 in static View._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
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

uint64_t ViewValuePredicate.view.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ViewValuePredicate.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t ViewValuePredicate.init(view:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

BOOL ViewValuePredicate.apply(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = *AGGraphGetAttributeInfo();
  v14 = swift_conformsToProtocol2();
  if (v14)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    (*(v14 + 16))(v5, a1, v5, v13, v14);
    (*(v7 + 40))(v3, v12, v6);
  }

  (*(v7 + 16))(v9, v3, v6);
  v16 = (*(*(v5 - 8) + 48))(v9, 1, v5) != 1;
  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t ViewStatePredicate.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding(255, *(a1 + 24), a2, a3);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t ViewStatePredicate.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Binding(255, *(a2 + 24), a3, a4);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t ViewStatePredicate.init()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for Binding(0, a1, a2, a3);
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 1, 1, v5);
}

BOOL ViewStatePredicate.apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 24);
  v9 = type metadata accessor for Binding(255, v8, a3, a4);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = *AGGraphGetAttributeInfo();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    (*(v18 + 24))(&v25, *(a2 + 16), a1, *(a2 + 16), v17);
    if ((v26 & 1) == 0)
    {
      _DynamicPropertyBuffer.getState<A>(type:)(v8, v20, v21, v16);
      (*(v11 + 40))(v5, v16, v10);
    }
  }

  (*(v11 + 16))(v13, v5, v10);
  v22 = (*(*(v9 - 8) + 48))(v13, 1, v9) != 1;
  (*(v11 + 8))(v13, v10);
  return v22;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance _IntelligenceSupport.AnimatingText@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance _IntelligenceSupport.AnimatingSummarySymbol@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Capsule@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Ellipse@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Rectangle._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance RoundedRectangle._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Capsule._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Ellipse._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance Circle._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance ContainerRelativeShape@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance ContainerRelativeShape._Inset@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance MeshGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void protocol witness for static View._makeView(view:inputs:) in conformance Never(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v5[3] = v3;
  v5[4] = *(a2 + 64);
  v6 = *(a2 + 80);
  v4 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v4;
  specialized static View.makeView(view:inputs:)(v2, v5);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance _TestApp.RootView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance _GlassContainerStorageView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance GlassEffectView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance GlassEntryContainerView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance GlassEntryView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

void *protocol witness for static View._makeView(view:inputs:) in conformance GlassItemView@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance LinearGradient(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (a4)(v7, a2, a3);
}

uint64_t type metadata completion function for ViewStatePredicate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Binding(255, *(a1 + 24), a3, a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ViewStatePredicate(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(v11 + 1, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    *__dst = *a2;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v11;
    v17 = *(v5 + 16);

    v17(v16 + 1, v11 + 1, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

uint64_t destroy for ViewStatePredicate(void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~v4;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v6 + v4 + 8) & v5);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v6;
  if (*v6 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v6 + v4 + 8) & v5, v2);
  }

  return result;
}

void *initializeWithCopy for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = *(v4 + 16);
    v19 = a1;

    v18(v16 & v6, v17 & v6, v3);
    return v19;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

uint64_t *assignWithCopy for ViewStatePredicate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v6 + 64);
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v6 + 64);
    v19 = *(v6 + 48);
    v22 = v19((v12 + v8 + 8) & v9, v7, v5);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v4 = a1;
    v15 = v19((v13 + v8 + 8) & v9, v7, v5);
    v12 = v24;
    v3 = a2;
    v11 = v23;
    v10 = (v8 + 16) & ~v8;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      v17 = v10 + v11;
      goto LABEL_10;
    }

    *v4 = *v3;
    *v12 = *v13;
    v21 = *(v6 + 16);

    v21((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v5);
    return v4;
  }

  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v12 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v12 = *v13;

    (*(v6 + 24))((v12 + v8 + 8) & v9, (v13 + v8 + 8) & v9, v5);
    return v4;
  }

  v16 = v11;

  (*(v6 + 8))((v12 + v8 + 8) & v9, v5);
  v17 = v10 + v16;
LABEL_10:

  return memcpy(v4, v3, v17);
}

void *initializeWithTake for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = a1;
    (*(v4 + 32))(v16 & v6, v17 & v6, v3);
    return v18;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithTake for ViewStatePredicate(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = (v7 + 16) & ~v7;
  v10 = *(v5 + 64);
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0x80000000) != 0)
  {
    v16 = *(v5 + 48);
    v17 = *(a3 + 24);
    v21 = v16((v11 + v7 + 8) & v8, v6, v17);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v6;
    v12 = v17;
    v19 = v17;
    v9 = (v7 + 16) & ~v7;
    v4 = a1;
    v15 = v16((v13 + v7 + 8) & v8, v18, v19);
    v3 = a2;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *v4 = *v3;
    *v11 = *v13;
    (*(v5 + 32))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  v12 = *(a3 + 24);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v11 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v11 = *v13;

    (*(v5 + 40))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  (*(v5 + 8))((v11 + v7 + 8) & v8, v12);
LABEL_9:

  return memcpy(v4, v3, v9 + v10);
}

uint64_t getEnumTagSinglePayload for ViewStatePredicate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((v16 + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}